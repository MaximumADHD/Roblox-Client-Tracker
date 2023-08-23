--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/ApolloClient.ts

local exports = {}
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local setTimeout = LuauPolyfill.setTimeout

type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

type Record<T, U> = { [T]: U }

local Promise = require(rootWorkspace.Promise)

type Partial<T> = Object

-- ROBLOX TODO: generic types replacements
type TVariables_ = any
type TData_ = any
type TContext_ = any
type T_ = any
type TOptions_ = any
type TResult_ = any
type TCache_ = any

local GraphQL = require(rootWorkspace.GraphQL)
type ExecutionResult = GraphQL.ExecutionResult
type DocumentNode = GraphQL.DocumentNode

local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant
local InvariantError = invariantModule.InvariantError

local coreModule = require(script.Parent.Parent.link.core)
local ApolloLink = coreModule.ApolloLink
type ApolloLink = coreModule.ApolloLink
type FetchResult<TData, C, E> = coreModule.FetchResult<TData, C, E>
type GraphQLRequest = coreModule.GraphQLRequest
local execute = coreModule.execute

local cacheModule = require(script.Parent.Parent.cache)
type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>
type DataProxy_Query<TVariables, TData> = cacheModule.DataProxy_Query<TVariables, TData>
type DataProxy_Fragment<TVariables, TData> = cacheModule.DataProxy_Fragment<TVariables, TData>
type DataProxy_WriteQueryOptions<TVariables, TData> = cacheModule.DataProxy_WriteQueryOptions<TVariables, TData>
type DataProxy_WriteFragmentOptions<TData, TVariables> = cacheModule.DataProxy_WriteFragmentOptions<TData, TVariables>

local utilitiesModule = require(script.Parent.Parent.utilities)
type Observable<T> = utilitiesModule.Observable<T>
local compact = utilitiesModule.compact
local version = require(script.Parent.Parent.version).version

local httpModule = require(script.Parent.Parent.link.http)
local HttpLink = httpModule.HttpLink
type UriFunction = httpModule.UriFunction

local QueryManager = require(script.Parent.QueryManager).QueryManager

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

local LocalStateModule = require(script.Parent.LocalState)
local LocalState = LocalStateModule.LocalState
type FragmentMatcher = LocalStateModule.FragmentMatcher

-- ROBLOX deviation: type extracted because of circular deps
local apolloClientTypesModule = require(script.Parent.ApolloClient_types)
export type ApolloClient<TCacheShape> = apolloClientTypesModule.ApolloClient<TCacheShape>
export type DefaultOptions = apolloClientTypesModule.DefaultOptions

-- ROBLOX TODO: Devtools not implemented
-- local hasSuggestedDevtools = false
export type ApolloClientOptions<TCacheShape> = {
	uri: (string | UriFunction)?,
	credentials: string?,
	headers: Record<string, string>?,
	link: ApolloLink?,
	cache: ApolloCache<TCacheShape>,
	ssrForceFetchDelay: number?,
	ssrMode: boolean?,
	connectToDevTools: boolean?,
	queryDeduplication: boolean?,
	defaultOptions: DefaultOptions?,
	assumeImmutableResults: boolean?,
	resolvers: (Resolvers | Array<Resolvers>)?,
	typeDefs: (string | Array<string> | DocumentNode | Array<DocumentNode>)?,
	fragmentMatcher: FragmentMatcher?,
	name: string?,
	version: string?,
}
type OptionsUnion<TData, TVariables, TContext> =
	WatchQueryOptions<TVariables, TData>
	| QueryOptions<TVariables, TData>
	| MutationOptions<TData, TVariables, TContext, any>

local function mergeOptions<TOptions>(defaults: Partial<TOptions>, options: TOptions & OptionsUnion<any, any, any>): TOptions
	return compact(
		defaults,
		options,
		Boolean.toJSBoolean(options.variables)
				and { variables = Object.assign({}, defaults.variables, options.variables) }
			or options.variables
	)
end
exports.mergeOptions = mergeOptions

--[[*
 * This is the primary Apollo Client class. It is used to send GraphQL documents (i.e. queries
 * and mutations) to a GraphQL spec-compliant server over a {@link NetworkInterface} instance,
 * receive results from the server and cache the results in a store. It also delivers updates
 * to GraphQL queries through {@link Observable} instances.
]]
local ApolloClient = {}
ApolloClient.__index = ApolloClient

--[[
  * Constructs an instance of {@link ApolloClient}.
  *
  * @param uri The GraphQL endpoint that Apollo Client will connect to. If
  *            `link` is configured, this option is ignored.
  * @param link The {@link ApolloLink} over which GraphQL documents will be resolved into a response.
  *
  * @param cache The initial cache to use in the data store.
  *
  * @param ssrMode Determines whether this is being run in Server Side Rendering (SSR) mode.
  *
  * @param ssrForceFetchDelay Determines the time interval before we force fetch queries for a
  * server side render.
  *
  * @param queryDeduplication If set to false, a query will still be sent to the server even if a query
  * with identical parameters (query, variables, operationName) is already in flight.
  *
  * @param defaultOptions Used to set application wide defaults for the
  *                       options supplied to `watchQuery`, `query`, or
  *                       `mutate`.
  *
  * @param assumeImmutableResults When this option is true, the client will assume results
  *                               read from the cache are never mutated by application code,
  *                               which enables substantial performance optimizations. Passing
  *                               `{ freezeResults: true }` to the `InMemoryCache` constructor
  *                               can help enforce this immutability.
  *
  * @param name A custom name that can be used to identify this client, when
  *             using Apollo client awareness features. E.g. "iOS".
  *
  * @param version A custom version that can be used to identify this client,
  *                when using Apollo client awareness features. This is the
  *                version of your client, which you may want to increment on
  *                new builds. This is NOT the version of Apollo Client that
  *                you are using.
]]
function ApolloClient.new<TCacheShape>(options: ApolloClientOptions<TCacheShape>): ApolloClient<TCacheShape>
	local self = setmetatable({}, ApolloClient)
	self.defaultOptions = {}
	self.resetStoreCallbacks = {}
	self.clearStoreCallbacks = {}

	local uri, credentials, headers, cache, defaultOptions, resolvers, typeDefs, fragmentMatcher, clientAwarenessName, clientAwarenessVersion =
		options.uri,
		options.credentials,
		options.headers,
		options.cache,
		options.defaultOptions,
		options.resolvers,
		options.typeDefs,
		options.fragmentMatcher,
		options.name,
		options.version

	local ssrMode, ssrForceFetchDelay, connectToDevTools, queryDeduplication, assumeImmutableResults
	if options.ssrMode == nil then
		ssrMode = false
	else
		ssrMode = options.ssrMode
	end
	if options.ssrForceFetchDelay == nil then
		ssrForceFetchDelay = 0
	else
		ssrForceFetchDelay = options.ssrForceFetchDelay
	end

	if options.connectToDevTools == nil then
		-- Expose the client instance as window.__APOLLO_CLIENT__ and call
		-- onBroadcast in queryManager.broadcastQueries to enable browser
		-- devtools, but disable them by default in production.
		-- ROBLOX deviation: using _G instead of window
		connectToDevTools = typeof(_G) == "table"
			and not Boolean.toJSBoolean((_G :: any).__APOLLO_CLIENT__)
			and _G.__DEV__
	else
		connectToDevTools = options.connectToDevTools
	end

	if options.queryDeduplication == nil then
		queryDeduplication = true
	else
		queryDeduplication = options.queryDeduplication
	end

	if options.assumeImmutableResults == nil then
		assumeImmutableResults = false
	else
		assumeImmutableResults = options.assumeImmutableResults
	end

	local link = options.link

	if not Boolean.toJSBoolean(link) then
		if Boolean.toJSBoolean(uri) then
			link = HttpLink.new({ uri = uri, credentials = credentials, headers = headers })
		else
			link = ApolloLink.empty()
		end
	end

	if not Boolean.toJSBoolean(cache) then
		error(
			InvariantError.new(
				"To initialize Apollo Client, you must specify a 'cache' property "
					.. "in the options object. \n"
					.. "For more information, please visit: https://go.apollo.dev/c/docs"
			)
		)
	end

	self.link = link
	self.cache = cache
	self.disableNetworkFetches = Boolean.toJSBoolean(ssrMode) and ssrMode or ssrForceFetchDelay > 0
	self.queryDeduplication = queryDeduplication
	self.defaultOptions = Boolean.toJSBoolean(defaultOptions) and defaultOptions or {}
	self.typeDefs = typeDefs

	if Boolean.toJSBoolean(ssrForceFetchDelay) then
		setTimeout(function()
			self.disableNetworkFetches = false
			return self.disableNetworkFetches
		end, ssrForceFetchDelay)
	end

	-- ROBLOX deviation: the functions dont need to be bound to lua tables
	-- self.watchQuery = self.watchQuery
	-- self.query = self.query
	-- self.mutate = self.mutate
	-- self.resetStore = self.resetStore
	-- self.reFetchObservableQueries = self.reFetchObservableQueries

	-- ROBLOX deviation: Apol dev tools not implemented
	-- if Boolean.toJSBoolean(connectToDevTools) and typeof(_G) == "table"

	-- then
	-- 	(_G :: any).__APOLLO_CLIENT__ = self
	-- end

	-- if
	-- 	Boolean.toJSBoolean((function()
	-- 		if Boolean.toJSBoolean(not Boolean.toJSBoolean(hasSuggestedDevtools)) then
	-- 			return _G.__DEV__
	-- 		else
	-- 			return not Boolean.toJSBoolean(hasSuggestedDevtools)
	-- 		end
	-- 	end)())
	-- then
	-- 	hasSuggestedDevtools = true
	-- 	if
	-- 		Boolean.toJSBoolean((function()
	-- 			if
	-- 				Boolean.toJSBoolean((function()
	-- 					if
	-- 						Boolean.toJSBoolean((function()
	-- 							if Boolean.toJSBoolean(typeof(_G) ~= "nil") then
	-- 								return window.document
	-- 							else
	-- 								return typeof(window) ~= "undefined"
	-- 							end
	-- 						end)())
	-- 					then
	-- 						return window.top == window.self
	-- 					else
	-- 						return (function()
	-- 							if Boolean.toJSBoolean(typeof(window) ~= "undefined") then
	-- 								return window.document
	-- 							else
	-- 								return typeof(window) ~= "undefined"
	-- 							end
	-- 						end)()
	-- 					end
	-- 				end)())
	-- 			then
	-- 				return not Boolean.toJSBoolean((window :: any).__APOLLO_DEVTOOLS_GLOBAL_HOOK__)
	-- 			else
	-- 				return (function()
	-- 					if
	-- 						Boolean.toJSBoolean((function()
	-- 							if Boolean.toJSBoolean(typeof(window) ~= "undefined") then
	-- 								return window.document
	-- 							else
	-- 								return typeof(window) ~= "undefined"
	-- 							end
	-- 						end)())
	-- 					then
	-- 						return window.top == window.self
	-- 					else
	-- 						return (function()
	-- 							if Boolean.toJSBoolean(typeof(window) ~= "undefined") then
	-- 								return window.document
	-- 							else
	-- 								return typeof(window) ~= "undefined"
	-- 							end
	-- 						end)()
	-- 					end
	-- 				end)()
	-- 			end
	-- 		end)())
	-- 	then
	-- 		local nav = window.navigator
	-- 		local ua = (function()
	-- 			if Boolean.toJSBoolean(nav) then
	-- 				return nav.userAgent
	-- 			else
	-- 				return nav
	-- 			end
	-- 		end)()
	-- 		local url: string | any --[[ ROBLOX TODO: Unhandled node for type: TSUndefinedKeyword ]]
	-- 		--[[ undefined ]]
	-- 		if typeof(ua) == "string" then
	-- 			if
	-- 				ua:indexOf("Chrome/")
	-- 				> -1 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 			then
	-- 				url = "https://chrome.google.com/webstore/detail/"
	-- 					.. "apollo-client-developer-t/jdkknkkbebbapilgoeccciglkfbmbnfm"
	-- 			elseif
	-- 				ua:indexOf("Firefox/")
	-- 				> -1 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 			then
	-- 				url = "https://addons.mozilla.org/en-US/firefox/addon/apollo-developer-tools/"
	-- 			end
	-- 		end
	-- 		if Boolean.toJSBoolean(url) then
	-- 			invariant:log(
	-- 				("Download the Apollo DevTools for a better development " .. "experience: ")
	-- 					+ url
	-- 			)
	-- 		end
	-- 	end
	-- end
	self.version = version

	self.localState = LocalState.new({
		cache = cache,
		client = (self :: any) :: ApolloClient<TCacheShape>,
		resolvers = resolvers,
		fragmentMatcher = fragmentMatcher,
	})

	self.queryManager = QueryManager.new({
		cache = self.cache,
		link = self.link :: ApolloLink,
		queryDeduplication = queryDeduplication,
		ssrMode = ssrMode,
		clientAwareness = {
			name = clientAwarenessName :: any,
			version = clientAwarenessVersion :: any,
		},
		localState = self.localState,
		assumeImmutableResults = assumeImmutableResults,
		onBroadcast = (function(): (() -> ())?
			-- ROBLOX TODO: Devtools not implemented
			-- if Boolean.toJSBoolean(connectToDevTools) then
			-- return function()
			-- 	if Boolean.toJSBoolean(self.devToolsHookCb) then
			-- 		self:devToolsHookCb({
			-- 			action = {},
			-- 			state = {
			-- 				queries = self.queryManager:getQueryStore(),
			-- 				mutations = Boolean.toJSBoolean(self.queryManager.mutationStore)
			-- 						and self.queryManager.mutationStore
			-- 					or {},
			-- 			},
			-- 			dataWithOptimisticResults = self.cache:extract(true),
			-- 		})
			-- 	end
			-- end
			-- else
			-- 	return nil
			-- end
			if connectToDevTools then
				return function() end
			else
				return nil
			end
		end)(),
	})
	return (self :: any) :: ApolloClient<TCacheShape>
end

--[[
  * Call this method to terminate any active client processes, making it safe
  * to dispose of this `ApolloClient` instance.
]]
function ApolloClient:stop()
	self.queryManager:stop()
end

--[[
  * This watches the cache store of the query according to the options specified and
  * returns an {@link ObservableQuery}. We can subscribe to this {@link ObservableQuery} and
  * receive updated results through a GraphQL observer when the cache store changes.
  * <p /><p />
  * Note that this method is not an implementation of GraphQL subscriptions. Rather,
  * it uses Apollo's store in order to reactively deliver updates to your query results.
  * <p /><p />
  * For example, suppose you call watchQuery on a GraphQL query that fetches a person's
  * first and last name and this person has a particular object identifer, provided by
  * dataIdFromObject. Later, a different query fetches that same person's
  * first and last name and the first name has now changed. Then, any observers associated
  * with the results of the first query will be updated with a new result object.
  * <p /><p />
  * Note that if the cache does not change, the subscriber will *not* be notified.
  * <p /><p />
  * See [here](https://medium.com/apollo-stack/the-concepts-of-graphql-bc68bd819be3#.3mb0cbcmc) for
  * a description of store reactivity.
]]
function ApolloClient:watchQuery(options: WatchQueryOptions<TVariables_, T_>)
	if Boolean.toJSBoolean(self.defaultOptions.watchQuery) then
		options = mergeOptions(self.defaultOptions.watchQuery, options)
	end

	-- XXX Overwriting options is probably not the best way to do this long term...
	if
		self.disableNetworkFetches
		and (options.fetchPolicy == "network-only" or options.fetchPolicy == "cache-and-network")
	then
		options = Object.assign({}, options, { fetchPolicy = "cache-first" })
	end

	return self.queryManager:watchQuery(options)
end

--[[
  * This resolves a single query according to the options specified and
  * returns a {@link Promise} which is either resolved with the resulting data
  * or rejected with an error.
  *
  * @param options An object of type {@link QueryOptions} that allows us to
  * describe how this query should be treated e.g. whether it should hit the
  * server at all or just resolve from the cache, etc.
]]
function ApolloClient:query(options: QueryOptions<TVariables_, T_>): Promise<ApolloQueryResult<T_>>
	if Boolean.toJSBoolean(self.defaultOptions.query) then
		options = mergeOptions(self.defaultOptions.query, options)
	end

	invariant(
		options.fetchPolicy :: WatchQueryFetchPolicy ~= "cache-and-network",
		"The cache-and-network fetchPolicy does not work with client.query, because "
			.. "client.query can only return a single result. Please use client.watchQuery "
			.. "to receive multiple results from the cache and the network, or consider "
			.. "using a different fetchPolicy, such as cache-first or network-only."
	)

	if self.disableNetworkFetches and options.fetchPolicy == "network-only" then
		options = Object.assign({}, options, { fetchPolicy = "cache-first" })
	end

	return self.queryManager:query(options)
end

--[[
  * This resolves a single mutation according to the options specified and returns a
   * {@link Promise} which is either resolved with the resulting data or rejected with an
   * error.
   *
   * It takes options as an object with the following keys and values:
]]
function ApolloClient:mutate(
	options: MutationOptions<TData_, TVariables_, TContext_, any>
): Promise<FetchResult<TData_, any, any>>
	if Boolean.toJSBoolean(self.defaultOptions.mutate) then
		options = mergeOptions(self.defaultOptions.mutate, options)
	end
	return self.queryManager:mutate(options)
end

--[[
  * This subscribes to a graphql subscription according to the options specified and returns an
  * {@link Observable} which either emits received data or an error.
]]
function ApolloClient:subscribe(options: SubscriptionOptions<TVariables_, T_>): Observable<FetchResult<T_, any, any>>
	return self.queryManager:startGraphQLSubscription(options)
end

--[[
  * Tries to read some data from the store in the shape of the provided
  * GraphQL query without making a network request. This method will start at
  * the root query. To start at a specific id returned by `dataIdFromObject`
  * use `readFragment`.
  *
  * @param optimistic Set to `true` to allow `readQuery` to return
  * optimistic results. Is `false` by default.
]]
function ApolloClient:readQuery(options: DataProxy_Query<TVariables_, T_>, optimistic: boolean?)
	if optimistic == nil then
		optimistic = false
	end
	return self.cache:readQuery(options, optimistic)
end

--[[
  * Tries to read some data from the store in the shape of the provided
  * GraphQL fragment without making a network request. This method will read a
  * GraphQL fragment from any arbitrary id that is currently cached, unlike
  * `readQuery` which will only read from the root query.
  *
  * You must pass in a GraphQL document with a single fragment or a document
  * with multiple fragments that represent what you are reading. If you pass
  * in a document with multiple fragments then you must also specify a
  * `fragmentName`.
  *
  * @param optimistic Set to `true` to allow `readFragment` to return
  * optimistic results. Is `false` by default.
]]
function ApolloClient:readFragment(options: DataProxy_Fragment<TVariables_, T_>, optimistic: boolean?): T_ | nil
	if optimistic == nil then
		optimistic = false
	end
	return self.cache:readFragment(options, optimistic)
end

--[[
  * Writes some data in the shape of the provided GraphQL query directly to
  * the store. This method will start at the root query. To start at a
  * specific id returned by `dataIdFromObject` then use `writeFragment`.
]]
function ApolloClient:writeQuery(options: DataProxy_WriteQueryOptions<TData_, TVariables_>): ()
	self.cache:writeQuery(options)
	self.queryManager:broadcastQueries()
end

--[[
  * Writes some data in the shape of the provided GraphQL fragment directly to
  * the store. This method will write to a GraphQL fragment from any arbitrary
  * id that is currently cached, unlike `writeQuery` which will only write
  * from the root query.
  *
  * You must pass in a GraphQL document with a single fragment or a document
  * with multiple fragments that represent what you are writing. If you pass
  * in a document with multiple fragments then you must also specify a
  * `fragmentName`.
]]
function ApolloClient:writeFragment(options: DataProxy_WriteFragmentOptions<TData_, TVariables_>): ()
	self.cache:writeFragment(options)
	self.queryManager:broadcastQueries()
end

function ApolloClient:__actionHookForDevTools(cb: () -> any)
	self.devToolsHookCb = cb
end

function ApolloClient:__requestRaw(payload: GraphQLRequest): Observable<ExecutionResult>
	return execute(self.link, payload)
end

--[[
  * Resets your entire store by clearing out your cache and then re-executing
  * all of your active queries. This makes it so that you may guarantee that
  * there is no data left in your store from a time before you called this
  * method.
  *
  * `resetStore()` is useful when your user just logged out. You’ve removed the
  * user session, and you now want to make sure that any references to data you
  * might have fetched while the user session was active is gone.
  *
  * It is important to remember that `resetStore()` *will* refetch any active
  * queries. This means that any components that might be mounted will execute
  * their queries again using your network interface. If you do not want to
  * re-execute any queries then you should make sure to stop watching any
  * active queries.
]]
function ApolloClient:resetStore(): Promise<Array<ApolloQueryResult<any>> | nil>
	return Promise.delay(0)
		:andThen(function()
			return self.queryManager:clearStore()
		end)
		:andThen(function()
			return Promise.all(Array.map(self.resetStoreCallbacks, function(fn)
				return fn()
			end))
		end)
		:andThen(function()
			return self:reFetchObservableQueries()
		end)
end

--[[
  * Remove all data from the store. Unlike `resetStore`, `clearStore` will
  * not refetch any active queries.
]]
function ApolloClient:clearStore(): Promise<Array<any>>
	return Promise.delay(0)
		:andThen(function()
			return self.queryManager:clearStore()
		end)
		:andThen(function()
			return Promise.all(Array.map(self.clearStoreCallbacks, function(fn)
				return fn()
			end))
		end)
end

--[[
  * Allows callbacks to be registered that are executed when the store is
  * reset. `onResetStore` returns an unsubscribe function that can be used
  * to remove registered callbacks.
]]
function ApolloClient:onResetStore(cb: () -> Promise<any>): () -> ()
	table.insert(self.resetStoreCallbacks, cb)
	return function()
		self.resetStoreCallbacks = Array.filter(self.resetStoreCallbacks, function(c)
			return c ~= cb
		end)
	end
end

--[[
  * Allows callbacks to be registered that are executed when the store is
  * cleared. `onClearStore` returns an unsubscribe function that can be used
  * to remove registered callbacks.
]]
function ApolloClient:onClearStore(cb: () -> Promise<any>): () -> ()
	table.insert(self.clearStoreCallbacks, cb)
	return function()
		self.clearStoreCallbacks = Array.filter(self.clearStoreCallbacks, function(c)
			return c ~= cb
		end)
	end
end

--[[
  * Refetches all of your active queries.
  *
  * `reFetchObservableQueries()` is useful if you want to bring the client back to proper state in case of a network outage
  *
  * It is important to remember that `reFetchObservableQueries()` *will* refetch any active
  * queries. This means that any components that might be mounted will execute
  * their queries again using your network interface. If you do not want to
  * re-execute any queries then you should make sure to stop watching any
  * active queries.
  * Takes optional parameter `includeStandby` which will include queries in standby-mode when refetching.
]]
function ApolloClient:reFetchObservableQueries(includeStandby: boolean?): Promise<Array<ApolloQueryResult<any>>>
	return self.queryManager:reFetchObservableQueries(includeStandby)
end

--[[
  * Refetches specified active queries. Similar to "reFetchObservableQueries()" but with a specific list of queries.
  *
  * `refetchQueries()` is useful for use cases to imperatively refresh a selection of queries.
  *
  * It is important to remember that `refetchQueries()` *will* refetch specified active
  * queries. This means that any components that might be mounted will execute
  * their queries again using your network interface. If you do not want to
  * re-execute any queries then you should make sure to stop watching any
  * active queries.
]]
function ApolloClient:refetchQueries(options: RefetchQueriesOptions<TCache_, TResult_>): RefetchQueriesResult<TResult_>
	local map = self.queryManager:refetchQueries(options)
	local queries: Array<ObservableQuery<any, any>> = {}
	local results: Array<InternalRefetchQueriesResult<TResult_>> = {}

	map:forEach(function(result, obsQuery)
		table.insert(queries, obsQuery)
		table.insert(results, result)
	end)

	local result = Promise.all(results :: Array<TResult_>) :: RefetchQueriesResult<TResult_>

	-- In case you need the raw results immediately, without awaiting
	-- Promise.all(results):
	result.queries = queries
	result.results = results

	-- If you decide to ignore the result Promise because you're using
	-- result.queries and result.results instead, you shouldn't have to worry
	-- about preventing uncaught rejections for the Promise.all result.
	result:catch(function(error_)
		invariant.debug(("In client.refetchQueries, Promise.all promise rejected with error %s"):format(error_.message))
	end)

	return result
end

--[[
  * Get all currently active `ObservableQuery` objects, in a `Map` keyed by
  * query ID strings. An "active" query is one that has observers and a
  * `fetchPolicy` other than "standby" or "cache-only". You can include all
  * `ObservableQuery` objects (including the inactive ones) by passing "all"
  * instead of "active", or you can include just a subset of active queries by
  * passing an array of query names or DocumentNode objects.
]]
function ApolloClient:getObservableQueries(include: RefetchQueriesInclude?): Map<string, ObservableQuery<any, any>>
	if include == nil then
		include = "active"
	end
	return self.queryManager:getObservableQueries(include)
end

--[[
  * Exposes the cache's complete state, in a serializable format for later restoration.
]]
function ApolloClient:extract(optimistic: boolean?)
	return self.cache:extract(optimistic)
end

--[[
  * Replaces existing state in the cache (if any) with the values expressed by
  * `serializedState`.
  *
  * Called when hydrating a cache (server side rendering, or offline storage),
  * and also (potentially) during hot reloads.
]]
function ApolloClient:restore(serializedState)
	return self.cache:restore(serializedState)
end

--[[
  * Add additional local resolvers.
]]
function ApolloClient:addResolvers(resolvers: Resolvers | Array<Resolvers>)
	self.localState:addResolvers(resolvers)
end

--[[
  * Set (override existing) local resolvers.
]]
function ApolloClient:setResolvers(resolvers: Resolvers | Array<Resolvers>)
	self.localState:setResolvers(resolvers)
end

--[[
  * Get all registered local resolvers.
]]
function ApolloClient:getResolvers()
	return self.localState:getResolvers()
end

--[[
  * Set a custom local state fragment matcher.
]]
function ApolloClient:setLocalStateFragmentMatcher(fragmentMatcher: FragmentMatcher)
	self.localState:setFragmentMatcher(fragmentMatcher)
end

--[[
  * Define a new ApolloLink (or link chain) that Apollo Client will use.
]]
function ApolloClient:setLink(newLink: ApolloLink)
	self.queryManager.link = newLink
	self.link = self.queryManager.link
end

exports.ApolloClient = ApolloClient

return exports
