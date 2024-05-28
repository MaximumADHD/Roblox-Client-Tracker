-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-reporters/src/types.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

type unknown = any --[[ ROBLOX FIXME: adding `unknown` type alias to make it easier to use Luau unknown equivalent when supported ]]
type void = nil

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>
type Set<T> = LuauPolyfill.Set<T>

local exports = {}

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type SerializableError = testResultModule.SerializableError
type TestCaseResult = testResultModule.TestCaseResult
type TestResult = testResultModule.TestResult

local jestTypesModule = require(Packages.JestTypes)
type Config_Path = jestTypesModule.Config_Path
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig

-- ROBLOX deviation START: any types that aren't ported and we don't need
-- local jest_haste_mapModule = require(Packages["jest-haste-map"])
type HasteFS = any
type ModuleMap = any

-- local jest_resolveModule = require(Packages["jest-resolve"])
type Resolver = any

-- local CoverageWorkerModule = require(CurrentModule.CoverageWorker)
-- type worker = CoverageWorkerModule.worker
type worker = any
-- ROBLOX deviation END

-- ROBLOX deviation START: type for mock process param used added to Reporters
local RobloxShared = require(Packages.RobloxShared)
type Writeable = RobloxShared.Writeable
export type NodeProcessMock = {
	env: {
		[string]: unknown,
	},
	stdout: Writeable,
	stderr: Writeable,
}
-- ROBLOX deviation END

export type ReporterOnStartOptions = { estimatedTime: number, showStatus: boolean }

export type Context = {
	config: Config_ProjectConfig,
	hasteFS: HasteFS,
	moduleMap: ModuleMap,
	resolver: Resolver,
}

export type Test = { context: Context, duration: number?, path: Config_Path }

export type CoverageWorker = { worker: worker }

export type CoverageReporterOptions = {
	changedFiles: Set<Config_Path>?,
	sourcesRelatedToTestsInChangedFiles: Set<Config_Path>?,
}

export type CoverageReporterSerializedOptions = {
	changedFiles: Array<Config_Path>?,
	sourcesRelatedToTestsInChangedFiles: Array<Config_Path>?,
}

export type OnTestStart = (test: Test) -> Promise<void>

export type OnTestFailure = (test: Test, error_: SerializableError) -> Promise<unknown>

export type OnTestSuccess = (test: Test, result: TestResult) -> Promise<unknown>

export type Reporter = {
	onTestResult: ((
		self: Reporter,
		test: Test,
		testResult: TestResult,
		aggregatedResult: AggregatedResult
	) -> Promise<void> | void)?,
	onTestFileResult: ((
		self: Reporter,
		test: Test,
		testResult: TestResult,
		aggregatedResult: AggregatedResult
	) -> Promise<void> | void)?,
	onTestCaseResult: ((self: Reporter, test: Test, testCaseResult: TestCaseResult) -> Promise<void> | void)?,
	onRunStart: (self: Reporter, results: AggregatedResult, options: ReporterOnStartOptions) -> Promise<void> | void,
	onTestStart: ((self: Reporter, test: Test) -> Promise<void> | void)?,
	onTestFileStart: ((self: Reporter, test: Test) -> Promise<void> | void)?,
	onRunComplete: (self: Reporter, contexts: Set<Context>, results: AggregatedResult) -> Promise<void> | void,
	getLastError: (self: Reporter) -> Error | void,
}

export type SummaryOptions = {
	currentTestCases: Array<{ test: Test, testCaseResult: TestCaseResult }>?,
	estimatedTime: number?,
	roundTime: boolean?,
	width: number?,
}

export type TestRunnerOptions = { serial: boolean }

export type TestRunData = Array<{
	context: Context,
	matches: { allTests: number, tests: Array<Test>, total: number },
}>

export type TestSchedulerContext = {
	firstRun: boolean,
	previousSuccess: boolean,
	changedFiles: Set<Config_Path>?,
}

return exports
