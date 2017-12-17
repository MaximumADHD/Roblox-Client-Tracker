--[[
	Contains the logic to run a test plan and gather test results from it.

	TestRunner accepts a TestPlan object, executes the planned tests, and
	produces a TestResults object. While the tests are running, the system's
	state is contained inside a TestSession object.
]]

local Expectation = require(script.Parent.Expectation)
local TestEnum = require(script.Parent.TestEnum)
local TestSession = require(script.Parent.TestSession)

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

	local exclusiveNodes = plan:findNodes(function(node)
		return node.modifier == TestEnum.NodeModifier.Focus
	end)

	session.hasFocusNodes = #exclusiveNodes > 0

	TestRunner.runPlanNode(session, plan)

	return session:finalize()
end

--[[
	Run the given test plan node and its descendants, using the given test
	session to store all of the results.
]]
function TestRunner.runPlanNode(session, planNode, noXpcall)
	for _, childPlanNode in ipairs(planNode.children) do
		local childResultNode = session:pushNode(childPlanNode)

		if childPlanNode.type == TestEnum.NodeType.It then
			if session:shouldSkip() then
				childResultNode.status = TestEnum.TestStatus.Skipped
			else
				-- Apply environment for test functions
				local baseEnv = getfenv(childPlanNode.callback)
				for key, value in pairs(TestRunner.environment) do
					baseEnv[key] = value
				end

				-- We prefer xpcall, but yielding doesn't work from xpcall.
				-- As a workaround, you can mark nodes as "not xpcallable"
				local call = noXpcall and pcall or xpcall

				local ok, err = call(childPlanNode.callback, function(err)
					return err .. "\n" .. debug.traceback()
				end)

				if ok then
					childResultNode.status = TestEnum.TestStatus.Success
				else
					childResultNode.status = TestEnum.TestStatus.Failure
					table.insert(childResultNode.errors, err)
				end
			end
		elseif childPlanNode.type == TestEnum.NodeType.Describe then
			TestRunner.runPlanNode(session, childPlanNode, childPlanNode.HACK_NO_XPCALL)

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