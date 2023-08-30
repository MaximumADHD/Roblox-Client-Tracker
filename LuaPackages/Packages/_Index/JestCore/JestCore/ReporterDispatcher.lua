-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/ReporterDispatcher.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local instanceof = LuauPolyfill.instanceof
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>
type Set<T> = LuauPolyfill.Set<T>
local Promise = require(Packages.Promise)
type Function = (...any) -> ...any

local exports = {}

--[[ eslint-disable local/ban-types-eventually ]]

local reportersModule = require(Packages.JestReporters)
type Reporter = reportersModule.Reporter
type ReporterOnStartOptions = reportersModule.ReporterOnStartOptions
local test_resultModule = require(Packages.JestTestResult)
type AggregatedResult = test_resultModule.AggregatedResult
type Test = test_resultModule.Test
type TestCaseResult = test_resultModule.TestCaseResult
type TestResult = test_resultModule.TestResult
local jest_runtimeModule = require(Packages.JestRuntime)
type Context = jest_runtimeModule.Context

-- ROBLOX deviation START: add additional imports and types
local types = require(script.Parent.types)
type ReporterConstructor = types.ReporterConstructor
-- ROBLOX deviation END

export type ReporterDispatcher = {
	register: (self: ReporterDispatcher, reporter: Reporter) -> (),
	unregister: (self: ReporterDispatcher, reporterConstructor: ReporterConstructor) -> (),
	onTestFileResult: (
		self: ReporterDispatcher,
		test: Test,
		testResult: TestResult,
		results: AggregatedResult
	) -> Promise<nil>,
	onTestFileStart: (self: ReporterDispatcher, test: Test) -> Promise<nil>,
	onRunStart: (
		self: ReporterDispatcher,
		results: AggregatedResult,
		options: ReporterOnStartOptions
	) -> Promise<nil>,
	onTestCaseResult: (self: ReporterDispatcher, test: Test, testCaseResult: TestCaseResult) -> Promise<nil>,
	onRunComplete: (self: ReporterDispatcher, contexts: Set<Context>, results: AggregatedResult) -> Promise<nil>, -- Return a list of last errors for every reporter
	getErrors: (self: ReporterDispatcher) -> Array<Error>,
	hasErrors: (self: ReporterDispatcher) -> boolean,
}

type ReporterDispatcherPrivate = {
	_reporters: Array<Reporter>,

	register: (self: ReporterDispatcherPrivate, reporter: Reporter) -> (),
	unregister: (self: ReporterDispatcherPrivate, ReporterClass: Function) -> (),
	onTestFileResult: (
		self: ReporterDispatcherPrivate,
		test: Test,
		testResult: TestResult,
		results: AggregatedResult
	) -> Promise<nil>,
	onTestFileStart: (self: ReporterDispatcherPrivate, test: Test) -> Promise<nil>,
	onRunStart: (
		self: ReporterDispatcherPrivate,
		results: AggregatedResult,
		options: ReporterOnStartOptions
	) -> Promise<nil>,
	onTestCaseResult: (self: ReporterDispatcherPrivate, test: Test, testCaseResult: TestCaseResult) -> Promise<nil>,
	onRunComplete: (self: ReporterDispatcherPrivate, contexts: Set<Context>, results: AggregatedResult) -> Promise<nil>, -- Return a list of last errors for every reporter
	getErrors: (self: ReporterDispatcherPrivate) -> Array<Error>,
	hasErrors: (self: ReporterDispatcherPrivate) -> boolean,
}

type ReporterDispatcher_statics = {
	new: () -> ReporterDispatcher,
}

local ReporterDispatcher = {} :: ReporterDispatcherPrivate & ReporterDispatcher_statics;
(ReporterDispatcher :: any).__index = ReporterDispatcher

function ReporterDispatcher.new(): ReporterDispatcher
	local self = setmetatable({}, ReporterDispatcher)
	self._reporters = {}
	return (self :: any) :: ReporterDispatcher
end

function ReporterDispatcher:register(reporter: Reporter): ()
	table.insert(self._reporters, reporter)
end

function ReporterDispatcher:unregister(ReporterClass: Function): ()
	self._reporters = Array.filter(self._reporters, function(reporter)
		return not instanceof(reporter, ReporterClass)
	end)
end

function ReporterDispatcher:onTestFileResult(
	test: Test,
	testResult: TestResult,
	results: AggregatedResult
): Promise<nil>
	return Promise.resolve():andThen(function()
		for _, reporter in self._reporters do
			if reporter.onTestFileResult ~= nil then
				Promise.resolve(reporter.onTestFileResult(reporter, test, testResult, results)):expect()
			elseif reporter.onTestResult ~= nil then
				Promise.resolve(reporter.onTestResult(reporter, test, testResult, results)):expect()
			end
		end

		-- Release memory if unused later.
		testResult.coverage = nil
		testResult.console = nil
	end)
end

function ReporterDispatcher:onTestFileStart(test: Test): Promise<nil>
	return Promise.resolve():andThen(function()
		for _, reporter in self._reporters do
			if reporter.onTestFileStart ~= nil then
				Promise.resolve(reporter.onTestFileStart(reporter, test)):expect()
			elseif reporter.onTestStart ~= nil then
				Promise.resolve(reporter.onTestStart(reporter, test)):expect()
			end
		end
	end)
end

function ReporterDispatcher:onRunStart(results: AggregatedResult, options: ReporterOnStartOptions): Promise<nil>
	return Promise.resolve():andThen(function()
		for _, reporter in self._reporters do
			if reporter.onRunStart ~= nil then
				Promise.resolve(reporter:onRunStart(results, options)):expect()
			end
		end
	end)
end

function ReporterDispatcher:onTestCaseResult(test: Test, testCaseResult: TestCaseResult): Promise<nil>
	return Promise.resolve():andThen(function()
		for _, reporter in self._reporters do
			if reporter.onTestCaseResult ~= nil then
				Promise.resolve(reporter.onTestCaseResult(reporter, test, testCaseResult)):expect()
			end
		end
	end)
end

function ReporterDispatcher:onRunComplete(contexts: Set<Context>, results: AggregatedResult): Promise<nil>
	return Promise.resolve():andThen(function()
		for _, reporter in self._reporters do
			if reporter.onRunComplete ~= nil then
				Promise.resolve(reporter:onRunComplete(contexts, results)):expect()
			end
		end
	end)
end

function ReporterDispatcher:getErrors(): Array<Error>
	return Array.reduce(self._reporters, function(
		-- ROBLOX FIXME Luau: should be inferred from reduce's initial value
		list: Array<Error>,
		reporter
	)
		local error_ = if reporter.getLastError ~= nil then reporter:getLastError() else nil
		return if error_ ~= nil then Array.concat(list, error_) else list
	end, {} :: Array<Error>)
end

function ReporterDispatcher:hasErrors(): boolean
	return #self:getErrors() ~= 0
end

exports.default = ReporterDispatcher :: ReporterDispatcher & ReporterDispatcher_statics

return exports
