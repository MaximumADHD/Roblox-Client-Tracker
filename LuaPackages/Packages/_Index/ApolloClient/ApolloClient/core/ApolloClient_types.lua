--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/ApolloClient.ts
-- ROBLOX comment: type extracted to avoid circular dep
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

type Record<T, U> = { [T]: U }

type Partial<T> = Object

-- ROBLOX TODO: generic types replacements
type TVariables_ = any
type TData_ = any
type TContext_ = any
type T_ = any
type TCacheShape_ = any
type TOptions_ = any
type TResult_ = any
type TCache_ = any

local GraphQL = require(rootWorkspace.GraphQL)
type ExecutionResult = GraphQL.ExecutionResult
type DocumentNode = GraphQL.DocumentNode

local coreModule = require(script.Parent.Parent.link.core)
type ApolloLink = coreModule.ApolloLink
type FetchResult<TData, C, E> = coreModule.FetchResult<TData, C, E>
type GraphQLRequest = coreModule.GraphQLRequest

local cacheModule = require(script.Parent.Parent.cache)
type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>
type DataProxy_Query<TVariables, TData> = cacheModule.DataProxy_Query<TVariables, TData>
type DataProxy_Fragment<TVariables, TData> = cacheModule.DataProxy_Fragment<TVariables, TData>
type DataProxy_WriteQueryOptions<TVariables, TData> = cacheModule.DataProxy_WriteQueryOptions<TVariables, TData>
type DataProxy_WriteFragmentOptions<TData, TVariables> = cacheModule.DataProxy_WriteFragmentOptions<TData, TVariables>

local utilitiesModule = require(script.Parent.Parent.utilities)
type Observable<T> = utilitiesModule.Observable<T>

local httpModule = require(script.Parent.Parent.link.http)
type UriFunction = httpModule.UriFunction

local observableQueryModule = require(script.Parent.ObservableQuery_types)
type ObservableQuery<TData, TVariables> = observableQueryModule.ObservableQuery<TData, TVariables>

local coreTypesModule = require(srcWorkspace.core.types)
type ApolloQueryResult<T> = coreTypesModule.ApolloQueryResult<T>
type DefaultContext = coreTypesModule.DefaultContext
type OperationVariables = coreTypesModule.OperationVariables
type Resolvers = coreTypesModule.Resolvers
type RefetchQueriesOptions<TCache, TResult> = coreTypesModule.RefetchQueriesOptions<TCache, TResult>
type RefetchQueriesResult<TResult> = coreTypesModule.RefetchQueriesResult<TResult>
type InternalRefetchQueriesResult<TResult> = coreTypesModule.InternalRefetchQueriesResult<TResult>
type RefetchQueriesInclude = coreTypesModule.RefetchQueriesInclude

local watchQueryOptionsTypesModule = require(script.Parent.watchQueryOptions_types)
type QueryOptions<TVariables, TData> = watchQueryOptionsTypesModule.QueryOptions<TVariables, TData>
type WatchQueryOptions<TVariables, TData> = watchQueryOptionsTypesModule.WatchQueryOptions<TVariables, TData>
type SubscriptionOptions<TVariables, TData> = watchQueryOptionsTypesModule.SubscriptionOptions<TVariables, TData>

local watchQueryOptionsModule = require(script.Parent.watchQueryOptions)
type MutationOptions<TData, TVariables, TContext, TCache> = watchQueryOptionsModule.MutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
type WatchQueryFetchPolicy = watchQueryOptionsModule.WatchQueryFetchPolicy

-- ROBLOX deviation: inline to avoid cirular dep
-- local LocalStateModule = require(script.Parent.LocalState)
-- type FragmentMatcher = LocalStateModule.FragmentMatcher
type FragmentMatcher = (self: any, rootValue: any, typeCondition: string, context: any) -> boolean

export type DefaultOptions = {
	watchQuery: Partial<WatchQueryOptions<any, any>>?,
	query: Partial<QueryOptions<any, any>>?,
	mutate: Partial<MutationOptions<any, any, any, any>>?,
}

export type ApolloClient<TCacheShape> = {
	link: ApolloLink,
	cache: ApolloCache<TCacheShape>,
	disableNetworkFetches: boolean,
	version: string,
	queryDeduplication: boolean,
	defaultOptions: DefaultOptions,
	typeDefs: string | DocumentNode | Array<string> | Array<DocumentNode> | nil,
	stop: (self: ApolloClient<TCacheShape>) -> (),
	watchQuery: (
		self: ApolloClient<TCacheShape>,
		options: WatchQueryOptions<TVariables_, T_>
	) -> ObservableQuery<T_, TVariables_>,
	query: (
		self: ApolloClient<TCacheShape>,
		options: QueryOptions<TVariables_, T_>
	) -> Promise<ApolloQueryResult<T_>>,
	mutate: (
		self: ApolloClient<TCacheShape>,
		options: MutationOptions<TData_, TVariables_, TContext_, any>
	) -> Promise<FetchResult<TData_, any, any>>,
	subscribe: (
		self: ApolloClient<TCacheShape>,
		options: SubscriptionOptions<TVariables_, T_>
	) -> Observable<FetchResult<T_, any, any>>,
	readQuery: (
		self: ApolloClient<TCacheShape>,
		options: DataProxy_Query<TVariables_, T_>,
		optimistic: boolean?
	) -> T_ | nil,
	readFragment: (
		self: ApolloClient<TCacheShape>,
		options: DataProxy_Fragment<TVariables_, T_>,
		optimistic: boolean?
	) -> T_ | nil,
	writeQuery: (self: ApolloClient<TCacheShape>, options: DataProxy_WriteQueryOptions<TData_, TVariables_>) -> (),
	writeFragment: (
		self: ApolloClient<TCacheShape>,
		options: DataProxy_WriteFragmentOptions<TData_, TVariables_>
	) -> (),
	__actionHookForDevTools: (self: ApolloClient<TCacheShape>, cb: () -> any) -> (),
	__requestRaw: (self: ApolloClient<TCacheShape>, payload: GraphQLRequest) -> Observable<ExecutionResult>,
	resetStore: (self: ApolloClient<TCacheShape>) -> Promise<Array<ApolloQueryResult<any>> | nil>,
	clearStore: (self: ApolloClient<TCacheShape>) -> Promise<Array<any>>,
	onResetStore: (self: ApolloClient<TCacheShape>, cb: () -> Promise<any>) -> (() -> ()),
	onClearStore: (self: ApolloClient<TCacheShape>, cb: () -> Promise<any>) -> (() -> ()),
	reFetchObservableQueries: (
		self: ApolloClient<TCacheShape>,
		includeStandby: boolean?
	) -> Promise<Array<ApolloQueryResult<any>>>,
	refetchQueries: (
		self: ApolloClient<TCacheShape>,
		options: RefetchQueriesOptions<TCache_, TResult_>
	) -> RefetchQueriesResult<TResult_>,
	getObservableQueries: (
		self: ApolloClient<TCacheShape>,
		include: RefetchQueriesInclude?
	) -> Map<string, ObservableQuery<any, any>>,
	extract: (self: ApolloClient<TCacheShape>, optimistic: boolean?) -> TCacheShape,
	restore: (self: ApolloClient<TCacheShape>, serializedState: TCacheShape) -> ApolloCache<TCacheShape>,
	addResolvers: (self: ApolloClient<TCacheShape>, resolvers: Resolvers | Array<Resolvers>) -> (),
	setResolvers: (self: ApolloClient<TCacheShape>, resolvers: Resolvers | Array<Resolvers>) -> (),
	getResolvers: (self: ApolloClient<TCacheShape>) -> Resolvers,
	setLocalStateFragmentMatcher: (self: ApolloClient<TCacheShape>, fragmentMatcher: FragmentMatcher) -> (),
	setLink: (self: ApolloClient<TCacheShape>, newLink: ApolloLink) -> (),
}

return {}
