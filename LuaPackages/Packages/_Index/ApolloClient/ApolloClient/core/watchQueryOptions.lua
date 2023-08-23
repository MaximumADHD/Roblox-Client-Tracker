--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/watchQueryOptions.ts
local exports = {}
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode

local watchQueryOptionsTypesModule = require(script.Parent.watchQueryOptions_types)

local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>
-- local FetchResult = require(script.Parent.Parent.link.core).FetchResult
local typesModule = require(script.Parent.types)
type DefaultContext = typesModule.DefaultContext
type MutationQueryReducersMap<T> = typesModule.MutationQueryReducersMap<T>
type OperationVariables = typesModule.OperationVariables
type MutationUpdaterFunction<TData, TVariables, TContext, TCache> = typesModule.MutationUpdaterFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
type OnQueryUpdated<TResult> = typesModule.OnQueryUpdated<TResult>
type InternalRefetchQueriesInclude = typesModule.InternalRefetchQueriesInclude
-- ROBLOX comment: moved to different file to solve circular dependency issue
export type FetchPolicy = watchQueryOptionsTypesModule.FetchPolicy
-- ROBLOX comment: moved to different file to solve circular dependency issue
export type WatchQueryFetchPolicy = watchQueryOptionsTypesModule.WatchQueryFetchPolicy
-- ROBLOX comment: moved to different file to solve circular dependency issue
export type RefetchWritePolicy = watchQueryOptionsTypesModule.RefetchWritePolicy

-- ROBLOX comment: moved to different file to solve circular dependency issue
export type ErrorPolicy = watchQueryOptionsTypesModule.ErrorPolicy

-- ROBLOX comment: moved to different file to solve circular dependency issue
export type QueryOptions<TVariables, TData> = watchQueryOptionsTypesModule.QueryOptions<TVariables, TData>
-- ROBLOX comment: moved to different file to solve circular dependency issue
type QueryOptions_omit_fetchPolicy<TVariables, TData> = watchQueryOptionsTypesModule.QueryOptions_omit_fetchPolicy<
	TVariables,
	TData
>
-- ROBLOX comment: moved to different file to solve circular dependency issue
export type WatchQueryOptions_<TVariables> = watchQueryOptionsTypesModule.WatchQueryOptions_<TVariables>
export type WatchQueryOptions__ = watchQueryOptionsTypesModule.WatchQueryOptions__
export type WatchQueryOptions<TVariables, TData> = watchQueryOptionsTypesModule.WatchQueryOptions<TVariables, TData>
-- ROBLOX comment: moved to different file to solve circular dependency issue
export type FetchMoreQueryOptions<TVariables, TData> = watchQueryOptionsTypesModule.FetchMoreQueryOptions<
	TVariables,
	TData
>

-- ROBLOX comment: moved to different file to solve circular dependency issue
export type UpdateQueryFn<TData, TSubscriptionVariables, TSubscriptionData> = watchQueryOptionsTypesModule.UpdateQueryFn<
	TData,
	TSubscriptionVariables,
	TSubscriptionData
>

-- ROBLOX comment: moved to different file to solve circular dependency issue
export type SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData> =
	watchQueryOptionsTypesModule.SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData>
export type SubscriptionOptions<TVariables, TData> = watchQueryOptionsTypesModule.SubscriptionOptions<TVariables, TData>

-- ROBLOX comment: moved to different file to solve circular dependency issue
export type MutationOptions<TData, TVariables, TContext, TCache> = watchQueryOptionsTypesModule.MutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
return exports
