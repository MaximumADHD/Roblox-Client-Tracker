--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/jsutils/isIteratableObject.js

-- ROBLOX deviation: actual implementation totally deviated from upstream
--[[*
 * Returns true if the provided object is an Object (i.e. not a string literal)
 * and implements the Iterator protocol.
 *
 * This may be used in place of [Array.isArray()][isArray] to determine if
 * an object should be iterated-over e.g. Array, Map, Set, Int8Array,
 * TypedArray, etc. but excludes string literals.
 *
 * @example
 *
 * isIteratableObject([ 1, 2, 3 ]) // true
 * isIteratableObject(new Map()) // true
 * isIteratableObject('ABC') // false
 * isIteratableObject({ key: 'value' }) // false
 * isIteratableObject({ length: 1, 0: 'Alpha' }) // false
 ]]

local function isIteratableObject(maybeIteratable: any): boolean
	if typeof(maybeIteratable) ~= "table" then
		return false
	end
	if next(maybeIteratable) == nil then
		-- an empty table is an empty array
		return true
	end

	local length = #maybeIteratable

	if length == 0 then
		return false
	end

	return true
end

return {
	isIteratableObject = isIteratableObject,
}
