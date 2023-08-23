--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/optimism/blob/v0.16.1/src/index.ts

local srcWorkspace = script.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Set = LuauPolyfill.Set
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object

type Function = (...any) -> ...any

local exports = {}

local Trie = require(srcWorkspace.wry.trie).Trie

local Cache = require(script.cache).Cache
local entryModule = require(script.entry)
local Entry = entryModule.Entry
type Entry<TArgs, TValue> = entryModule.Entry<TArgs, TValue>
type AnyEntry = entryModule.AnyEntry
local parentEntrySlot = require(script.context).parentEntrySlot

-- These helper functions are important for making optimism work with
-- asynchronous code. In order to register parent-child dependencies,
-- optimism needs to know about any currently active parent computations.
-- In ordinary synchronous code, the parent context is implicit in the
-- execution stack, but asynchronous code requires some extra guidance in
-- order to propagate context from one async task segment to the next.
local contextModule = require(script.context)
exports.bindContext = contextModule.bindContext
exports.noContext = contextModule.noContext
exports.setTimeout = contextModule.setTimeout
-- exports.asyncFromGen = contextModule.asyncFromGen

-- A lighter-weight dependency, similar to OptimisticWrapperFunction, except
-- with only one argument, no makeCacheKey, no wrapped function to recompute,
-- and no result value. Useful for representing dependency leaves in the graph
-- of computation. Subscriptions are supported.
local depModule = require(script.dep)
exports.dep = depModule.dep
export type OptimisticDependencyFunction<TKey> = depModule.OptimisticDependencyFunction<TKey>

--[[
  ROBLOX deviation: no generic params for functions are supported.
  TResult_, TArgs_, TKeyArgs_, TCacheKey_
  are a placeholders for generic TResult, TArgs, TKeyArgs, TCacheKey params
]]
type TResult_ = any
type TArgs_ = any
type TKeyArgs_ = any
type TCacheKey_ = any

local function makeDefaultMakeCacheKeyFunction(): (...any) -> TCacheKey_
	-- ROBLOX deviation: typeof(WeakMap) == "function" is always true
	local keyTrie = Trie.new(true)
	return function(_self, ...)
		-- ROBLOX deviation: there is no implicit arguments param available in Lua
		local arguments = { ... }
		return keyTrie:lookupArray(arguments)
	end
end

-- The defaultMakeCacheKey function is remarkably powerful, because it gives
-- a unique object for any shallow-identical list of arguments. If you need
-- to implement a custom makeCacheKey function, you may find it helpful to
-- delegate the final work to defaultMakeCacheKey, which is why we export it
-- here. However, you may want to avoid defaultMakeCacheKey if your runtime
-- does not support WeakMap, or you have the ability to return a string key.
-- In those cases, just write your own custom makeCacheKey functions.
local defaultMakeCacheKey = makeDefaultMakeCacheKeyFunction()
exports.defaultMakeCacheKey = defaultMakeCacheKey

-- If you're paranoid about memory leaks, or you want to avoid using WeakMap
-- under the hood, but you still need the behavior of defaultMakeCacheKey,
-- import this constructor to create your own tries.
exports.KeyTrie = Trie

-- ROBLOX deviation: types are moved to separate file to avoid circular dependencies
local initTypesModule = require(script.initTypes)
export type OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey> = initTypesModule.OptimisticWrapperFunction<
	TArgs,
	TResult,
	TKeyArgs,
	TCacheKey
>

export type OptimisticWrapOptions<TArgs, TKeyArgs, TCacheKey> = initTypesModule.OptimisticWrapOptions<
	TArgs,
	TKeyArgs,
	TCacheKey
>

local caches = Set.new()

-- ROBLOX TODO: add default generics params
local function wrap<TArgs, TResult, TKeyArgs, TCacheKey>(
	originalFunction: (...any) -> ...TResult,
	options_: OptimisticWrapOptions<TArgs, TKeyArgs, any>?,
	-- ROBLOX deviation: in case we're wrapping a method we need a thisArg to handle `self` properly
	thisArg: any?
): OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>
	local options: OptimisticWrapOptions<TArgs, TKeyArgs, any> = options_ :: any
	if options == nil then
		options = {} :: OptimisticWrapOptions<TArgs, TKeyArgs, any>
	end

	local cache = Cache.new(Boolean.toJSBoolean(options.max) and options.max or math.pow(2, 16), function(entry)
		return entry:dispose()
	end)

	local keyArgs = options.keyArgs
	local makeCacheKey = Boolean.toJSBoolean(options.makeCacheKey) and (options.makeCacheKey :: (...any) -> any)
		or makeDefaultMakeCacheKeyFunction()

	-- ROBLOX deviation: in case we're wrapping a method we need to bind thisArg to the originalFunction
	if thisArg ~= nil then
		local oldOriginalFunction = originalFunction
		originalFunction = function(...)
			return oldOriginalFunction(thisArg, ...)
		end
	end

	-- ROBLOX deviation: function can't be have properties in Lua. Using __call metatable property instead
	local optimistic = (
		setmetatable({}, {
			__call = function(_self, selfOrFirstArg, ...): TResult
				-- ROBLOX deviation: there is no implicit arguments param available in Lua
				local arguments
				if thisArg ~= nil then
					-- ROBLOX deviation: in case we're wrapping a method the second argument is the real "self"
					arguments = { ... }
				else
					-- ROBLOX deviation: in case we're NOT wrapping a method the second argument should be included in arguments
					arguments = { selfOrFirstArg, ... }
				end

				local key = makeCacheKey(
					nil,
					table.unpack((function()
						if keyArgs then
							return (keyArgs :: any)(nil, table.unpack(arguments :: any))
						else
							return arguments :: any
						end
					end)())
				)

				if key == nil then
					return originalFunction(table.unpack(arguments :: any))
				end

				local entry = cache:get(key)
				if entry == nil then
					entry = Entry.new(originalFunction)
					cache:set(key, entry :: Entry<any, any>);
					(entry :: Entry<any, any>).subscribe = options.subscribe;
					-- Give the Entry the ability to trigger cache.delete(key), even though
					-- the Entry itself does not know about key or cache.
					(entry :: Entry<any, any>).forget = function()
						return cache:delete(key)
					end
				end

				local value = (entry :: Entry<any, any>):recompute((Array.slice(arguments) :: any) :: TArgs)

				-- Move this entry to the front of the least-recently used queue,
				-- since we just finished computing its value.
				cache:set(key, entry :: Entry<any, any>)

				caches:add(cache)

				-- Clean up any excess entries in the cache, but only if there is no
				-- active parent entry, meaning we're not in the middle of a larger
				-- computation that might be flummoxed by the cleaning.
				if not parentEntrySlot:hasValue() then
					caches:forEach(function(cache)
						return cache:clean()
					end)
					caches:clear()
				end

				return value
			end,
			-- ROBLOX deviation: creating readonly size property
			__index = function(t, k)
				if k == "size" then
					return (cache :: any).map.size
				end
				return rawget(t, k)
			end,
			__newindex = function(t, k, v)
				if k == "size" then
					error("attempt to update a read-only table", 2)
				end
				rawset(t, k, v)
			end,
		}) :: any
	) :: OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey>

	--[[
		ROBLOX deviation:
		calling function as a method needs slightly different signature
		creating helper function to achieve that
	]]
	local function asMethod(fn: Function)
		return function(_, ...)
			return fn(...)
		end
	end

	local function dirtyKey(key: TCacheKey_)
		local entry = cache:get(key)
		if Boolean.toJSBoolean(entry) then
			(entry :: any):setDirty()
		end
	end
	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.dirtyKey = asMethod(dirtyKey)
	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.dirty = asMethod(function(...)
		dirtyKey(makeCacheKey(nil, ...))
	end)

	local function peekKey(key: TCacheKey_)
		local entry = cache:get(key)
		if Boolean.toJSBoolean(entry) then
			return (entry :: any):peek()
		end
		return
	end
	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.peekKey = asMethod(peekKey)
	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.peek = asMethod(function(...)
		return peekKey(makeCacheKey(nil, ...))
	end)

	local function forgetKey(key: TCacheKey_)
		return cache:delete(key)
	end
	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.forgetKey = asMethod(forgetKey)
	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.forget = asMethod(function(...)
		return forgetKey(makeCacheKey(nil, ...))
	end)

	-- ROBLOX deviation: needs modified signature when used as method
	optimistic.makeCacheKey = makeCacheKey
	if Boolean.toJSBoolean(keyArgs) then
		-- ROBLOX deviation: needs modified signature when used as method
		optimistic.getKey = asMethod(function(...)
			return makeCacheKey(nil, table.unpack((keyArgs :: any)(...)))
		end)
	else
		-- ROBLOX deviation: needs modified signature when used as method
		optimistic.getKey = makeCacheKey :: ((...any) -> TCacheKey_)
	end

	return Object.freeze(optimistic)
end
exports.wrap = wrap
return exports
