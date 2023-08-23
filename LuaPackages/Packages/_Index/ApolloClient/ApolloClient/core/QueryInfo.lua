--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/QueryInfo.ts

local exports = {}
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean, clearTimeout, Map, Object, Set, setTimeout, WeakMap =
	LuauPolyfill.Boolean,
	LuauPolyfill.clearTimeout,
	LuauPolyfill.Map,
	LuauPolyfill.Object,
	LuauPolyfill.Set,
	LuauPolyfill.setTimeout,
	LuauPolyfill.WeakMap
type Array<T> = LuauPolyfill.Array<T>

type Set<T> = LuauPolyfill.Set<T>
type Error = LuauPolyfill.Error
type MapLike<T, V> = {
	set: (MapLike<T, V>, T, V) -> MapLike<T, V>,
	get: (MapLike<T, V>, T) -> V,
	has: (MapLike<T, V>, T) -> boolean,
}
type Record<T, U> = { [T]: U }

local graphqlModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphqlModule.DocumentNode
type GraphQLError = graphqlModule.GraphQLError

local equal = require(srcWorkspace.jsutils.equal)

local cacheModule = require(srcWorkspace.cache)
type Cache_DiffResult<T> = cacheModule.Cache_DiffResult<T>
type Cache_DiffOptions = cacheModule.Cache_DiffOptions
type Cache_WatchOptions<Watcher> = cacheModule.Cache_WatchOptions<Watcher>
type ApolloCache<T> = cacheModule.ApolloCache<T>

local watchQueryOptionsTypesModule = require(script.Parent.watchQueryOptions_types)
type WatchQueryOptions<TVariables, TData> = watchQueryOptionsTypesModule.WatchQueryOptions<TVariables, TData>
type ErrorPolicy = watchQueryOptionsTypesModule.ErrorPolicy

local observableQueryTypesModule = require(script.Parent.ObservableQuery_types)
type ObservableQuery<TData, TVariables> = observableQueryTypesModule.ObservableQuery<TData, TVariables>

-- ROBLOX deviation: inline QueryInfo definition to avoid circular dep
-- local typesModule = require(script.Parent.types)
-- type QueryListener = typesModule.QueryListener
type QueryListener = (QueryInfo) -> nil

local linkCoreModule = require(script.Parent.Parent.link.core)
type FetchResult<TData, C, E> = linkCoreModule.FetchResult<TData, C, E>

local utilitiesModule = require(script.Parent.Parent.utilities)
type ObservableSubscription = utilitiesModule.ObservableSubscription
local isNonEmptyArray = utilitiesModule.isNonEmptyArray
local graphQLResultHasError = utilitiesModule.graphQLResultHasError
local canUseWeakMap = utilitiesModule.canUseWeakMap
local networkStatusModule = require(script.Parent.networkStatus)
local NetworkStatus = networkStatusModule.NetworkStatus
type NetworkStatus = networkStatusModule.NetworkStatus
local isNetworkRequestInFlight = networkStatusModule.isNetworkRequestInFlight

local apolloErrorModule = require(script.Parent.Parent.errors)
type ApolloError = apolloErrorModule.ApolloError

export type QueryStoreValue = {
	variables: Record<string, any>?,
	networkStatus: NetworkStatus?,
	networkError: (Error | nil)?,
	graphQLErrors: Array<GraphQLError>?,
}

local CacheWriteBehavior = {
	FORBID = 0,
	OVERWRITE = 1,
	MERGE = 2,
}
exports.CacheWriteBehavior = CacheWriteBehavior

export type CacheWriteBehavior = number

local destructiveMethodCounts: MapLike<ApolloCache<any>, number> = (function()
	if canUseWeakMap then
		-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
		return (WeakMap.new() :: any) :: MapLike<ApolloCache<any>, number>
	else
		-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
		return (Map.new(nil) :: any) :: MapLike<ApolloCache<any>, number>
	end
end)()

local function wrapDestructiveCacheMethod(
	cache: ApolloCache<any>,
	methodName: string --[[ keyof ApolloCache<any> ]]
)
	-- ROBLOX TODO: Luau doesn't have `keyof` to make this safe, so cast around it
	local original = (cache :: any)[methodName]
	if typeof(original) == "function" then
		(cache :: any)[methodName] = function(...)
			destructiveMethodCounts:set(
				cache,
				-- The %1e15 allows the count to wrap around to 0 safely every
				-- quadrillion evictions, so there's no risk of overflow. To be
				-- clear, this is more of a pedantic principle than something
				-- that matters in any conceivable practical scenario.
				(destructiveMethodCounts:get(cache) + 1) % 1e15
			)
			return original(...)
		end
	end
end

local function cancelNotifyTimeout(info: QueryInfo)
	if Boolean.toJSBoolean(info["notifyTimeout"]) then
		clearTimeout(info["notifyTimeout"])
		info["notifyTimeout"] = nil
	end
end

-- A QueryInfo object represents a single query managed by the
-- QueryManager, which tracks all QueryInfo objects by queryId in its
-- this.queries Map. QueryInfo objects store the latest results and errors
-- for the given query, and are responsible for reporting those results to
-- the corresponding ObservableQuery, via the QueryInfo.notify method.
-- Results are reported asynchronously whenever setDiff marks the
-- QueryInfo object as dirty, though a call to the QueryManager's
-- broadcastQueries method may trigger the notification before it happens
-- automatically. This class used to be a simple interface type without
-- any field privacy or meaningful methods, which is why it still has so
-- many public fields. The effort to lock down and simplify the QueryInfo
-- interface is ongoing, and further improvements are welcome.
local QueryInfo = {}
QueryInfo.__index = QueryInfo

export type QueryInfo = {
	listeners: Set<QueryListener>,
	document: DocumentNode | nil,
	lastRequestId: number,
	subscriptions: Set<ObservableSubscription>,
	variables: Record<string, any>?,
	networkStatus: NetworkStatus?,
	networkError: (Error | nil)?,
	graphQLErrors: Array<GraphQLError>?,
	stopped: boolean,
	observableQuery: ObservableQuery<any, any> | nil,
	init: ((
		self: QueryInfo,
		query: {
			document: DocumentNode,
			variables: Record<string, any> | nil,
			networkStatus: NetworkStatus?,
			observableQuery: ObservableQuery<any, any>?,
			lastRequestId: number?,
		}
	) -> QueryInfo),
	reset: ((self: QueryInfo) -> ()),
	getDiff: ((self: QueryInfo, variables: Record<string, any>?) -> Cache_DiffResult<any>),
	setDiff: ((self: QueryInfo, diff: Cache_DiffResult<any> | nil) -> ()),
	setObservableQuery: ((self: QueryInfo, oq: ObservableQuery<any, any> | nil) -> ()),
	notify: ((self: QueryInfo) -> ()),
	stop: ((self: QueryInfo) -> ()),
	resetLastWrite: ((self: QueryInfo) -> ()),
	markResult: ((
		self: QueryInfo,
		result: FetchResult<any, any, any>,
		options: { [string]: any },
		cacheWriteBehavior: CacheWriteBehavior
	) -> ()),
	markReady: ((self: QueryInfo) -> NetworkStatus),
	markError: ((self: QueryInfo, error: ApolloError) -> ApolloError),
}

type QueryInfoPrivate = {
	cache: ApolloCache<any>,
	dirty: boolean,
	notifyTimeout: any?, --NodeJS.Timeout| undefined
	lastDiff: ({ diff: Cache_DiffResult<any>, options: Cache_DiffOptions } | nil)?,
	oqListener: QueryListener,
	lastWrite: {
		result: FetchResult<any, Record<string, any>, Record<string, any>>,
		variables: Record<string, any> | nil,
		dmCount: number | nil,
	}?,
	updateLastDiff: (self: QueryInfo, diff: Cache_DiffResult<any> | nil, options: Cache_DiffOptions?) -> nil,
	getDiffOptions: (self: QueryInfo, variables: Record<string, any> | nil) -> Cache_DiffOptions,
	shouldNotify: (self: QueryInfo) -> boolean,
	cancel: (self: QueryInfo) -> any,
	lastWatch: Cache_WatchOptions<QueryInfo>,
	updateWatch: ((self: QueryInfo, variables: (Record<string, any> | nil)?) -> ()),
	canonize: (self: QueryInfo) -> boolean,
	shouldWrite: ((
		self: QueryInfo,
		result: FetchResult<any, any, any>,
		variables: Record<string, any> | nil
	) -> boolean),
}

function QueryInfo.new(cache: ApolloCache<any>): QueryInfo
	local self = {}
	self.listeners = Set.new()
	self.document = nil
	self.lastRequestId = 1
	self.subscriptions = Set.new()
	self.stopped = false
	self.cache = cache
	self.dirty = false
	self.observableQuery = nil

	-- Track how often cache.evict is called, since we want eviction to
	-- override the feud-stopping logic in the markResult method, by
	-- causing shouldWrite to return true. Wrapping the cache.evict method
	-- is a bit of a hack, but it saves us from having to make eviction
	-- counting an official part of the ApolloCache API.
	if not destructiveMethodCounts:has(cache) then
		destructiveMethodCounts:set(cache, 0)
		wrapDestructiveCacheMethod(cache, "evict")
		wrapDestructiveCacheMethod(cache, "modify")
		wrapDestructiveCacheMethod(cache, "reset")
	end

	return (setmetatable(self, QueryInfo) :: any) :: QueryInfo
end

function QueryInfo:init(
	query: {
		document: DocumentNode,
		variables: any,
		-- The initial networkStatus for this fetch, most often
		-- NetworkStatus.loading, but also possibly fetchMore, poll, refetch,
		-- or setVariables.
		networkStatus: NetworkStatus?,
		observableQuery: ObservableQuery<any, any>?,
		lastRequestId: number?,
	}
)
	local networkStatus = Boolean.toJSBoolean(query.networkStatus) and query.networkStatus or NetworkStatus.loading
	if
		Boolean.toJSBoolean(self.variables)
		and self.networkStatus ~= NetworkStatus.loading
		and not equal(self.variables, query.variables)
	then
		networkStatus = NetworkStatus.setVariables
	end
	if not equal(query.variables, self.variables) then
		self.lastDiff = nil
	end
	Object.assign(self, {
		document = query.document,
		variables = query.variables,
		networkError = Object.None,
		graphQLErrors = Boolean.toJSBoolean(self.graphQLErrors) and self.graphQLErrors or {},
		networkStatus = networkStatus,
	})

	if Boolean.toJSBoolean(query.observableQuery) then
		self:setObservableQuery(query.observableQuery)
	end

	if Boolean.toJSBoolean(query.lastRequestId) then
		self.lastRequestId = query.lastRequestId
	end
	return self
end

function QueryInfo:reset()
	cancelNotifyTimeout(self);
	((self :: any) :: QueryInfoPrivate).lastDiff = nil;
	((self :: any) :: QueryInfoPrivate).dirty = false
end

function QueryInfo:getDiff(variables): Cache_DiffResult<any>
	if variables == nil then
		variables = self.variables
	end

	local options = self:getDiffOptions(variables)

	if Boolean.toJSBoolean(self.lastDiff) and equal(options, self.lastDiff.options) then
		return self.lastDiff.diff
	end

	self.variables = variables
	self:updateWatch(self.variables)

	local oq = self.observableQuery

	if Boolean.toJSBoolean(oq) and oq.options.fetchPolicy == "no-cache" then
		return { complete = false }
	end

	local diff = self.cache:diff(options)
	self:updateLastDiff(diff, options)
	return diff
end

function QueryInfo:updateLastDiff(diff: Cache_DiffResult<any> | nil, options: Cache_DiffOptions?)
	self.lastDiff = Boolean.toJSBoolean(diff)
			and {
				diff = diff,
				options = Boolean.toJSBoolean(options) and options or self:getDiffOptions(),
			}
		or nil
end

function QueryInfo:getDiffOptions(variables): Cache_DiffOptions
	if variables == nil then
		variables = self.variables
	end

	local oq = self.observableQuery

	return {
		query = self.document,
		variables = variables,
		returnPartialData = true,
		optimistic = true,
		canonizeResults = not Boolean.toJSBoolean(oq) or oq.options.canonizeResults ~= false,
	}
end

function QueryInfo:setDiff(diff: Cache_DiffResult<any> | nil)
	local oldDiff
	if Boolean.toJSBoolean(self.lastDiff) then
		oldDiff = self.lastDiff.diff
	else
		oldDiff = self.lastDiff
	end

	self:updateLastDiff(diff)

	local oldDiff_, diff_
	if Boolean.toJSBoolean(oldDiff) then
		oldDiff_ = oldDiff.result
	else
		oldDiff_ = oldDiff
	end
	if Boolean.toJSBoolean(diff) then
		diff_ = (diff :: Cache_DiffResult<any>).result
	else
		diff_ = diff
	end

	if not self.dirty and not equal(oldDiff_, diff_) then
		self.dirty = true
		if not Boolean.toJSBoolean(self.notifyTimeout) then
			self.notifyTimeout = setTimeout(function()
				return self:notify()
			end, 0)
		end
	end
end

function QueryInfo:setObservableQuery(oq: ObservableQuery<any, any> | nil)
	if oq == self.observableQuery then
		return
	end

	if Boolean.toJSBoolean(self.oqListener) then
		self.listeners:delete(self.oqListener)
	end

	self.observableQuery = oq

	--ROBLOX deviation: adding oq~=nil to satisfy typechecking
	if Boolean.toJSBoolean(oq) and oq ~= nil then
		(oq :: any)["queryInfo"] = self
		self.oqListener = function()
			-- If this.diff came from an optimistic transaction, deliver the
			-- current cache data to the ObservableQuery, but don't perform a
			-- full reobservation, since oq.reobserve might make a network
			-- request, and we don't want to trigger network requests for
			-- optimistic updates.
			if Boolean.toJSBoolean(self:getDiff().fromOptimisticTransaction) then
				(oq :: any)["observe"](oq)
			else
				oq:reobserve()
			end
		end
		self.listeners:add(self.oqListener)
	else
		self.oqListener = nil
	end
end

function QueryInfo:notify()
	cancelNotifyTimeout(self)

	if ((self :: any) :: QueryInfoPrivate & QueryInfo):shouldNotify() then
		self.listeners:forEach(function(listener)
			return listener(self)
		end)
	end
	((self :: any) :: QueryInfoPrivate).dirty = false
end

function QueryInfo:shouldNotify()
	if not self.dirty or not Boolean.toJSBoolean(self.listeners.size) then
		return false
	end

	if isNetworkRequestInFlight(self.networkStatus) and Boolean.toJSBoolean(self.observableQuery) then
		local fetchPolicy = self.observableQuery.options.fetchPolicy
		if fetchPolicy ~= "cache-only" and fetchPolicy ~= "cache-and-network" then
			return false
		end
	end
	return true
end

function QueryInfo:stop()
	if not self.stopped then
		self.stopped = true
		-- Cancel the pending notify timeout
		self:reset()
		self:cancel()
		-- Revert back to the no-op version of cancel inherited from
		-- QueryInfo.prototype.
		self.cancel = QueryInfo.cancel

		self.subscriptions:forEach(function(sub)
			return sub:unsubscribe()
		end)

		local oq = self.observableQuery

		if Boolean.toJSBoolean(oq) then
			oq:stopPolling()
		end
	end
end

-- This method is a no-op by default, until/unless overridden by the
-- updateWatch method.
function QueryInfo:cancel() end

function QueryInfo:updateWatch(variables)
	if variables == nil then
		variables = self.variables
	end

	local oq = self.observableQuery

	if Boolean.toJSBoolean(oq) and oq.options.fetchPolicy == "no-cache" then
		return
	end

	local watchOptions: any = Object.assign(
		{},
		-- Although this.getDiffOptions returns Cache.DiffOptions instead of
		-- Cache.WatchOptions, all the overlapping options should be the same, so
		-- we can reuse getDiffOptions here, for consistency.
		self:getDiffOptions(variables),
		{
			watcher = self,
			callback = function(_self, diff)
				return self:setDiff(diff)
			end,
		}
	)

	-- ROBLOX deviation: we need to compare using `equal` without the `callback` function as it makes this comparison always fail
	local watchOptions_ = Object.assign({}, watchOptions, { callback = Object.None })
	local lastWatch_ = Object.assign({}, self.lastWatch, { callback = Object.None })
	if not Boolean.toJSBoolean(self.lastWatch) or not equal(watchOptions_, lastWatch_) then
		self:cancel()
		self.lastWatch = watchOptions
		self.cancel = self.cache:watch(self.lastWatch)
	end
end

function QueryInfo:resetLastWrite()
	self.lastWrite = nil
end

function QueryInfo:shouldWrite(
	result: FetchResult<any, any, any>,
	variables: Record<string, any> --[[ WatchQueryOptions["variables"] ]]
)
	local lastWrite = self.lastWrite

	return not (
		Boolean.toJSBoolean(lastWrite)
		-- If cache.evict has been called since the last time we wrote this
		-- data into the cache, there's a chance writing this result into
		-- the cache will repair what was evicted.
		and lastWrite.dmCount == destructiveMethodCounts:get(self.cache)
		and equal(variables, lastWrite.variables)
		and equal(result.data, lastWrite.result.data)
	)
end

-- ROBLOX deviation: predeclare function
local shouldWriteResult

type WatchQueryOptions_partial<TVariables, TData> = {
	fetchPolicy: typeof((({} :: any) :: WatchQueryOptions<TVariables, TData>).fetchPolicy),
	variables: typeof((({} :: any) :: WatchQueryOptions<TVariables, TData>).variables),
	errorPolicy: typeof((({} :: any) :: WatchQueryOptions<TVariables, TData>).errorPolicy),
}

function QueryInfo:markResult(
	result: FetchResult<any, any, any>,
	options: WatchQueryOptions_partial<any, any>,
	cacheWriteBehavior: CacheWriteBehavior
)
	if isNonEmptyArray(result.errors) then
		self.graphQLErrors = result.errors
	else
		self.graphQLErrors = {} :: any
	end
	-- Cancel the pending notify timeout (if it exists) to prevent extraneous network
	-- requests. To allow future notify timeouts, diff and dirty are reset as well.
	self:reset()

	if options.fetchPolicy == "no-cache" then
		self:updateLastDiff({ result = result.data, complete = true }, self:getDiffOptions(options.variables))
	elseif cacheWriteBehavior ~= CacheWriteBehavior.FORBID then
		if shouldWriteResult(result, options.errorPolicy) then
			-- Using a transaction here so we have a chance to read the result
			-- back from the cache before the watch callback fires as a result
			-- of writeQuery, so we can store the new diff quietly and ignore
			-- it when we receive it redundantly from the watch callback.
			self.cache:performTransaction(function(cache)
				if self:shouldWrite(result, options.variables) then
					cache:writeQuery({
						query = self.document,
						data = result.data,
						variables = options.variables,
						overwrite = cacheWriteBehavior == CacheWriteBehavior.OVERWRITE,
					})
					self.lastWrite = {
						result = result,
						variables = options.variables,
						-- ROBLOX FIXME: need to add explicit cast to ApolloCache<any>
						dmCount = destructiveMethodCounts:get(self.cache :: ApolloCache<any>),
					}
				else
					-- If result is the same as the last result we received from
					-- the network (and the variables match too), avoid writing
					-- result into the cache again. The wisdom of skipping this
					-- cache write is far from obvious, since any cache write
					-- could be the one that puts the cache back into a desired
					-- state, fixing corruption or missing data. However, if we
					-- always write every network result into the cache, we enable
					-- feuds between queries competing to update the same data in
					-- incompatible ways, which can lead to an endless cycle of
					-- cache broadcasts and useless network requests. As with any
					-- feud, eventually one side must step back from the brink,
					-- letting the other side(s) have the last word(s). There may
					-- be other points where we could break this cycle, such as
					-- silencing the broadcast for cache.writeQuery (not a good
					-- idea, since it just delays the feud a bit) or somehow
					-- avoiding the network request that just happened (also bad,
					-- because the server could return useful new data). All
					-- options considered, skipping this cache write seems to be
					-- the least damaging place to break the cycle, because it
					-- reflects the intuition that we recently wrote this exact
					-- result into the cache, so the cache *should* already/still
					-- contain this data. If some other query has clobbered that
					-- data in the meantime, that's too bad, but there will be no
					-- winners if every query blindly reverts to its own version
					-- of the data. This approach also gives the network a chance
					-- to return new data, which will be written into the cache as
					-- usual, notifying only those queries that are directly
					-- affected by the cache updates, as usual. In the future, an
					-- even more sophisticated cache could perhaps prevent or
					-- mitigate the clobbering somehow, but that would make this
					-- particular cache write even less important, and thus
					-- skipping it would be even safer than it is today.
					if Boolean.toJSBoolean(self.lastDiff) and Boolean.toJSBoolean(self.lastDiff.diff.complete) then
						-- Reuse data from the last good (complete) diff that we
						-- received, when possible.
						result.data = self.lastDiff.diff.result
						return
					end
					-- If the previous this.diff was incomplete, fall through to
					-- re-reading the latest data with cache.diff, below.
				end

				local diffOptions = self:getDiffOptions(options.variables)
				local diff = cache:diff(diffOptions)

				-- In case the QueryManager stops this QueryInfo before its
				-- results are delivered, it's important to avoid restarting the
				-- cache watch when markResult is called.
				if not self.stopped then
					-- Any time we're about to update this.diff, we need to make
					-- sure we've started watching the cache.
					self:updateWatch(options.variables)
				end
				-- If we're allowed to write to the cache, and we can read a
				-- complete result from the cache, update result.data to be the
				-- result from the cache, rather than the raw network result.
				-- Set without setDiff to avoid triggering a notify call, since
				-- we have other ways of notifying for this result.
				self:updateLastDiff(diff, diffOptions)
				if Boolean.toJSBoolean(diff.complete) then
					result.data = diff.result
				end
			end)
		else
			((self :: any) :: QueryInfoPrivate).lastWrite = nil
		end
	end
end

function QueryInfo:markReady()
	self.networkError = nil
	self.networkStatus = NetworkStatus.ready
	return self.networkStatus
end

function QueryInfo:markError(error_)
	self.networkStatus = NetworkStatus.error
	self.lastWrite = nil

	self:reset()

	if Boolean.toJSBoolean(error_.graphQLErrors) then
		self.graphQLErrors = error_.graphQLErrors
	end

	if Boolean.toJSBoolean(error_.networkError) then
		self.networkError = error_.networkError
	end

	return error_
end
exports.QueryInfo = QueryInfo

function shouldWriteResult(result: FetchResult<any, any, any>, errorPolicy: ErrorPolicy?): boolean
	if errorPolicy == nil then
		errorPolicy = "none"
	end
	local ignoreErrors = errorPolicy == "ignore" or errorPolicy == "all"
	local writeWithErrors = not graphQLResultHasError(result)

	if not writeWithErrors and ignoreErrors and Boolean.toJSBoolean(result.data) then
		writeWithErrors = true
	end
	return writeWithErrors
end
exports.shouldWriteResult = shouldWriteResult

return exports
