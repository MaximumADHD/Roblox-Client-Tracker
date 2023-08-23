--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/index.ts

local exports = {}
local srcWorkspace = script.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

local DEV = require(srcWorkspace.utilities).DEV

local ApolloClientModule = require(script.ApolloClient)
export type ApolloClient<TCacheShape> = ApolloClientModule.ApolloClient<TCacheShape>
export type ApolloClientOptions<TCacheShape> = ApolloClientModule.ApolloClientOptions<TCacheShape>
exports.ApolloClient = ApolloClientModule.ApolloClient
export type DefaultOptions = ApolloClientModule.DefaultOptions
exports.mergeOptions = ApolloClientModule.mergeOptions

local ObservableQueryModule = require(script.ObservableQuery)
exports.applyNextFetchPolicy = ObservableQueryModule.applyNextFetchPolicy
exports.ObservableQuery = ObservableQueryModule.ObservableQuery
export type FetchMoreOptions<TData, TVariables> = ObservableQueryModule.FetchMoreOptions<TData, TVariables>
export type ObservableQuery<TData, TVariables> = ObservableQueryModule.ObservableQuery<TData, TVariables>
export type UpdateQueryOptions<TVariables> = ObservableQueryModule.UpdateQueryOptions<TVariables>

local watchQueryOptionsModule = require(script.watchQueryOptions)
export type QueryOptions<TVariables, TData> = watchQueryOptionsModule.QueryOptions<TVariables, TData>
export type WatchQueryOptions_<TVariables> = watchQueryOptionsModule.WatchQueryOptions_<TVariables>
export type WatchQueryOptions__ = watchQueryOptionsModule.WatchQueryOptions__
export type WatchQueryOptions<TVariables, TData> = watchQueryOptionsModule.WatchQueryOptions<TVariables, TData>
export type FetchPolicy = watchQueryOptionsModule.FetchPolicy
export type WatchQueryFetchPolicy = watchQueryOptionsModule.WatchQueryFetchPolicy
export type ErrorPolicy = watchQueryOptionsModule.ErrorPolicy
export type FetchMoreQueryOptions<TVariables, TData> = watchQueryOptionsModule.FetchMoreQueryOptions<TVariables, TData>
export type MutationOptions<TData, TVariables, TContext, TCache> = watchQueryOptionsModule.MutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData> =
	watchQueryOptionsModule.SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData>
export type SubscriptionOptions<TVariables, TData> = watchQueryOptionsModule.SubscriptionOptions<TVariables, TData>

local networkStatusModule = require(script.networkStatus)
exports.NetworkStatus = networkStatusModule.NetworkStatus
export type NetworkStatus = networkStatusModule.NetworkStatus
local typesModule = require(script.types)
Object.assign(exports, typesModule)
export type TypedDocumentNode<Result, Variables> = typesModule.TypedDocumentNode<Result, Variables>
export type DefaultContext = typesModule.DefaultContext
export type QueryListener = typesModule.QueryListener
export type OnQueryUpdated<TResult> = typesModule.OnQueryUpdated<TResult>
export type RefetchQueryDescriptor = typesModule.RefetchQueryDescriptor
export type InternalRefetchQueryDescriptor = typesModule.InternalRefetchQueryDescriptor
export type RefetchQueriesInclude = typesModule.RefetchQueriesInclude
export type InternalRefetchQueriesInclude = typesModule.InternalRefetchQueriesInclude
export type RefetchQueriesOptions<TCache, TResult> = typesModule.RefetchQueriesOptions<TCache, TResult>
export type RefetchQueriesPromiseResults<TResult> = typesModule.RefetchQueriesPromiseResults<TResult>
export type RefetchQueriesResult<TResult> = typesModule.RefetchQueriesResult<TResult>
export type InternalRefetchQueriesOptions<TCache, TResult> = typesModule.InternalRefetchQueriesOptions<TCache, TResult>
export type InternalRefetchQueriesResult<TResult> = typesModule.InternalRefetchQueriesResult<TResult>
export type InternalRefetchQueriesMap<TResult> = typesModule.InternalRefetchQueriesMap<TResult>
export type PureQueryOptions = typesModule.PureQueryOptions
export type OperationVariables = typesModule.OperationVariables
export type ApolloQueryResult<T> = typesModule.ApolloQueryResult<T>
export type MutationQueryReducer<T> = typesModule.MutationQueryReducer<T>
export type MutationQueryReducersMap<T> = typesModule.MutationQueryReducersMap<T>
export type MutationUpdaterFunction<TData, TVariables, TContext, TCache> = typesModule.MutationUpdaterFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
export type Resolvers = typesModule.Resolvers
local localStateModule = require(script.LocalState)
export type Resolver = localStateModule.Resolver
export type FragmentMatcher = localStateModule.FragmentMatcher

local errorsModule = require(script.Parent.errors)
exports.isApolloError = errorsModule.isApolloError
exports.ApolloError = errorsModule.ApolloError
export type ApolloError = errorsModule.ApolloError

local cacheModule = require(script.Parent.cache)
exports.ApolloCache = cacheModule.ApolloCache
exports.defaultDataIdFromObject = cacheModule.defaultDataIdFromObject
exports.InMemoryCache = cacheModule.InMemoryCache
exports.MissingFieldError = cacheModule.MissingFieldError
exports.makeVar = cacheModule.makeVar
-- ROBLOX deviation: reexport Object.None
exports.None = cacheModule.None
export type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>
export type Cache_DiffResult<T> = cacheModule.Cache_DiffResult<T>
export type Cache_WatchCallback = cacheModule.Cache_WatchCallback
export type Cache_ReadOptions<TVariables, TData> = cacheModule.Cache_ReadOptions<TVariables, TData>
export type Cache_WriteOptions<TResult, TVariables> = cacheModule.Cache_WriteOptions<TResult, TVariables>
export type Cache_DiffOptions = cacheModule.Cache_DiffOptions
export type Cache_WatchOptions<Watcher> = cacheModule.Cache_WatchOptions<Watcher>
export type Cache_EvictOptions = cacheModule.Cache_EvictOptions
export type Cache_ModifyOptions = cacheModule.Cache_ModifyOptions
export type Cache_BatchOptions<C> = cacheModule.Cache_BatchOptions<C>
export type Cache_ReadQueryOptions<TData, TVariables> = cacheModule.Cache_ReadQueryOptions<TData, TVariables>
export type Cache_ReadFragmentOptions<TData, TVariables> = cacheModule.Cache_ReadFragmentOptions<TData, TVariables>
export type Cache_WriteQueryOptions<TData, TVariables> = cacheModule.Cache_WriteQueryOptions<TData, TVariables>
export type Cache_WriteFragmentOptions<TData, TVariables> = cacheModule.Cache_WriteFragmentOptions<TData, TVariables>
export type Cache_Fragment<TData, TVariables> = cacheModule.Cache_Fragment<TData, TVariables>
export type DataProxy = cacheModule.DataProxy
export type DataProxy_Query<TVariables, TData> = cacheModule.DataProxy_Query<TVariables, TData>
export type DataProxy_Fragment<TVariables, TData> = cacheModule.DataProxy_Fragment<TVariables, TData>
export type DataProxy_ReadQueryOptions<TData, TVariables> = cacheModule.DataProxy_ReadQueryOptions<TData, TVariables>
export type DataProxy_ReadFragmentOptions<TData, TVariables> = cacheModule.DataProxy_ReadFragmentOptions<
	TData,
	TVariables
>
export type DataProxy_WriteOptions<TData> = cacheModule.DataProxy_WriteOptions<TData>
export type DataProxy_WriteQueryOptions<TData, TVariables> = cacheModule.DataProxy_WriteQueryOptions<TData, TVariables>
export type DataProxy_WriteFragmentOptions<TData, TVariables> = cacheModule.DataProxy_WriteFragmentOptions<
	TData,
	TVariables
>
export type DataProxy_DiffResult<T> = cacheModule.DataProxy_DiffResult<T>
export type FieldFunctionOptions<TArgs, TVars> = cacheModule.FieldFunctionOptions<TArgs, TVars>
export type FieldMergeFunction<T, V> = cacheModule.FieldMergeFunction<T, V>
export type FieldPolicy<TExisting, TIncoming, TReadResult> = cacheModule.FieldPolicy<TExisting, TIncoming, TReadResult>
export type FieldReadFunction<T, V> = cacheModule.FieldReadFunction<T, V>
export type InMemoryCache = cacheModule.InMemoryCache
export type InMemoryCacheConfig = cacheModule.InMemoryCacheConfig
export type MissingFieldError = cacheModule.MissingFieldError
export type PossibleTypesMap = cacheModule.PossibleTypesMap
export type ReactiveVar<T> = cacheModule.ReactiveVar<T>
export type Transaction<T> = cacheModule.Transaction<T>
export type TypePolicies = cacheModule.TypePolicies
export type TypePolicy = cacheModule.TypePolicy

local inMemoryTypesModule = require(script.Parent.cache.inmemory.types)
Object.assign(exports, inMemoryTypesModule)
export type ApolloReducerConfig = inMemoryTypesModule.ApolloReducerConfig
export type DiffQueryAgainstStoreOptions = inMemoryTypesModule.DiffQueryAgainstStoreOptions
export type IdGetterObj = inMemoryTypesModule.IdGetterObj
export type IdGetter = inMemoryTypesModule.IdGetter
export type NormalizedCache = inMemoryTypesModule.NormalizedCache
export type NormalizedCacheObject = inMemoryTypesModule.NormalizedCacheObject
export type OptimisticStoreItem = inMemoryTypesModule.OptimisticStoreItem
export type ReadQueryOptions = inMemoryTypesModule.ReadQueryOptions
export type MergeInfo = inMemoryTypesModule.MergeInfo
export type MergeTree = inMemoryTypesModule.MergeTree
export type ReadMergeModifyContext = inMemoryTypesModule.ReadMergeModifyContext
export type StoreValue = inMemoryTypesModule.StoreValue

local linkCoreModule = require(script.Parent.link.core)
Object.assign(exports, linkCoreModule)
export type ApolloLink = linkCoreModule.ApolloLink
export type DocumentNode = linkCoreModule.DocumentNode
export type FetchResult<TData, C, E> = linkCoreModule.FetchResult<TData, C, E>
export type GraphQLRequest = linkCoreModule.GraphQLRequest
export type NextLink = linkCoreModule.NextLink
export type Operation = linkCoreModule.Operation
export type RequestHandler = linkCoreModule.RequestHandler

local linkHttpModule = require(script.Parent.link.http)
Object.assign(exports, linkHttpModule)
export type ClientParseError = linkHttpModule.ClientParseError
export type HttpLink = linkHttpModule.HttpLink
export type HttpOptions = linkHttpModule.HttpOptions
export type UriFunction = linkHttpModule.UriFunction
export type ServerParseError = linkHttpModule.ServerParseError

local linkUtilsModule = require(script.Parent.link.utils)
exports.fromError = linkUtilsModule.fromError
exports.toPromise = linkUtilsModule.toPromise
exports.fromPromise = linkUtilsModule.fromPromise
exports.throwServerError = linkUtilsModule.throwServerError
export type ServerError = linkUtilsModule.ServerError

local utilitiesModule = require(script.Parent.utilities)
exports.Observable = utilitiesModule.Observable
export type Observable<T> = utilitiesModule.Observable<T>
export type Observer<T> = utilitiesModule.Observer<T>
export type ObservableSubscription = utilitiesModule.ObservableSubscription
export type Reference = utilitiesModule.Reference
exports.isReference = utilitiesModule.isReference
exports.makeReference = utilitiesModule.makeReference
exports.NULL = utilitiesModule.NULL
export type StoreObject = utilitiesModule.StoreObject

local setVerbosity = require(srcWorkspace.jsutils.invariant).setVerbosity
exports.setLogVerbosity = setVerbosity

setVerbosity(if DEV then "log" else "silent")

local gqlTagModule = require(rootWorkspace.GraphQLTag)
exports.gql = gqlTagModule.default
exports.resetCaches = gqlTagModule.resetCaches
exports.disableFragmentWarnings = gqlTagModule.disableFragmentWarnings
exports.enableExperimentalFragmentVariables = gqlTagModule.enableExperimentalFragmentVariables
exports.disableExperimentalFragmentVariables = gqlTagModule.disableExperimentalFragmentVariables

return exports :: typeof(exports) & typeof(typesModule) & typeof(inMemoryTypesModule) & typeof(linkCoreModule) & typeof(linkHttpModule)
