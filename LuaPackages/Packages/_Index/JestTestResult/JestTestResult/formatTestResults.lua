-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-test-result/src/formatTestResults.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object

local types = require(CurrentModule.types)
type AggregatedResult = types.AggregatedResult
type AssertionResult = types.AssertionResult
type CodeCoverageFormatter = types.CodeCoverageFormatter
type CodeCoverageReporter = types.CodeCoverageReporter
type FormattedAssertionResult = types.FormattedAssertionResult
type FormattedTestResult = types.FormattedTestResult
type FormattedTestResults = types.FormattedTestResults
type TestResult = types.TestResult

local formatTestAssertion

local function formatTestResult(
	testResult: TestResult,
	codeCoverageFormatter: CodeCoverageFormatter?,
	reporter: CodeCoverageReporter?
): FormattedTestResult
	local assertionResults = Array.map(testResult.testResults, formatTestAssertion)
	if testResult.testExecError ~= nil then
		local now = DateTime.now().UnixTimestampMillis
		return {
			assertionResults = assertionResults,
			coverage = {},
			endTime = now,
			message = if testResult.failureMessage ~= nil
				then testResult.failureMessage
				else testResult.testExecError.message,
			name = testResult.testFilePath,
			startTime = now,
			status = "failed",
			summary = "",
		}
	else
		local allTestsPassed = testResult.numFailingTests == 0
		return {
			assertionResults = assertionResults,
			coverage = if codeCoverageFormatter ~= nil
				then codeCoverageFormatter(testResult.coverage, reporter)
				else testResult.coverage,
			endTime = testResult.perfStats.end_,
			message = if testResult.failureMessage ~= nil then testResult.failureMessage else "",
			name = testResult.testFilePath,
			startTime = testResult.perfStats.start,
			status = if Boolean.toJSBoolean(allTestsPassed) then "passed" else "failed",
			summary = "",
		}
	end
end

function formatTestAssertion(assertion: AssertionResult): FormattedAssertionResult
	local result: FormattedAssertionResult = {
		ancestorTitles = assertion.ancestorTitles,
		failureMessages = nil,
		fullName = assertion.fullName,
		location = assertion.location,
		status = assertion.status,
		title = assertion.title,
	}
	if assertion.failureMessages then
		result.failureMessages = assertion.failureMessages
	end
	return result
end

local function formatTestResults(
	results: AggregatedResult,
	codeCoverageFormatter: CodeCoverageFormatter?,
	reporter: CodeCoverageReporter?
): FormattedTestResults
	local testResults = Array.map(results.testResults, function(testResult)
		return formatTestResult(testResult, codeCoverageFormatter, reporter)
	end)
	return Object.assign({}, results, { testResults = testResults })
end

return {
	default = formatTestResults,
}
