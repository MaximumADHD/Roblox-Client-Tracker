--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/__tests__/toJSONDeep.js

local srcWorkspace = script.Parent.Parent.Parent
local root = srcWorkspace.Parent
local Array = require(root.LuauPolyfill).Array

local isObjectLike = require(srcWorkspace.jsutils.isObjectLike).isObjectLike
-- /**
--  * Deeply transforms an arbitrary value to a JSON-safe value by calling toJSON
--  * on any nested value which defines it.
--  */
local function toJSONDeep(value)
	if not isObjectLike(value) then
		return value
	end

	if type(value.toJSON) == "function" then
		return value:toJSON()
	end

	if Array.isArray(value) then
		return Array.map(value, toJSONDeep)
	end

	local result = {}

	for prop, val in pairs(value) do
		result[prop] = toJSONDeep(val)
	end

	return result
end

return {
	toJSONDeep = toJSONDeep,
}
