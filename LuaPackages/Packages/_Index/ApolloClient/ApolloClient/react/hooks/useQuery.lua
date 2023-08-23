--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/useQuery.ts
local exports: { [string]: any } = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local GraphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQLModule.DocumentNode

local typedDocumentNodesModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodesModule.TypedDocumentNode<Result, Variables>

local typesModule = require(script.Parent.Parent.types.types)
type QueryHookOptions<TData, TVariables> = typesModule.QueryHookOptions<TData, TVariables>
type QueryResult<TData, TVariables> = typesModule.QueryResult<TData, TVariables>

local useBaseQuery = require(script.Parent.utils.useBaseQuery).useBaseQuery

local coreModule = require(srcWorkspace.core)
type OperationVariables = coreModule.OperationVariables

local function useQuery<TData, TVariables>(
	query: DocumentNode | TypedDocumentNode<TData, TVariables>,
	options: QueryHookOptions<TData, TVariables>?
)
	-- ROBLOX FIXME Luau: this typecheck doesn't work, very very long analyze error
	return useBaseQuery(query, options, false) -- :: QueryResult<TData, TVariables>
end

exports.useQuery = useQuery

return exports
