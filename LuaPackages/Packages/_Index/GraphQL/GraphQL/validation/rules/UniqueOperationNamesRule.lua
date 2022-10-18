--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueOperationNamesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * Unique operation names
--  *
--  * A GraphQL document is only valid if all defined operations have unique names.
--  */
exports.UniqueOperationNamesRule = function(context)
	local knownOperationNames = {}
	return {
		OperationDefinition = function(_self, node)
			local operationName = node.name
			if operationName then
				if knownOperationNames[operationName.value] then
					context:reportError(
						GraphQLError.new(
							('There can be only one operation named "%s".'):format(
								operationName.value
							),
							{ knownOperationNames[operationName.value], operationName }
						)
					)
				else
					knownOperationNames[operationName.value] = operationName
				end
			end
			return false
		end,
		FragmentDefinition = function()
			return false
		end,
	}
end

return exports
