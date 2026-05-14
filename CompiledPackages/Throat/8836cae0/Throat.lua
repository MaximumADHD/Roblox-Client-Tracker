-- ROBLOX upstream: https://github.com/ForbesLindesay/throat/blob/6.0.1/index.js
-- ROBLOX upstream types: https://github.com/ForbesLindesay/throat/blob/6.0.1/index.d.ts
--[[
	Copyright (c) 2013 Forbes Lindesay

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
]]
local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
local Promise = require(Packages.Promise)
type Promise<T> = LuauPolyfill.Promise<T>

local TypeError = Error

local exports = {}

-- ROBLOX deviation START: predeclare classes
local Delayed = {} :: Delayed
local Queue: Queue
-- ROBLOX deviation END

-- ROBLOX deviation START: additional types for Luau
type ThroatFn<TResult, TArgs> = (...TArgs) -> Promise<TResult>

type ThroatFnOrCallableFn<TResult, TArgs> = ThroatFn<TResult, TArgs> | typeof(setmetatable({}, {
	__call = (function() end :: any) :: (self: any, ...TArgs) -> Promise<TResult>,
}))

export type ThroatLateBound<TResult, TArgs> = (
	fn: ThroatFnOrCallableFn<TResult, TArgs>,
	...TArgs
) -> Promise<TResult>
export type ThroatEarlyBound<TResult, TArgs> = (...TArgs) -> Promise<TResult>
-- ROBLOX deviation END

--[[
	ROBLOX deviation START:
	additional checking function to allow for both functions and callable tables to be passed as arguments
]]
local function isCallable(f: any): boolean
	return typeof(f) == "function"
		or (
			typeof(f) == "table"
			and typeof(getmetatable(f)) == "table"
			and typeof(getmetatable(f).__call) == "function"
		)
end
-- ROBLOX deviation END

local function throatInternal(size: number)
	-- ROBLOX deviation START: hoist functions declarations
	local runDelayed
	local onFulfill
	local onReject
	local release
	-- ROBLOX deviation END

	local queue = Queue.new()
	local s = bit32.bor(size, 0)
	local function run<TResult, TArgs>(fn: ThroatFnOrCallableFn<TResult, TArgs>, args: Array<TArgs>)
		if bit32.bor(s, 0) ~= 0 then
			s = bit32.bor(s, 0) - 1
			return Promise.new(function(resolve)
				resolve((fn :: ThroatFn<TResult, TArgs>)(table.unpack(args)))
			end):andThen(onFulfill, onReject)
		end
		return Promise.new(function(resolve)
			queue:push(Delayed.new(resolve, fn :: ThroatFn<TResult, TArgs>, args))
		end):andThen(runDelayed)
	end
	function runDelayed(d): any?
		local ok, result, hasReturned = pcall(function()
			return Promise.resolve(d.fn(table.unpack(d.args))):andThen(onFulfill, onReject), true
		end)
		if not ok then
			local ex = result
			onReject(ex)
		end
		if hasReturned then
			return result
		end
		return
	end
	function onFulfill(result)
		release()
		return result
	end
	function onReject(error_)
		release()
		error(error_)
	end
	function release()
		local next_ = queue:shift()
		if next_ ~= nil then
			next_:resolve(next_)
		else
			s = bit32.bor(s, 0) + 1
		end
	end
	return run
end

local function earlyBound<TResult, TArgs>(size: number, fn: (...TArgs) -> Promise<TResult>): ThroatEarlyBound<TResult, TArgs>
	local run = throatInternal(bit32.bor(size, 0))
	return function(...)
		local arguments = { ... }
		local args = {}
		for i = 0, #arguments - 1 do
			args[i + 1] = arguments[i + 1]
		end
		return run(fn, args)
	end
end
local function lateBound<TResult, TArgs>(size: number): ThroatLateBound<TResult, TArgs>
	local run = throatInternal(bit32.bor(size, 0))
	return function(fn, ...)
		local arguments = { fn :: any, ... }
		-- ROBLOX deviation: using isCallable to allow for callable tables being passed
		if not isCallable(fn) then
			error(TypeError.new("Expected throat fn to be a function but got " .. tostring(typeof(fn))))
		end
		local args = {} :: Array<TArgs>
		for i = 1, #arguments - 1 do
			args[i] = arguments[i + 1]
		end
		return run(fn, args)
	end
end

exports.default = function<TResult, TArgs>(
	size: number,
	fn: ((...TArgs) -> Promise<TResult>)?
): ((...TArgs) -> Promise<TResult>) | ((fn: (...TArgs) -> Promise<TResult>, ...TArgs) -> Promise<TResult>)
	-- ROBLOX deviation: using isCallable to allow for callable tables being passed
	if isCallable(size) then
		local temp = fn
		fn = (size :: any) :: (...TArgs) -> Promise<TResult>
		size = (temp :: any) :: number
	end
	if typeof(size) ~= "number" then
		error(TypeError.new("Expected throat size to be a number but got " .. tostring(typeof(size))))
	end
	-- ROBLOX deviation: using isCallable to allow for callable tables being passed
	if fn ~= nil and not isCallable(fn) then
		error(TypeError.new("Expected throat fn to be a function but got " .. tostring(typeof(fn))))
	end
	-- ROBLOX deviation: using isCallable to allow for callable tables being passed
	if fn ~= nil and isCallable(fn) then
		return earlyBound(bit32.bor(size, 0), fn)
	else
		return lateBound(bit32.bor(size, 0))
	end
end

-- ROBLOX deviation: only exporting as default
-- module.exports.default = module.exports;

type Delayed = {
	new: (resolve: (...any) -> (), fn: (...any) -> ...any, args: Array<any>) -> Delayed,
}

(Delayed :: any).__index = Delayed
function Delayed.new(resolve, fn, args): Delayed
	local self = setmetatable({}, Delayed)
	self.resolve = resolve
	self.fn = fn
	self.args = args
	return (self :: any) :: Delayed
end

local blockSize = 64

type Queue = {
	new: () -> Queue,
	push: (self: Queue, value: any) -> (),
	shift: (self: Queue) -> any?,
}
type QueuePrivate = {
	new: () -> QueuePrivate,
	push: (self: QueuePrivate, value: any) -> (),
	shift: (self: QueuePrivate) -> any?,
	_s1: Array<any>,
	_s2: Array<any>,
	_pushBlock: Array<any>,
	_shiftBlock: Array<any>,
	_pushIndex: number,
	_shiftIndex: number,
}
local QueuePrivate = {} :: QueuePrivate;
(QueuePrivate :: any).__index = QueuePrivate
function QueuePrivate.new(): QueuePrivate
	local self = setmetatable({}, QueuePrivate)
	self._s1 = {}
	self._s2 = {}
	self._pushBlock = {}
	self._shiftBlock = self._pushBlock
	self._pushIndex = 0
	self._shiftIndex = 0
	return (self :: any) :: QueuePrivate
end

function QueuePrivate:push(value)
	if self._pushIndex == blockSize then
		self._pushIndex = 0
		self._pushBlock = {}
		self._s1[#self._s1 + 1] = self._pushBlock
	end
	self._pushBlock[self._pushIndex + 1] = value
	self._pushIndex += 1
end

function QueuePrivate:shift()
	if self._shiftIndex == blockSize then
		self._shiftIndex = 0
		local s2 = self._s2
		if #s2 == 0 then
			local s1 = self._s1
			if #s1 == 0 then
				return nil
			end
			self._s1 = s2
			self._s2 = Array.reverse(s1)
			s2 = self._s2
		end
		self._shiftBlock = table.remove(s2) :: Array<any>
	end
	if self._pushBlock == self._shiftBlock and self._pushIndex == self._shiftIndex then
		return nil
	end
	local result = self._shiftBlock[self._shiftIndex + 1]
	self._shiftBlock[self._shiftIndex + 1] = nil
	self._shiftIndex += 1

	return result
end
Queue = (QueuePrivate :: any) :: Queue

return exports
