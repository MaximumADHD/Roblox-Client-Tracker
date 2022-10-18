--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/jsutils/keyValMap.js
local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>

--[[
 * Creates a keyed JS object from an array, given a function to produce the keys
 * and a function to produce the values from each item in the array.
 *
 *     const phoneBook = [
 *       { name: 'Jon', num: '555-1234' },
 *       { name: 'Jenny', num: '867-5309' }
 *     ]
 *
 *     // { Jon: '555-1234', Jenny: '867-5309' }
 *     const phonesByName = keyValMap(
 *       phoneBook,
 *       entry => entry.name,
 *       entry => entry.num
 *     )
 *
 ]]
-- ROBLOX deviation START: Returning a Map instead of ObjMap
local function keyValMap<T, V>(
	list: Array<T>,
	keyFn: (T) -> string,
	valFn: (T) -> V
): Map<string, V>
	-- ROBLOX deviation END
	local map = Map.new() :: Map<string, V>
	for _, item in ipairs(list) do
		map:set(keyFn(item), valFn(item))
	end
	return map
end

return {
	keyValMap = keyValMap,
}
