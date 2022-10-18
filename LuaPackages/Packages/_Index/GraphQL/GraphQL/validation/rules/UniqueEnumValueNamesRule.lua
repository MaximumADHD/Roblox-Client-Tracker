--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/UniqueEnumValueNamesRule.js

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map

local GraphQLError = require(srcWorkspace.error.GraphQLError).GraphQLError
local definition = require(srcWorkspace.type.definition)
local isEnumType = definition.isEnumType

local exports = {}

-- /**
--  * Unique enum value names
--  *
--  * A GraphQL enum type is only valid if all its values are uniquely named.
--  */
exports.UniqueEnumValueNamesRule = function(context)
	local schema = context:getSchema()
	-- ROBLOX deviation: use Map type
	local existingTypeMap = schema and schema:getTypeMap() or Map.new()
	local knownValueNames = {}

	-- ROBLOX deviation: function needs to be defined before the
	-- next return statement
	local function checkValueUniqueness(_self, node)
		local typeName = node.name.value

		if not knownValueNames[typeName] then
			knownValueNames[typeName] = {}
		end

		-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		local valueNodes = node.values or {}
		local valueNames = knownValueNames[typeName]

		for _, valueDef in ipairs(valueNodes) do
			local valueName = valueDef.name.value

			-- ROBLOX deviation: use Map type
			local existingType = existingTypeMap:get(typeName)
			if isEnumType(existingType) and existingType:getValue(valueName) then
				context:reportError(
					GraphQLError.new(
						(
							'Enum value "%s.%s" already exists in the schema. It cannot also be defined in this type extension.'
						):format(typeName, valueName),
						valueDef.name
					)
				)
			elseif valueNames[valueName] then
				context:reportError(
					GraphQLError.new(
						('Enum value "%s.%s" can only be defined once.'):format(typeName, valueName),
						{ valueNames[valueName], valueDef.name }
					)
				)
			else
				valueNames[valueName] = valueDef.name
			end
		end

		return false
	end

	return {
		EnumTypeDefinition = checkValueUniqueness,
		EnumTypeExtension = checkValueUniqueness,
	}
end

return exports
