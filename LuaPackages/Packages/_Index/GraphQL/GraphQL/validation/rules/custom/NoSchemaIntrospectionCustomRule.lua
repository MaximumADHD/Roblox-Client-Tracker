--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/NoSchemaIntrospectionCustomRule.js

local root = script.Parent.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local definition = require(root.type.definition)
local getNamedType = definition.getNamedType
local isIntrospectionType = require(root.type.introspection).isIntrospectionType

local exports = {}

-- /**
--  * Prohibit introspection queries
--  *
--  * A GraphQL document is only valid if all fields selected are not fields that
--  * return an introspection type.
--  *
--  * Note: This rule is optional and is not part of the Validation section of the
--  * GraphQL Specification. This rule effectively disables introspection, which
--  * does not reflect best practices and should only be done if absolutely necessary.
--  */
exports.NoSchemaIntrospectionCustomRule = function(context)
	return {
		Field = function(_self, node)
			local type_ = getNamedType(context:getType())
			if type_ and isIntrospectionType(type_) then
				context:reportError(
					GraphQLError.new(
						(
							'GraphQL introspection has been disabled, but the requested query contained the field "%s".'
						):format(node.name.value),
						node
					)
				)
			end
		end,
	}
end

return exports
