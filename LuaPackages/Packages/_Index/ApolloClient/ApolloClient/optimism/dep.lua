--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/optimism/blob/v0.16.1/src/dep.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Map<K, V> = LuauPolyfill.Map<K, V>
local Set = LuauPolyfill.Set
local Array = LuauPolyfill.Array

local exports = {}

local anyEntryTypesModule = require(script.Parent.anyEntryTypes)
type AnyEntry = anyEntryTypesModule.AnyEntry
local initTypesModule = require(script.Parent.initTypes)
type OptimisticWrapOptions<TArgs, TKeyArgs, TCacheKey> = initTypesModule.OptimisticWrapOptions<
	TArgs,
	TKeyArgs,
	TCacheKey
>
local parentEntrySlot = require(script.Parent.context).parentEntrySlot
local helpersModule = require(script.Parent.helpers)
local hasOwnProperty = helpersModule.hasOwnProperty
type Unsubscribable = helpersModule.Unsubscribable
local maybeUnsubscribe = helpersModule.maybeUnsubscribe
local toArray = helpersModule.toArray

--[[
	ROBLOX deviation:
	original type
	keyof typeof EntryMethods
]]
type EntryMethodName = string
local EntryMethods = {
	setDirty = true, -- Mark parent Entry as needing to be recomputed (default)
	dispose = true, -- Detach parent Entry from parents and children, but leave in LRU cache
	forget = true, -- Fully remove parent Entry from LRU cache and computation graph
}

--[[
	ROBLOX deviation
	original type
	((key: TKey) => void) & {
	  dirty: (key: TKey, entryMethodName?: EntryMethodName) => void;
	}
]]
export type OptimisticDependencyFunction<TKey> = typeof(setmetatable(
	{},
	{ __call = (function() end :: any) :: ((self: any, key: TKey) -> ()) }
)) & {
	dirty: (self: any, key: TKey, entryMethodName: EntryMethodName?) -> (),
}

-- ROBLOX deviation: types are moved to separate file to avoid circular dependencies
local depTypesModule = require(script.Parent.depTypes)
export type Dep<TKey> = depTypesModule.Dep<TKey>
-- ROBLOX deviation: no TSIndexedAccessType equivalent in Lua
type Dep_Subscribe<TKey> = ((TKey) -> () | (() -> any))

local function dep<TKey>(options: { subscribe: Dep_Subscribe<TKey> }?)
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	-- ROBLOX deviation START: use table instead of Map
	local depsByKey = {}
	-- ROBLOX deviation END
	local subscribe = if options ~= nil then options.subscribe else options

	local depend = setmetatable({}, {
		__call = function(_self, key: TKey)
			local parent = parentEntrySlot:getValue()
			if parent ~= nil then
				-- ROBLOX deviation START: use table instead of Map
				local dep = depsByKey[key]
				-- ROBLOX deviation END
				if not dep then
					dep = Set.new() :: Dep<TKey>
					-- ROBLOX FIXME Luau: analyze doesn't narrow to non-nil even with direct assignment immediately before
					-- ROBLOX deviation START: use table instead of Map
					depsByKey[key] = (dep :: any) :: Dep<TKey>
					-- ROBLOX deviation END
				end
				parent:dependOn(dep)
				-- ROBLOX FIXME Luau: this should narrow subscribe to be non-nil, but doesn't
				-- ROBLOX deviation START: use type instead of typeof
				if type(subscribe) == "function" then
					-- ROBLOX deviation END
					-- ROBLOX FIXME Luau: inference doesn't understand x == nil then x = new Set()
					maybeUnsubscribe(dep :: Dep<TKey>);
					-- ROBLOX TODO Luau: hard cast. Luau will say 'subscribe' isn't callable even though it's an intersection of two function types and it should infer
					(dep :: Dep<TKey>).unsubscribe = (subscribe :: (TKey) -> any)(key)
				end
			end
		end,
	})

	depend.dirty = function(_self, key: TKey, entryMethodName: EntryMethodName?)
		-- ROBLOX deviation START: use table instead of Map
		local dep = depsByKey[key]
		-- ROBLOX deviation END
		if dep then
			local m: EntryMethodName = if entryMethodName and hasOwnProperty(EntryMethods, entryMethodName)
				then entryMethodName
				else "setDirty"
			-- We have to use toArray(dep).forEach instead of dep.forEach, because
			-- modifying a Set while iterating over it can cause elements in the Set
			-- to be removed from the Set before they've been iterated over.
			Array.forEach(toArray(dep :: Dep<TKey>), function(entry)
				entry[m](entry)
			end)
			-- ROBLOX deviation START: use table instead of Map
			depsByKey[key] = nil
			-- ROBLOX deviation END
			maybeUnsubscribe(dep :: Dep<TKey>)
		end
	end
	-- ROBLOX FIXME Luau: false positive: Cannot cast '{ @metatable { __call: <a>(a, TKey) -> () }, { dirty: <b>(b, TKey, string?) -> () } }' into '{ @metatable { __call: (any, TKey) -> () }, {  } } & {| dirty: (any, TKey, string?) -> () |}' because the types are unrelated
	return (depend :: any) :: OptimisticDependencyFunction<TKey>
end

exports.dep = dep

return exports
