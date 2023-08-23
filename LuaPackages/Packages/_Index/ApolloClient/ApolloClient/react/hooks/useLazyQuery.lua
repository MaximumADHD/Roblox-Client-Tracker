--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/useLazyQuery.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local GraphQL = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQL.DocumentNode
local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>

local reactTypesModule = require(srcWorkspace.react.types.types)
type LazyQueryHookOptions<TData, TVariables> = reactTypesModule.LazyQueryHookOptions<TData, TVariables>
type QueryTuple<TData, TVariables> = reactTypesModule.QueryTuple<TData, TVariables>
local useBaseQuery = require(script.Parent.utils.useBaseQuery).useBaseQuery
local coreTypesModule = require(srcWorkspace.core)
type OperationVariables = coreTypesModule.OperationVariables

local exports = {}

local function useLazyQuery<TData, TVariables>(
	query: DocumentNode | TypedDocumentNode<TData, TVariables>,
	options: LazyQueryHookOptions<TData, TVariables>?
)
	-- ROBLOX FIXME Luau: this typecheck doesn't work, very very long analyze error
	return useBaseQuery(query, options, true) -- :: QueryTuple<TData, TVariables>
end

exports.useLazyQuery = useLazyQuery

return exports
