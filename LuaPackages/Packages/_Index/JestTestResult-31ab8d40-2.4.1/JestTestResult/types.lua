-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-test-result/src/types.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
type unknown = any --[[ ROBLOX FIXME: adding `unknown` type alias to make it easier to use Luau unknown equivalent when supported ]]

local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Record<K, T> = { [K]: T }

-- ROBLOX deviation START: collect-v8-coverage package not available
-- local collect_v8_coverageModule = require(Packages["collect-v8-coverage"])
-- type V8Coverage = collect_v8_coverageModule.V8Coverage
-- local istanbul_lib_coverageModule = require(Packages["istanbul-lib-coverage"])
-- type any = istanbul_lib_coverageModule.any
-- type CoverageMapData = istanbul_lib_coverageModule.CoverageMapData
type CoverageMap = any
type CoverageMapData = any
-- ROBLOX deviation END

-- ROBLOX TODO: once jest-console package is available
-- local consoleModule = require(Packages["@jest"].console)
type ConsoleBuffer = any -- [[ consoleModule.ConsoleBuffer ]]

local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Config_DisplayName = typesModule.Config_DisplayName
type TestResult_SerializableError = typesModule.TestResult_SerializableError
type TestResult_Callsite = typesModule.TestResult_Callsite
type TestResult_Status = typesModule.TestResult_Status
type TestResult_AssertionResult = typesModule.TestResult_AssertionResult
type TestResult_Milliseconds = typesModule.TestResult_Milliseconds
type TransformTypes_TransformResult = typesModule.TransformTypes_TransformResult

-- ROBLOX TODO: once jest-haste-map package is available
-- local jest_haste_mapModule = require(Packages["jest-haste-map"])
type HasteFS = any -- [[ jest_haste_mapModule.FS ]]
type ModuleMap = any -- [[ jest_haste_mapModule.ModuleMap ]]

-- ROBLOX TODO: once jest-resolve package is available
-- local jest_resolveModule = require(Packages["jest-resolve"])
type Resolver = any -- [[ jest_resolveModule.default ]]

export type RuntimeTransformResult = TransformTypes_TransformResult & { wrapperLength: number }

export type V8CoverageResult = Array<{
	codeTransformResult: RuntimeTransformResult | nil,
	result: any, --[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]] --[[ V8Coverage[number] ]]
}>

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

-- ROBLOX deviation START: Pick<AssertionResult, "ancestorTitles" | "fullName" | "location" | "status" | "title">
export type FormattedAssertionResult = {
	ancestorTitles: Array<string>,
	fullName: string,
	location: (TestResult_Callsite | nil)?,
	status: Status,
	title: string,
	-- ROBLOX deviation: Added failureMessages directly to object instead of intersection
	failureMessages: Array<string> | nil,
	-- ROBLOX deviation END
}
-- ROBLOX deviation END

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
	openHandles: Array<Error>,
	snapshot: SnapshotSummary,
	startTime: number,
	success: boolean,
	testResults: Array<TestResult>,
	wasInterrupted: boolean,
}

export type AggregatedResult = AggregatedResultWithoutCoverage & {
	coverageMap: (any | nil)?,
}

export type TestResultsProcessor = (results: AggregatedResult) -> AggregatedResult

export type Suite = { title: string, suites: Array<Suite>, tests: Array<AssertionResult> }

export type TestCaseResult = AssertionResult

export type Snapshot = {
	added: number,
	fileDeleted: boolean,
	matched: number,
	unchecked: number,
	uncheckedKeys: Array<string>,
	unmatched: number,
	updated: number,
}

export type TestResult = {
	console: ConsoleBuffer?,
	coverage: any?, -- [[ ROBLOX TODO: convert any to CoverageMapData when type is available ]]
	displayName: Config_DisplayName?,
	failureMessage: (string | nil)?,
	leaks: boolean,
	memoryUsage: Bytes?,
	numFailingTests: number,
	numPassingTests: number,
	numPendingTests: number,
	numTodoTests: number,
	openHandles: Array<Error>,
	perfStats: { end_: Milliseconds, runtime: Milliseconds, slow: boolean, start: Milliseconds },
	skipped: boolean,
	snapshot: Snapshot,
	testExecError: SerializableError?,
	testFilePath: Config_Path,
	testResults: Array<AssertionResult>,
	v8Coverage: V8CoverageResult?,
}

export type FormattedTestResult = {
	message: string,
	name: string,
	summary: string,
	status: string,
	startTime: number,
	endTime: number,
	coverage: unknown,
	assertionResults: Array<FormattedAssertionResult>,
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
	testResults: Array<FormattedTestResult>,
	wasInterrupted: boolean,
}

export type CodeCoverageReporter = unknown

export type CodeCoverageFormatter = (
	coverage: CoverageMapData | nil,
	reporter: CodeCoverageReporter
) -> Record<string, unknown> | nil

export type UncheckedSnapshot = { filePath: string, keys: Array<string> }

export type SnapshotSummary = {
	added: number,
	didUpdate: boolean,
	failure: boolean,
	filesAdded: number,
	filesRemoved: number,
	filesRemovedList: Array<string>,
	filesUnmatched: number,
	filesUpdated: number,
	matched: number,
	total: number,
	unchecked: number,
	uncheckedKeysByFile: Array<UncheckedSnapshot>,
	unmatched: number,
	updated: number,
}

export type Test = { context: Context, duration: number?, path: Config_Path }

type Context = { config: Config_ProjectConfig, hasteFS: HasteFS, moduleMap: ModuleMap, resolver: Resolver }

-- Typings for `sendMessageToJest` events
export type TestEvents = {
	["test-file-start"]: Array<Test>,
	["test-file-success"]: Array<Test | TestResult>,
	["test-file-failure"]: Array<Test | SerializableError>,
	["test-case-result"]: Array<Config_Path | AssertionResult>,
}

-- ROBLOX deviation START: unroll `keyof TestEvents` as this operation is not supported in Luau
type KeyOfTestEvents = "test-file-start" | "test-file-success" | "test-file-failure" | "test-case-result"

export type TestFileEvent<T = KeyOfTestEvents> = (
	eventName: T,
	args: any --[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]] --[[ TestEvents[T] ]]
) -> unknown
-- ROBLOX deviation END

return {}
