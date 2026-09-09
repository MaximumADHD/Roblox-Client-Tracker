-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-runner/src/types.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent

local environmentModule = require(Packages.JestEnvironment)
type JestEnvironment = environmentModule.JestEnvironment
local test_resultModule = require(Packages.JestTestResult)
type SerializableError = test_resultModule.SerializableError
type Test = test_resultModule.Test
type TestResult = test_resultModule.TestResult
local typesModule = require(Packages.JestTypes)
type Promise<T> = typesModule.Promise<T>
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type RuntimeType = any

export type OnTestStart = (test: Test) -> Promise<nil>
export type OnTestFailure = (test: Test, serializableError: SerializableError) -> Promise<nil>
export type OnTestSuccess = (test: Test, testResult: TestResult) -> Promise<nil>

export type TestFramework = (
	globalConfig: Config_GlobalConfig,
	config: Config_ProjectConfig,
	environment: JestEnvironment,
	runtime: RuntimeType,
	testPath: ModuleScript
) -> Promise<TestResult>

export type TestRunnerOptions = { serial: boolean }

-- make sure all props here are present in the type below it as well
export type TestRunnerContext = {
	changedFiles: any?,
	sourcesRelatedToTestsInChangedFiles: any?,
}
type WatcherState = { interrupted: boolean }
export type TestWatcher = {
	state: WatcherState,
	setState: (self: TestWatcher, state: WatcherState) -> (),
	isInterrupted: (self: TestWatcher) -> boolean,
	isWatchMode: (self: TestWatcher) -> boolean,
}
return {}
