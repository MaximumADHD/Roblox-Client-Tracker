--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/keyMap.js
local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local ObjMapModule = require(script.Parent.ObjMap)
type ObjMap<T> = ObjMapModule.ObjMap<T>

--[[
 * Creates a keyed JS object from an array, given a function to produce the keys
 * for each value in the array.
 *
 * This provides a convenient lookup for the array items if the key function
 * produces unique results.
 *
 *     const phoneBook = [
 *       { name: 'Jon', num: '555-1234' },
 *       { name: 'Jenny', num: '867-5309' }
 *     ]
 *
 *     // { Jon: { name: 'Jon', num: '555-1234' },
 *     //   Jenny: { name: 'Jenny', num: '867-5309' } }
 *     const entriesByName = keyMap(
 *       phoneBook,
 *       entry => entry.name
 *     )
 *
 *     // { name: 'Jenny', num: '857-6309' }
 *     const jennyEntry = entriesByName['Jenny']
 *
 ]]
local function keyMap<T>(list: Array<T>, keyFn: (item: T) -> string): ObjMap<T>
	local result: ObjMap<T> = {}
	for _, item in ipairs(list) do
		result[keyFn(item)] = item
	end
	return result
end

return {
	keyMap = keyMap,
}
