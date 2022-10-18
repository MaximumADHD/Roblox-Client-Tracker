--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueVariableNamesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * Unique variable names
--  *
--  * A GraphQL operation is only valid if all its variables are uniquely named.
--  */
exports.UniqueVariableNamesRule = function(context)
	local knownVariableNames = {}
	return {
		OperationDefinition = function()
			knownVariableNames = {}
		end,
		VariableDefinition = function(_self, node)
			local variableName = node.variable.name.value
			if knownVariableNames[variableName] then
				context:reportError(
					GraphQLError.new(
						('There can be only one variable named "$%s".'):format(variableName),
						{ knownVariableNames[variableName], node.variable.name }
					)
				)
			else
				knownVariableNames[variableName] = node.variable.name
			end
		end,
	}
end

return exports
