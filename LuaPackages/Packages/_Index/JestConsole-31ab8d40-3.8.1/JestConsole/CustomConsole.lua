-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-console/src/CustomConsole.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local Console = require(CurrentModule.Console).default

local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local inspect = LuauPolyfill.util.inspect
type Error = LuauPolyfill.Error

-- ROBLOX deviation START: use custom implementations instead of unavailable node API
local helpersModule = require(CurrentModule.helpers)
local format = helpersModule.format
local formatWithOptions = helpersModule.formatWithOptions

local RobloxShared = require(Packages.RobloxShared)
type Writeable = RobloxShared.Writeable
type NodeJS_WriteStream = RobloxShared.NodeJS_WriteStream

-- ROBLOX deviation END

local chalk = require(Packages.ChalkLua)

local JestUtil = require(Packages.JestUtil)
local clearLine = JestUtil.clearLine
local formatTime = JestUtil.formatTime

local typesModule = require(CurrentModule.types)
type LogCounters = typesModule.LogCounters
type LogMessage = typesModule.LogMessage
type LogTimers = typesModule.LogTimers
type LogType = typesModule.LogType
type InspectOptions = typesModule.InspectOptions

type Formatter = (type: LogType, message: LogMessage) -> string

export type CustomConsole = {
	Console: any,
	assert: (self: CustomConsole, value: unknown, message: (string | Error)?) -> (),
	count: (self: CustomConsole, label: string?) -> (),
	countReset: (self: CustomConsole, label: string?) -> (),
	debug: (self: CustomConsole, firstArg: unknown, ...any) -> (),
	dir: (self: CustomConsole, firstArg: unknown, options: InspectOptions?) -> (),
	dirxml: (self: CustomConsole, firstArg: unknown, ...any) -> (),
	error: (self: CustomConsole, firstArg: unknown, ...any) -> (),
	group: (self: CustomConsole, title: string?, ...any) -> (),
	groupCollapsed: (self: CustomConsole, title: string?, ...any) -> (),
	groupEnd: (self: CustomConsole) -> (),
	info: (self: CustomConsole, firstArg: unknown, ...any) -> (),
	log: (self: CustomConsole, firstArg: unknown, ...any) -> (),
	time: (self: CustomConsole, label: string?) -> (),
	timeEnd: (self: CustomConsole, label: string?) -> (),
	timeLog: (self: CustomConsole, label: string?, ...any) -> (),
	warn: (self: CustomConsole, firstArg: unknown, ...any) -> (),
	getBuffer: () -> nil,
}

type CustomConsolePrivate = CustomConsole & {
	_log: (self: CustomConsole, type: LogType, message: LogMessage) -> (),
	_logError: (self: CustomConsole, type: LogType, message: LogMessage) -> (),
	_groupDepth: number,
	_counters: LogCounters,
	_timers: LogTimers,
	_stdout: Writeable,
	_stderr: Writeable,
	_formatBuffer: Formatter,
	_write: (self: CustomConsole, type: string, value: string) -> (),
}

-- ROBLOX FIXME LUAU: Casting to any to prevent unwanted type narrowing
local CustomConsole = setmetatable({}, { __index = Console }) :: any
CustomConsole.__index = CustomConsole

function CustomConsole.new(
	stdout: NodeJS_WriteStream,
	stderr: NodeJS_WriteStream,
	formatBuffer_: Formatter?
): CustomConsole
	local self = setmetatable((Console.new(stdout, stderr) :: any) :: CustomConsolePrivate, CustomConsole)

	local formatBuffer: Formatter = if formatBuffer_ ~= nil
		then formatBuffer_
		else function(_: LogType, message: LogMessage)
			return message
		end

	self._counters = {}
	self._timers = {}
	self._groupDepth = 0
	self.Console = Console

	self._stdout = stdout
	self._stderr = stderr

	self._formatBuffer = formatBuffer

	return (self :: any) :: CustomConsole
end

function CustomConsole._log(self: CustomConsolePrivate, type: LogType, message: string)
	clearLine(self._stdout);
	-- ROBLOX FIXME: Find a better way to handle super calls
	(Console.log :: any)(self, self._formatBuffer(type, ("  "):rep(self._groupDepth) .. message))
end

function CustomConsole._logError(self: CustomConsolePrivate, type: LogType, message: string)
	clearLine(self._stderr);
	-- ROBLOX FIXME: Find a better way to handle super calls
	(Console.error :: any)(self, self._formatBuffer(type, ("  "):rep(self._groupDepth) .. message))
end

function CustomConsole.assert(self: CustomConsolePrivate, value: unknown, message: (string | Error)?)
	xpcall(function()
		assert(value)
	end, function(error_)
		local msg = ""
		if message ~= nil then
			msg = " " .. tostring(message)
		end

		self:_logError("assert", tostring(error_) .. msg)
	end)
end

function CustomConsole.count(self: CustomConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"

	if self._counters[label] == nil then
		self._counters[label] = 0
	end

	self._counters[label] += 1
	self:_log("count", format("%s: %s", label, self._counters[label]))
end

function CustomConsole.countReset(self: CustomConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	self._counters[label] = 0
end

function CustomConsole.debug(self: CustomConsolePrivate, firstArg: unknown, ...: any)
	self:_log("debug", format(firstArg, ...))
end

function CustomConsole.dir(self: CustomConsolePrivate, firstArg: unknown, options_: InspectOptions?)
	local options: InspectOptions = options_ or {}
	local representation = inspect(firstArg, options)
	self:_log("dir", formatWithOptions(options, representation))
end

function CustomConsole.dirxml(self: CustomConsolePrivate, firstArg: unknown, ...: any)
	self:_log("dirxml", format(firstArg, ...))
end

function CustomConsole.error(self: CustomConsolePrivate, firstArg: unknown, ...: any)
	self:_logError("error", format(firstArg, ...))
end

function CustomConsole.group(self: CustomConsolePrivate, title: string?, ...: any)
	local args = { ... }
	self._groupDepth += 1
	if Boolean.toJSBoolean(title) or #args > 0 then
		self:_log("group", chalk.bold(format(title, ...)))
	end
end

function CustomConsole.groupCollapsed(self: CustomConsolePrivate, title: string?, ...: any)
	local args = { ... }
	self._groupDepth += 1
	if Boolean.toJSBoolean(title) or #args > 0 then
		self:_log("groupCollapsed", chalk.bold(format(title, ...)))
	end
end

function CustomConsole.groupEnd(self: CustomConsolePrivate)
	if self._groupDepth > 0 then
		self._groupDepth -= 1
	end
end

function CustomConsole.info(self: CustomConsolePrivate, firstArg: unknown, ...: any)
	self:_log("info", format(firstArg, ...))
end

function CustomConsole.log(self: CustomConsolePrivate, firstArg: unknown, ...: any)
	self:_log("log", format(firstArg, ...))
end

function CustomConsole.time(self: CustomConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	if self._timers[label] ~= nil then
		return
	end
	self._timers[label] = DateTime.now()
end

function CustomConsole.timeEnd(self: CustomConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	local startTime = self._timers[label]
	if Boolean.toJSBoolean(startTime) then
		local endTime = DateTime.now()
		local time = endTime.UnixTimestampMillis - startTime.UnixTimestampMillis
		self:_log("time", format("%s: %s", label, formatTime(time)))
		self._timers[label] = nil
	end
end

function CustomConsole.timeLog(self: CustomConsolePrivate, label_: string?, ...: any)
	local label: string = if label_ ~= nil then label_ else "default"
	local startTime = self._timers[label]
	if Boolean.toJSBoolean(startTime) then
		local endTime = DateTime.now()
		local time = endTime.UnixTimestampMillis - startTime.UnixTimestampMillis
		self:_log("time", format("%s: %s", label, formatTime(time), ...))
	end
end

function CustomConsole.warn(self: CustomConsolePrivate, firstArg: unknown, ...: any)
	self:_logError("warn", format(firstArg, ...))
end

function CustomConsole:getBuffer()
	return nil
end

exports.default = CustomConsole
return exports
