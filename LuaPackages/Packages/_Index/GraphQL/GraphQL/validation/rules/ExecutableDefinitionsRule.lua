--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/ExecutableDefinitionsRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local Kind = require(language.kinds).Kind
local isExecutableDefinitionNode = require(language.predicates).isExecutableDefinitionNode

local exports = {}

-- /**
--  * Executable definitions
--  *
--  * A GraphQL document is only valid for execution if all definitions are either
--  * operation or fragment definitions.
--  */
exports.ExecutableDefinitionsRule = function(context)
	return {
		Document = function(_self, node)
			for _, definition in ipairs(node.definitions) do
				if not isExecutableDefinitionNode(definition) then
					local defName = nil
					if
						definition.kind == Kind.SCHEMA_DEFINITION
						or definition.kind == Kind.SCHEMA_EXTENSION
					then
						defName = "schema"
					else
						defName = '"' .. definition.name.value .. '"'
					end
					context:reportError(
						GraphQLError.new(
							("The %s definition is not executable."):format(defName),
							definition
						)
					)
				end
			end
			return false
		end,
	}
end

return exports
