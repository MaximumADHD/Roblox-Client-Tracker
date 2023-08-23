--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/index.ts
local exports = {}
local rootWorkspace = script.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object
local coreModule = require(script.core)
Object.assign(exports, coreModule)
exports.None = coreModule.None
export type ApolloCache<TSerialized> = coreModule.ApolloCache<TSerialized>
export type ApolloClient<TCacheShape> = coreModule.ApolloClient<TCacheShape>
export type ApolloClientOptions<TCacheShape> = coreModule.ApolloClientOptions<TCacheShape>
export type ApolloError = coreModule.ApolloError
export type ApolloLink = coreModule.ApolloLink
export type ApolloQueryResult<T> = coreModule.ApolloQueryResult<T>
export type ApolloReducerConfig = coreModule.ApolloReducerConfig
export type Cache_DiffResult<T> = coreModule.Cache_DiffResult<T>
export type Cache_WatchCallback = coreModule.Cache_WatchCallback
export type Cache_ReadOptions<TVariables, TData> = coreModule.Cache_ReadOptions<TVariables, TData>
export type Cache_WriteOptions<TResult, TVariables> = coreModule.Cache_WriteOptions<TResult, TVariables>
export type Cache_DiffOptions = coreModule.Cache_DiffOptions
export type Cache_WatchOptions<Watcher> = coreModule.Cache_WatchOptions<Watcher>
export type Cache_EvictOptions = coreModule.Cache_EvictOptions
export type Cache_ModifyOptions = coreModule.Cache_ModifyOptions
export type Cache_BatchOptions<C> = coreModule.Cache_BatchOptions<C>
export type Cache_ReadQueryOptions<TData, TVariables> = coreModule.Cache_ReadQueryOptions<TData, TVariables>
export type Cache_ReadFragmentOptions<TData, TVariables> = coreModule.Cache_ReadFragmentOptions<TData, TVariables>
export type Cache_WriteQueryOptions<TData, TVariables> = coreModule.Cache_WriteQueryOptions<TData, TVariables>
export type Cache_WriteFragmentOptions<TData, TVariables> = coreModule.Cache_WriteFragmentOptions<TData, TVariables>
export type Cache_Fragment<TData, TVariables> = coreModule.Cache_Fragment<TData, TVariables>
export type DataProxy = coreModule.DataProxy
export type DataProxy_Query<TVariables, TData> = coreModule.DataProxy_Query<TVariables, TData>
export type DataProxy_Fragment<TVariables, TData> = coreModule.DataProxy_Fragment<TVariables, TData>
export type DataProxy_ReadQueryOptions<TData, TVariables> = coreModule.DataProxy_ReadQueryOptions<TData, TVariables>
export type DataProxy_ReadFragmentOptions<TData, TVariables> = coreModule.DataProxy_ReadFragmentOptions<
	TData,
	TVariables
>
export type DataProxy_WriteOptions<TData> = coreModule.DataProxy_WriteOptions<TData>
export type DataProxy_WriteQueryOptions<TData, TVariables> = coreModule.DataProxy_WriteQueryOptions<TData, TVariables>
export type DataProxy_WriteFragmentOptions<TData, TVariables> = coreModule.DataProxy_WriteFragmentOptions<
	TData,
	TVariables
>
export type DataProxy_DiffResult<T> = coreModule.DataProxy_DiffResult<T>
export type DefaultContext = coreModule.DefaultContext
export type DefaultOptions = coreModule.DefaultOptions
export type DiffQueryAgainstStoreOptions = coreModule.DiffQueryAgainstStoreOptions
export type DocumentNode = coreModule.DocumentNode
export type ErrorPolicy = coreModule.ErrorPolicy
export type FetchMoreOptions<TData, TVariables> = coreModule.FetchMoreOptions<TData, TVariables>
export type FetchMoreQueryOptions<TVariables, TData> = coreModule.FetchMoreQueryOptions<TVariables, TData>
export type FetchPolicy = coreModule.FetchPolicy
export type FetchResult<TData, C, E> = coreModule.FetchResult<TData, C, E>
export type FieldFunctionOptions<TArgs, TVars> = coreModule.FieldFunctionOptions<TArgs, TVars>
export type FieldMergeFunction<T, V> = coreModule.FieldMergeFunction<T, V>
export type FieldPolicy<TExisting, TIncoming, TReadResult> = coreModule.FieldPolicy<TExisting, TIncoming, TReadResult>
export type FieldReadFunction<T, V> = coreModule.FieldReadFunction<T, V>
export type FragmentMatcher = coreModule.FragmentMatcher
export type GraphQLRequest = coreModule.GraphQLRequest
export type HttpLink = coreModule.HttpLink
export type HttpOptions = coreModule.HttpOptions
export type IdGetterObj = coreModule.IdGetterObj
export type IdGetter = coreModule.IdGetter
export type InMemoryCache = coreModule.InMemoryCache
export type InMemoryCacheConfig = coreModule.InMemoryCacheConfig
export type InternalRefetchQueriesInclude = coreModule.InternalRefetchQueriesInclude
export type InternalRefetchQueriesMap<TResult> = coreModule.InternalRefetchQueriesMap<TResult>
export type InternalRefetchQueriesOptions<TCache, TResult> = coreModule.InternalRefetchQueriesOptions<TCache, TResult>
export type InternalRefetchQueriesResult<TResult> = coreModule.InternalRefetchQueriesResult<TResult>
export type InternalRefetchQueryDescriptor = coreModule.InternalRefetchQueryDescriptor
export type MergeInfo = coreModule.MergeInfo
export type MergeTree = coreModule.MergeTree
export type MissingFieldError = coreModule.MissingFieldError
export type MutationOptions<TData, TVariables, TContext, TCache> = coreModule.MutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationQueryReducer<T> = coreModule.MutationQueryReducer<T>
export type MutationQueryReducersMap<T> = coreModule.MutationQueryReducersMap<T>
export type MutationUpdaterFunction<TData, TVariables, TContext, TCache> = coreModule.MutationUpdaterFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
export type NetworkStatus = coreModule.NetworkStatus
export type NextLink = coreModule.NextLink
export type NormalizedCache = coreModule.NormalizedCache
export type NormalizedCacheObject = coreModule.NormalizedCacheObject
export type Observable<T> = coreModule.Observable<T>
export type Observer<T> = coreModule.Observer<T>
export type ObservableQuery<TData, TVariables> = coreModule.ObservableQuery<TData, TVariables>
export type ObservableSubscription = coreModule.ObservableSubscription
export type OnQueryUpdated<TResult> = coreModule.OnQueryUpdated<TResult>
export type Operation = coreModule.Operation
export type OperationVariables = coreModule.OperationVariables
export type OptimisticStoreItem = coreModule.OptimisticStoreItem
export type PossibleTypesMap = coreModule.PossibleTypesMap
export type PureQueryOptions = coreModule.PureQueryOptions
export type QueryListener = coreModule.QueryListener
export type QueryOptions<TVariables, TData> = coreModule.QueryOptions<TVariables, TData>
export type ReactiveVar<T> = coreModule.ReactiveVar<T>
export type ReadMergeModifyContext = coreModule.ReadMergeModifyContext
export type ReadQueryOptions = coreModule.ReadQueryOptions
export type Reference = coreModule.Reference
export type RefetchQueriesInclude = coreModule.RefetchQueriesInclude
export type RefetchQueriesOptions<TCache, TResult> = coreModule.RefetchQueriesOptions<TCache, TResult>
export type RefetchQueriesPromiseResults<TResult> = coreModule.RefetchQueriesPromiseResults<TResult>
export type RefetchQueriesResult<TResult> = coreModule.RefetchQueriesResult<TResult>
export type RefetchQueryDescriptor = coreModule.RefetchQueryDescriptor
export type RequestHandler = coreModule.RequestHandler
export type Resolver = coreModule.Resolver
export type Resolvers = coreModule.Resolvers
export type ServerError = coreModule.ServerError
export type ServerParseError = coreModule.ServerParseError
export type StoreObject = coreModule.StoreObject
export type StoreValue = coreModule.StoreValue
export type SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData> = coreModule.SubscribeToMoreOptions<
	TData,
	TSubscriptionVariables,
	TSubscriptionData
>
export type SubscriptionOptions<TVariables, TData> = coreModule.SubscriptionOptions<TVariables, TData>
export type Transaction<T> = coreModule.Transaction<T>
export type TypePolicies = coreModule.TypePolicies
export type TypePolicy = coreModule.TypePolicy
export type TypedDocumentNode<Result, Variables> = coreModule.TypedDocumentNode<Result, Variables>
export type UpdateQueryOptions<TVariables> = coreModule.UpdateQueryOptions<TVariables>
export type UriFunction = coreModule.UriFunction
export type WatchQueryFetchPolicy = coreModule.WatchQueryFetchPolicy
export type WatchQueryOptions<TVariables, TData> = coreModule.WatchQueryOptions<TVariables, TData>

local reactModule = require(script.react)
Object.assign(exports, reactModule)
export type ApolloContextValue = reactModule.ApolloContextValue
export type BaseMutationOptions<TData, TVariables, TContext, TCache> = reactModule.BaseMutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type BaseQueryOptions<TVariables> = reactModule.BaseQueryOptions<TVariables>
export type BaseSubscriptionOptions<TData, TVariables> = reactModule.BaseSubscriptionOptions<TData, TVariables>
export type CommonOptions<TOptions> = reactModule.CommonOptions<TOptions>
export type Context = reactModule.Context
export type DocumentType = reactModule.DocumentType
export type IDocumentDefinition = reactModule.IDocumentDefinition
export type LazyQueryHookOptions<TData, TVariables> = reactModule.LazyQueryHookOptions<TData, TVariables>
export type LazyQueryResult<TData, TVariables> = reactModule.LazyQueryResult<TData, TVariables>
export type MutationDataOptions<TData, TVariables, TContext, TCache> = reactModule.MutationDataOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationFunction<TData, TVariables, TContext, TCache> = reactModule.MutationFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationFunctionOptions<TData, TVariables, TContext, TCache> = reactModule.MutationFunctionOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationHookOptions<TData, TVariables, TContext, TCache> = reactModule.MutationHookOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationResult<TData> = reactModule.MutationResult<TData>
export type MutationTuple<TData, TVariables, TContext, TCache> = reactModule.MutationTuple<
	TData,
	TVariables,
	TContext,
	TCache
>
export type ObservableQueryFields<TData, TVariables> = reactModule.ObservableQueryFields<TData, TVariables>
export type OnSubscriptionDataOptions<TData> = reactModule.OnSubscriptionDataOptions<TData>
export type QueryDataOptions<TData, TVariables> = reactModule.QueryDataOptions<TData, TVariables>
export type QueryFunctionOptions<TData, TVariables> = reactModule.QueryFunctionOptions<TData, TVariables>
export type QueryHookOptions<TData, TVariables> = reactModule.QueryHookOptions<TData, TVariables>
export type QueryLazyOptions<TVariables> = reactModule.QueryLazyOptions<TVariables>
export type QueryResult<TData, TVariables> = reactModule.QueryResult<TData, TVariables>
export type QueryTuple<TData, TVariables> = reactModule.QueryTuple<TData, TVariables>
export type RefetchQueriesFunction = reactModule.RefetchQueriesFunction
export type SubscriptionCurrentObservable = reactModule.SubscriptionCurrentObservable
export type SubscriptionDataOptions<TData, TVariables> = reactModule.SubscriptionDataOptions<TData, TVariables>
export type SubscriptionHookOptions<TData, TVariables> = reactModule.SubscriptionHookOptions<TData, TVariables>
export type SubscriptionResult<TData> = reactModule.SubscriptionResult<TData>

return exports :: typeof(exports) & typeof(coreModule) & typeof(reactModule)
