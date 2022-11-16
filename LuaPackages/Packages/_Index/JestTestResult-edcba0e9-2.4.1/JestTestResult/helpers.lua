-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-test-result/src/helpers.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path

local types = require(CurrentModule.types)
type AggregatedResult = types.AggregatedResult
type SerializableError = types.SerializableError
type TestResult = types.TestResult

local function makeEmptyAggregatedTestResult(): AggregatedResult
	return {
		numFailedTestSuites = 0,
		numFailedTests = 0,
		numPassedTestSuites = 0,
		numPassedTests = 0,
		numPendingTestSuites = 0,
		numPendingTests = 0,
		numRuntimeErrorTestSuites = 0,
		numTodoTests = 0,
		numTotalTestSuites = 0,
		numTotalTests = 0,
		openHandles = {},
		snapshot = {
			added = 0,
			didUpdate = false, -- is set only after the full run
			failure = false,
			filesAdded = 0, -- combines individual test results + removed files after the full run
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
		startTime = 0,
		success = true,
		testResults = {},
		wasInterrupted = false,
	}
end

-- Add individual test result to an aggregated test result
local function buildFailureTestResult(testPath: Config_Path, err: SerializableError): TestResult
	return {
		console = nil,
		displayName = nil,
		failureMessage = nil,
		leaks = false,
		numFailingTests = 0,
		numPassingTests = 0,
		numPendingTests = 0,
		numTodoTests = 0,
		openHandles = {},
		perfStats = { end_ = 0, runtime = 0, slow = false, start = 0 },
		skipped = false,
		snapshot = {
			added = 0,
			fileDeleted = false,
			matched = 0,
			unchecked = 0,
			uncheckedKeys = {},
			unmatched = 0,
			updated = 0,
		},
		testExecError = err,
		testFilePath = testPath,
		testResults = {},
	}
end

local function addResult(aggregatedResults: AggregatedResult, testResult: TestResult): ()
	-- `todos` are new as of Jest 24, and not all runners return it.
	-- Set it to `0` to avoid `NaN`
	if not Boolean.toJSBoolean(testResult.numTodoTests) then
		testResult.numTodoTests = 0
	end
	table.insert(aggregatedResults.testResults, testResult)
	aggregatedResults.numTotalTests += testResult.numPassingTests + testResult.numFailingTests + testResult.numPendingTests + testResult.numTodoTests
	aggregatedResults.numFailedTests += testResult.numFailingTests
	aggregatedResults.numPassedTests += testResult.numPassingTests
	aggregatedResults.numPendingTests += testResult.numPendingTests
	aggregatedResults.numTodoTests += testResult.numTodoTests
	if Boolean.toJSBoolean(testResult.testExecError) then
		aggregatedResults.numRuntimeErrorTestSuites += 1
	end
	if Boolean.toJSBoolean(testResult.skipped) then
		aggregatedResults.numPendingTestSuites += 1
	elseif Boolean.toJSBoolean(testResult.numFailingTests > 0 or testResult.testExecError) then
		aggregatedResults.numFailedTestSuites += 1
	else
		aggregatedResults.numPassedTestSuites += 1
	end -- Snapshot data
	if Boolean.toJSBoolean(testResult.snapshot.added) then
		aggregatedResults.snapshot.filesAdded += 1
	end
	if Boolean.toJSBoolean(testResult.snapshot.fileDeleted) then
		aggregatedResults.snapshot.filesRemoved += 1
	end
	if Boolean.toJSBoolean(testResult.snapshot.unmatched) then
		aggregatedResults.snapshot.filesUnmatched += 1
	end
	if Boolean.toJSBoolean(testResult.snapshot.updated) then
		aggregatedResults.snapshot.filesUpdated += 1
	end
	aggregatedResults.snapshot.added += testResult.snapshot.added
	aggregatedResults.snapshot.matched += testResult.snapshot.matched
	aggregatedResults.snapshot.unchecked += testResult.snapshot.unchecked
	if
		Boolean.toJSBoolean(
			if Boolean.toJSBoolean(testResult.snapshot.uncheckedKeys)
				then #testResult.snapshot.uncheckedKeys > 0
				else testResult.snapshot.uncheckedKeys
		)
	then
		table.insert(
			aggregatedResults.snapshot.uncheckedKeysByFile,
			{ filePath = testResult.testFilePath, keys = testResult.snapshot.uncheckedKeys }
		)
	end
	aggregatedResults.snapshot.unmatched += testResult.snapshot.unmatched
	aggregatedResults.snapshot.updated += testResult.snapshot.updated
	aggregatedResults.snapshot.total += testResult.snapshot.added + testResult.snapshot.matched + testResult.snapshot.unmatched + testResult.snapshot.updated
end

local function createEmptyTestResult(): TestResult
	return {
		leaks = false, -- That's legacy code, just adding it as needed for typing
		numFailingTests = 0,
		numPassingTests = 0,
		numPendingTests = 0,
		numTodoTests = 0,
		openHandles = {},
		perfStats = { end_ = 0, runtime = 0, slow = false, start = 0 },
		skipped = false,
		snapshot = {
			added = 0,
			fileDeleted = false,
			matched = 0,
			unchecked = 0,
			uncheckedKeys = {},
			unmatched = 0,
			updated = 0,
		},
		testFilePath = "",
		testResults = {},
	}
end

return {
	makeEmptyAggregatedTestResult = makeEmptyAggregatedTestResult,
	buildFailureTestResult = buildFailureTestResult,
	addResult = addResult,
	createEmptyTestResult = createEmptyTestResult,
}
