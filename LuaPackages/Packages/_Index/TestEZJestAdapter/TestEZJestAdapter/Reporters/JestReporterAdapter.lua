local Packages = script.Parent.Parent.Parent
local JestTestResult = require(Packages.JestTestResult)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Set = LuauPolyfill.Set
local String = LuauPolyfill.String

local TestService = game:GetService("TestService")

type Array<T> = LuauPolyfill.Array<T>

local chalk = require(Packages.ChalkLua)

type Test = JestTestResult.Test
type Status = JestTestResult.Status
type AssertionResult = JestTestResult.AssertionResult
type AggregatedResult = JestTestResult.AggregatedResult
type TestResult = JestTestResult.TestResult
type TestCaseResult = JestTestResult.TestCaseResult

type unknown = nil
type Function = (...any) -> ...any

---- TEST EZ types ----
type TestEZStatus = "Success" | "Failure" | "Skipped"
type TestEZResult = {
	successCount: unknown,
	failureCount: unknown,
	skippedCount: unknown,
	planNode: PlanNode,
	children: Array<TestEZResult>,
	errors: Array<string>,
	status: TestEZStatus,
	startTime: number?,
}

type PlanNode = {
	plan: unknown,
	phrase: string,
	type: any,
	modifier: any,
	children: Array<PlanNode>,
	callback: Function?,
	parent: PlanNode?,
	environment: unknown,
	isRoot: boolean?,
	instance: Instance?,
}
-----------------------

local function getTestFilePath(fileNode: TestEZResult)
	local path = ""

	local curr: PlanNode? = fileNode.planNode
	while curr do
		local currName = if typeof(curr.instance) == "Instance"
			then curr.phrase .. "/" .. curr.instance.Name
			else curr.phrase
		path = if path == "" then currName else curr.phrase .. "/" .. path
		curr = curr.parent
	end
	return path
end

local function getTestFailurePath(fileNode: TestEZResult)
	local path = ""
	local curr: PlanNode? = fileNode.planNode
	while curr and not curr.isRoot do
		local currName = if typeof(curr.instance) == "Instance"
			then curr.phrase .. " › " .. curr.instance.Name
			else curr.phrase
		path = if path == "" then currName else curr.phrase .. " › " .. path
		curr = curr.parent
	end
	return path
end

local function getTestResult(node: TestEZResult, path: Array<string>)
	return {
		ancestorTitles = path,
		title = node.planNode.phrase,
		fullName = ("%s/%s"):format(Array.join(path, "/"), node.planNode.phrase),
		status = if node.status == "Success" then "passed" elseif node.status == "Failure" then "failed" else "pending",
	}
end

local function getTestResults(fileNode: TestEZResult, path_: Array<string>?)
	local path = path_ or {}
	return Array.reduce(fileNode.children, function(results, child)
		if child.planNode.type == "It" then
			table.insert(results, getTestResult(child, path))
		else
			local newPath = Array.concat({}, path, { child.planNode.phrase })
			results = Array.concat(results, getTestResults(child, newPath))
		end
		return results
	end, {})
end

local function getTestSuiteResults(fileNode: TestEZResult, path_: Array<string>?)
	local path = path_ or {}
	return Array.reduce(fileNode.children, function(results, child)
		if child.planNode.isRoot then
			table.insert(results, getTestResult(child, path))
		else
			local newPath = Array.concat({}, path, { child.planNode.phrase })
			results = Array.concat(results, getTestSuiteResults(child, newPath))
		end
		return results
	end, {})
end

local function countResults(testResults: Array<AssertionResult>, status: Status)
	return #Array.filter(testResults, function(res)
		return res.status == status
	end)
end

local function testNodeToTest(node: TestEZResult): Test
	return {
		context = { config = { rootDir = "/" } :: any },
		duration = 0,
		path = getTestFilePath(node),
	}
end

local function getFailureMessages(node: TestEZResult): Array<string>
	local failureMessages = {}

	if node.status == "Failure" then
		failureMessages = Array.concat(
			failureMessages,
			Array.map(node.errors, function(err)
				return chalk.red(chalk.bold("  ● " .. getTestFailurePath(node))) .. "\n\n" .. String.trim(err)
			end)
		)
		for _, child in ipairs(node.children) do
			failureMessages = Array.concat(failureMessages, getFailureMessages(child))
		end
	end

	return failureMessages
end

local function testNodeToTestResult(node: TestEZResult): TestResult
	local testResult = getTestResults(node)
	local failureMessages = getFailureMessages(node)
	return {
		snapshot = {
			added = 0,
			fileDeleted = false,
			matched = 0,
			unchecked = 0,
			unmatched = 0,
			updated = 0,
			total = 0,
			uncheckedKeys = {},
		},
		failureMessage = if #failureMessages > 0 then "\n" .. Array.join(failureMessages, "\n\n") .. "\n" else nil,
		testFilePath = getTestFilePath(node),
		numFailingTests = countResults(testResult, "failed"),
		numPassingTests = countResults(testResult, "passed"),
		numPendingTests = countResults(testResult, "pending"),
		numTodoTests = countResults(testResult, "todo"),
		testResults = testResult,
		skipped = node.status == "Skipped",
		-- ROBLOX NOTE: we're not using the following props ATM, but they are required by the TestResult type
		leaks = false,
		openHandles = {},
		perfStats = nil :: any,
	}
end

local function testNodeToAggregatedResults(node: TestEZResult): AggregatedResult
	local testResult = getTestResults(node)
	local testSuiteResult = getTestSuiteResults(node)
	return {
		numFailedTests = countResults(testResult, "failed"),
		numPassedTests = countResults(testResult, "passed"),
		numPendingTests = countResults(testResult, "pending"),
		numTodoTests = countResults(testResult, "todo"),
		numTotalTests = #testResult,
		numFailedTestSuites = countResults(testSuiteResult, "failed"),
		numPassedTestSuites = countResults(testSuiteResult, "passed"),
		numPendingTestSuites = countResults(testSuiteResult, "pending"),
		numTotalTestSuites = #testSuiteResult,
		numRuntimeErrorTestSuites = 0,
		openHandles = {},
		snapshot = {
			added = 0,
			didUpdate = false,
			failure = false,
			filesAdded = 0,
			filesRemoved = 0,
			filesRemovedList = {},
			filesUnmatched = 0,
			filesUpdated = 0,
			matched = 0,
			total = 0,
			unchecked = 0,
			uncheckedKeysByFile = {},
			unmatched = 0,
			updated = 0,
		},
		startTime = node.startTime or DateTime.now().UnixTimestampMillis,
		success = false,
		testResults = {},
		wasInterrupted = false,
	}
end

local function reporterAdapter(reporter)
	local function compareNodes(a: TestEZResult, b: TestEZResult): boolean
		return a.planNode.phrase:lower() < b.planNode.phrase:lower()
	end

	local function reportNode(node: TestEZResult)
		if node.planNode.isRoot then
			local test: Test = testNodeToTest(node)
			local aggregatedResults = testNodeToAggregatedResults(node)
			local testFileResult = testNodeToTestResult(node)
			reporter:onTestResult(test, testFileResult, aggregatedResults)
		end

		table.sort(node.children, compareNodes)

		for _, child in ipairs(node.children) do
			reportNode(child)
		end
	end

	local function reportRoot(node: TestEZResult)
		table.sort(node.children, compareNodes)

		for _, child in ipairs(node.children) do
			reportNode(child)
		end

		local aggregatedResults = testNodeToAggregatedResults(node)

		reporter:onRunComplete(Set.new(), aggregatedResults)
		if aggregatedResults.numFailedTests > 0 then
			TestService:Error(("%s test(s) failed."):format(tostring(aggregatedResults.numFailedTests)))
		end
	end

	return {
		report = reportRoot,
	}
end

return {
	createReporter = reporterAdapter,
}
