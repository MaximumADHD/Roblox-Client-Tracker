-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-test-result/src/types.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent

type CoverageMap = any
type CoverageMapData = any
type ConsoleBuffer = any

local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Config_DisplayName = typesModule.Config_DisplayName
type TestResult_SerializableError = typesModule.TestResult_SerializableError
type TestResult_Callsite = typesModule.TestResult_Callsite
type TestResult_Status = typesModule.TestResult_Status
type TestResult_AssertionResult = typesModule.TestResult_AssertionResult
type TestResult_Milliseconds = typesModule.TestResult_Milliseconds
type Error = typesModule.Error

export type SerializableError = TestResult_SerializableError

export type FailedAssertion = {
	matcherName: string?,
	message: string?,
	actual: unknown?,
	pass: boolean?,
	passed: boolean?,
	expected: unknown?,
	isNot: boolean?,
	stack: string?,
	error_: unknown?,
}

export type AssertionLocation = { fullName: string, path: string }

export type Status = TestResult_Status

export type Bytes = number

export type Milliseconds = TestResult_Milliseconds

export type AssertionResult = TestResult_AssertionResult

export type FormattedAssertionResult = {
	ancestorTitles: { string },
	duration: (TestResult_Milliseconds | nil)?,
	fullName: string,
	location: (TestResult_Callsite | nil)?,
	status: Status,
	title: string,
	failureMessages: { string } | nil,
}

export type AggregatedResultWithoutCoverage = {
	numFailedTests: number,
	numFailedTestSuites: number,
	numPassedTests: number,
	numPassedTestSuites: number,
	numPendingTests: number,
	numTodoTests: number,
	numPendingTestSuites: number,
	numRuntimeErrorTestSuites: number,
	numTotalTests: number,
	numTotalTestSuites: number,
	openHandles: { Error },
	snapshot: SnapshotSummary,
	startTime: number,
	success: boolean,
	testResults: { TestResult },
	wasInterrupted: boolean,
}

export type AggregatedResult = AggregatedResultWithoutCoverage & {
	coverageMap: (any | nil)?,
}

export type TestResultsProcessor = (results: AggregatedResult) -> AggregatedResult

export type Suite = { title: string, suites: { Suite }, tests: { AssertionResult } }

export type TestCaseResult = AssertionResult

export type Snapshot = {
	added: number,
	fileDeleted: boolean,
	matched: number,
	unchecked: number,
	uncheckedKeys: { string },
	unmatched: number,
	updated: number,
}

export type TestResult = {
	console: ConsoleBuffer?,
	coverage: any?,
	displayName: Config_DisplayName?,
	failureMessage: (string | nil)?,
	leaks: boolean,
	memoryUsage: Bytes?,
	numFailingTests: number,
	numPassingTests: number,
	numPendingTests: number,
	numTodoTests: number,
	openHandles: { Error },
	perfStats: { ["end"]: Milliseconds, runtime: Milliseconds, slow: boolean, start: Milliseconds },
	skipped: boolean,
	snapshot: Snapshot,
	testExecError: SerializableError?,
	testFilePath: string,
	testResults: { AssertionResult },
}

export type FormattedTestResult = {
	message: string,
	name: string,
	summary: string,
	status: string,
	startTime: number,
	endTime: number,
	coverage: unknown,
	assertionResults: { FormattedAssertionResult },
}

export type FormattedTestResults = {
	coverageMap: (CoverageMap | nil)?,
	numFailedTests: number,
	numFailedTestSuites: number,
	numPassedTests: number,
	numPassedTestSuites: number,
	numPendingTests: number,
	numPendingTestSuites: number,
	numRuntimeErrorTestSuites: number,
	numTotalTests: number,
	numTotalTestSuites: number,
	snapshot: SnapshotSummary,
	startTime: number,
	success: boolean,
	testResults: { FormattedTestResult },
	wasInterrupted: boolean,
}

export type CodeCoverageReporter = unknown

export type CodeCoverageFormatter = (
	coverage: CoverageMapData | nil,
	reporter: CodeCoverageReporter
) -> { [string]: unknown }?

export type UncheckedSnapshot = { filePath: string, keys: { string } }

export type SnapshotSummary = {
	added: number,
	didUpdate: boolean,
	failure: boolean,
	filesAdded: number,
	filesRemoved: number,
	filesRemovedList: { string },
	filesUnmatched: number,
	filesUpdated: number,
	matched: number,
	total: number,
	unchecked: number,
	uncheckedKeysByFile: { UncheckedSnapshot },
	unmatched: number,
	updated: number,
}

export type Test = { context: Context, duration: number?, path: Config_Path, script: ModuleScript }

export type Context = {
	config: Config_ProjectConfig,
}

-- Typings for `sendMessageToJest` events
export type TestEvents = {
	["test-file-start"]: { Test },
	["test-file-success"]: { Test | TestResult },
	["test-file-failure"]: { Test | SerializableError },
	["test-case-result"]: { string | AssertionResult },
}

type KeyOfTestEvents = "test-file-start" | "test-file-success" | "test-file-failure" | "test-case-result"

export type TestFileEvent<T = KeyOfTestEvents> = (eventName: T, args: any) -> unknown

return {}
