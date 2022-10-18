--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/UniqueFieldDefinitionNamesRule.js

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map

local isNotNillish = require(srcWorkspace.luaUtils.isNillish).isNotNillish

local GraphQLError = require(srcWorkspace.error.GraphQLError).GraphQLError
local definitionModule = require(srcWorkspace.type.definition)
local isObjectType = definitionModule.isObjectType
local isInterfaceType = definitionModule.isInterfaceType
local isInputObjectType = definitionModule.isInputObjectType

local exports = {}

-- ROBLOX deviation: pre-declare function names
local hasField

-- /**
--  * Unique field definition names
--  *
--  * A GraphQL complex type is only valid if all its fields are uniquely named.
--  */
exports.UniqueFieldDefinitionNamesRule = function(context)
	local schema = context:getSchema()
	-- ROBLOX deviation: use Map type
	local existingTypeMap = schema and schema:getTypeMap() or Map.new()
	local knownFieldNames = {}

	-- ROBLOX deviation: function needs to be defined before the
	-- next return statement
	local function checkFieldUniqueness(_self, node)
		local typeName = node.name.value

		if not knownFieldNames[typeName] then
			knownFieldNames[typeName] = {}
		end

		-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		local fieldNodes = node.fields or {}
		local fieldNames = knownFieldNames[typeName]

		for _, fieldDef in ipairs(fieldNodes) do
			local fieldName = fieldDef.name.value

			if hasField(existingTypeMap:get(typeName), fieldName) then
				context:reportError(
					GraphQLError.new(
						(
							'Field "%s.%s" already exists in the schema. It cannot also be defined in this type extension.'
						):format(typeName, fieldName),
						fieldDef.name
					)
				)
			elseif fieldNames[fieldName] then
				context:reportError(
					GraphQLError.new(
						('Field "%s.%s" can only be defined once.'):format(typeName, fieldName),
						{ fieldNames[fieldName], fieldDef.name }
					)
				)
			else
				fieldNames[fieldName] = fieldDef.name
			end
		end

		return false
	end

	return {
		InputObjectTypeDefinition = checkFieldUniqueness,
		InputObjectTypeExtension = checkFieldUniqueness,
		InterfaceTypeDefinition = checkFieldUniqueness,
		InterfaceTypeExtension = checkFieldUniqueness,
		ObjectTypeDefinition = checkFieldUniqueness,
		ObjectTypeExtension = checkFieldUniqueness,
	}
end

function hasField(type_, fieldName: string): boolean
	if isObjectType(type_) or isInterfaceType(type_) or isInputObjectType(type_) then
		-- ROBLOX deviation: use Map
		return isNotNillish(type_:getFields():get(fieldName))
	end
	return false
end

return exports
