--[[
 * Copyright (c) 2019-2021 Ben Newman <ben@eloper.dev>
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/wryware/blob/%40wry/trie%400.3.1/packages/trie/src/trie.ts

-- A [trie](https://en.wikipedia.org/wiki/Trie) data structure that holds
-- object keys weakly, yet can also hold non-object keys, unlike the
-- native `WeakMap`.

local rootWorkspace = script.Parent.Parent.Parent.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>
type WeakMap<T, V> = LuauPolyfill.WeakMap<T, V>

local exports = {}

-- If no makeData function is supplied, the looked-up data will be an empty,
-- null-prototype Object.
local function defaultMakeData()
	return {}
end

-- Useful for processing arguments objects as well as arrays.

local Trie = {}
Trie.__index = Trie

type Trie_Data = any
type Lookup_T = Array<any>
type LookupArray_T = Array<any>

export type Trie<Data> = {
	weakness: boolean,
	makeData: (array: Array<any>) -> Data,
	lookup: (self: Trie<Data>, ...any) -> Data,
	lookupArray: (self: Trie<Data>, array: LookupArray_T) -> Data,
	-- Since a `WeakMap` cannot hold primitive values as keys, we need a
	-- backup `Map` instance to hold primitive keys. Both `self.weak`
	-- and `self.strong` are lazily initialized.
	weak: WeakMap<any, Trie<Data>>?,
	strong: Map<any, Trie<Data>>?,
	data: Data?,
	getChildTrie: (self: Trie<Data>, key: any) -> Trie<Data>,
}

-- ROBLOX FIXME: this is a workaround for the 'recursive type with different args' error, remove this once that's fixed
type _Trie = {
	weakness: boolean,
	makeData: (array: Array<any>) -> any,
	lookup: (self: _Trie, ...any) -> any,
	lookupArray: (self: _Trie, array: LookupArray_T) -> any,
	weak: WeakMap<any, _Trie>?,
	strong: Map<any, _Trie>?,
	data: any?,
	getChildTrie: (self: _Trie, key: any) -> _Trie,
}

--[[
  ROBLOX deviation: no generic params for functions are supported.
  Trie_Data is a placeholder for generic Data param
]]
function Trie.new(weakness_: boolean?, makeData_: ((array: Array<any>) -> Trie_Data)?): Trie<Trie_Data>
	local weakness: boolean = weakness_ :: any
	local makeData: (array: Array<any>) -> Trie_Data = makeData_ :: any
	if weakness == nil then
		weakness = true
	end
	if makeData == nil then
		makeData = defaultMakeData
	end
	local self = setmetatable({}, Trie)

	self.weakness = weakness
	self.makeData = makeData

	return (self :: any) :: Trie<Trie_Data>
end

--[[
  ROBLOX deviation: no generic params for functions are supported.
  Trie_Data is a placeholder for generic <T extends any[]> param
]]
function Trie:lookup(...): Trie_Data
	local array: Lookup_T = { ... }
	return self:lookupArray(array)
end

--[[
  ROBLOX deviation: no generic params for functions are supported.
  Trie_Data is a placeholder for generic <T extends IArguments | any[]> param
]]
function Trie:lookupArray(array: LookupArray_T): Trie_Data
	local node: Trie<Trie_Data> = self
	-- ROBLOX deviation START: use for in loop instead of forEach
	for _, key in array do
		-- ROBLOX deviation END
		node = node:getChildTrie(key)
	end
	-- ROBLOX deviation START: remove Boolean
	if not node.data then
		-- ROBLOX deviation END
		-- ROBLOX deviation start: prefer table.clone over default array slice
		node.data = ((self :: any) :: Trie<Trie_Data>).makeData(table.clone(array))
		-- ROBLOX deviation end
	end
	return node.data
end

function Trie:getChildTrie(key: any)
	local map: any -- ROBLOX FIXME: CLI can't handle get/set function calls of Map<any, any> | WeakMap<any, any>
	-- ROBLOX deviation START: weak maps can hold non-objects in lua
	if self.weakness then
		-- ROBLOX deviation END
		if self.weak == nil then
			self.weak = setmetatable({}, { __mode = "k" })
		end
		map = self.weak
	else
		if self.strong == nil then
			self.strong = {}
		end
		map = self.strong
	end
	local child = map[key]
	-- ROBLOX deviation START: remove Boolean
	if not child then
		-- ROBLOX deviation END
		child = Trie.new(self.weakness, self.makeData)
		map[key] = child
	end
	return child
end

exports.Trie = Trie

return exports
