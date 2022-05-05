--[[
	Contains the logic to run a test plan and gather test results from it.

	TestRunner accepts a TestPlan object, executes the planned tests, and
	produces a TestResults object. While the tests are running, the system's
	state is contained inside a TestSession object.
]]

local Expectation = require(script.Parent.Expectation)
local TestEnum = require(script.Parent.TestEnum)
local TestSession = require(script.Parent.TestSession)
local Stack = require(script.Parent.Stack)

local RUNNING_GLOBAL = "__TESTEZ_RUNNING_TEST__"

local TestRunner = {
	environment = {}
}

function TestRunner.environment.expect(...)
	return Expectation.new(...)
end

--[[
	Runs the given TestPlan and returns a TestResults object representing the
	results of the run.
]]
function TestRunner.runPlan(plan)
	local session = TestSession.new(plan)
	local tryStack = Stack.new()

	local exclusiveNodes = plan:findNodes(function(node)
		return node.modifier == TestEnum.NodeModifier.Focus
	end)

	session.hasFocusNodes = #exclusiveNodes > 0

	TestRunner.runPlanNode(session, plan, tryStack)

	return session:finalize()
end

--[[
	Run the given test plan node and its descendants, using the given test
	session to store all of the results.
]]
function TestRunner.runPlanNode(session, planNode, tryStack, noXpcall)
	for _, childPlanNode in ipairs(planNode.children) do
		local childResultNode = session:pushNode(childPlanNode)

		if childPlanNode.type == TestEnum.NodeType.It then
			if session:shouldSkip() then
				childResultNode.status = TestEnum.TestStatus.Skipped
			else
				if tryStack:size() > 0 and tryStack:getBack().isOk == false then
					childResultNode.status = TestEnum.TestStatus.Failure
					table.insert(childResultNode.errors,
						string.format("%q failed without trying, because test case %q failed",
							childPlanNode.phrase, tryStack:getBack().failedNode.phrase))
				else
					-- Errors can be set either via `error` propagating upwards or
					-- by a test calling fail([message]).
					local success = true
					local errorMessage

					local testEnvironment = getfenv(childPlanNode.callback)

					for key, value in pairs(TestRunner.environment) do
						testEnvironment[key] = value
					end

					testEnvironment.fail = function(message)
						if message == nil then
							message = "fail() was called."
						end

						success = false
						errorMessage = message .. "\n" .. debug.traceback()
					end

					-- We prefer xpcall, but yielding doesn't work from xpcall.
					-- As a workaround, you can mark nodes as "not xpcallable"
					local call = noXpcall and pcall or xpcall

					-- Any code can check RUNNING_GLOBAL to fork behavior based on
					-- whether a test is running. We use this to avoid accessing
					-- protected APIs; it's a workaround that will go away someday.
					_G[RUNNING_GLOBAL] = true

					local nodeSuccess, nodeResult = call(childPlanNode.callback, function(message)
						return message .. "\n" .. debug.traceback()
					end)

					_G[RUNNING_GLOBAL] = nil

					-- If a node threw an error, we prefer to use that message over
					-- one created by fail() if it was set.
					if not nodeSuccess then
						success = false
						errorMessage = nodeResult
					end

					if success then
						childResultNode.status = TestEnum.TestStatus.Success
					else
						childResultNode.status = TestEnum.TestStatus.Failure
						table.insert(childResultNode.errors, errorMessage)
					end
				end
			end
		elseif childPlanNode.type == TestEnum.NodeType.Describe or childPlanNode.type == TestEnum.NodeType.Try then
			if childPlanNode.type == TestEnum.NodeType.Try then tryStack:push({isOk = true, failedNode = nil}) end
			TestRunner.runPlanNode(session, childPlanNode, tryStack, childPlanNode.HACK_NO_XPCALL)
			if childPlanNode.type == TestEnum.NodeType.Try then tryStack:pop() end

			local status = TestEnum.TestStatus.Success

			-- Did we have an error trying build a test plan?
			if childPlanNode.loadError then
				status = TestEnum.TestStatus.Failure

				local message = "Error during planning: " .. childPlanNode.loadError

				table.insert(childResultNode.errors, message)
			else
				local skipped = true

				-- If all children were skipped, then we were skipped
				-- If any child failed, then we failed!
				for _, child in ipairs(childResultNode.children) do
					if child.status ~= TestEnum.TestStatus.Skipped then
						skipped = false

						if child.status == TestEnum.TestStatus.Failure then
							status = TestEnum.TestStatus.Failure
						end
					end
				end

				if skipped then
					status = TestEnum.TestStatus.Skipped
				end
			end

			childResultNode.status = status
		end

		session:popNode()
	end
end

return TestRunner