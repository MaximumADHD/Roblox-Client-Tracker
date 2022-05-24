-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-console/src/BufferedConsole.ts
--[[*
* Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
*
* This source code is licensed under the MIT license found in the
* LICENSE file in the root directory of this source tree.
]]
type unknown = any --[[ ROBLOX FIXME: adding `unknown` type alias to make it easier to use Luau unknown equivalent when supported ]]

local exports = {}

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local String = LuauPolyfill.String
local Error = LuauPolyfill.Error
local inspect = LuauPolyfill.util.inspect
type Error = LuauPolyfill.Error

local ConsoleModule = require(CurrentModule.Console)
local Console = ConsoleModule.default
type Console = ConsoleModule.Console

-- ROBLOX deviation START: use custom implementations instead of unavailable node API
local helpers = require(CurrentModule.helpers)
local format = helpers.format
local formatWithOptions = helpers.formatWithOptions
-- ROBLOX deviation END

local chalk = require(Packages.ChalkLua)

local JestUtil = require(Packages.JestUtil)
local ErrorWithStack = JestUtil.ErrorWithStack
local formatTime = JestUtil.formatTime

local typesModule = require(CurrentModule.types)
type ConsoleBuffer = typesModule.ConsoleBuffer
type LogCounters = typesModule.LogCounters
type LogMessage = typesModule.LogMessage
type LogTimers = typesModule.LogTimers
type LogType = typesModule.LogType
type InspectOptions = typesModule.InspectOptions

local RobloxShared = require(Packages.RobloxShared)
type Writeable = RobloxShared.Writeable

export type BufferedConsole = {
	Console: Console,
	assert: (self: BufferedConsole, value: unknown, message: (string | Error)?) -> (),
	count: (self: BufferedConsole, label: string?) -> (),
	countReset: (self: BufferedConsole, label: string?) -> (),
	debug: (self: BufferedConsole, firstArg: unknown, ...any) -> (),
	dir: (self: BufferedConsole, firstArg: unknown, options: InspectOptions?) -> (),
	dirxml: (self: BufferedConsole, firstArg: unknown, ...any) -> (),
	error: (self: BufferedConsole, firstArg: unknown, ...any) -> (),
	group: (self: BufferedConsole, title: string?, ...any) -> (),
	groupCollapsed: (self: BufferedConsole, title: string?, ...any) -> (),
	groupEnd: (self: BufferedConsole) -> (),
	info: (self: BufferedConsole, firstArg: unknown, ...any) -> (),
	log: (self: BufferedConsole, firstArg: unknown, ...any) -> (),
	time: (self: BufferedConsole, label: string?) -> (),
	timeEnd: (self: BufferedConsole, label: string?) -> (),
	timeLog: (self: BufferedConsole, label: string?, ...any) -> (),
	warn: (self: BufferedConsole, firstArg: unknown, ...any) -> (),
	getBuffer: (self: BufferedConsole) -> ConsoleBuffer?,
	write: (buffer: ConsoleBuffer, type: LogType, message: LogMessage, level: (number | nil)?) -> ConsoleBuffer,
}

type BufferedConsolePrivate = BufferedConsole & {
	_log: (self: BufferedConsolePrivate, type: LogType, message: LogMessage) -> (),
	_buffer: ConsoleBuffer,
	_counters: LogCounters,
	_timers: LogTimers,
	_groupDepth: number,
}

-- ROBLOX deviation START: pre declare invariant function
local invariant
-- ROBLOX deviation END

-- ROBLOX FIXME LUAU: Casting to any to prevent unwanted type narrowing for write method
local BufferedConsole = setmetatable({}, { __index = Console }) :: any
BufferedConsole.__index = BufferedConsole

function BufferedConsole.new(): BufferedConsole
	local self = setmetatable(
		Console.new({
			write = function(self, message)
				BufferedConsole.write(((self :: any) :: BufferedConsolePrivate)._buffer, "log", message, nil)

				return true
			end,
		} :: Writeable),
		BufferedConsole
	) :: any
	self._buffer = {}
	self._counters = {}
	self._timers = {}
	self._groupDepth = 0
	self.Console = Console
	return self :: BufferedConsole
end

function BufferedConsole.write(buffer: ConsoleBuffer, type: LogType, message: LogMessage, level: (number | nil)?)
	local stackLevel = if level ~= nil then level else 2
	local rawStack = ErrorWithStack.new(nil, BufferedConsole.write).stack
	invariant(rawStack, "always have a stack trace")
	local origin = Array.join(
		Array.filter(Array.slice(String.split(rawStack :: string, "\n"), stackLevel), Boolean.toJSBoolean),
		"\n"
	)
	table.insert(buffer, { message = message, origin = origin, type = type })
	return buffer
end

function BufferedConsole:_log(type: LogType, message: LogMessage)
	BufferedConsole.write(self._buffer, type :: any, ("  "):rep(self._groupDepth) .. message, 3)
end

function BufferedConsole.assert(self: BufferedConsolePrivate, value: unknown, message: (string | Error)?)
	xpcall(function()
		assert(value)
	end, function(error_)
		local msg = ""
		if message ~= nil then
			msg = " " .. tostring(message)
		end

		self:_log("assert", tostring(error_) .. msg)
	end)
end

function BufferedConsole.count(self: BufferedConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	if self._counters[label] == nil then
		self._counters[label] = 0
	end
	self._counters[label] += 1
	self:_log("count", format("%s: %s", label, self._counters[label]))
end

function BufferedConsole.countReset(self: BufferedConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	self._counters[label] = 0
end

function BufferedConsole.debug(self: BufferedConsolePrivate, firstArg: unknown, ...: any)
	self:_log("debug", format(firstArg, ...))
end

function BufferedConsole.dir(self: BufferedConsolePrivate, firstArg: unknown, options_: InspectOptions?)
	local options: InspectOptions = options_ or {}
	local representation = inspect(firstArg, options)
	self:_log("dir", formatWithOptions(options, representation))
end

function BufferedConsole.dirxml(self: BufferedConsolePrivate, firstArg: unknown, ...: any)
	self:_log("dirxml", format(firstArg, ...))
end

function BufferedConsole.error(self: BufferedConsolePrivate, firstArg: unknown, ...: any)
	self:_log("error", format(firstArg, ...))
end

function BufferedConsole.group(self: BufferedConsolePrivate, title: string?, ...: any)
	local rest = { ... }
	self._groupDepth += 1
	if Boolean.toJSBoolean(title) or #rest > 0 then
		self:_log("group", chalk.bold(format(title, ...)))
	end
end

function BufferedConsole.groupCollapsed(self: BufferedConsolePrivate, title: string?, ...: any)
	local rest = { ... }
	self._groupDepth += 1
	if Boolean.toJSBoolean(title) or #rest > 0 then
		self:_log("groupCollapsed", chalk.bold(format(title, ...)))
	end
end

function BufferedConsole.groupEnd(self: BufferedConsolePrivate)
	if self._groupDepth > 0 then
		self._groupDepth -= 1
	end
end

function BufferedConsole.info(self: BufferedConsolePrivate, firstArg: unknown, ...: any)
	self:_log("info", format(firstArg, ...))
end

function BufferedConsole.log(self: BufferedConsolePrivate, firstArg: unknown, ...: any)
	self:_log("log", format(firstArg, ...))
end

function BufferedConsole.time(self: BufferedConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	if Boolean.toJSBoolean(self._timers[label]) then
		return
	end
	self._timers[label] = DateTime.now()
end

function BufferedConsole.timeEnd(self: BufferedConsolePrivate, label_: string?)
	local label: string = if label_ ~= nil then label_ else "default"
	local startTime = self._timers[label]
	if Boolean.toJSBoolean(startTime) then
		local endTime = DateTime.now()
		local time = endTime.UnixTimestampMillis - startTime.UnixTimestampMillis
		self:_log("time", format("%s: %s", label, formatTime(time)))
		self._timers[label] = nil
	end
end

function BufferedConsole.timeLog(self: BufferedConsolePrivate, label_: string?, ...: any)
	local label: string = if label_ ~= nil then label_ else "default"
	local startTime = self._timers[label]
	if Boolean.toJSBoolean(startTime) then
		local endTime = DateTime.now()
		local time = endTime.UnixTimestampMillis - startTime.UnixTimestampMillis
		self:_log("time", format("%s: %s", label, formatTime(time), ...))
	end
end

function BufferedConsole.warn(self: BufferedConsolePrivate, firstArg: unknown, ...: any)
	self:_log("warn", format(firstArg, ...))
end

function BufferedConsole.getBuffer(self: BufferedConsolePrivate): ConsoleBuffer?
	return if #self._buffer > 0 then self._buffer else nil
end

function invariant(condition: unknown, message: string?)
	if not Boolean.toJSBoolean(condition) then
		error(Error.new(message))
	end
end

exports.default = BufferedConsole
return exports
