--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/NoUnusedVariablesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * No unused variables
--  *
--  * A GraphQL operation is only valid if all variables defined by an operation
--  * are used, either directly or within a spread fragment.
--  */
local function NoUnusedVariablesRule(context)
	local variableDefs = {}

	return {
		OperationDefinition = {
			enter = function()
				variableDefs = {}
			end,
			leave = function(_self, operation)
				local variableNameUsed = {}
				local usages = context:getRecursiveVariableUsages(operation)

				for _, usage in ipairs(usages) do
					local node = usage.node
					variableNameUsed[node.name.value] = true
				end

				for _, variableDef in ipairs(variableDefs) do
					local variableName = variableDef.variable.name.value
					if variableNameUsed[variableName] ~= true then
						context:reportError(
							GraphQLError.new(
								operation.name
										and ('Variable "$%s" is never used in operation "%s".'):format(
											variableName,
											operation.name.value
										)
									or ('Variable "$%s" is never used.'):format(variableName),
								variableDef
							)
						)
					end
				end
			end,
		},
		VariableDefinition = function(_self, def)
			table.insert(variableDefs, def)
		end,
	}
end
exports.NoUnusedVariablesRule = NoUnusedVariablesRule

return exports
