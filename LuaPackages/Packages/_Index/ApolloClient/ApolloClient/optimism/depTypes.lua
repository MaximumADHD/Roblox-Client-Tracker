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
type Set<T> = LuauPolyfill.Set<T>
type Object = LuauPolyfill.Object

local helpersTypesModule = require(script.Parent.helpers_types)
export type Unsubscribable = helpersTypesModule.Unsubscribable
local anyEntryTypesModule = require(script.Parent.anyEntryTypes)
type AnyEntry = anyEntryTypesModule.AnyEntry

export type Dep<TKey> = Set<AnyEntry> & {
	-- ROBLOX deviation: inlined here since we can't access type fields, add self param
	-- subscribe: OptimisticWrapOptions<[TKey]>["subscribe"]
	subscribe: ((...TKey) -> () | (() -> any))?,
} & Unsubscribable

return {}
