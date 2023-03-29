--!nocheck
--!nolint
-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/withCancel.ts
type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
local Packages --[[ ROBLOX comment: must define Packages module ]]
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)
local exports = {}
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local memoize2 = require(script.Parent["memoize.js"]).memoize2
local function defaultAsyncIteratorReturn(value: any?)
	return Promise.resolve():andThen(function()
		return { value = value, done = true } :: const
	end)
end
local proxyMethodFactory = memoize2(function(target: T, targetMethod: TMethod)
	return function(
		...: any --[[ ROBLOX CHECK: check correct type of elements. Upstream type: <Parameters<TMethod>> ]]
	)
		local args = { ... }
		return Reflect:apply(targetMethod, target, args)
	end
end)
-- ROBLOX deviation START: default generic values not supported
-- local function getAsyncIteratorWithCancel<T, TReturn = any>(
local function getAsyncIteratorWithCancel<T, TReturn>(
	-- ROBLOX deviation END
	asyncIterator: AsyncIterator<T>,
	onCancel: (value: TReturn?) -> void | Promise<void>
): AsyncIterator<T>
	return Proxy.new(asyncIterator, {
		has = function(self, asyncIterator, prop)
			if prop == "return" then
				return true
			end
			return Reflect:has(asyncIterator, prop)
		end,
		get = function(self, asyncIterator, prop, receiver)
			local existingPropValue = Reflect:get(asyncIterator, prop, receiver)
			if prop == "return" then
				local existingReturn = Boolean.toJSBoolean(existingPropValue) and existingPropValue
					or defaultAsyncIteratorReturn
				return function(value: TReturn?)
					return Promise.resolve():andThen(function()
						local returnValue = onCancel(value):expect()
						return Reflect:apply(existingReturn, asyncIterator, { returnValue })
					end)
				end
			elseif typeof(existingPropValue) == "function" then
				return proxyMethodFactory(asyncIterator, existingPropValue)
			end
			return existingPropValue
		end,
	})
end
exports.getAsyncIteratorWithCancel = getAsyncIteratorWithCancel
-- ROBLOX deviation START: default generic values not supported
-- local function getAsyncIterableWithCancel<T, TAsyncIterable, TReturn = any>(
local function getAsyncIterableWithCancel<T, TAsyncIterable, TReturn>(
	-- ROBLOX deviation END
	asyncIterable: TAsyncIterable,
	onCancel: (value: TReturn?) -> void | Promise<void>
): TAsyncIterable
	return Proxy.new(asyncIterable, {
		get = function(self, asyncIterable, prop, receiver)
			local existingPropValue = Reflect:get(asyncIterable, prop, receiver)
			if Symbol.asyncIterator == prop then
				return function()
					local asyncIterator: AsyncIterator<T> = Reflect:apply(existingPropValue, asyncIterable, {})
					return getAsyncIteratorWithCancel(asyncIterator, onCancel)
				end
			elseif typeof(existingPropValue) == "function" then
				return proxyMethodFactory(asyncIterable, existingPropValue)
			end
			return existingPropValue
		end,
	})
end
exports.getAsyncIterableWithCancel = getAsyncIterableWithCancel
exports.withCancel = getAsyncIterableWithCancel
return exports
