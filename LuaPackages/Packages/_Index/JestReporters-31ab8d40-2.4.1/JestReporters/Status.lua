-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-reporters/src/Status.ts
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
local String = LuauPolyfill.String
local setTimeout = LuauPolyfill.setTimeout
local setInterval = LuauPolyfill.setInterval
local clearInterval = LuauPolyfill.clearInterval

type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local chalk = require(Packages.ChalkLua)

local stringLength = utf8.len

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type TestCaseResult = testResultModule.TestCaseResult
type TestResult = testResultModule.TestResult

local jestTypesModule = require(Packages.JestTypes)
type Config_Path = jestTypesModule.Config_Path
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig

local typesModule = require(CurrentModule.types)
type ReporterOnStartOptions = typesModule.ReporterOnStartOptions
type Test = typesModule.Test

local utilsModule = require(CurrentModule.utils)
local getSummary = utilsModule.getSummary
local printDisplayName = utilsModule.printDisplayName
local trimAndFormatPath = utilsModule.trimAndFormatPath
local wrapAnsiString = utilsModule.wrapAnsiString

local RUNNING_TEXT = " RUNS "
local RUNNING = chalk.reset(chalk.inverse(chalk.yellow(chalk.bold(RUNNING_TEXT)))) .. " "

-- ROBLOX deviation: There is no console width since we only have log fn
local CONSOLE_WIDTH = 0

--[[*
 * This class is a perf optimization for sorting the list of currently
 * running tests. It tries to keep tests in the same positions without
 * shifting the whole list.
 ]]
type CurrentTestList = {
	add: (self: CurrentTestList, testPath: Config_Path, config: Config_ProjectConfig) -> (),
	delete: (self: CurrentTestList, testPath: Config_Path) -> (),
	get: (self: CurrentTestList) -> Array<{
		testPath: Config_Path,
		config: Config_ProjectConfig,
	}>,
}

local CurrentTestList = {}
CurrentTestList.__index = CurrentTestList

function CurrentTestList.new(): CurrentTestList
	local self = setmetatable({}, CurrentTestList)
	self._array = {}
	return (self :: any) :: CurrentTestList
end

function CurrentTestList:add(testPath: Config_Path, config: Config_ProjectConfig): ()
	local index = Array.indexOf(self._array, nil)
	local record = { config = config, testPath = testPath }
	if index ~= -1 then
		self._array[index] = record
	else
		table.insert(self._array, record)
	end
end

function CurrentTestList:delete(testPath: Config_Path): ()
	local record = Array.find(self._array, function(record)
		return record ~= nil and record.testPath == testPath
	end)
	self._array[Array.indexOf(self._array, Boolean.toJSBoolean(record) and record or nil)] = nil
end

function CurrentTestList:get(): Array<{
	testPath: Config_Path,
	config: Config_ProjectConfig,
}>
	return self._array
end

type Cache = {
	content: string,
	clear: string,
}

--[[*
 * A class that generates the CLI status of currently running tests
 * and also provides an ANSI escape sequence to remove status lines
 * from the terminal.
 ]]
export type Status = {
	onChange: (self: Status, callback: () -> ()) -> (),
	runStarted: (self: Status, aggregatedResults: AggregatedResult, options: ReporterOnStartOptions) -> (),
	runFinished: (self: Status) -> (),
	addTestCaseResult: (self: Status, test: Test, testCaseResult: TestCaseResult) -> (),
	testStarted: (self: Status, testPath: Config_Path, config: Config_ProjectConfig) -> (),
	testFinished: (
		self: Status,
		_config: Config_ProjectConfig,
		testResult: TestResult,
		aggregatedResults: AggregatedResult
	) -> (),
	get: (self: Status) -> Cache,
}

local Status = {}
Status.__index = Status

function Status.new(): Status
	local self = setmetatable({}, Status)
	self._cache = nil
	self._currentTests = CurrentTestList.new()
	self._currentTestCases = {}
	self._done = false
	self._emitScheduled = false
	self._estimatedTime = 0
	self._showStatus = false
	return (self :: any) :: Status
end

function Status:onChange(callback: () -> ()): ()
	self._callback = callback
end

function Status:runStarted(aggregatedResults: AggregatedResult, options: ReporterOnStartOptions): ()
	self._estimatedTime = if Boolean.toJSBoolean(options) and Boolean.toJSBoolean(options.estimatedTime)
		then options.estimatedTime
		else 0
	self._showStatus = if Boolean.toJSBoolean(options) then options.showStatus else options
	self._interval = setInterval(function()
		return self:_tick()
	end, 1000)
	self._aggregatedResults = aggregatedResults
	self:_debouncedEmit()
end

function Status:runFinished(): ()
	self._done = true
	if Boolean.toJSBoolean(self._interval) then
		clearInterval(self._interval)
	end
	self:_emit()
end

function Status:addTestCaseResult(test: Test, testCaseResult: TestCaseResult): ()
	table.insert(self._currentTestCases, { test = test, testCaseResult = testCaseResult })
	if not Boolean.toJSBoolean(self._showStatus) then
		self:_emit()
	else
		self:_debouncedEmit()
	end
end

function Status:testStarted(testPath: Config_Path, config: Config_ProjectConfig): ()
	self._currentTests:add(testPath, config)
	if not self._showStatus then
		self:_emit()
	else
		self:_debouncedEmit()
	end
end

function Status:testFinished(
	_config: Config_ProjectConfig,
	testResult: TestResult,
	aggregatedResults: AggregatedResult
): ()
	local testFilePath = testResult.testFilePath
	self._aggregatedResults = aggregatedResults
	self._currentTests:delete(testFilePath)
	self._currentTestCases = Array.filter(self._currentTestCases, function(ref)
		local test = ref.test
		if _config ~= test.context.config then
			return true
		end
		return test.path ~= testFilePath
	end)
	self:_debouncedEmit()
end

function Status:get(): Cache
	if Boolean.toJSBoolean(self._cache) then
		return self._cache
	end
	if Boolean.toJSBoolean(self._done) then
		return { clear = "", content = "" }
	end
	local width = CONSOLE_WIDTH
	local content = "\n"
	Array.forEach(self._currentTests:get(), function(record)
		if Boolean.toJSBoolean(record) then
			local config, testPath = record.config, record.testPath
			local projectDisplayName = if Boolean.toJSBoolean(config.displayName)
				then tostring(printDisplayName(config)) .. " "
				else ""
			local prefix = RUNNING .. projectDisplayName
			-- ROBLOX deviation START: assert prefixLen is a valid number
			local prefixLen = stringLength(prefix)
			assert(prefixLen ~= nil)
			content ..= wrapAnsiString(prefix .. trimAndFormatPath(prefixLen, config, testPath, width), width) .. "\n"
			-- ROBLOX deviation END
		end
	end)
	if self._showStatus and Boolean.toJSBoolean(self._aggregatedResults) then
		content ..= "\n" .. tostring(getSummary(self._aggregatedResults, {
			currentTestCases = self._currentTestCases,
			estimatedTime = self._estimatedTime,
			roundTime = true,
			width = width,
		}))
	end
	local height = 0
	local i = 0
	-- ROBLOX deviation START - Check if utf8.len doesn't return nil because of invalid chars
	local contentLength = utf8.len(content)
	assert(contentLength ~= nil)
	while i < contentLength do
		-- ROBLOX deviation END
		if String.charCodeAt(content, i) == "\n" then
			height += 1
		end
		i += 1
	end
	-- ROBLOX deviation: We don't have an operation to actually clear console
	local clear = ("\n"):rep(height)
	self._cache = { clear = clear, content = content }
	return self._cache
end

function Status:_emit(): ()
	self._cache = nil
	if Boolean.toJSBoolean(self._callback) then
		self:_callback()
	end
end

function Status:_debouncedEmit(): ()
	if not Boolean.toJSBoolean(self._emitScheduled) then
		-- Perf optimization to avoid two separate renders When
		-- one test finishes and another test starts executing.
		self._emitScheduled = true
		setTimeout(function()
			self:_emit()
			self._emitScheduled = false
		end, 100)
	end
end

function Status:_tick(): ()
	self:_debouncedEmit()
end

exports.default = Status

return exports
