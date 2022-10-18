--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/NoUndefinedVariablesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * No undefined variables
--  *
--  * A GraphQL operation is only valid if all variables encountered, both directly
--  * and via fragment spreads, are defined by that operation.
--  */
exports.NoUndefinedVariablesRule = function(context)
	local variableNameDefined = {}

	return {
		OperationDefinition = {
			enter = function()
				variableNameDefined = {}
			end,
			leave = function(_self, operation)
				local usages = context:getRecursiveVariableUsages(operation)

				for _, usage in ipairs(usages) do
					local node = usage.node
					local varName = node.name.value
					if variableNameDefined[varName] ~= true then
						context:reportError(
							GraphQLError.new(
								operation.name
										and ('Variable "$%s" is not defined by operation "%s".'):format(
											varName,
											operation.name.value
										)
									or ('Variable "$%s" is not defined.'):format(varName),
								{ node, operation }
							)
						)
					end
				end
			end,
		},
		VariableDefinition = function(_self, node)
			variableNameDefined[node.variable.name.value] = true
		end,
	}
end

return exports
