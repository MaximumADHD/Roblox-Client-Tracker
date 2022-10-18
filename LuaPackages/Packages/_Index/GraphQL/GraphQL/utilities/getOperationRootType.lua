--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/getOperationRootType.js

local GraphQLError = require(script.Parent.Parent.error.GraphQLError).GraphQLError

local astImport = require(script.Parent.Parent.language.ast)
type OperationDefinitionNode = astImport.OperationDefinitionNode
type OperationTypeDefinitionNode = astImport.OperationTypeDefinitionNode
local definitionImport = require(script.Parent.Parent.type.definition)
type GraphQLObjectType = definitionImport.GraphQLObjectType
local schemaImport = require(script.Parent.Parent.type.schema)
type GraphQLSchema = schemaImport.GraphQLSchema

--[[*
--  * Extracts the root type of the operation from the schema.
--  *]]
local function getOperationRootType(
	schema: GraphQLSchema,
	operation: OperationDefinitionNode | OperationTypeDefinitionNode
): GraphQLObjectType
	if operation.operation == "query" then
		local queryType = schema:getQueryType()
		if not queryType then
			error(
				GraphQLError.new("Schema does not define the required query root type.", operation)
			)
		end
		-- ROBLOX FIXME Luau: Luau should narrow based on branch above
		return queryType :: GraphQLObjectType
	end

	if operation.operation == "mutation" then
		local mutationType = schema:getMutationType()
		if not mutationType then
			error(GraphQLError.new("Schema is not configured for mutations.", operation))
		end
		-- ROBLOX FIXME Luau: Luau should narrow based on branch above
		return mutationType :: GraphQLObjectType
	end

	if operation.operation == "subscription" then
		local subscriptionType = schema:getSubscriptionType()
		if not subscriptionType then
			error(GraphQLError.new("Schema is not configured for subscriptions.", operation))
		end
		-- ROBLOX FIXME Luau: Luau should narrow based on branch above
		return subscriptionType :: GraphQLObjectType
	end

	error(GraphQLError.new("Can only have query, mutation and subscription operations.", operation))
end

return {
	getOperationRootType = getOperationRootType,
}
