--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/QueryManager.ts

local exports = {}

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local instanceOf = LuauPolyfill.instanceof
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local WeakMap = LuauPolyfill.WeakMap

local Promise = require(rootWorkspace.Promise)
local HttpService = game:GetService("HttpService")

type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type Set<T> = LuauPolyfill.Set<T>
type WeakMap<T, V> = LuauPolyfill.WeakMap<T, V>
type Error = LuauPolyfill.Error
type Record<T, U> = { [T]: U }

local isCallable = require(srcWorkspace.luaUtils.isCallable)
local toJSBoolean = require(srcWorkspace.utilities.globals.null).toJSBoolean

--[[
  ROBLOX deviation: no generic params for functions are supported.
  T_, TStore_, TData_, TVariables_, TContext_, TCache_, TVars_
  are placeholders for generic
  T, TStore, TData, Variables, TContext, TCache, TVars, TResult param
]]
type T_ = any
type TStore_ = any
type TData_ = any
type TVariables_ = any
type TContext_ = any
type TCache_ = any
type TVars_ = any

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode
local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant
local InvariantError = invariantModule.InvariantError
local equal = require(srcWorkspace.jsutils.equal)

local linkCoreModule = require(script.Parent.Parent.link.core)
type ApolloLink = linkCoreModule.ApolloLink
local execute = linkCoreModule.execute
type FetchResult<TData, C, E> = linkCoreModule.FetchResult<TData, C, E>
local cacheModule = require(script.Parent.Parent.cache)
type Cache_DiffResult<TData> = cacheModule.Cache_DiffResult<TData>
type Cache_WriteOptions<TResult, TVariables> = cacheModule.Cache_WriteOptions<TResult, TVariables>
type ApolloCache<T> = cacheModule.ApolloCache<T>
local canonicalStringify = cacheModule.canonicalStringify

local utilitiesModule = require(script.Parent.Parent.utilities)
local getDefaultValues = utilitiesModule.getDefaultValues
local getOperationDefinition = utilitiesModule.getOperationDefinition
local getOperationName = utilitiesModule.getOperationName
local hasClientExports = utilitiesModule.hasClientExports
local graphQLResultHasError = utilitiesModule.graphQLResultHasError
local removeConnectionDirectiveFromDocument = utilitiesModule.removeConnectionDirectiveFromDocument
local _canUseWeakMap = utilitiesModule.canUseWeakMap
type ObservableSubscription = utilitiesModule.ObservableSubscription
local Observable = utilitiesModule.Observable
type Observable<T> = utilitiesModule.Observable<T>
local asyncMap = utilitiesModule.asyncMap
local isNonEmptyArray = utilitiesModule.isNonEmptyArray
local Concast = utilitiesModule.Concast
type Concast<T> = utilitiesModule.Concast<T>
type ConcastSourcesIterable<T> = utilitiesModule.ConcastSourcesIterable<T>
local makeUniqueId = utilitiesModule.makeUniqueId
local isDocumentNode = utilitiesModule.isDocumentNode
local isNonNullObject = utilitiesModule.isNonNullObject
local errorsModule = require(script.Parent.Parent.errors)
local ApolloError = errorsModule.ApolloError
type ApolloError = errorsModule.ApolloError
local isApolloError = errorsModule.isApolloError
local watchQueryOptionsModule = require(script.Parent.watchQueryOptions_types)
type QueryOptions<TVariables, TData> = watchQueryOptionsModule.QueryOptions<TVariables, TData>
type WatchQueryOptions<TVariables, TData> = watchQueryOptionsModule.WatchQueryOptions<TVariables, TData>
type SubscriptionOptions<TVariables, TData> = watchQueryOptionsModule.SubscriptionOptions<TVariables, TData>
type MutationOptions<TData, TVariables, TContext, TCache> = watchQueryOptionsModule.MutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
type WatchQueryFetchPolicy = watchQueryOptionsModule.WatchQueryFetchPolicy
type ErrorPolicy = watchQueryOptionsModule.ErrorPolicy
local observableQueryModule = require(script.Parent.ObservableQuery)
local observableQueryTypesModule = require(script.Parent.ObservableQuery_types)
local ObservableQuery = observableQueryModule.ObservableQuery
type ObservableQuery<TData, TVariables> = observableQueryTypesModule.ObservableQuery<TData, TVariables>
local applyNextFetchPolicy = observableQueryModule.applyNextFetchPolicy
local networkStatusModule = require(script.Parent.networkStatus)
local NetworkStatus = networkStatusModule.NetworkStatus
type NetworkStatus = networkStatusModule.NetworkStatus
local isNetworkRequestInFlight = networkStatusModule.isNetworkRequestInFlight
local typesModule = require(script.Parent.types)
type ApolloQueryResult<T> = typesModule.ApolloQueryResult<T>
type OperationVariables = typesModule.OperationVariables
type MutationUpdaterFunction<TData, TVariables, TContext, TCache> = typesModule.MutationUpdaterFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
type OnQueryUpdated<TResult> = typesModule.OnQueryUpdated<TResult>
type InternalRefetchQueriesInclude = typesModule.InternalRefetchQueriesInclude
type InternalRefetchQueriesOptions<TCache, TResult> = typesModule.InternalRefetchQueriesOptions<TCache, TResult>
type InternalRefetchQueriesResult<TResult> = typesModule.InternalRefetchQueriesResult<TResult>
type InternalRefetchQueriesMap<TResult> = typesModule.InternalRefetchQueriesMap<TResult>
local localStateModule = require(script.Parent.LocalState)
local LocalState = localStateModule.LocalState
type LocalState<TCacheShape> = localStateModule.LocalState<TCacheShape>

local queryInfoModule = require(script.Parent.QueryInfo)
local QueryInfo = queryInfoModule.QueryInfo
type QueryInfo = queryInfoModule.QueryInfo
type QueryStoreValue = queryInfoModule.QueryStoreValue
local shouldWriteResult = queryInfoModule.shouldWriteResult
local CacheWriteBehavior = queryInfoModule.CacheWriteBehavior
type CacheWriteBehavior = queryInfoModule.CacheWriteBehavior

local hasOwnProperty = require(srcWorkspace.luaUtils.hasOwnProperty)

type MutationStoreValue = {
	mutation: DocumentNode,
	variables: { [string]: any },
	loading: boolean,
	error: Error | nil,
}
-- ROBLOX TODO: revisit when default generic types are available
type UpdateQueries<TData> = typeof((({} :: any) :: MutationOptions<TData, any, any, any>).updateQueries)

type TransformCacheEntry = {
	document: DocumentNode,
	hasClientExports: boolean,
	hasForcedResolvers: boolean,
	clientQuery: DocumentNode | nil,
	serverQuery: DocumentNode | nil,
	defaultVars: OperationVariables,
	asQuery: DocumentNode,
}

local QueryManager = {}
QueryManager.__index = QueryManager
export type QueryManager<TStore> = {
	cache: ApolloCache<TStore>,
	link: ApolloLink,
	assumeImmutableResults: boolean,
	ssrMode: boolean,
	mutationStore: { [string]: MutationStoreValue }?,
	stop: (self: QueryManager<TStore>) -> (),
	mutate: <TData, TVariables, TContext, TCache>(
		self: QueryManager<TStore>,
		ref: MutationOptions<TData, TVariables, TContext, TCache>
	) -> Promise<FetchResult<TData, Record<string, any>, Record<string, any>>>,
	markMutationResult: <TData, TVariables, TContext, TCache>(
		self: QueryManager<TStore>,
		mutation: {
			mutationId: string,
			result: FetchResult<TData, Record<string, any>, Record<string, any>>,
			document: DocumentNode,
			variables: TVariables?,
			fetchPolicy: string?,
			errorPolicy: ErrorPolicy,
			context: TContext?,
			updateQueries: UpdateQueries<TData>,
			update: MutationUpdaterFunction<TData, TVariables, TContext, TCache>?,
			awaitRefetchQueries: boolean?,
			refetchQueries: InternalRefetchQueriesInclude?,
			removeOptimistic: string,
			onQueryUpdated: OnQueryUpdated<any>,
			keepRootFields: boolean,
		},
		cache: ApolloCache<TStore>
	) -> Promise<FetchResult<TData, Record<string, any>, Record<string, any>>>,
	markMutationOptimistic: <TData, TVariables, TContext, TCache>(
		self: QueryManager<TStore>,
		optimisticResponse: any,
		mutation: {
			mutationId: string,
			document: DocumentNode,
			variables: TVariables,
			fetchPolicy: string,
			errorPolicy: ErrorPolicy,
			context: TContext,
			updateQueries: UpdateQueries<TData>,
			update: MutationUpdaterFunction<TData, TVariables, TContext, TCache>,
			keepRootFields: boolean,
		}
	) -> (),
	fetchQuery: <TData, TVars>(
		self: QueryManager<TStore>,
		queryId: string,
		options: WatchQueryOptions<TVars, TData>,
		networkStatus: NetworkStatus?
	) -> Promise<ApolloQueryResult<TData>>,
	getQueryStore: (self: QueryManager<TStore>) -> Record<string, QueryStoreValue>,
	resetErrors: (self: QueryManager<TStore>, queryId: string) -> (),
	transform: (self: QueryManager<TStore>, document: DocumentNode) -> TransformCacheEntry,
	-- ROBLOX TODO: missing default generic <TVariables = OperationVariables>
	watchQuery: <T, TVariables>(
		self: QueryManager<TStore>,
		options: WatchQueryOptions<TVariables, T>
	) -> ObservableQuery<T, TVariables>,
	-- ROBLOX TODO: missing default generic <TVars = OperationVariables>
	query: <TData, TVars>(
		self: QueryManager<TStore>,
		options: QueryOptions<TVars, TData>,
		queryId: string?
	) -> Promise<ApolloQueryResult<TData>>,
	generateQueryId: (self: QueryManager<TStore>) -> string,
	generateRequestId: (self: QueryManager<TStore>) -> number,
	generateMutationId: (self: QueryManager<TStore>) -> string,
	stopQueryInStore: (self: QueryManager<TStore>, queryId: string) -> (),
	clearStore: (self: QueryManager<TStore>) -> Promise<nil>,
	resetStore: (self: QueryManager<TStore>) -> Promise<Array<ApolloQueryResult<any>>>,
	getObservableQueries: (
		self: QueryManager<TStore>,
		include: InternalRefetchQueriesInclude
	) -> Map<string, ObservableQuery<any, OperationVariables>>,
	reFetchObservableQueries: (
		self: QueryManager<TStore>,
		includeStandby: boolean?
	) -> Promise<Array<ApolloQueryResult<any>>>,
	setObservableQuery: (self: QueryManager<TStore>, observableQuery: ObservableQuery<any, any>) -> (),
	-- ROBLOX TODO: missing default generic <T = any>
	startGraphQLSubscription: <T>(
		self: QueryManager<TStore>,
		ref: SubscriptionOptions<OperationVariables, any>
	) -> Observable<FetchResult<T, Record<string, any>, Record<string, any>>>,
	stopQuery: (self: QueryManager<TStore>, queryId: string) -> (),
	removeQuery: (self: QueryManager<TStore>, queryId: string) -> (),
	broadcastQueries: (self: QueryManager<TStore>) -> (),
	getLocalState: (self: QueryManager<TStore>) -> LocalState<TStore>,
	fetchQueryObservable: <TData, TVars>(
		self: QueryManager<TStore>,
		queryId: string,
		options: WatchQueryOptions<TVars, TData>,
		networkStatus: NetworkStatus?
	) -> Concast<ApolloQueryResult<TData>>,
	refetchQueries: <TResult>(
		self: QueryManager<TStore>,
		ref: InternalRefetchQueriesOptions<ApolloCache<TStore>, TResult>
	) -> InternalRefetchQueriesMap<TResult>,
}

type QueryManagerPrivate<TStore> = QueryManager<TStore> & {
	queryDeduplication: boolean,
	clientAwareness: Record<string, string>,
	localState: LocalState<TStore>,
	onBroadcast: (() -> ())?,
	queries: Map<string, QueryInfo>,
	fetchCancelFns: Map<string, (error: any) -> any>,
	cancelPendingFetches: (self: QueryManagerPrivate<TStore>, error: Error) -> (),
	transformCache: Map<DocumentNode, TransformCacheEntry>,
	getVariables: (
		self: QueryManagerPrivate<TStore>,
		document: DocumentNode,
		variables: TVariables_?
	) -> OperationVariables,
	queryIdCounter: number,
	requestIdCounter: number,
	mutationIdCounter: number,
	stopQueryInStoreNoBroadcast: (self: QueryManagerPrivate<TStore>, queryId: string) -> (),
	stopQueryNoBroadcast: (self: QueryManagerPrivate<TStore>, queryId: string) -> (),
	inFlightLinkObservables: Map<
		DocumentNode,
		Map<string, Observable<FetchResult<{ [string]: any }, Record<string, any>, Record<string, any>>>>
	>,
	getObservableFromLink: (
		self: QueryManagerPrivate<TStore>,
		query: DocumentNode,
		context: any,
		variables: OperationVariables?,
		deduplication: boolean?
	) -> Observable<FetchResult<T_, Record<string, any>, Record<string, any>>>,
	getResultsFromLink: (
		self: QueryManagerPrivate<TStore>,
		queryInfo: QueryInfo,
		cacheWriteBehavior: CacheWriteBehavior,
		options: any
	) -> Observable<ApolloQueryResult<TData_>>,
	fetchQueryByPolicy: (
		self: QueryManagerPrivate<TStore>,
		queryInfo: QueryInfo,
		ref: WatchQueryOptions<TVars_, TData_>,
		networkStatus: NetworkStatus
	) -> ConcastSourcesIterable<ApolloQueryResult<TData_>>,
	getQuery: (self: QueryManagerPrivate<TStore>, queryId: string) -> QueryInfo,
	prepareContext: (self: QueryManagerPrivate<TStore>, context: Object) -> Object,
}

function QueryManager.new<TStore>(ref: {
	cache: ApolloCache<TStore>,
	link: ApolloLink,
	queryDeduplication: boolean?,
	onBroadcast: (() -> ())?,
	ssrMode: boolean?,
	clientAwareness: { [string]: string }?,
	localState: LocalState<TStore>?,
	assumeImmutableResults: boolean?,
}): QueryManager<TStore>
	local cache, link, queryDeduplication, onBroadcast, ssrMode, clientAwareness, localState, assumeImmutableResults =
		ref.cache,
		ref.link,
		ref.queryDeduplication,
		ref.onBroadcast,
		ref.ssrMode,
		ref.clientAwareness,
		ref.localState,
		ref.assumeImmutableResults
	if queryDeduplication == nil then
		queryDeduplication = false
	end
	if ssrMode == nil then
		ssrMode = false
	end
	if clientAwareness == nil then
		clientAwareness = {}
	end

	local self = setmetatable({}, QueryManager)

	self.clientAwareness = {}

	-- All the queries that the QueryManager is currently managing (not
	-- including mutations and subscriptions).
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.queries = Map.new() :: Map<string, ObservableQuery<any, OperationVariables>>

	-- Maps from queryId strings to Promise rejection functions for
	-- currently active queries and fetches.
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.fetchCancelFns = Map.new() :: Map<string, (error: any) -> any>

	-- ROBLOX deviation START: canUseWeakMap is always true
	-- if canUseWeakMap then
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected WeakMap type
	self.transformCache = WeakMap.new() :: WeakMap<DocumentNode, TransformCacheEntry>
	-- else
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	-- self.transformCache = Map.new() :: Map<DocumentNode, TransformCacheEntry>
	-- end
	-- ROBLOX deviation END

	self.queryIdCounter = 1
	self.requestIdCounter = 1
	self.mutationIdCounter = 1
	self.inFlightLinkObservables = Map.new() :: Map<
		DocumentNode,
		Map<string, Observable<FetchResult<{ [string]: any }, Record<string, any>, Record<string, any>>>>
	>

	self.cache = cache
	self.link = link
	self.queryDeduplication = queryDeduplication
	self.clientAwareness = clientAwareness :: Record<string, string>
	self.localState = localState or LocalState.new({ cache = cache })
	self.ssrMode = ssrMode
	self.assumeImmutableResults = Boolean.toJSBoolean(assumeImmutableResults)
	self.onBroadcast = onBroadcast
	if Boolean.toJSBoolean(self.onBroadcast) then
		self.mutationStore = {}
	end

	return (self :: any) :: QueryManager<TStore>
end

--[[*
 * Call this method to terminate any active query processes, making it safe
 * to dispose of this QueryManager instance.
]]
function QueryManager:stop(): ()
	self.queries:forEach(function(_info, queryId)
		self:stopQueryNoBroadcast(queryId)
	end)

	self:cancelPendingFetches(InvariantError.new("QueryManager stopped while query was in flight"))
end

function QueryManager:cancelPendingFetches(error_: Error): ()
	self.fetchCancelFns:forEach(function(cancel)
		return cancel(error_)
	end)
	self.fetchCancelFns:clear()
end

function QueryManager:mutate(
	ref: MutationOptions<TData_, TVariables_, TContext_, TCache_>
): Promise<FetchResult<any, any, any>>
	return Promise.resolve():andThen(function()
		local mutation, variables, optimisticResponse, updateQueries, refetchQueries_, awaitRefetchQueries, updateWithProxyFn, onQueryUpdated, errorPolicy, fetchPolicy, keepRootFields, context =
			ref.mutation,
			ref.variables,
			ref.optimisticResponse,
			ref.updateQueries,
			ref.refetchQueries,
			ref.awaitRefetchQueries,
			ref.update,
			ref.onQueryUpdated,
			ref.errorPolicy,
			ref.fetchPolicy,
			ref.keepRootFields,
			ref.context

		local refetchQueries = if refetchQueries_ == nil then {} else refetchQueries_

		if awaitRefetchQueries == nil then
			awaitRefetchQueries = false :: any
		end

		if errorPolicy == nil then
			errorPolicy = "none" :: any
		end

		invariant(
			mutation,
			"mutation option is required. You must specify your GraphQL document in the mutation option."
		)
		invariant(
			not Boolean.toJSBoolean(fetchPolicy) or fetchPolicy == "no-cache",
			"Mutations only support a 'no-cache' fetchPolicy. If you don't want to disable the cache, remove your fetchPolicy setting to proceed with the default mutation behavior."
		)

		local mutationId = self:generateMutationId()
		mutation = self:transform(mutation).document

		variables = self:getVariables(mutation, variables)

		if self:transform(mutation).hasClientExports then
			-- ROBLOX TODO: as mutate is an async function we shoudn't do a blocking behavior like this but this code is never reached so hard to test ATM
			variables = self.localState:addExportedVariables(mutation, variables, context):expect() :: TVariables_
		end

		local mutationStoreValue

		if Boolean.toJSBoolean(self.mutationStore) then
			self.mutationStore[mutationId] = (
				{
					mutation = mutation,
					variables = variables,
					loading = true,
					error = nil,
				} :: any
			) :: MutationStoreValue
			mutationStoreValue = self.mutationStore[mutationId]
		else
			mutationStoreValue = self.mutationStore
		end

		if Boolean.toJSBoolean(optimisticResponse) then
			self:markMutationOptimistic(optimisticResponse, {
				mutationId = mutationId,
				document = mutation,
				variables = variables,
				fetchPolicy = fetchPolicy,
				errorPolicy = errorPolicy,
				context = context,
				updateQueries = updateQueries,
				update = updateWithProxyFn,
				keepRootFields = keepRootFields,
			})
		end

		self:broadcastQueries()

		local self_ = self

		return Promise.new(function(resolve, reject)
			return asyncMap(
				self:getObservableFromLink(
					mutation,
					Object.assign({}, context, { optimisticResponse = optimisticResponse }),
					variables,
					false
				),
				function(result: FetchResult<any, any, any>)
					if graphQLResultHasError(result) and errorPolicy == "none" then
						error(ApolloError.new({
							graphQLErrors = result.errors,
						}))
					end

					if Boolean.toJSBoolean(mutationStoreValue) then
						mutationStoreValue.loading = false
						mutationStoreValue.error = nil
					end

					local storeResult: typeof(result) = Object.assign({}, result)

					if isCallable(refetchQueries) then
						refetchQueries = refetchQueries(storeResult)
					end

					if errorPolicy == "ignore" and graphQLResultHasError(storeResult) then
						storeResult.errors = nil :: any
					end

					return self:markMutationResult({
						mutationId = mutationId,
						result = storeResult,
						document = mutation,
						variables = variables,
						fetchPolicy = fetchPolicy,
						errorPolicy = errorPolicy,
						context = context,
						update = updateWithProxyFn,
						updateQueries = updateQueries,
						awaitRefetchQueries = awaitRefetchQueries,
						refetchQueries = refetchQueries,
						removeOptimistic = Boolean.toJSBoolean(optimisticResponse) and mutationId or nil,
						onQueryUpdated = onQueryUpdated,
						keepRootFields = keepRootFields,
					})
				end
			):subscribe({
				next = function(_self, storeResult)
					self_:broadcastQueries()
					-- At the moment, a mutation can have only one result, so we can
					-- immediately resolve upon receiving the first result. In the future,
					-- mutations containing @defer or @stream directives might receive
					-- multiple FetchResult payloads from the ApolloLink chain, so we will
					-- probably need to collect those results in this next method and call
					-- resolve only later, in an observer.complete function.
					resolve(storeResult)
				end,
				error = function(_self, err: Error)
					if Boolean.toJSBoolean(mutationStoreValue) then
						mutationStoreValue.loading = false
						mutationStoreValue.error = err
					end

					if Boolean.toJSBoolean(optimisticResponse) then
						self_.cache:removeOptimistic(mutationId)
					end

					self_:broadcastQueries()

					reject(instanceOf(err, ApolloError) and err or ApolloError.new({ networkError = err }))
				end,
			})
		end)
	end)
end

function QueryManager:markMutationResult(
	mutation: {
		mutationId: string,
		result: FetchResult<any, any, any>,
		document: DocumentNode,
		variables: TVariables_?,
		fetchPolicy: string?,
		errorPolicy: ErrorPolicy,
		context: TContext_?,
		updateQueries: UpdateQueries<TData_>,
		update: MutationUpdaterFunction<TData_, TVariables_, TContext_, TCache_>?,
		awaitRefetchQueries: boolean?,
		refetchQueries: InternalRefetchQueriesInclude?,
		removeOptimistic: string,
		onQueryUpdated: OnQueryUpdated<any>,
		keepRootFields: boolean,
	},
	cache: ApolloCache<TStore_>
): Promise<FetchResult<TData_, any, any>>
	if cache == nil then
		cache = self.cache
	end

	local result = mutation.result
	local cacheWrites: Array<Cache_WriteOptions<any, any>> = {}
	local skipCache = mutation.fetchPolicy == "no-cache"

	if not skipCache and shouldWriteResult(result, mutation.errorPolicy) then
		table.insert(cacheWrites, {
			result = result.data,
			dataId = "ROOT_MUTATION",
			query = mutation.document,
			variables = mutation.variables,
		})

		local updateQueries = mutation.updateQueries
		if updateQueries ~= nil then
			self.queries:forEach(function(ref, queryId)
				local observableQuery = ref.observableQuery
				local queryName
				if Boolean.toJSBoolean(observableQuery) then
					queryName = observableQuery.queryName
				else
					queryName = observableQuery
				end
				if not Boolean.toJSBoolean(queryName) or not hasOwnProperty(updateQueries, queryName) then
					return
				end
				local updater = updateQueries[queryName]
				local ref_ = self.queries:get(queryId) :: QueryInfo
				local document, variables = ref_.document, ref_.variables

				-- Read the current query result from the store.
				local ref__ = cache:diff({
					query = document :: DocumentNode,
					variables = variables,
					returnPartialData = true,
					optimistic = false,
				})
				local currentQueryResult, complete = ref__.result, ref__.complete

				if complete and Boolean.toJSBoolean(currentQueryResult) then
					-- Run our reducer using the current query result and the mutation result.
					local nextQueryResult = updater(updateQueries, currentQueryResult, {
						mutationResult = result,
						queryName = (function()
							if Boolean.toJSBoolean(document) then
								local ref___ = getOperationName(document)
								if Boolean.toJSBoolean(ref___) then
									return ref___
								else
									return nil
								end
							else
								return nil
							end
						end)(),
						queryVariables = variables,
					})

					-- Write the modified result back into the store if we got a new result.
					if Boolean.toJSBoolean(nextQueryResult) then
						table.insert(cacheWrites, {
							result = nextQueryResult,
							dataId = "ROOT_QUERY",
							query = document :: DocumentNode,
							variables = variables,
						})
					end
				end
			end)
		end
	end

	if
		#cacheWrites > 0
		or Boolean.toJSBoolean(mutation.refetchQueries)
		or Boolean.toJSBoolean(mutation.update)
		or Boolean.toJSBoolean(mutation.onQueryUpdated)
		or Boolean.toJSBoolean(mutation.removeOptimistic)
	then
		local results: Array<any> = {}

		self:refetchQueries({
			updateCache = function(_self, cache: TCache_)
				if not skipCache then
					Array.forEach(cacheWrites, function(write)
						return cache:write(write)
					end)
				end

				-- If the mutation has some writes associated with it then we need to
				-- apply those writes to the store by running this reducer again with
				-- a write action.
				local update = mutation.update
				if update ~= nil and Boolean.toJSBoolean(update) then
					if not skipCache then
						-- Re-read the ROOT_MUTATION data we just wrote into the cache
						-- (the first cache.write call in the cacheWrites.forEach loop
						-- above), so field read functions have a chance to run for
						-- fields within mutation result objects.
						local diff = cache:diff({
							id = "ROOT_MUTATION",
							-- The cache complains if passed a mutation where it expects a
							-- query, so we transform mutations and subscriptions to queries
							-- (only once, thanks to this.transformCache).
							query = self:transform(mutation.document).asQuery,
							variables = mutation.variables,
							optimistic = false,
							returnPartialData = true,
						})

						if diff.complete then
							result = Object.assign({}, result, { data = diff.result })
						end
					end

					update(mutation, cache, result, {
						context = mutation.context,
						variables = mutation.variables,
					})
				end

				-- TODO Do this with cache.evict({ id: 'ROOT_MUTATION' }) but make it
				-- shallow to allow rolling back optimistic evictions.
				if not skipCache and not mutation.keepRootFields then
					cache:modify({
						id = "ROOT_MUTATION",
						fields = function(__self, value, ref)
							local fieldName, DELETE = ref.fieldName, ref.DELETE
							if fieldName == "__typename" then
								return value
							else
								return DELETE
							end
						end,
					})
				end
			end,

			include = mutation.refetchQueries,

			-- Write the final mutation.result to the root layer of the cache.
			optimistic = false,

			-- Remove the corresponding optimistic layer at the same time as we
			-- write the final non-optimistic result.
			removeOptimistic = mutation.removeOptimistic,

			-- Let the caller of client.mutate optionally determine the refetching
			-- behavior for watched queries after the mutation.update function runs.
			-- If no onQueryUpdated function was provided for this mutation, pass
			-- null instead of undefined to disable the default refetching behavior.
			onQueryUpdated = Boolean.toJSBoolean(mutation.onQueryUpdated) and mutation.onQueryUpdated or nil,
		}):forEach(function(result)
			return table.insert(results, result)
		end)

		if mutation.awaitRefetchQueries or Boolean.toJSBoolean(mutation.onQueryUpdated) then
			-- Returning a promise here makes the mutation await that promise, so we
			-- include results in that promise's work if awaitRefetchQueries or an
			-- onQueryUpdated function was specified.
			-- ROBLOX deviation: Promise.all doesn't work when passed a NULL
			return Promise.all(Array.filter(results, toJSBoolean)):andThen(function()
				return result
			end)
		end
	end

	return Promise.resolve(result)
end

function QueryManager:markMutationOptimistic(
	optimisticResponse: any,
	mutation: {
		mutationId: string,
		document: DocumentNode,
		variables: TVariables_,
		fetchPolicy: string,
		errorPolicy: ErrorPolicy,
		context: TContext_,
		updateQueries: UpdateQueries<TData_>,
		update: MutationUpdaterFunction<TData_, TVariables_, TContext_, TCache_>,
		keepRootFields: boolean,
	}
): ()
	local data
	if isCallable(optimisticResponse) then
		data = optimisticResponse(mutation.variables)
	else
		data = optimisticResponse
	end

	return self.cache:recordOptimisticTransaction(function(cache)
		local ok, error_ = pcall(function()
			self:markMutationResult(Object.assign({}, mutation, { result = { data = data } }), cache)
		end)
		if not ok then
			invariant.error(error_)
		end
	end, mutation.mutationId)
end

function QueryManager:fetchQuery(
	queryId: string,
	options: WatchQueryOptions<any, any>,
	networkStatus: NetworkStatus?
): Promise<ApolloQueryResult<any>>
	return self:fetchQueryObservable(queryId, options, networkStatus).promise
end

function QueryManager:getQueryStore(): Record<string, QueryStoreValue>
	local store: Record<string, QueryStoreValue> = {}
	self.queries:forEach(function(info, queryId)
		store[queryId] = {
			variables = info.variables,
			networkStatus = info.networkStatus,
			networkError = info.networkError,
			graphQLErrors = info.graphQLErrors,
		}
	end)
	return store
end

function QueryManager:resetErrors(queryId: string): ()
	local queryInfo = self.queries:get(queryId)
	if Boolean.toJSBoolean(queryInfo) then
		queryInfo.networkError = nil
		queryInfo.graphQLErrors = {}
	end
end

function QueryManager:transform(document: DocumentNode): TransformCacheEntry
	local transformCache = self.transformCache

	if not transformCache:has(document) then
		local transformed = self.cache:transformDocument(document)
		local forLink = removeConnectionDirectiveFromDocument(self.cache:transformForLink(transformed))

		local clientQuery = self.localState:clientQuery(transformed)
		local serverQuery
		if Boolean.toJSBoolean(forLink) then
			serverQuery = self.localState:serverQuery(forLink)
		else
			serverQuery = forLink
		end

		local cacheEntry: TransformCacheEntry = {
			document = transformed,
			-- TODO These two calls (hasClientExports and shouldForceResolvers)
			-- could probably be merged into a single traversal.
			hasClientExports = hasClientExports(transformed),
			hasForcedResolvers = self.localState:shouldForceResolvers(transformed),
			clientQuery = clientQuery,
			serverQuery = serverQuery,
			defaultVars = getDefaultValues(getOperationDefinition(transformed)) :: OperationVariables,
			-- Transform any mutation or subscription operations to query operations
			-- so we can read/write them from/to the cache.
			asQuery = Object.assign({}, transformed, {
				definitions = Array.map(transformed.definitions, function(def)
					if def.kind == "OperationDefinition" and def.operation ~= "query" then
						return Object.assign({}, def, { operation = "query" }) :: typeof(def)
					end
					return def
				end),
			}),
		}

		local function add(doc: DocumentNode | nil)
			if doc ~= nil and not transformCache:has(doc) then
				transformCache:set(doc, cacheEntry)
			end
		end
		-- Add cacheEntry to the transformCache using several different keys,
		-- since any one of these documents could end up getting passed to the
		-- transform method again in the future.
		add(document)
		add(transformed)
		add(clientQuery)
		add(serverQuery)
	end

	return transformCache:get(document)
end

function QueryManager:getVariables(document: DocumentNode, variables: TVariables_): OperationVariables
	return Object.assign({}, self:transform(document).defaultVars, variables)
end

function QueryManager:watchQuery(options: WatchQueryOptions<any, any>): ObservableQuery<any, any>
	-- assign variable default values if supplied
	options = Object.assign({}, options, {
		variables = self:getVariables(options.query, options.variables) :: TVariables_,
	})

	if typeof(options.notifyOnNetworkStatusChange) == "nil" then
		options.notifyOnNetworkStatusChange = false :: any
	end

	local queryInfo = QueryInfo.new(self.cache)
	local observable = ObservableQuery.new({
		queryManager = self :: any,
		queryInfo = queryInfo,
		options = options,
	})

	self.queries:set(observable.queryId, queryInfo)

	queryInfo:init({
		document = options.query,
		observableQuery = observable,
		variables = options.variables,
	})

	return observable
end

function QueryManager:query(options: QueryOptions<any, any>, queryId: string?): Promise<ApolloQueryResult<any>>
	if queryId == nil then
		queryId = self:generateQueryId()
	end

	invariant(
		options.query,
		"query option is required. You must specify your GraphQL document " .. "in the query option."
	)

	invariant(options.query.kind == "Document", 'You must wrap the query string in a "gql" tag.')

	invariant(
		not Boolean.toJSBoolean((options :: any).returnPartialData),
		"returnPartialData option only supported on watchQuery."
	)

	invariant(
		not Boolean.toJSBoolean((options :: any).pollInterval),
		"pollInterval option only supported on watchQuery."
	)

	--[[
		ROBLOX deviation: finally implementation is different than in JS.
		using separate andThen and catch to perform the same logic and not swallow the error
	]]
	return self:fetchQuery(queryId, options)
		:andThen(function(result)
			self:stopQuery(queryId)
			return result
		end)
		:catch(function(err)
			self:stopQuery(queryId)
			error(err)
		end)
end

function QueryManager:generateQueryId(): string
	self = self :: QueryManagerPrivate<TStore_>
	local result = self.queryIdCounter
	self.queryIdCounter += 1
	return tostring(result)
end

function QueryManager:generateRequestId(): number
	self = self :: QueryManagerPrivate<TStore_>
	local result = self.requestIdCounter
	self.requestIdCounter += 1
	return result
end

function QueryManager:generateMutationId(): string
	self = self :: QueryManagerPrivate<TStore_>
	local result = self.mutationIdCounter
	self.mutationIdCounter += 1
	return tostring(result)
end

function QueryManager:stopQueryInStore(queryId: string): ()
	self:stopQueryInStoreNoBroadcast(queryId)
	self:broadcastQueries()
end

function QueryManager:stopQueryInStoreNoBroadcast(queryId: string): ()
	local queryInfo = self.queries:get(queryId)
	if Boolean.toJSBoolean(queryInfo) then
		queryInfo:stop()
	end
end

function QueryManager:clearStore(): Promise<nil>
	-- Before we have sent the reset action to the store, we can no longer
	-- rely on the results returned by in-flight requests since these may
	-- depend on values that previously existed in the data portion of the
	-- store. So, we cancel the promises and observers that we have issued
	-- so far and not yet resolved (in the case of queries).
	self:cancelPendingFetches(InvariantError.new("Store reset while query was in flight (not completed in link chain)"))

	self.queries:forEach(function(queryInfo, _)
		if Boolean.toJSBoolean(queryInfo.observableQuery) then
			-- Set loading to true so listeners don't trigger unless they want
			-- results with partial data.
			queryInfo.networkStatus = NetworkStatus.loading
		else
			queryInfo:stop()
		end
	end)

	if Boolean.toJSBoolean(self.mutationStore) then
		self.mutationStore = {}
	end

	-- begin removing data from the store
	return self.cache:reset()
end

function QueryManager:resetStore(): Promise<Array<ApolloQueryResult<any>>>
	-- Similarly, we have to have to refetch each of the queries currently being
	-- observed. We refetch instead of error'ing on these since the assumption is that
	-- resetting the store doesn't eliminate the need for the queries currently being
	-- watched. If there is an existing query in flight when the store is reset,
	-- the promise for it will be rejected and its results will not be written to the
	-- store.
	return self:clearStore():andThen(function()
		return self:reFetchObservableQueries()
	end)
end

function QueryManager:getObservableQueries(
	include: InternalRefetchQueriesInclude
): Map<string, ObservableQuery<any, OperationVariables>>
	if include == nil then
		include = "active"
	end

	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	local queries = Map.new(nil) :: Map<string, ObservableQuery<any, OperationVariables>>
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	local queryNamesAndDocs = Map.new(nil) :: Map<string | DocumentNode, boolean>
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Set type
	local legacyQueryOptions = Set.new() :: Set<QueryOptions<OperationVariables, any>>

	if Array.isArray(include) then
		Array.forEach(include :: Array<any>, function(desc)
			if typeof(desc) == "string" then
				queryNamesAndDocs:set(desc, false)
			elseif isDocumentNode(desc) then
				queryNamesAndDocs:set(self:transform(desc).document, false)
			elseif isNonNullObject(desc) and Boolean.toJSBoolean(desc.query) then
				legacyQueryOptions:add(desc)
			end
		end)
	end

	self.queries:forEach(function(ref, queryId)
		local oq, document = ref.observableQuery, ref.document
		if Boolean.toJSBoolean(oq) then
			if include == "all" then
				queries:set(queryId, oq)
				return
			end

			local queryName, fetchPolicy = oq.queryName, oq.options.fetchPolicy

			if fetchPolicy == "standby" or not oq:hasObservers() then
				-- Skip inactive queries unless include === "all".
				return
			end

			if
				include == "active"
				or (Boolean.toJSBoolean(queryName) and queryNamesAndDocs:has(queryName))
				or (Boolean.toJSBoolean(document) and queryNamesAndDocs:has(document))
			then
				queries:set(queryId, oq)
				if Boolean.toJSBoolean(queryName) then
					queryNamesAndDocs:set(queryName, true)
				end
				if Boolean.toJSBoolean(document) then
					queryNamesAndDocs:set(document, true)
				end
			end
		end
	end)

	if Boolean.toJSBoolean(legacyQueryOptions.size) then
		for _, options in legacyQueryOptions do
			-- We will be issuing a fresh network request for this query, so we
			-- pre-allocate a new query ID here, using a special prefix to enable
			-- cleaning up these temporary queries later, after fetching.
			local queryId = makeUniqueId("legacyOneTimeQuery")
			local queryInfo = self:getQuery(queryId):init({
				document = options.query,
				variables = options.variables,
			})
			local oq = ObservableQuery.new({
				queryManager = self :: any,
				queryInfo = queryInfo,
				options = Object.assign({}, options, { fetchPolicy = "network-only" }),
			})
			queryInfo:setObservableQuery(oq)
			queries:set(queryId, oq)
		end
	end

	if _G.__DEV__ and Boolean.toJSBoolean(queryNamesAndDocs.size) then
		queryNamesAndDocs:forEach(function(included, nameOrDoc)
			if not included then
				invariant.warn(
					("Unknown query %s%s requested in refetchQueries options.include array"):format(
						typeof(nameOrDoc) == "string" and "named " or "",
						HttpService:JSONEncode(nameOrDoc)
					)
				)
			end
		end)
	end

	return queries
end

function QueryManager:reFetchObservableQueries(includeStandby: boolean?): Promise<Array<ApolloQueryResult<any>>>
	if includeStandby == nil then
		includeStandby = false
	end

	local observableQueryPromises: Array<Promise<ApolloQueryResult<any>>> = {}

	self:getObservableQueries(Boolean.toJSBoolean(includeStandby) and "all" or "active")
		:forEach(function(observableQuery, queryId)
			local fetchPolicy = observableQuery.options.fetchPolicy
			observableQuery:resetLastResults()
			if Boolean.toJSBoolean(includeStandby) or (fetchPolicy ~= "standby" and fetchPolicy ~= "cache-only") then
				table.insert(observableQueryPromises, observableQuery:refetch())
			end
			self:getQuery(queryId):setDiff(nil)
		end)

	self:broadcastQueries()

	-- ROBLOX deviation: Promise.all doesn't work when passed a NULL
	return Promise.all(Array.filter(observableQueryPromises, toJSBoolean))
end

function QueryManager:setObservableQuery(observableQuery: ObservableQuery<any, any>): ()
	self:getQuery(observableQuery.queryId):setObservableQuery(observableQuery)
end

function QueryManager:startGraphQLSubscription(
	ref: SubscriptionOptions<OperationVariables, any>
): Observable<FetchResult<T_, Record<string, any>, Record<string, any>>>
	local query, fetchPolicy, errorPolicy, variables, context =
		ref.query, ref.fetchPolicy, ref.errorPolicy, ref.variables, ref.context
	if ref.context == nil then
		context = {}
	end

	query = self:transform(query).document
	variables = self:getVariables(query, variables)

	local function makeObservable(variables: OperationVariables)
		return self:getObservableFromLink(query, context, variables):map(function(result)
			if fetchPolicy ~= "no-cache" then
				-- the subscription interface should handle not sending us results we no longer subscribe to.
				-- XXX I don't think we ever send in an object with errors, but we might in the future...
				if shouldWriteResult(result, errorPolicy) then
					self.cache:write({
						query = query,
						result = result.data,
						dataId = "ROOT_SUBSCRIPTION",
						variables = variables,
					})
				end

				self:broadcastQueries()
			end

			if graphQLResultHasError(result) then
				error(ApolloError.new({
					graphQLErrors = result.errors,
				}))
			end

			return result
		end)
	end

	if self:transform(query).hasClientExports then
		local observablePromise =
			self.localState:addExportedVariables(query, variables, context):andThen(makeObservable)

		return Observable.new(function(observer)
			local sub: ObservableSubscription | nil = nil
			observablePromise:andThen(function(observable)
				sub = observable:subscribe(observer)
				return sub
			end, observer.error)
			return function()
				if sub ~= nil then
					return sub:unsubscribe()
				else
					return sub
				end
			end
		end)
	end

	return makeObservable(variables :: OperationVariables)
end

function QueryManager:stopQuery(queryId: string): ()
	self:stopQueryNoBroadcast(queryId)
	self:broadcastQueries()
end

function QueryManager:stopQueryNoBroadcast(queryId: string)
	self:stopQueryInStoreNoBroadcast(queryId)
	self:removeQuery(queryId)
end

function QueryManager:removeQuery(queryId: string): ()
	-- teardown all links
	-- Both `QueryManager.fetchRequest` and `QueryManager.query` create separate promises
	-- that each add their reject functions to fetchCancelFns.
	-- A query created with `QueryManager.query()` could trigger a `QueryManager.fetchRequest`.
	-- The same queryId could have two rejection fns for two promises
	self.fetchCancelFns:delete(queryId)
	self:getQuery(queryId):stop()
	self.queries:delete(queryId)
end

function QueryManager:broadcastQueries(): ()
	if Boolean.toJSBoolean(self.onBroadcast) then
		self:onBroadcast()
	end

	self.queries:forEach(function(info, _)
		return info:notify()
	end)
end

function QueryManager:getLocalState(): LocalState<TStore_>
	return self.localState
end

function QueryManager:getObservableFromLink(
	query: DocumentNode,
	context: any,
	variables: OperationVariables?,
	deduplication: boolean?
): Observable<FetchResult<T_, Record<string, any>, Record<string, any>>>
	if deduplication == nil then
		if Boolean.toJSBoolean(context) then
			if context.queryDeduplication ~= nil then
				deduplication = context.queryDeduplication
			else
				deduplication = self.queryDeduplication
			end
		else
			deduplication = self.queryDeduplication
		end
	end

	local observable: Observable<FetchResult<T_, Record<string, any>, Record<string, any>>>

	local serverQuery = self:transform(query).serverQuery

	if Boolean.toJSBoolean(serverQuery) then
		local inFlightLinkObservables, link = self.inFlightLinkObservables, self.link

		local operation = {
			query = serverQuery,
			variables = variables,
			operationName = Boolean.toJSBoolean(getOperationName(serverQuery)) and getOperationName(serverQuery) or nil,
			context = self:prepareContext(Object.assign({}, context, {
				forceFetch = not deduplication,
			})),
		}

		context = operation.context

		if deduplication then
			local ref = inFlightLinkObservables:get(serverQuery)
			local byVariables = Boolean.toJSBoolean(ref) and ref or Map.new(nil)
			inFlightLinkObservables:set(serverQuery, byVariables)

			local varJson = canonicalStringify(variables)
			observable = byVariables:get(varJson)

			if not Boolean.toJSBoolean(observable) then
				local concast = Concast.new({
					execute(link, operation) :: Observable<FetchResult<any, Record<string, any>, Record<string, any>>>,
				})

				observable = concast
				byVariables:set(varJson, observable)

				concast:cleanup(function()
					if Boolean.toJSBoolean(byVariables:delete(varJson)) and byVariables.size < 1 then
						inFlightLinkObservables:delete(serverQuery)
					end
				end)
			end
		else
			observable = Concast.new({
				execute(link, operation) :: Observable<FetchResult<any, Record<string, any>, Record<string, any>>>,
			})
		end
	else
		observable = Concast.new({
			Observable.of(({ data = {} } :: any) :: FetchResult<any, Record<string, any>, Record<string, any>>),
		})
		context = self:prepareContext(context)
	end

	local clientQuery = self:transform(query).clientQuery

	if toJSBoolean(clientQuery) then
		observable = asyncMap(observable, function(result)
			return self.localState:runResolvers({
				document = clientQuery,
				remoteResult = result,
				context = context,
				variables = variables,
			})
		end)
	end

	return observable
end

function QueryManager:getResultsFromLink(
	queryInfo: QueryInfo,
	cacheWriteBehavior: CacheWriteBehavior,
	options: any
): Observable<ApolloQueryResult<TData_>>
	queryInfo.lastRequestId = self:generateRequestId()
	local requestId = queryInfo.lastRequestId

	return asyncMap(
		self:getObservableFromLink(queryInfo.document, options.context, options.variables),
		function(result: FetchResult<any, Record<string, any>, Record<string, any>>)
			local hasErrors = isNonEmptyArray(result.errors)

			-- If we interrupted this request by calling getResultsFromLink again
			-- with the same QueryInfo object, we ignore the old results.
			if requestId >= queryInfo.lastRequestId then
				if hasErrors and options.errorPolicy == "none" then
					-- Throwing here effectively calls observer.error.
					error(queryInfo:markError(ApolloError.new({
						graphQLErrors = result.errors,
					})))
				end
				queryInfo:markResult(result, options, cacheWriteBehavior)
				queryInfo:markReady()
			end

			local aqr: ApolloQueryResult<any> = {
				data = result.data,
				loading = false,
				networkStatus = Boolean.toJSBoolean(queryInfo.networkStatus) and queryInfo.networkStatus
					or NetworkStatus.ready,
			}

			if hasErrors and options.errorPolicy ~= "ignore" then
				aqr.errors = result.errors
			end

			return aqr
		end,
		function(networkError)
			local error_
			if isApolloError(networkError) then
				error_ = networkError :: ApolloError
			else
				error_ = ApolloError.new({ networkError = networkError })
			end

			-- Avoid storing errors from older interrupted queries.
			if requestId >= queryInfo.lastRequestId then
				queryInfo:markError(error_)
			end

			error(error_)
		end
	)
end

function QueryManager:fetchQueryObservable(
	queryId: string,
	options: WatchQueryOptions<any, any>,
	-- The initial networkStatus for this fetch, most often
	-- NetworkStatus.loading, but also possibly fetchMore, poll, refetch,
	-- or setVariables.
	networkStatus: NetworkStatus?
): Concast<ApolloQueryResult<TData_>>
	if networkStatus == nil then
		networkStatus = NetworkStatus.loading
	end

	local query = self:transform(options.query).document
	local variables = self:getVariables(query, options.variables) :: TVars_
	local queryInfo = self:getQuery(queryId)

	local fetchPolicy, errorPolicy, returnPartialData, notifyOnNetworkStatusChange, context =
		options.fetchPolicy,
		options.errorPolicy,
		options.returnPartialData,
		options.notifyOnNetworkStatusChange,
		options.context

	if fetchPolicy == nil then
		fetchPolicy = ("cache-first" :: WatchQueryFetchPolicy) :: any
	end
	if errorPolicy == nil then
		errorPolicy = ("none" :: ErrorPolicy) :: any
	end
	if returnPartialData == nil then
		returnPartialData = false :: any
	end
	if notifyOnNetworkStatusChange == nil then
		notifyOnNetworkStatusChange = false :: any
	end
	if context == nil then
		context = {}
	end

	local normalized = Object.assign({}, options, {
		query = query,
		variables = variables,
		fetchPolicy = fetchPolicy,
		errorPolicy = errorPolicy,
		returnPartialData = returnPartialData,
		notifyOnNetworkStatusChange = notifyOnNetworkStatusChange,
		context = context,
	})

	local function fromVariables(variables: any)
		-- Since normalized is always a fresh copy of options, it's safe to
		-- modify its properties here, rather than creating yet another new
		-- WatchQueryOptions object.
		normalized.variables = variables
		return self:fetchQueryByPolicy(queryInfo, normalized, networkStatus)
	end

	-- ROBLOX deviation: predefine variable
	local concast: Concast<ApolloQueryResult<TData_>>

	-- This cancel function needs to be set before the concast is created,
	-- in case concast creation synchronously cancels the request.
	self.fetchCancelFns:set(queryId, function(reason)
		-- Delaying the cancellation using a Promise ensures that the
		-- concast variable has been initialized.
		Promise.delay(0):andThen(function()
			return concast:cancel(reason)
		end)
	end)

	-- A Concast<T> can be created either from an Iterable<Observable<T>>
	-- or from a PromiseLike<Iterable<Observable<T>>>, where T in this
	-- case is ApolloQueryResult<TData>.
	concast = Concast.new((function()
		-- If the query has @export(as: ...) directives, then we need to
		-- process those directives asynchronously. When there are no
		-- @export directives (the common case), we deliberately avoid
		-- wrapping the result of this.fetchQueryByPolicy in a Promise,
		-- since the timing of result delivery is (unfortunately) important
		-- for backwards compatibility. TODO This code could be simpler if
		-- we deprecated and removed LocalState.
		if self:transform(normalized.query).hasClientExports then
			return self.localState
				:addExportedVariables(normalized.query, normalized.variables, normalized.context)
				:andThen(fromVariables)
		else
			return fromVariables(normalized.variables)
		end
	end)())

	concast:cleanup(function()
		self.fetchCancelFns:delete(queryId)
		applyNextFetchPolicy(options)
	end)

	return concast
end

function QueryManager:refetchQueries<TResult>(
	ref: InternalRefetchQueriesOptions<ApolloCache<TStore_>, TResult>
): InternalRefetchQueriesMap<TResult>
	local updateCache, include, optimistic, removeOptimistic, onQueryUpdated =
		ref.updateCache, ref.include, ref.optimistic, ref.removeOptimistic, ref.onQueryUpdated
	if optimistic == nil then
		optimistic = false :: any
	end
	if removeOptimistic == nil then
		if Boolean.toJSBoolean(optimistic) then
			removeOptimistic = makeUniqueId("refetchQueries")
		else
			removeOptimistic = nil :: any
		end
	end

	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	local includedQueriesById = Map.new(nil) :: Map<string, {
		oq: ObservableQuery<any, OperationVariables>,
		lastDiff: Cache_DiffResult<any>?,
		diff: Cache_DiffResult<any>?,
	}>

	if Boolean.toJSBoolean(include) then
		self:getObservableQueries(include):forEach(function(oq, queryId)
			includedQueriesById:set(queryId, {
				oq = oq,
				lastDiff = self:getQuery(queryId):getDiff(),
			})
		end)
	end

	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	local results: InternalRefetchQueriesMap<TResult> = Map.new(nil) :: Map<any, any>

	if Boolean.toJSBoolean(updateCache) then
		self.cache:batch({
			update = updateCache,

			-- Since you can perform any combination of cache reads and/or writes in
			-- the cache.batch update function, its optimistic option can be either
			-- a boolean or a string, representing three distinct modes of
			-- operation:
			--
			-- * false: read/write only the root layer
			-- * true: read/write the topmost layer
			-- * string: read/write a fresh optimistic layer with that ID string
			--
			-- When typeof optimistic === "string", a new optimistic layer will be
			-- temporarily created within cache.batch with that string as its ID. If
			-- we then pass that same string as the removeOptimistic option, we can
			-- make cache.batch immediately remove the optimistic layer after
			-- running the updateCache function, triggering only one broadcast.
			--
			-- However, the refetchQueries method accepts only true or false for its
			-- optimistic option (not string). We interpret true to mean a temporary
			-- optimistic layer should be created, to allow efficiently rolling back
			-- the effect of the updateCache function, which involves passing a
			-- string instead of true as the optimistic option to cache.batch, when
			-- refetchQueries receives optimistic: true.
			--
			-- In other words, we are deliberately not supporting the use case of
			-- writing to an *existing* optimistic layer (using the refetchQueries
			-- updateCache function), since that would potentially interfere with
			-- other optimistic updates in progress. Instead, you can read/write
			-- only the root layer by passing optimistic: false to refetchQueries,
			-- or you can read/write a brand new optimistic layer that will be
			-- automatically removed by passing optimistic: true.
			optimistic = if optimistic and Boolean.toJSBoolean(removeOptimistic) then removeOptimistic else false,

			-- The removeOptimistic option can also be provided by itself, even if
			-- optimistic === false, to remove some previously-added optimistic
			-- layer safely and efficiently, like we do in markMutationResult.
			--
			-- If an explicit removeOptimistic string is provided with optimistic:
			-- true, the removeOptimistic string will determine the ID of the
			-- temporary optimistic layer, in case that ever matters.
			removeOptimistic = removeOptimistic,

			onWatchUpdated = function(_self, watch, diff, lastDiff): any?
				local oq
				if instanceOf(watch.watcher, QueryInfo) then
					oq = watch.watcher.observableQuery
				else
					oq = instanceOf(watch.watcher, QueryInfo)
				end

				if Boolean.toJSBoolean(oq) then
					if onQueryUpdated then
						-- Since we're about to handle this query now, remove it from
						-- includedQueriesById, in case it was added earlier because of
						-- options.include.
						includedQueriesById:delete(oq.queryId)
						local result: TResult | boolean | Promise<ApolloQueryResult<any>> = (
							(onQueryUpdated :: any) :: OnQueryUpdated<TResult>
						)(ref, oq, diff, lastDiff)

						if result == true then
							-- The onQueryUpdated function requested the default refetching
							-- behavior by returning true.
							result = oq:refetch()
						end

						-- Record the result in the results Map, as long as onQueryUpdated
						-- did not return false to skip/ignore this result.
						if result ~= false then
							results:set(oq, result :: InternalRefetchQueriesResult<TResult>)
						end

						-- Prevent the normal cache broadcast of this result, since we've
						-- already handled it.
						return false
					end

					if onQueryUpdated then
						-- If we don't have an onQueryUpdated function, and onQueryUpdated
						-- was not disabled by passing null, make sure this query is
						-- "included" like any other options.include-specified query.
						includedQueriesById:set(oq.queryId, { oq = oq, lastDiff = lastDiff, diff = diff })
					end
				end
				return nil
			end,
		})
	end

	if Boolean.toJSBoolean(includedQueriesById.size) then
		includedQueriesById:forEach(function(
			ref__: {
				oq: ObservableQuery<any, OperationVariables>,
				lastDiff: Cache_DiffResult<any>?,
				diff: Cache_DiffResult<any>?,
			},
			queryId: string
		)
			local oq, lastDiff, diff = ref__.oq, ref__.lastDiff, ref__.diff
			local result: TResult | boolean | Promise<ApolloQueryResult<any>> | nil

			-- If onQueryUpdated is provided, we want to use it for all included
			-- queries, even the QueryOptions ones.
			if onQueryUpdated ~= nil then
				if diff == nil then
					-- ROBLOX deviation: cast to any to access private property
					local info: QueryInfo = (oq :: any)["queryInfo"]
					info:reset() -- Force info.getDiff() to read from cache.
					diff = info:getDiff()
				end
				-- ROBLOX FIXME Luau:: cast explicitly even if we now that onQuertUpdate and diff are not nil from previous checks/assignments
				result = ((onQueryUpdated :: any) :: OnQueryUpdated<TResult>)(
					ref,
					oq,
					(diff :: any) :: Cache_DiffResult<any>,
					lastDiff
				)
			end

			-- Otherwise, we fall back to refetching.
			if onQueryUpdated == nil or result == true then
				result = oq:refetch()
			end

			if result ~= false then
				results:set(oq, result :: InternalRefetchQueriesResult<TResult>)
			end

			-- ROBLOX TODO: use String.indexOf
			local ref___ = string.find(queryId, "legacyOneTimeQuery")
			if ref___ ~= nil and ref___ >= 1 then
				self:stopQueryNoBroadcast(queryId)
			end
		end)
	end

	if Boolean.toJSBoolean(removeOptimistic) then
		-- In case no updateCache callback was provided (so cache.batch was not
		-- called above, and thus did not already remove the optimistic layer),
		-- remove it here. Since this is a no-op when the layer has already been
		-- removed, we do it even if we called cache.batch above, since it's
		-- possible this.cache is an instance of some ApolloCache subclass other
		-- than InMemoryCache, and does not fully support the removeOptimistic
		-- option for cache.batch.
		self.cache:removeOptimistic(removeOptimistic)
	end

	return results
end

function QueryManager:fetchQueryByPolicy(
	queryInfo: QueryInfo,
	ref: WatchQueryOptions<TVars_, TData_>,
	-- The initial networkStatus for this fetch, most often
	-- NetworkStatus.loading, but also possibly fetchMore, poll, refetch,
	-- or setVariables.
	networkStatus: NetworkStatus
): ConcastSourcesIterable<ApolloQueryResult<TData_>>
	local query, variables, fetchPolicy, refetchWritePolicy, errorPolicy, returnPartialData, context, notifyOnNetworkStatusChange =
		ref.query,
		ref.variables,
		ref.fetchPolicy,
		ref.refetchWritePolicy,
		ref.errorPolicy,
		ref.returnPartialData,
		ref.context,
		ref.notifyOnNetworkStatusChange

	local oldNetworkStatus = queryInfo.networkStatus

	queryInfo:init({
		document = query,
		variables = variables,
		networkStatus = networkStatus,
	})

	local function readCache()
		return queryInfo:getDiff(variables)
	end

	local function resultsFromCache(diff: Cache_DiffResult<TData_>, networkStatus: NetworkStatus?)
		if networkStatus == nil then
			networkStatus = Boolean.toJSBoolean(queryInfo.networkStatus) and queryInfo.networkStatus
				or NetworkStatus.loading
		end

		local data = diff.result

		if
			_G.__DEV__
			-- ROBLOX deviation: adding additional nil check to help analyze tool
			and diff.missing ~= nil
			and isNonEmptyArray(diff.missing)
			and not equal(data, {})
			and not Boolean.toJSBoolean(returnPartialData)
		then
			invariant.debug(
				("Missing cache result fields: %s"):format(Array.join(
					Array.map(diff.missing, function(m)
						return Array.join(m.path, ".")
					end),
					", "
				)),
				diff.missing
			)
		end

		local function fromData(data: any | nil)
			return Observable.of(Object.assign(
				{},
				{
					data = data,
					loading = isNetworkRequestInFlight(networkStatus),
					networkStatus = networkStatus,
				},
				(function(): { partial: boolean }?
					if Boolean.toJSBoolean(diff.complete) then
						return nil
					else
						return { partial = true }
					end
				end)()
			) :: ApolloQueryResult<any>)
		end

		if Boolean.toJSBoolean(data) and self:transform(query).hasForcedResolvers then
			return self.localState
				:runResolvers({
					document = query,
					remoteResult = { data = data },
					context = context,
					variables = variables,
					onlyRunForcedResolvers = true,
				})
				:andThen(function(resolved)
					return fromData(Boolean.toJSBoolean(resolved.data) and resolved.data or nil)
				end)
		end

		return fromData(data)
	end

	local cacheWriteBehavior
	if fetchPolicy == "no-cache" then
		cacheWriteBehavior = CacheWriteBehavior.FORBID
	else
		-- Watched queries must opt into overwriting existing data on refetch,
		-- by passing refetchWritePolicy: "overwrite" in their WatchQueryOptions.
		if networkStatus == NetworkStatus.refetch and refetchWritePolicy ~= "merge" then
			cacheWriteBehavior = CacheWriteBehavior.OVERWRITE
		else
			cacheWriteBehavior = CacheWriteBehavior.MERGE
		end
	end

	local function resultsFromLink()
		return self:getResultsFromLink(queryInfo, cacheWriteBehavior, {
			variables = variables,
			context = context,
			fetchPolicy = fetchPolicy,
			errorPolicy = errorPolicy,
		})
	end

	local shouldNotify = notifyOnNetworkStatusChange
		and typeof(oldNetworkStatus) == "number"
		and oldNetworkStatus ~= networkStatus
		and isNetworkRequestInFlight(networkStatus)

	local condition = fetchPolicy
	if condition == "cache-first" then
		local diff = readCache()

		if Boolean.toJSBoolean(diff.complete) then
			return { resultsFromCache(diff, queryInfo:markReady()) }
		end

		if Boolean.toJSBoolean(returnPartialData) or Boolean.toJSBoolean(shouldNotify) then
			return { resultsFromCache(diff), resultsFromLink() }
		end

		return { resultsFromLink() }
	elseif condition == "cache-and-network" then
		local diff = readCache()
		if
			Boolean.toJSBoolean(diff.complete)
			or Boolean.toJSBoolean(returnPartialData)
			or Boolean.toJSBoolean(shouldNotify)
		then
			return { resultsFromCache(diff), resultsFromLink() }
		end

		return { resultsFromLink() }
	elseif condition == "cache-only" then
		return { resultsFromCache(readCache(), queryInfo:markReady()) }
	elseif condition == "network-only" then
		if Boolean.toJSBoolean(shouldNotify) then
			return { resultsFromCache(readCache()), resultsFromLink() }
		end

		return { resultsFromLink() }
	elseif condition == "no-cache" then
		if Boolean.toJSBoolean(shouldNotify) then
			return {
				-- Note that queryInfo.getDiff() for no-cache queries does not call
				-- cache.diff, but instead returns a { complete: false } stub result
				-- when there is no queryInfo.diff already defined.
				resultsFromCache(queryInfo:getDiff()),
				resultsFromLink(),
			}
		end

		return { resultsFromLink() }
	elseif condition == "standby" then
		return {}
	else
		-- ROBLOX NOTE: copied the content of first case as it was also a default one (but put in the beginning for some reason 🤯)
		local diff = readCache()

		if Boolean.toJSBoolean(diff.complete) then
			return { resultsFromCache(diff, queryInfo:markReady()) }
		end

		if Boolean.toJSBoolean(returnPartialData) or Boolean.toJSBoolean(shouldNotify) then
			return { resultsFromCache(diff), resultsFromLink() }
		end

		return { resultsFromLink() }
	end
end

function QueryManager:getQuery(queryId: string): QueryInfo
	if Boolean.toJSBoolean(queryId) and not self.queries:has(queryId) then
		self.queries:set(queryId, QueryInfo.new(self.cache))
	end
	return self.queries:get(queryId)
end

function QueryManager:prepareContext(context: Object?)
	if context == nil then
		context = {}
	end
	local newContext = self.localState:prepareContext(context)
	return Object.assign({}, newContext, {
		clientAwareness = self.clientAwareness,
	})
end

exports.QueryManager = QueryManager

return exports
