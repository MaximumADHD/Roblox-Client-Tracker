-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-runner/src/types.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>
type Set<T> = LuauPolyfill.Set<T>

type void = nil

-- ROBLOX deviation: no emittery available
type Emittery<T> = any
local environmentModule = require(Packages.JestEnvironment)
type JestEnvironment = environmentModule.JestEnvironment
local test_resultModule = require(Packages.JestTestResult)
type SerializableError = test_resultModule.SerializableError
type Context = test_resultModule.Context
type Test = test_resultModule.Test
type TestFileEvent = test_resultModule.TestFileEvent
type TestResult = test_resultModule.TestResult
local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_Path = typesModule.Config_Path
type Config_ProjectConfig = typesModule.Config_ProjectConfig
-- ROBLOX TODO:
-- local jest_runtimeModule = require(Packages.JestRuntime)
type RuntimeType = any -- jest_runtimeModule.default

export type ErrorWithCode = Error & { code: string? }

export type OnTestStart = (test: Test) -> Promise<nil>
export type OnTestFailure = (test: Test, serializableError: SerializableError) -> Promise<nil>
export type OnTestSuccess = (test: Test, testResult: TestResult) -> Promise<nil>

export type TestFramework = (
	globalConfig: Config_GlobalConfig,
	config: Config_ProjectConfig,
	environment: JestEnvironment,
	runtime: RuntimeType,
	-- ROBLOX deviation: accept ModuleScript instead of string
	testPath: ModuleScript,
	sendMessageToJest: TestFileEvent?
) -> Promise<TestResult>

export type TestRunnerOptions = { serial: boolean }

-- make sure all props here are present in the type below it as well
export type TestRunnerContext = {
	changedFiles: Set<Config_Path>?,
	sourcesRelatedToTestsInChangedFiles: Set<Config_Path>?,
}
type SerializeSet<T> = any --[[ ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ T extends Set<infer U> ? Array<U> : T ]]
export type TestRunnerSerializedContext = any --[[ ROBLOX TODO: Unhandled node for type: TSMappedType ]] --[[ {
  [K in keyof TestRunnerContext]: SerializeSet<TestRunnerContext[K]>;
} ]]
export type UnsubscribeFn = () -> ()
export type CallbackTestRunnerInterface = {
	isSerial: boolean?,
	supportsEventEmitters: boolean?,
	runTests: (
		self: CallbackTestRunnerInterface,
		tests: Array<Test>,
		watcher: TestWatcher,
		onStart: OnTestStart,
		onResult: OnTestSuccess,
		onFailure: OnTestFailure,
		options: TestRunnerOptions
	) -> Promise<void>,
}

-- TODO: Should live in `@jest/core` or `jest-watcher`
type WatcherState = { interrupted: boolean }
export type TestWatcher = Emittery<{ change: WatcherState }> & {
	state: WatcherState,
	setState: (self: TestWatcher, state: WatcherState) -> (),
	isInterrupted: (self: TestWatcher) -> boolean,
	isWatchMode: (self: TestWatcher) -> boolean,
}
return {}
