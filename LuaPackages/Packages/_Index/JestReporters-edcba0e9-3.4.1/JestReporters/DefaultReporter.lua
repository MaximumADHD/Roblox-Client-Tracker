-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-reporters/src/DefaultReporter.ts
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
local Set = LuauPolyfill.Set
local setTimeout = LuauPolyfill.setTimeout
type Array<T> = LuauPolyfill.Array<T>
type Timeout = LuauPolyfill.Timeout
type Set<T> = LuauPolyfill.Set<T>

local exports = {}

local chalk = require(Packages.ChalkLua)

local getConsoleOutput = require(Packages.JestConsole).getConsoleOutput

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type TestCaseResult = testResultModule.TestCaseResult
type TestResult = testResultModule.TestResult

local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
type Config_Path = jestTypesModule.Config_Path

local jestMessageUtilModule = require(Packages.JestMessageUtil)
local formatStackTrace = jestMessageUtilModule.formatStackTrace
local indentAllLines = jestMessageUtilModule.indentAllLines
local separateMessageFromStack = jestMessageUtilModule.separateMessageFromStack

local jestUtilModule = require(Packages.JestUtil)
local clearLine = jestUtilModule.clearLine

local BaseReporter = require(CurrentModule.BaseReporter).default
local statusModule = require(CurrentModule.Status)
local Status = statusModule.default
type Status = statusModule.Status
local getResultHeader = require(CurrentModule.getResultHeader).default
local getSnapshotStatus = require(CurrentModule.getSnapshotStatus).default

local typesModule = require(CurrentModule.types)
type ReporterOnStartOptions = typesModule.ReporterOnStartOptions
type Test = typesModule.Test
type NodeProcessMock = typesModule.NodeProcessMock

local RobloxShared = require(Packages.RobloxShared)
local Writeable = RobloxShared.Writeable
type Writeable = RobloxShared.Writeable

type write = (self: Writeable, data: string) -> ()
type FlushBufferedOutput = () -> ()

local TITLE_BULLET = chalk.bold("\u{25cf} ")

export type DefaultReporter = {
	forceFlushBufferedOutput: (self: DefaultReporter) -> (),
	onRunStart: (self: DefaultReporter, aggregatedResults: AggregatedResult, options: ReporterOnStartOptions) -> (),
	onTestStart: (self: DefaultReporter, test: Test) -> (),
	onTestCaseResult: (self: DefaultReporter, test: Test, testCaseResult: TestCaseResult) -> (),
	onRunComplete: (self: DefaultReporter) -> (),
	onTestResult: (
		self: DefaultReporter,
		test: Test,
		testResult: TestResult,
		aggregatedResults: AggregatedResult
	) -> (),
	testFinished: (
		self: DefaultReporter,
		config: Config_ProjectConfig,
		testResult: TestResult,
		aggregatedResults: AggregatedResult
	) -> (),
	printTestFileHeader: (
		self: DefaultReporter,
		testPath: string,
		config: Config_ProjectConfig,
		result: TestResult
	) -> (),
	printTestFileFailureMessage: (
		self: DefaultReporter,
		_testPath: string,
		_config: Config_ProjectConfig,
		result: TestResult
	) -> (),
}

type DefaultReporterPrivate = DefaultReporter & {
	_globalConfig: Config_GlobalConfig,
	_clear: string,
	_out: (_self: Writeable, message: string) -> (),
	_err: (_self: Writeable, message: string) -> (),
	_status: Status,
	_bufferedOutput: Set<() -> ()>,
	__wrapStdio: (self: DefaultReporter, stream: Writeable) -> (),
	__clearStatus: (self: DefaultReporter) -> (),
	__printStatus: (self: DefaultReporter) -> (),
	_process: NodeProcessMock,
	-- ROBLOX deviation: we need to store _isInteractive per reporter to not override isInteractive globally
	_isInteractive: boolean,
}

-- ROBLOX FIXME LUAU: Casting to any to prevent unwanted type narrowing
local DefaultReporter = setmetatable({}, { __index = BaseReporter }) :: any
DefaultReporter.__index = DefaultReporter
-- ROBLOX deviation: No __filename available - just using the module name
DefaultReporter.filename = "DefaultReporter"

-- ROBLOX deviation: Added _process arg to mock global node process for testing
function DefaultReporter.new(globalConfig: Config_GlobalConfig, _process: NodeProcessMock?): DefaultReporter
	local self = setmetatable((BaseReporter.new(_process) :: any) :: DefaultReporterPrivate, DefaultReporter)
	-- ROBLOX deviation: we need to store _isInteractive per reporter to not override isInteractive globally
	self._isInteractive = jestUtilModule.isInteractive

	-- ROBLOX deviation START: Added for tests otherwise isInteractive = false
	if _process ~= nil and _process.env.IS_INTERACTIVE ~= nil then
		self._isInteractive = Boolean.toJSBoolean(_process.env.IS_INTERACTIVE)
	end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: Need a copy of stdout/stderr write since
	-- they get overwritten in _wrapStdio.
	local function defaultWrite()
		local writable = Writeable.new()

		return function(_self: Writeable, message: string)
			writable:write(message)
		end
	end
	--[[
		ROBLOX FIXME Luau START: added explicit type declaration.
		Otherwise Luau can't seem to unify 2 function type declaration
		and infers this as an union of function types which is not considered callable by CLI's analyze
	]]
	local _stdoutWrite: (Writeable, string) -> () = if _process and _process.stdout
		then _process.stdout.write
		else defaultWrite()
	local _stderrWrite: (Writeable, string) -> () = if _process and _process.stderr
		then _process.stderr.write
		else defaultWrite()
	-- ROBLOX FIXME Luau END
	-- ROBLOX deviation END

	self._globalConfig = globalConfig
	self._clear = ""
	self._out = function(_self: Writeable, message: string)
		_stdoutWrite(self._process.stdout, message)
	end
	self._err = function(_self: Writeable, message: string)
		_stderrWrite(self._process.stderr, message)
	end
	self._status = Status.new()
	self._bufferedOutput = Set.new()
	self:__wrapStdio(self._process.stdout)
	self:__wrapStdio(self._process.stderr)
	self._status:onChange(function()
		self:__clearStatus()
		self:__printStatus()
	end)

	return (self :: any) :: DefaultReporter
end

function DefaultReporter:__wrapStdio(stream: Writeable): ()
	local write = stream.write

	local buffer: Array<string> = {}
	local timeout: Timeout | nil = nil

	local function flushBufferedOutput()
		local string_ = Array.join(buffer, "")
		buffer = {}

		-- This is to avoid conflicts between random output and status text
		self:__clearStatus()
		if Boolean.toJSBoolean(string_) then
			write(stream, string_)
		end
		self:__printStatus()
		self._bufferedOutput:delete(flushBufferedOutput)
	end

	self._bufferedOutput:add(flushBufferedOutput)

	local function debouncedFlush()
		-- If the process blows up no errors would be printed.
		-- There should be a smart way to buffer stderr, but for now
		-- we just won't buffer it.
		if stream == self._process.stderr then
			flushBufferedOutput()
		elseif not Boolean.toJSBoolean(timeout) then
			timeout = setTimeout(function()
				flushBufferedOutput()
				timeout = nil
			end, 100)
		end
	end

	stream.write = function(_self: Writeable, chunk: string)
		table.insert(buffer, chunk)
		debouncedFlush()
		return true
	end
end

function DefaultReporter:forceFlushBufferedOutput(): ()
	Set.forEach(self._bufferedOutput, function(flushBufferedOutput)
		flushBufferedOutput()
	end)
end

function DefaultReporter:__clearStatus(): ()
	-- ROBLOX deviation: we need to store _isInteractive per reporter to not override isInteractive globally
	if self._isInteractive then
		if self._globalConfig.useStderr then
			self:_err(self._clear)
		else
			self:_out(self._clear)
		end
	end
end

function DefaultReporter:__printStatus(): ()
	local ref = self._status:get()
	local content, clear = ref.content, ref.clear
	self._clear = clear
	-- ROBLOX deviation: we need to store _isInteractive per reporter to not override isInteractive globally
	if self._isInteractive then
		if self._globalConfig.useStderr then
			self:_err(content)
		else
			self:_out(content)
		end
	end
end

function DefaultReporter:onRunStart(aggregatedResults: AggregatedResult, options: ReporterOnStartOptions): ()
	self._status:runStarted(aggregatedResults, options)
end

function DefaultReporter:onTestStart(test: Test): ()
	self._status:testStarted(test.path, test.context.config)
end

function DefaultReporter:onTestCaseResult(test: Test, testCaseResult: TestCaseResult): ()
	self._status:addTestCaseResult(test, testCaseResult)
end

function DefaultReporter:onRunComplete(): ()
	self:forceFlushBufferedOutput()
	self._status:runFinished()
	self._process.stdout.write = self._out
	self._process.stderr.write = self._err
	clearLine(self._process.stderr)
end

function DefaultReporter:onTestResult(test: Test, testResult: TestResult, aggregatedResults: AggregatedResult): ()
	self:testFinished(test.context.config, testResult, aggregatedResults)
	if not testResult.skipped then
		self:printTestFileHeader(testResult.testFilePath, test.context.config, testResult)
		self:printTestFileFailureMessage(testResult.testFilePath, test.context.config, testResult)
	end
	self:forceFlushBufferedOutput()
end

function DefaultReporter:testFinished(
	config: Config_ProjectConfig,
	testResult: TestResult,
	aggregatedResults: AggregatedResult
): ()
	self._status:testFinished(config, testResult, aggregatedResults)
end

function DefaultReporter:printTestFileHeader(
	_testPath: Config_Path,
	config: Config_ProjectConfig,
	result: TestResult
): ()
	-- log retry errors if any exist
	Array.forEach(result.testResults, function(testResult)
		local testRetryReasons = testResult.retryReasons
		if testRetryReasons and #testRetryReasons > 0 then
			self:log(
				("%s %s"):format(
					tostring(chalk.reset.inverse.bold:yellow(" LOGGING RETRY ERRORS ")),
					chalk.bold(testResult.fullName)
				)
			)
			Array.forEach(testRetryReasons, function(retryReasons, index: number)
				local message, stack
				do
					local ref = separateMessageFromStack(retryReasons)
					message, stack = ref.message, ref.stack
				end
				stack = if Boolean.toJSBoolean(self._globalConfig.noStackTrace)
					then ""
					else chalk.dim(formatStackTrace(stack, config, self._globalConfig, _testPath))
				message = indentAllLines(message)
				self:log(
					("%s\n"):format(
						tostring(chalk.reset.inverse.bold:blueBright((" RETRY %s "):format(tostring(index + 1))))
					)
				)
				self:log(("%s\n%s\n"):format(tostring(message), tostring(stack)))
			end) --[[ ROBLOX CHECK: check if 'testRetryReasons' is an Array ]]
		end
	end) --[[ ROBLOX CHECK: check if 'result.testResults' is an Array ]]
	self:log(getResultHeader(result, self._globalConfig, config))
	if result.console ~= nil then
		self:log("  " .. TITLE_BULLET .. "Console\n\n" .. getConsoleOutput(result.console, config, self._globalConfig))
	end
end

function DefaultReporter:printTestFileFailureMessage(
	_testPath: Config_Path,
	_config: Config_ProjectConfig,
	result: TestResult
): ()
	if Boolean.toJSBoolean(result.failureMessage) then
		self:log(result.failureMessage)
	end
	local didUpdate = self._globalConfig.updateSnapshot == "all"
	local snapshotStatuses = getSnapshotStatus(result.snapshot, didUpdate)
	Array.forEach(snapshotStatuses, self.log, self)
end

exports.default = DefaultReporter

return exports
