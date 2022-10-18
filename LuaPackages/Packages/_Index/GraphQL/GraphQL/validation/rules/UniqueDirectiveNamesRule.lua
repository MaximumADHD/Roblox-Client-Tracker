--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueDirectiveNamesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * Unique directive names
--  *
--  * A GraphQL document is only valid if all defined directives have unique names.
--  */
exports.UniqueDirectiveNamesRule = function(context)
	local knownDirectiveNames = {}
	local schema = context:getSchema()

	return {
		DirectiveDefinition = function(_self, node)
			local directiveName = node.name.value

			if schema and schema:getDirective(directiveName) then
				context:reportError(
					GraphQLError.new(
						('Directive "@%s" already exists in the schema. It cannot be redefined.'):format(
							directiveName
						),
						node.name
					)
				)
				return
			end

			if knownDirectiveNames[directiveName] then
				context:reportError(
					GraphQLError.new(
						('There can be only one directive named "@%s".'):format(directiveName),
						{ knownDirectiveNames[directiveName], node.name }
					)
				)
			else
				knownDirectiveNames[directiveName] = node.name
			end

			return false
		end,
	}
end

return exports
