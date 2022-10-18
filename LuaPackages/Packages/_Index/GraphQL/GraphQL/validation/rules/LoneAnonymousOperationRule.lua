--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/LoneAnonymousOperationRule.js

local root = script.Parent.Parent.Parent
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array

local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local Kind = require(language.kinds).Kind

local exports = {}

-- /**
--  * Lone anonymous operation
--  *
--  * A GraphQL document is only valid if when it contains an anonymous operation
--  * (the query short-hand) that it contains only that one operation definition.
--  */
exports.LoneAnonymousOperationRule = function(context)
	local operationCount = 0
	return {
		Document = function(_self, node)
			operationCount = #Array.filter(node.definitions, function(definition)
				return definition.kind == Kind.OPERATION_DEFINITION
			end)
		end,
		OperationDefinition = function(_self, node)
			if not node.name and operationCount > 1 then
				context:reportError(
					GraphQLError.new(
						"This anonymous operation must be the only defined operation.",
						node
					)
				)
			end
		end,
	}
end

return exports
