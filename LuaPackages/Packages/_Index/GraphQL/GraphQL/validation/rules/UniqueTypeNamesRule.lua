--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueTypeNamesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * Unique type names
--  *
--  * A GraphQL document is only valid if all defined types have unique names.
--  */
exports.UniqueTypeNamesRule = function(context)
	local knownTypeNames = {}
	local schema = context:getSchema()

	-- ROBLOX deviation: function needs to be defined before the
	-- next return statement
	local function checkTypeName(_self, node)
		local typeName = node.name.value

		if schema and schema:getType(typeName) then
			context:reportError(
				GraphQLError.new(
					(
						'Type "%s" already exists in the schema. It cannot also be defined in this type definition.'
					):format(typeName),
					node.name
				)
			)
			return
		end

		if knownTypeNames[typeName] then
			context:reportError(
				GraphQLError.new(
					('There can be only one type named "%s".'):format(typeName),
					{ knownTypeNames[typeName], node.name }
				)
			)
		else
			knownTypeNames[typeName] = node.name
		end

		return false
	end

	return {
		ScalarTypeDefinition = checkTypeName,
		ObjectTypeDefinition = checkTypeName,
		InterfaceTypeDefinition = checkTypeName,
		UnionTypeDefinition = checkTypeName,
		EnumTypeDefinition = checkTypeName,
		InputObjectTypeDefinition = checkTypeName,
	}
end

return exports
