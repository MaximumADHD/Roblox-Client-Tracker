--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX no upstream

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local depTypesModule = require(script.Parent.depTypes)
type Dep<TKey> = depTypesModule.Dep<TKey>

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)

type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
type Object = LuauPolyfill.Object

local anyEntryTypesModule = require(script.Parent.anyEntryTypes)
type AnyEntry = anyEntryTypesModule.AnyEntry

--[[
  ROBLOX deviation: no way to handle tuple like types in Luau
  original type:
  type Value<T> =
  | []           // unknown
  | [T]          // known value
  | [void, any]; // known exception
]]
-- Since exceptions are cached just like normal values, we need an efficient
-- way of representing unknown, ordinary, and exceptional values.
export type Value<T> = Array<T | any>

export type Entry<TArgs, TValue> = {
	-- ROBLOX deviation: original type: OptimisticWrapOptions<TArgs>["subscribe"]
	subscribe: (((...any) -> ()) | (() -> any))?,
	-- ROBLOX deviation: original type: Unsubscribable["unsubscribe"]
	unsubscribe: (() -> any)?,

	parents: Set<AnyEntry>,
	childValues: Map<AnyEntry, Value<any>>,

	-- When self Entry has children that are dirty, self property becomes
	-- a Set containing other Entry objects, borrowed from emptySetPool.
	-- When the set becomes empty, it gets recycled back to emptySetPool.
	dirtyChildren: Set<AnyEntry> | nil,

	dirty: boolean,
	recomputing: boolean,
	value: Value<TValue>,

	fn: (...any) -> TValue,

	peek: (self: Entry<TArgs, TValue>) -> TValue | nil,
	recompute: (self: Entry<TArgs, TValue>, args: TArgs) -> TValue,
	setDirty: (self: Entry<TArgs, TValue>) -> (),
	dispose: (self: Entry<TArgs, TValue>) -> (),
	forget: (self: Entry<TArgs, TValue>) -> (),
	deps: Set<Dep<any>> | nil,
	dependsOn: (self: Entry<TArgs, TValue>, dep: Dep<any>) -> (),
	forgetDeps: (self: Entry<TArgs, TValue>) -> (),
}

return {}
