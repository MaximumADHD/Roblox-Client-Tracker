--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/UniqueOperationTypesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * Unique operation types
--  *
--  * A GraphQL document is only valid if it has only one type per operation.
--  */
exports.UniqueOperationTypesRule = function(context)
	local schema = context:getSchema()
	local definedOperationTypes = {}
	local existingOperationTypes = schema
			and {
				query = schema:getQueryType(),
				mutation = schema:getMutationType(),
				subscription = schema:getSubscriptionType(),
			}
		or {}

	-- ROBLOX deviation: function needs to be defined before the
	-- next return statement
	local function checkOperationTypes(_self, node)
		-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		local operationTypesNodes = node.operationTypes or {}

		for _, operationType in ipairs(operationTypesNodes) do
			local operation = operationType.operation
			local alreadyDefinedOperationType = definedOperationTypes[operation]

			if existingOperationTypes[operation] then
				context:reportError(
					GraphQLError.new(
						("Type for %s already defined in the schema. It cannot be redefined."):format(
							operation
						),
						operationType
					)
				)
			elseif alreadyDefinedOperationType then
				context:reportError(
					GraphQLError.new(
						("There can be only one %s type in schema."):format(operation),
						{ alreadyDefinedOperationType, operationType }
					)
				)
			else
				definedOperationTypes[operation] = operationType
			end
		end

		return false
	end

	return {
		SchemaDefinition = checkOperationTypes,
		SchemaExtension = checkOperationTypes,
	}
end

return exports
