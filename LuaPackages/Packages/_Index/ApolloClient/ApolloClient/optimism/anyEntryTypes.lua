--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX no upstream, extracted from optimism/entry.ts to work around circular types/deps

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)

type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
type Object = LuauPolyfill.Object

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

-- ROBLOX FIXME: this is a workaround for the 'recursive type with different args' error, remove this once that's fixed
type _Entry = {
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
	value: Value<any>,

	fn: (...any) -> any,

	peek: (self: _Entry) -> any | nil,
	recompute: (self: _Entry, args: any) -> any,
	setDirty: (self: _Entry) -> (),
	dispose: (self: _Entry) -> (),
	forget: (self: _Entry) -> (),
	-- ROBLOX deviation: Dep<any> made object to eliminate circular dependency
	deps: Set<Object> | nil,
	-- ROBLOX deviation: Dep<any> made object to eliminate circular dependency
	dependsOn: (self: _Entry, dep: Object) -> (),
	forgetDeps: (self: _Entry) -> (),
}

export type AnyEntry = _Entry

return {}
