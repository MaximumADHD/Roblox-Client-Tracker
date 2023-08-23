--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX no upstream
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Object = LuauPolyfill.Object

-- ROBLOX deviation: function can't be have properties in Lua. Using __call metatable property instead
type CallableFunction<TResult> = typeof(setmetatable({}, {
	__call = function(...)
		return ({} :: any) :: TResult
	end,
}))

export type OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey> = CallableFunction<TResult> & {
	-- Get the current number of Entry objects in the LRU cache.
	size: number,

	-- "Dirty" any cached Entry stored for the given arguments, marking that Entry
	-- and its ancestors as potentially needing to be recomputed. The .dirty(...)
	-- method of an optimistic function takes the same parameter types as the
	-- original function by default, unless a keyArgs function is configured, and
	-- then it matters that .dirty takes TKeyArgs instead of TArgs.
	dirty: (...any) -> (),
	-- A version of .dirty that accepts a key returned by .getKey.
	dirtyKey: (self: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>, key: TCacheKey) -> (),

	-- Examine the current value without recomputing it.
	peek: (...any) -> TResult | nil,
	-- A version of .peek that accepts a key returned by .getKey.
	peekKey: (self: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>, key: TCacheKey) -> TResult | nil,

	-- Completely remove the entry from the cache, dirtying any parent entries.
	forget: (self: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>, ...any) -> boolean,
	-- A version of .forget that accepts a key returned by .getKey.
	forgetKey: (self: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>, key: TCacheKey) -> boolean,

	-- In order to use the -Key version of the above functions, you need a key
	-- rather than the arguments used to compute the key. These two functions take
	-- TArgs or TKeyArgs and return the corresponding TCacheKey. If no keyArgs
	-- function has been configured, TArgs will be the same as TKeyArgs, and thus
	-- getKey and makeCacheKey will be synonymous.
	getKey: (self: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>, ...any) -> TCacheKey,

	-- This property is equivalent to the makeCacheKey function provided in the
	-- OptimisticWrapOptions, or (if no options.makeCacheKey function is provided)
	-- a default implementation of makeCacheKey.
	makeCacheKey: (self: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>, ...any) -> TCacheKey,
}

export type OptimisticWrapOptions<TArgs, TKeyArgs, TCacheKey> = {
	-- The maximum number of cache entries that should be retained before the
	-- cache begins evicting the oldest ones.
	max: number?,
	-- Transform the raw arguments to some other type of array, which will then
	-- be passed to makeCacheKey.
	keyArgs: ((...any) -> TKeyArgs)?,
	-- The makeCacheKey function takes the same arguments that were passed to
	-- the wrapper function and returns a single value that can be used as a key
	-- in a Map to identify the cached result.
	makeCacheKey: ((...any) -> TCacheKey)?,
	-- If provided, the subscribe function should either return an unsubscribe
	-- function or return nothing.
	subscribe: ((...TArgs) -> () | (() -> any))?,
}

return {}
