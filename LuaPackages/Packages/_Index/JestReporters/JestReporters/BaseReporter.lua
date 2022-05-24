-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-reporters/src/BaseReporter.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Set<T> = LuauPolyfill.Set<T>
type Error = LuauPolyfill.Error

local exports = {}

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type TestCaseResult = testResultModule.TestCaseResult
type TestResult = testResultModule.TestResult

local preRunMessageRemove = require(Packages.JestUtil).remove

local typesModule = require(CurrentModule.types)
type Context = typesModule.Context
type Reporter = typesModule.Reporter
type ReporterOnStartOptions = typesModule.ReporterOnStartOptions
type Test = typesModule.Test
type NodeProcessMock = typesModule.NodeProcessMock

local RobloxShared = require(Packages.RobloxShared)
local Writeable = RobloxShared.Writeable
type Writeable = RobloxShared.Writeable

export type BaseReporter = {
	log: (self: BaseReporter, message: string) -> (),
	onRunStart: (self: BaseReporter, _results: AggregatedResult?, _options: ReporterOnStartOptions?) -> (),
	onTestCaseResult: (self: BaseReporter, _test: Test, _testCaseResult: TestCaseResult) -> (),
	onTestResult: (self: BaseReporter, _test: Test?, _testResult: TestResult?, _results: AggregatedResult?) -> (),
	onTestStart: (self: BaseReporter, _test: Test?) -> (),
	onRunComplete: (self: BaseReporter, _contexts: Set<Context>?, _aggregatedResults: AggregatedResult?) -> (),
	getLastError: (self: BaseReporter) -> (Error | nil),
	_process: NodeProcessMock,
}

local BaseReporter = {}
BaseReporter.__index = BaseReporter

function BaseReporter.new(_process: any): BaseReporter
	local self = setmetatable({}, BaseReporter)
	-- ROBLOX deviation START: Replace process.stdout/stderr
	self._process = Object.assign({}, {
		env = {},
		stdout = Writeable.new(),
		stderr = Writeable.new(),
	}, _process or {})
	-- ROBLOX deviation END
	return (self :: any) :: BaseReporter
end

function BaseReporter:log(message: string): ()
	self._process.stderr:write(message)
end

function BaseReporter:onRunStart(_results: AggregatedResult?, _options: ReporterOnStartOptions?): ()
	preRunMessageRemove(self._process.stderr)
end

function BaseReporter:onTestCaseResult(_test: Test, _testCaseResult: TestCaseResult): () end

function BaseReporter:onTestResult(_test: Test?, _testResult: TestResult?, _results: AggregatedResult?): () end

function BaseReporter:onTestStart(_test: Test?): () end

function BaseReporter:onRunComplete(_contexts: Set<Context>?, _aggregatedResults: AggregatedResult?): () end

function BaseReporter:_setError(error_): ()
	self._error = error_
end

-- Return an error that occurred during reporting. This error will
-- define whether the test run was successful or failed.
function BaseReporter:getLastError(): (Error | nil)
	return self._error
end

exports.default = BaseReporter

return exports
