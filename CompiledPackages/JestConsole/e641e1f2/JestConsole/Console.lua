--[[
	Copyright Node.js contributors. All rights reserved.

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to
	deal in the Software without restriction, including without limitation the
	rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
	sell copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
	IN THE SOFTWARE.
]]
-- ROBLOX NOTE: no upstream: minimal implementation derived from - https://github.com/nodejs/node/blob/094b2ae/lib/internal/console/constructor.js

local exports = {}

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local format = require(CurrentModule.helpers).format

local RobloxShared = require(Packages.RobloxShared)
type Writeable = RobloxShared.Writeable

export type Console = {
	error: (...unknown) -> (),
	log: (...unknown) -> (),
	_stdout: Writeable,
	_stderr: Writeable,
	_write: (self: Console, type: string, value: string) -> (),
}

export type ConsoleOptions = {
	stdout: Writeable?,
	stderr: Writeable?,
}

local Console = {}
Console.__index = Console

function Console.new(stdout: ConsoleOptions | Writeable, stderr: Writeable?, options: ConsoleOptions?): Console
	local self = setmetatable({}, Console)
	local opts = (options or {}) :: ConsoleOptions

	if typeof((stdout :: Writeable).write) == "function" then
		opts.stdout = stdout :: Writeable
		opts.stderr = stderr
	end

	if opts.stderr == nil then
		opts.stderr = opts.stdout
	end

	if opts.stdout == nil or typeof(opts.stdout.write) ~= "function" then
		error("stdout must have a write method")
	end

	if opts.stderr == nil or typeof(opts.stderr.write) ~= "function" then
		error("stderr must have a write method")
	end

	self._stdout = opts.stdout :: Writeable
	self._stderr = opts.stderr :: Writeable

	return (self :: any) :: Console
end

function Console._write(self: Console, type: string, value: string)
	local stream = if type == "stdout" then self._stdout else self._stderr
	stream:write(value)
end

function Console:log(...: unknown)
	self:_write("stdout", format(...))
end

function Console:error(...: unknown)
	self:_write("stderr", format(...))
end

exports.default = Console
return exports
