-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-reporters/src/VerboseReporter.ts
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
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local chalk = require(Packages.ChalkLua)
local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type AssertionResult = testResultModule.AssertionResult
type Suite = testResultModule.Suite
type TestResult = testResultModule.TestResult

local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
type Config_Path = jestTypesModule.Config_Path

local jestUtilModule = require(Packages.JestUtil)
local formatTime = jestUtilModule.formatTime
local ICONS = jestUtilModule.ICONS

local DefaultReporterModule = require(CurrentModule.DefaultReporter)
local DefaultReporter = DefaultReporterModule.default
type DefaultReporter = DefaultReporterModule.DefaultReporter
local typesModule = require(CurrentModule.types)
type Test = typesModule.Test

local RobloxShared = require(Packages.RobloxShared)
type Writeable = RobloxShared.Writeable

export type VerboseReporter = DefaultReporter & {
	onTestResult: (self: VerboseReporter, test: Test, result: TestResult, aggregatedResults: AggregatedResult) -> (),
	filterTestResults: (self: VerboseReporter, testResults: Array<AssertionResult>) -> Array<AssertionResult>,
	groupTestsBySuites: (self: VerboseReporter, testResults: Array<AssertionResult>) -> Array<Suite>,
}

type VerboseReporterPrivate = VerboseReporter & {
	_logTestResults: (self: VerboseReporterPrivate, testResults: Array<AssertionResult>) -> (),
	_getIcon: (self: VerboseReporterPrivate, status: string) -> string,
	_logTest: (self: VerboseReporterPrivate, test: AssertionResult, indentLevel: number) -> (),
	_logTests: (self: VerboseReporterPrivate, tests: Array<AssertionResult>, indentLevel: number) -> (),
	_logTodoOrPendingTest: (self: VerboseReporterPrivate, indentLevel: number) -> (test: AssertionResult) -> (),
	_logLine: (self: VerboseReporterPrivate, str: string?, indentLevel: number?) -> (),
	__wrapStdio: (self: VerboseReporterPrivate, stream: Writeable) -> (),
	_globalConfig: Config_GlobalConfig,
}

local VerboseReporter = setmetatable({}, { __index = DefaultReporter }) :: any
VerboseReporter.__index = VerboseReporter
VerboseReporter.filename = "VerboseReporter"

-- ROBLOX deviation START: added round function
local function round(num: number)
	local mult = 10 ^ 0
	return math.floor(num * mult + 0.5) / mult
end
-- ROBLOX deviation END

function VerboseReporter.new(globalConfig: Config_GlobalConfig): VerboseReporter
	local self = setmetatable((DefaultReporter.new(globalConfig) :: any) :: VerboseReporterPrivate, VerboseReporter)
	self._globalConfig = globalConfig
	return (self :: any) :: VerboseReporter
end

-- Verbose mode is for debugging. Buffering of output is undesirable.
-- See https://github.com/facebook/jest/issues/8208
function VerboseReporter:__wrapStdio(stream: Writeable): ()
	local write = stream.write
	stream.write = function(_self: Writeable, chunk: string)
		self:__clearStatus()
		write(stream, chunk)
		self:__printStatus()
		return true
	end
end

function VerboseReporter.filterTestResults(testResults: Array<AssertionResult>): Array<AssertionResult>
	return Array.filter(testResults, function(ref)
		local status = ref.status
		return status ~= "pending"
	end)
end

function VerboseReporter.groupTestsBySuites(testResults: Array<AssertionResult>): Array<Suite>
	local root: Suite = { suites = {}, tests = {}, title = "" }

	Array.forEach(testResults, function(testResult)
		local targetSuite = root

		-- Find the target suite for this test,
		-- creating nested suites as necessary.
		for _, title in ipairs(testResult.ancestorTitles) do
			local matchingSuite = Array.find(targetSuite.suites, function(s)
				return s.title == title
			end)
			if matchingSuite == nil then
				matchingSuite = { suites = {}, tests = {}, title = title }
				table.insert(targetSuite.suites, matchingSuite :: Suite)
			end
			targetSuite = matchingSuite :: Suite
		end
		table.insert(targetSuite.tests, testResult)
	end)

	return root
end

function VerboseReporter:onTestResult(test: Test, result: TestResult, aggregatedResults: AggregatedResult): ()
	-- ROBLOX NOTE: Current way of using 'super', might change in the future
	DefaultReporter.testFinished(self, test.context.config, result, aggregatedResults)

	if not Boolean.toJSBoolean(result.skipped) then
		self:printTestFileHeader(result.testFilePath, test.context.config, result)
		if not Boolean.toJSBoolean(result.testExecError) and not Boolean.toJSBoolean(result.skipped) then
			self:_logTestResults(result.testResults)
		end
		self:printTestFileFailureMessage(result.testFilePath, test.context.config, result)
	end

	-- ROBLOX NOTE: Current way of using 'super', might change in the future
	DefaultReporter.forceFlushBufferedOutput(self)
end

function VerboseReporter:_logTestResults(testResults: Array<AssertionResult>): ()
	self:_logSuite(VerboseReporter.groupTestsBySuites(testResults), 0)
	self:_logLine()
end

function VerboseReporter:_logSuite(suite: Suite, indentLevel: number): ()
	if Boolean.toJSBoolean(suite.title) then
		self:_logLine(suite.title, indentLevel)
	end
	self:_logTests(suite.tests, indentLevel + 1)
	Array.forEach(suite.suites, function(suite)
		self:_logSuite(suite, indentLevel + 1)
	end)
end

function VerboseReporter:_getIcon(status: string): string
	if status == "failed" then
		return chalk.red(ICONS.failed)
	elseif status == "pending" then
		return chalk.yellow(ICONS.pending)
	elseif status == "todo" then
		return chalk.magenta(ICONS.todo)
	else
		return chalk.green(ICONS.success)
	end
end

function VerboseReporter:_logTest(test: AssertionResult, indentLevel: number): ()
	local status = self:_getIcon(test.status)
	local time = if test.duration ~= nil then (" (%s)"):format(tostring(formatTime(round(test.duration)))) else ""
	self:_logLine(status .. " " .. chalk.dim(test.title .. time), indentLevel)
end

function VerboseReporter:_logTests(tests: Array<AssertionResult>, indentLevel: number): ()
	if Boolean.toJSBoolean(self._globalConfig.expand) then
		Array.forEach(tests, function(test)
			return self:_logTest(test, indentLevel)
		end)
	else
		local summedTests = Array.reduce(tests, function(result, test)
			if test.status == "pending" then
				table.insert(result.pending, test)
			elseif test.status == "todo" then
				table.insert(result.todo, test)
			else
				self:_logTest(test, indentLevel)
			end
			return result
		end, { pending = {}, todo = {} })
		if #summedTests.pending > 0 then
			Array.forEach(summedTests.pending, self:_logTodoOrPendingTest(indentLevel))
		end
		if #summedTests.todo > 0 then
			Array.forEach(summedTests.todo, self:_logTodoOrPendingTest(indentLevel))
		end
	end
end

function VerboseReporter:_logTodoOrPendingTest(indentLevel: number): (test: AssertionResult) -> ()
	return function(test: AssertionResult): ()
		local printedTestStatus = test.status == "pending" and "skipped" or test.status
		local icon = self:_getIcon(test.status)
		local text = chalk.dim(("%s %s"):format(printedTestStatus, test.title))
		self:_logLine(("%s %s"):format(icon, text), indentLevel)
	end
end

function VerboseReporter:_logLine(str: string?, indentLevel: number?): ()
	local indentation = ("  "):rep(Boolean.toJSBoolean(indentLevel) and indentLevel or 0)
	self:log(indentation .. (str or ""))
end

exports.default = VerboseReporter

return exports
