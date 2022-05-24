--[[
	Contains the logic to run a test plan and gather test results from it.

	TestRunner accepts a TestPlan object, executes the planned tests, and
	produces a TestResults object. While the tests are running, the system's
	state is contained inside a TestSession object.
]]

local TestEnum = require(script.Parent.TestEnum)
local TestSession = require(script.Parent.TestSession)
local LifecycleHooks = require(script.Parent.LifecycleHooks)

local RUNNING_GLOBAL = "__TESTEZ_RUNNING_TEST__"
local JEST_TEST_CONTEXT = "__JEST_TEST_CONTEXT__"

local TestRunner = {
	environment = {},
}

local function wrapExpectContextWithPublicApi(expectationContext)
	return setmetatable({
		extend = function(...)
			expectationContext:extend(...)
		end,
	}, {
		__call = function(_self, ...)
			return expectationContext:startExpectationChain(...)
		end,
	})
end

--[[
	Runs the given TestPlan and returns a TestResults object representing the
	results of the run.
]]
function TestRunner.runPlan(plan)
	local session = TestSession.new(plan)
	local lifecycleHooks = LifecycleHooks.new()

	local exclusiveNodes = plan:findNodes(function(node)
		return node.modifier == TestEnum.NodeModifier.Focus
	end)

	session.hasFocusNodes = #exclusiveNodes > 0

	_G[JEST_TEST_CONTEXT] = {
		blocks = {},
		instance = nil,
		snapshotState = nil,
	}

	-- ROBLOX deviation START: adding startTime so that jest reporters can report time elapsed for tests
	local fenv = getfenv()
	-- ROBLOX NOTE: additional check as DateTime only exists in Luau and not in native Lua
	if fenv.DateTime then
		session.results.startTime = fenv.DateTime.now().UnixTimestampMillis
	end
	-- ROBLOX deviation END

	TestRunner.runPlanNode(session, plan, lifecycleHooks)

	_G[JEST_TEST_CONTEXT] = nil

	return session:finalize()
end

--[[
	Run the given test plan node and its descendants, using the given test
	session to store all of the results.
]]
function TestRunner.runPlanNode(session, planNode, lifecycleHooks)
	local function runCallback(callback, messagePrefix)
		local success = true
		local errorMessage
		-- Any code can check RUNNING_GLOBAL to fork behavior based on
		-- whether a test is running. We use this to avoid accessing
		-- protected APIs; it's a workaround that will go away someday.
		_G[RUNNING_GLOBAL] = true

		messagePrefix = messagePrefix or ""

		local testEnvironment = getfenv(callback)

		for key, value in pairs(TestRunner.environment) do
			testEnvironment[key] = value
		end

		testEnvironment.fail = function(message)
			if message == nil then
				message = "fail() was called."
			end

			success = false
			errorMessage = messagePrefix .. debug.traceback(tostring(message), 2)
		end

		testEnvironment.expect = wrapExpectContextWithPublicApi(session:getExpectationContext())

		local context = session:getContext()

		local function removeTestEZFromStack(stack)
			stack = stack:split("\n")
			local lines = {}
			for _, line in pairs(stack) do
				if line:match("TestEZ%.TestEZ%.") then
					break
				end
				table.insert(lines, line)
			end
			return table.concat(lines, "\n")
		end

		local nodeSuccess, nodeResult = xpcall(function()
			callback(context)
		end, function(message)
			if typeof(message) == "table" and message.stack and message.name and message.message then
				return messagePrefix .. removeTestEZFromStack(tostring(message) .. "\n" .. message.stack)
			else
				return messagePrefix .. debug.traceback(tostring(message), 2)
			end
		end)

		-- If a node threw an error, we prefer to use that message over
		-- one created by fail() if it was set.
		if not nodeSuccess then
			success = false
			errorMessage = nodeResult
		end

		_G[RUNNING_GLOBAL] = nil

		return success, errorMessage
	end

	local function runNode(childPlanNode)
		-- Errors can be set either via `error` propagating upwards or
		-- by a test calling fail([message]).
		for _, hook in ipairs(lifecycleHooks:getBeforeEachHooks()) do
			local success, errorMessage = runCallback(hook, "beforeEach hook: ")
			if not success then
				return false, errorMessage
			end
		end

		local testSuccess, testErrorMessage = runCallback(childPlanNode.callback)

		for _, hook in ipairs(lifecycleHooks:getAfterEachHooks()) do
			local success, errorMessage = runCallback(hook, "afterEach hook: ")
			if not success then
				if not testSuccess then
					return false,
						testErrorMessage
							.. "\nWhile cleaning up the failed test another error was found:\n"
							.. errorMessage
				end
				return false, errorMessage
			end
		end

		if not testSuccess then
			return false, testErrorMessage
		end

		return true, nil
	end

	lifecycleHooks:pushHooksFrom(planNode)

	local halt = false
	for _, hook in ipairs(lifecycleHooks:getBeforeAllHooks()) do
		local success, errorMessage = runCallback(hook, "beforeAll hook: ")
		if not success then
			session:addDummyError("beforeAll", errorMessage)
			halt = true
		end
	end

	-- Reset the jest test context every time we process a node that
	-- corresponds to a new spec file
	if planNode.isRoot then
		_G[JEST_TEST_CONTEXT].instance = planNode.instance
		_G[JEST_TEST_CONTEXT].blocks = {}
		_G[JEST_TEST_CONTEXT].snapshotState = nil
	end

	if not halt then
		for _, childPlanNode in ipairs(planNode.children) do
			table.insert(_G[JEST_TEST_CONTEXT].blocks, childPlanNode.phrase)
			if childPlanNode.type == TestEnum.NodeType.It then
				session:pushNode(childPlanNode)
				if session:shouldSkip() then
					session:setSkipped()
				else
					local success, errorMessage = runNode(childPlanNode)

					if success then
						session:setSuccess()
					else
						session:setError(errorMessage)
					end
				end
				session:popNode()
			elseif childPlanNode.type == TestEnum.NodeType.Describe then
				session:pushNode(childPlanNode)
				TestRunner.runPlanNode(session, childPlanNode, lifecycleHooks)

				-- Did we have an error trying build a test plan?
				if childPlanNode.loadError then
					local message = "Error during planning: " .. childPlanNode.loadError
					session:setError(message)
				else
					session:setStatusFromChildren()
				end
				session:popNode()
			end
			table.remove(_G[JEST_TEST_CONTEXT].blocks)
		end
	end

	local snapshotState = _G[JEST_TEST_CONTEXT].snapshotState
	if planNode.isRoot and snapshotState and snapshotState._updateSnapshot ~= "none" then
		local uncheckedCount = snapshotState:getUncheckedCount()
		if uncheckedCount > 0 then
			snapshotState:removeUncheckedKeys()
		end
		snapshotState:save()
	end

	for _, hook in ipairs(lifecycleHooks:getAfterAllHooks()) do
		local success, errorMessage = runCallback(hook, "afterAll hook: ")
		if not success then
			session:addDummyError("afterAll", errorMessage)
		end
	end

	lifecycleHooks:popHooks()
end

return TestRunner
