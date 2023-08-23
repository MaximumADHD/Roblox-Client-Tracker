--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/components/types.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode

local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>

local coreModule = require(script.Parent.Parent.Parent.core)
type OperationVariables = coreModule.OperationVariables
type DefaultContext = coreModule.DefaultContext

local cacheModule = require(script.Parent.Parent.Parent.cache)
type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>

local typesModule = require(script.Parent.Parent.types.types)
type QueryFunctionOptions<TData, TVariables> = typesModule.QueryFunctionOptions<TData, TVariables>
type QueryResult<TData, TVariables> = typesModule.QueryResult<TData, TVariables>
type BaseMutationOptions<TData, TVariables, TContext, TCache> = typesModule.BaseMutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
type MutationFunction<TData, TVariables, TContext, TCache> = typesModule.MutationFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
type MutationResult<TData> = typesModule.MutationResult<TData>
type BaseSubscriptionOptions<TData, TVariables> = typesModule.BaseSubscriptionOptions<TData, TVariables>
type SubscriptionResult<TData> = typesModule.SubscriptionResult<TData>

type JSX_Element = any

export type QueryComponentOptions<TData, TVariables> = QueryFunctionOptions<TData, TVariables> & {
	children: (result: QueryResult<TData, TVariables>) -> (JSX_Element | nil),
	query: DocumentNode | TypedDocumentNode<TData, TVariables>,
}

export type MutationComponentOptions<TData, TVariables, TContext, TCache> = BaseMutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
> & {
	mutation: DocumentNode | TypedDocumentNode<TData, TVariables>,
	children: (
		mutateFunction: MutationFunction<TData, TVariables, TContext, any>,
		result: MutationResult<TData>
	) -> (JSX_Element | nil),
}

export type SubscriptionComponentOptions<TData, TVariables> = BaseSubscriptionOptions<TData, TVariables> & {
	subscription: DocumentNode | TypedDocumentNode<TData, TVariables>,
	children: (nil | ((result: SubscriptionResult<TData>) -> (JSX_Element | nil)))?,
}

return exports
