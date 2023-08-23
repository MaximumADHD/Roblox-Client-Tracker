--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/ObservableQuery.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local exports = {}

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

local isCallable = require(srcWorkspace.luaUtils.isCallable)

local Promise = require(rootWorkspace.Promise)
type Function = (...any) -> ...any

-- ROBLOX TODO: generic temp types
type Partial<T> = Object
type TData_ = any
type TVariables_ = any
type TSubscriptionVariables_ = any
type TSubscriptionData_ = any

local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant
local equal = require(srcWorkspace.jsutils.equal)

local networkStatusModule = require(script.Parent.networkStatus)
local NetworkStatus = networkStatusModule.NetworkStatus
type NetworkStatus = networkStatusModule.NetworkStatus
local isNetworkRequestInFlight = networkStatusModule.isNetworkRequestInFlight

local utilitiesModule = require(script.Parent.Parent.utilities)
type Concast<T> = utilitiesModule.Concast<T>
local compact = utilitiesModule.compact
local cloneDeep = utilitiesModule.cloneDeep
local getOperationDefinition = utilitiesModule.getOperationDefinition
local Observable = utilitiesModule.Observable
type Observer<T> = utilitiesModule.Observer<T>
type ObservableSubscription = utilitiesModule.ObservableSubscription

local iterateObserversSafely = utilitiesModule.iterateObserversSafely
local isNonEmptyArray = utilitiesModule.isNonEmptyArray
local fixObservableSubclass = utilitiesModule.fixObservableSubclass

local errorsModule = require(script.Parent.Parent.errors)
local ApolloError = errorsModule.ApolloError
type ApolloError = errorsModule.ApolloError

-- ROBLOX TODO: uncomment when available
-- type QueryManager = require(script.Parent.QueryManager).QueryManager

local typesModule = require(script.Parent.types)
type ApolloQueryResult<T> = typesModule.ApolloQueryResult<T>
-- type OperationVariables = typesModule.OperationVariables

local watchQueryOptionsModule = require(script.Parent.watchQueryOptions_types)
type WatchQueryOptions<TVariables, TData> = watchQueryOptionsModule.WatchQueryOptions<TVariables, TData>
type FetchMoreQueryOptions<TVariables, TData> = watchQueryOptionsModule.FetchMoreQueryOptions<TVariables, TData>
type SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData> =
	watchQueryOptionsModule.SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData>

type WatchQueryFetchPolicy = watchQueryOptionsModule.WatchQueryFetchPolicy

local queryInfoModule = require(script.Parent.QueryInfo)
type QueryInfo = queryInfoModule.QueryInfo

local observableQueryTypesModule = require(script.Parent.ObservableQuery_types)
export type ObservableQuery<TData, TVariables> = observableQueryTypesModule.ObservableQuery<TData, TVariables>
export type FetchMoreOptions<TData, TVariables> = observableQueryTypesModule.FetchMoreOptions<TData, TVariables>
-- ROBLOX deviation: predefined variables
local defaultSubscriptionObserverErrorCallback

export type UpdateQueryOptions<TVariables> = { variables: TVariables? }

local warnedAboutUpdateQuery = false

local ObservableQuery = setmetatable({}, { __index = Observable })
ObservableQuery.__index = function(t, k)
	-- Computed shorthand for this.options.variables, preserved for
	-- backwards compatibility.
	if k == "variables" then
		return t.options.variables
	end
	if rawget(t, k) then
		return rawget(t, k)
	end
	if rawget(ObservableQuery :: any, k) then
		return rawget(ObservableQuery :: any, k)
	end
	return getmetatable(ObservableQuery).__index[k]
end
ObservableQuery.__newindex = function(t, k, v)
	if k == "variables" then
		error("setting getter-only property 'variables'")
	end
	rawset(t, k, v)
end

function ObservableQuery.new(
	ref: {
		queryManager: Object, --[[QueryManager<any>]]
		queryInfo: QueryInfo,
		options: WatchQueryOptions<TVariables_, TData_>,
	}
): ObservableQuery<any, any>
	local queryManager, queryInfo, options = ref.queryManager, ref.queryInfo, ref.options
	local self
	self = setmetatable(
		Observable.new(function(observer: Observer<ApolloQueryResult<TData_>>)
			-- Zen Observable has its own error function, so in order to log correctly
			-- we need to provide a custom error callback.
			xpcall(function()
				local subObserver = (observer :: any)._subscription._observer
				if Boolean.toJSBoolean(subObserver) and not Boolean.toJSBoolean(subObserver.error) then
					subObserver.error = defaultSubscriptionObserverErrorCallback
				end
			end, function() end)

			local first = not Boolean.toJSBoolean(self.observers.size)
			self.observers:add(observer)

			-- Deliver most recent error or result.
			if Boolean.toJSBoolean(self.lastError) then
				if Boolean.toJSBoolean(observer.error) then
					(observer :: any):error(self.lastError)
				end
			elseif Boolean.toJSBoolean(self.lastResult) then
				if Boolean.toJSBoolean(observer.next) then
					(observer :: any):next(self.lastResult)
				end
			end

			-- Initiate observation of this query if it hasn't been reported to
			-- the QueryManager yet
			if first then
				-- Blindly catching here prevents unhandled promise rejections,
				-- and is safe because the ObservableQuery handles this error with
				-- this.observer.error, so we're not just swallowing the error by
				-- ignoring it here.
				self:reobserve():catch(function() end)
			end

			return function()
				if self.observers:delete(observer) and not Boolean.toJSBoolean(self.observers.size) then
					self:tearDownQuery()
				end
			end
		end),
		ObservableQuery
	)

	self.observers = Set.new()
	self.subscriptions = Set.new()

	self.observer = {
		next = function(_self, result: ApolloQueryResult<TData_>)
			if Boolean.toJSBoolean(self.lastError) or self:isDifferentFromLastResult(result) then
				self:updateLastResult(result)
				iterateObserversSafely(self.observers, "next", result)
			end
		end,
		["error"] = function(_self, error_)
			-- Since we don't get the current result on errors, only the error, we
			-- must mirror the updates that occur in QueryStore.markQueryError here
			self:updateLastResult(Object.assign({}, self.lastResult, {
				["error"] = error_,
				errors = error_.graphQLErrors,
				networkStatus = NetworkStatus.error,
				loading = false,
			}) :: ApolloQueryResult<TData_>)

			self.lastError = error_
			iterateObserversSafely(self.observers, "error", self.lastError)
		end,
	}

	-- active state
	self.isTornDown = false

	-- query information
	self.options = options
	self.queryId = ((queryManager :: any):generateQueryId()) :: string

	local opDef = getOperationDefinition(options.query)

	if not Boolean.toJSBoolean(opDef) then
		self.queryName = opDef
	else
		if not Boolean.toJSBoolean(opDef.name) then
			self.queryName = opDef.name
		else
			self.queryName = opDef.name.value
		end
	end

	self.initialFetchPolicy = Boolean.toJSBoolean(options.fetchPolicy) and options.fetchPolicy or "cache-first"

	-- related classes
	self.queryManager = queryManager
	self.queryInfo = queryInfo
	return (self :: any) :: ObservableQuery<any, any>
end

function ObservableQuery:result(): Promise<ApolloQueryResult<TData_>>
	return Promise.new(function(resolve, reject)
		--ROBLOX deviation: predefine variable
		local subscription

		-- TODO: this code doesn’t actually make sense insofar as the observer
		-- will never exist in this.observers due how zen-observable wraps observables.
		-- https://github.com/zenparsing/zen-observable/blob/master/src/Observable.js#L169
		local observer: Observer<ApolloQueryResult<TData_>>
		observer = {
			next = function(_self, result: ApolloQueryResult<TData_>)
				resolve(result)

				-- Stop the query within the QueryManager if we can before
				-- this function returns.
				--
				-- We do this in order to prevent observers piling up within
				-- the QueryManager. Notice that we only fully unsubscribe
				-- from the subscription in a setTimeout(..., 0)  call. This call can
				-- actually be handled by the browser at a much later time. If queries
				-- are fired in the meantime, observers that should have been removed
				-- from the QueryManager will continue to fire, causing an unnecessary
				-- performance hit.
				self.observers:delete(observer)
				if not Boolean.toJSBoolean(self.observers.size) then
					self.queryManager:removeQuery(self.queryId)
				end
				setTimeout(function()
					subscription:unsubscribe()
				end, 0)
			end,
			["error"] = function(_self, e)
				reject(e)
			end,
		}

		subscription = self:subscribe(observer)
	end)
end

function ObservableQuery:getCurrentResult(saveAsLastResult: boolean?)
	if saveAsLastResult == nil then
		saveAsLastResult = true
	end

	local lastResult = self.lastResult
	local fetchPolicy
	if self.options.fetchPolicy == nil then
		fetchPolicy = "cache-first"
	else
		fetchPolicy = self.options.fetchPolicy
	end

	local networkStatus
	if Boolean.toJSBoolean(self.queryInfo.networkStatus) then
		networkStatus = self.queryInfo.networkStatus
	elseif Boolean.toJSBoolean(lastResult) and Boolean.toJSBoolean(lastResult.networkStatus) then
		networkStatus = lastResult.networkStatus
	else
		networkStatus = NetworkStatus.ready
	end

	local result = Object.assign(
		{},
		lastResult,
		{ loading = isNetworkRequestInFlight(networkStatus), networkStatus = networkStatus }
	) :: ApolloQueryResult<TData_>

	-- If this.options.query has @client(always: true) fields, we cannot trust
	-- diff.result, since it was read from the cache without running local
	-- resolvers (and it's too late to run resolvers now, since we must return a
	-- result synchronously).
	if not self.queryManager:transform(self.options.query).hasForcedResolvers then
		local diff = self.queryInfo:getDiff()

		if Boolean.toJSBoolean(diff.complete) or Boolean.toJSBoolean(self.options.returnPartialData) then
			result.data = diff.result
		else
			result.data = nil
		end

		if Boolean.toJSBoolean(diff.complete) then
			-- If the diff is complete, and we're using a FetchPolicy that
			-- terminates after a complete cache read, we can assume the next
			-- result we receive will have NetworkStatus.ready and !loading.
			if
				result.networkStatus == NetworkStatus.loading
				and (fetchPolicy == "cache-first" or fetchPolicy == "cache-only")
			then
				result.networkStatus = NetworkStatus.ready
				result.loading = false
			end
			result.partial = nil
		elseif fetchPolicy ~= "no-cache" then
			-- Since result.partial comes from diff.complete, and we shouldn't be
			-- using cache data to provide a DiffResult when the fetchPolicy is
			-- "no-cache", avoid annotating result.partial for "no-cache" results.
			result.partial = true
		end

		if
			not Boolean.toJSBoolean(diff.complete)
			and not Boolean.toJSBoolean(self.options.partialRefetch)
			and not Boolean.toJSBoolean(result.loading)
			and not Boolean.toJSBoolean(result.data)
			and not Boolean.toJSBoolean(result.error)
		then
			result.error = ApolloError.new({ clientErrors = diff.missing })
		end
	end

	if saveAsLastResult then
		self:updateLastResult(result)
	end

	return result
end

-- Compares newResult to the snapshot we took of this.lastResult when it was
-- first received.
function ObservableQuery:isDifferentFromLastResult(newResult: ApolloQueryResult<TData_>)
	return not equal(self.lastResultSnapshot, newResult)
end

-- Returns the last result that observer.next was called with. This is not the same as
-- getCurrentResult! If you're not sure which you need, then you probably need getCurrentResult.
function ObservableQuery:getLastResult(): ApolloQueryResult<TData_> | nil
	return self.lastResult
end

function ObservableQuery:getLastError(): ApolloError | nil
	return self.lastError
end

function ObservableQuery:resetLastResults(): ()
	self.lastResult = nil
	self.lastResultSnapshot = nil
	self.lastError = nil
	self.isTornDown = false
end

function ObservableQuery:resetQueryStoreErrors()
	self.queryManager:resetErrors(self.queryId)
end

--[[
	* Update the variables of this observable query, and fetch the new results.
   	* This method should be preferred over `setVariables` in most use cases.
   	*
   	* @param variables: The new set of variables. If there are missing variables,
   	* the previous values of those variables will be used.
]]
function ObservableQuery:refetch(variables: Partial<TVariables_>?): Promise<ApolloQueryResult<TData_>>
	local reobserveOptions: Partial<WatchQueryOptions<TVariables_, TData_>> = {
		-- Always disable polling for refetches.
		pollInterval = 0,
	} :: any

	-- Unless the provided fetchPolicy always consults the network
	-- (no-cache, network-only, or cache-and-network), override it with
	-- network-only to force the refetch for this fetchQuery call.
	local fetchPolicy = self.options.fetchPolicy
	if fetchPolicy == "no-cache" then
		reobserveOptions.fetchPolicy = "no-cache"
	elseif fetchPolicy ~= "cache-and-network" then
		reobserveOptions.fetchPolicy = "network-only"
	end

	if Boolean.toJSBoolean(variables) and not equal(self.options.variables, variables) then
		-- Update the existing options with new variables
		self.options.variables = Object.assign({}, self.options.variables, variables) :: TVariables_
		reobserveOptions.variables = self.options.variables
	end

	self.queryInfo:resetLastWrite()
	return self:reobserve(reobserveOptions, NetworkStatus.refetch)
end

function ObservableQuery:fetchMore(
	fetchMoreOptions: FetchMoreQueryOptions<TVariables_, TData_> & FetchMoreOptions<TData_, TVariables_>
): Promise<ApolloQueryResult<TData_>>
	local combinedOptions = Object.assign(
		{},
		(function()
			if Boolean.toJSBoolean(fetchMoreOptions.query) then
				return fetchMoreOptions
			else
				return Object.assign({}, self.options, fetchMoreOptions, {
					variables = Object.assign(
						{},
						(self.options :: WatchQueryOptions<TVariables_, TData_>).variables,
						fetchMoreOptions.variables
					),
				})
			end
		end)(),
		-- The fetchMore request goes immediately to the network and does
		-- not automatically write its result to the cache (hence no-cache
		-- instead of network-only), because we allow the caller of
		-- fetchMore to provide an updateQuery callback that determines how
		-- the data gets written to the cache.
		{ fetchPolicy = "no-cache" }
	) :: WatchQueryOptions<any, any>

	local qid = self.queryManager:generateQueryId()

	-- Simulate a loading result for the original query with
	-- result.networkStatus === NetworkStatus.fetchMore.
	if Boolean.toJSBoolean(combinedOptions.notifyOnNetworkStatusChange) then
		self.queryInfo.networkStatus = NetworkStatus.fetchMore
		self:observe()
	end

	return self
		.queryManager
		:fetchQuery(qid, combinedOptions, NetworkStatus.fetchMore)
		:andThen(function(fetchMoreResult)
			local data = fetchMoreResult.data :: TData_
			local updateQuery = fetchMoreOptions.updateQuery

			if Boolean.toJSBoolean(updateQuery) then
				-- ROBLOX deviation: added _G.__WARNED_ABOUT_OBSERVABLE_QUERY_UPDATE_QUERY__ global to allow reset this check during tests
				if
					_G.__DEV__
					and (not warnedAboutUpdateQuery or not _G.__WARNED_ABOUT_OBSERVABLE_QUERY_UPDATE_QUERY__)
				then
					invariant.warn([[The updateQuery callback for fetchMore is deprecated, and will be removed
in the next major version of Apollo Client.

Please convert updateQuery functions to field policies with appropriate
read and merge functions, or use/adapt a helper function (such as
concatPagination, offsetLimitPagination, or relayStylePagination) from
@apollo/client/utilities.

The field policy system handles pagination more effectively than a
hand-written updateQuery function, and you only need to define the policy
once, rather than every time you call fetchMore.]])
					warnedAboutUpdateQuery = true
					_G.__WARNED_ABOUT_OBSERVABLE_QUERY_UPDATE_QUERY__ = warnedAboutUpdateQuery
				end

				self:updateQuery(function(previous)
					return ((updateQuery :: any) :: Function)(fetchMoreOptions, previous, {
						fetchMoreResult = data,
						variables = combinedOptions.variables :: TVariables_,
					})
				end)
			else
				-- If we're using a field policy instead of updateQuery, the only
				-- thing we need to do is write the new data to the cache using
				-- combinedOptions.variables (instead of this.variables, which is
				-- what this.updateQuery uses, because it works by abusing the
				-- original field value, keyed by the original variables).
				self.queryManager.cache:writeQuery({
					query = combinedOptions.query,
					variables = combinedOptions.variables,
					data = data,
				})
			end
			return fetchMoreResult :: ApolloQueryResult<TData_>
		end) --[[
			ROBLOX deviation: finally implementation is different than in JS.
			using separate andThen and catch to perform the same logic and not swallow the error
		]]
		:andThen(function(result)
			self.queryManager:stopQuery(qid)
			self:reobserve()
			return result
		end)
		:catch(function(err)
			self.queryManager:stopQuery(qid)
			self:reobserve()
			error(err)
		end)
end

-- XXX the subscription variables are separate from the query variables.
-- if you want to update subscription variables, right now you have to do that separately,
-- and you can only do it by stopping the subscription and then subscribing again with new variables.
function ObservableQuery:subscribeToMore(
	options: SubscribeToMoreOptions<
		TData_,
		TSubscriptionVariables_,
		TSubscriptionData_
	>
)
	local subscription = self.queryManager
		:startGraphQLSubscription({
			query = options.document,
			variables = options.variables,
			context = options.context,
		})
		:subscribe({
			next = function(_self, subscriptionData: { data: TSubscriptionData_ })
				local updateQuery = options.updateQuery
				if Boolean.toJSBoolean(updateQuery) then
					self:updateQuery(function(previous, ref)
						local variables = ref.variables
						return (updateQuery :: Function)(
							previous,
							{ subscriptionData = subscriptionData, variables = variables }
						)
					end)
				end
			end,
			error = function(_self, err: any)
				if Boolean.toJSBoolean(options.onError) then
					(options :: any):onError(err)
					return
				end
				invariant.error("Unhandled GraphQL subscription error", err)
			end,
		})

	self.subscriptions:add(subscription)

	return function()
		if Boolean.toJSBoolean(self.subscriptions:delete(subscription)) then
			subscription:unsubscribe()
		end
	end
end

function ObservableQuery:setOptions(newOptions: Partial<WatchQueryOptions<TVariables_, TData_>>)
	return self:reobserve(newOptions)
end

--[[

	* This is for *internal* use only. Most users should instead use `refetch`
	* in order to be properly notified of results even when they come from cache.
	*
	* Update the variables of this observable query, and fetch the new results
	* if they've changed. If you want to force new results, use `refetch`.
	*
	* Note: the `next` callback will *not* fire if the variables have not changed
	* or if the result is coming from cache.
	*
	* Note: the promise will return the old results immediately if the variables
	* have not changed.
	*
	* Note: the promise will return null immediately if the query is not active
	* (there are no subscribers).
	*
	* @private
	*
	* @param variables: The new set of variables. If there are missing variables,
	* the previous values of those variables will be used.
]]
function ObservableQuery:setVariables(variables: TVariables_): Promise<ApolloQueryResult<TData_>?>
	if equal(self.variables, variables) then
		-- If we have no observers, then we don't actually want to make a network
		-- request. As soon as someone observes the query, the request will kick
		-- off. For now, we just store any changes. (See #1077)
		if Boolean.toJSBoolean(self.observers.size) then
			return self:result()
		else
			return Promise.resolve()
		end
	end

	self.options.variables = variables

	-- See comment above
	if not Boolean.toJSBoolean(self.observers.size) then
		return Promise.resolve()
	end

	return self:reobserve({
		-- Reset options.fetchPolicy to its original value.
		fetchPolicy = self.initialFetchPolicy,
		variables = variables,
	}, NetworkStatus.setVariables)
end

function ObservableQuery:updateQuery(
	mapFn: (
		previousQueryResult: TData_,
		options: any --[[Pick<WatchQueryOptions<TVars, TData>, "variables">]]
	) -> TData_
): ()
	local queryManager = self.queryManager

	local result
	do
		local ref = queryManager.cache:diff({
			query = self.options.query,
			variables = self.variables,
			previousResult = Boolean.toJSBoolean(self.lastResult) and self.lastResult.data or nil,
			returnPartialData = true,
			optimistic = false,
		})
		result = ref.result
	end

	local newResult = mapFn(result :: any, { variables = (self :: any).variables })

	if Boolean.toJSBoolean(newResult) then
		queryManager.cache:writeQuery({
			query = self.options.query,
			data = newResult,
			variables = self.variables,
		})

		queryManager:broadcastQueries()
	end
end

function ObservableQuery:startPolling(pollInterval: number)
	self.options.pollInterval = pollInterval
	self:updatePolling()
end

function ObservableQuery:stopPolling()
	self.options.pollInterval = 0
	self:updatePolling()
end

function ObservableQuery:fetch(
	options: WatchQueryOptions<TVariables_, TData_>,
	newNetworkStatus: NetworkStatus?
): Concast<ApolloQueryResult<TData_>>
	self.queryManager:setObservableQuery(self)
	return self.queryManager:fetchQueryObservable(self.queryId, options, newNetworkStatus)
end

-- Turns polling on or off based on this.options.pollInterval.
function ObservableQuery:updatePolling()
	--ROBLOX deviation: predefine variable
	local poll
	-- Avoid polling in SSR mode
	if Boolean.toJSBoolean(self.queryManager.ssrMode) then
		return
	end

	local pollingInfo, pollInterval = self.pollingInfo, self.options.pollInterval

	if not Boolean.toJSBoolean(pollInterval) then
		if Boolean.toJSBoolean(pollingInfo) then
			clearTimeout(pollingInfo.timeout)
			self.pollingInfo = nil
		end
		return
	end

	if Boolean.toJSBoolean(pollingInfo) and pollingInfo.interval == pollInterval then
		return
	end

	invariant(pollInterval, "Attempted to start a polling query without a polling interval.")

	local info = Boolean.toJSBoolean(pollingInfo) and pollingInfo
		or (function()
			self.pollingInfo = {} :: any
			return self.pollingInfo
		end)()
	info.interval = pollInterval

	local function maybeFetch()
		if Boolean.toJSBoolean(self.pollingInfo) then
			if not isNetworkRequestInFlight(self.queryInfo.networkStatus) then
				self:reobserve({
					fetchPolicy = "network-only",
				}, NetworkStatus.poll):andThen(poll, poll)
			else
				poll()
			end
		end
	end

	function poll()
		local info = self.pollingInfo
		if Boolean.toJSBoolean(info) then
			-- FIXME: make clearTimeout work when called with nil
			if info.timeout then
				clearTimeout(info.timeout)
			end
			info.timeout = setTimeout(maybeFetch, info.interval)
		end
	end

	poll()
end

function ObservableQuery:updateLastResult(newResult: ApolloQueryResult<TData_>)
	local previousResult = self.lastResult
	self.lastResult = newResult

	if Boolean.toJSBoolean(self.queryManager.assumeImmutableResults) then
		self.lastResultSnapshot = newResult
	else
		self.lastResultSnapshot = cloneDeep(newResult)
	end

	if not isNonEmptyArray(newResult.errors) then
		self.lastError = nil
	end
	return previousResult
end

function ObservableQuery:reobserve(
	newOptions: Partial<WatchQueryOptions<TVariables_, TData_>>?,
	newNetworkStatus: NetworkStatus?
): Promise<ApolloQueryResult<TData_>>
	self.isTornDown = false

	-- ROBLOX TODO: Comments here should be inlined to compound boolean, but stylua format makes luau issue warnings
	-- stylua: ignore
	local useDisposableConcast =
		-- * Refetching uses a disposable Concast to allow refetches using different
		-- options/variables, without permanently altering the options of the
		-- original ObservableQuery.
		newNetworkStatus == NetworkStatus.refetch or
		-- * The fetchMore method does not actually call the reobserve method, but,
		-- if it did, it would definitely use a disposable Concast.
		newNetworkStatus == NetworkStatus.fetchMore or
		-- * Polling uses a disposable Concast so the polling options (which force
		-- fetchPolicy to be "network-only") won't override the original options.
		newNetworkStatus == NetworkStatus.poll

	-- Save the old variables, since Object.assign may modify them below.
	local oldVariables = self.options.variables

	local options = if useDisposableConcast
		-- Disposable Concast fetches receive a shallow copy of this.options
		-- (merged with newOptions), leaving this.options unmodified.
		then compact(self.options, newOptions)
		else Object.assign(self.options, compact(newOptions))

	if not useDisposableConcast then
		-- We can skip calling updatePolling if we're not changing this.options.
		self:updatePolling()

		-- Reset options.fetchPolicy to its original value when variables change,
		-- unless a new fetchPolicy was provided by newOptions.
		if
			newOptions ~= nil
			and Boolean.toJSBoolean(newOptions.variables)
			and not Boolean.toJSBoolean(newOptions.fetchPolicy)
			and not equal(newOptions.variables, oldVariables)
		then
			options.fetchPolicy = self.initialFetchPolicy
			if newNetworkStatus == nil then
				newNetworkStatus = NetworkStatus.setVariables
			end
		end
	end

	local concast = self:fetch(options, newNetworkStatus)

	if not useDisposableConcast then
		-- We use the {add,remove}Observer methods directly to avoid wrapping
		-- observer with an unnecessary SubscriptionObserver object, in part so
		-- that we can remove it here without triggering any unsubscriptions,
		-- because we just want to ignore the old observable, not prematurely shut
		-- it down, since other consumers may be awaiting this.concast.promise.
		if self.concast then
			self.concast:removeObserver(self.observer, true)
		end

		self.concast = concast
	end

	concast:addObserver(self.observer)

	return concast.promise
end

-- Pass the current result to this.observer.next without applying any
-- fetch policies.
function ObservableQuery:observe()
	-- Passing false is important so that this.getCurrentResult doesn't
	-- save the fetchMore result as this.lastResult, causing it to be
	-- ignored due to the this.isDifferentFromLastResult check in
	-- this.observer.next.
	self.observer:next(self:getCurrentResult(false))
end

function ObservableQuery:hasObservers()
	return self.observers.size > 0
end

function ObservableQuery:tearDownQuery()
	if Boolean.toJSBoolean(self.isTornDown) then
		return
	end
	if Boolean.toJSBoolean(self.concast) then
		self.concast:removeObserver(self.observer)
		self.concast = nil
	end

	self:stopPolling()

	-- stop all active GraphQL subscriptions
	self.subscriptions:forEach(function(sub)
		return sub:unsubscribe()
	end)
	self.subscriptions:clear()
	self.queryManager:stopQuery(self.queryId)
	self.observers:clear()
	self.isTornDown = true
end

-- Necessary because the ObservableQuery constructor has a different
-- signature than the Observable constructor.
-- ROBLOX FIXME: I don't think this is serving its original intent in the Lua port
fixObservableSubclass(ObservableQuery)

exports.ObservableQuery = ObservableQuery

function defaultSubscriptionObserverErrorCallback(_self, error_)
	invariant.error("Unhandled error", error_.message, error_.stack)
end

-- Adopt options.nextFetchPolicy (if defined) as a replacement for
-- options.fetchPolicy. Since this method also removes options.nextFetchPolicy
-- from options, the adoption tends to be idempotent, unless nextFetchPolicy
-- is a function that keeps setting options.nextFetchPolicy (uncommon).
local function applyNextFetchPolicy(
	options: any --[[Pick<WatchQueryOptions<TVars, TData>, | "fetchPolicy"| "nextFetchPolicy">]]
)
	local fetchPolicy
	if options.fetchPolicy == nil then
		fetchPolicy = "cache-first"
	else
		fetchPolicy = options.fetchPolicy
	end

	local nextFetchPolicy = options.nextFetchPolicy

	if Boolean.toJSBoolean(nextFetchPolicy) then
		-- When someone chooses "cache-and-network" or "network-only" as their
		-- initial FetchPolicy, they often do not want future cache updates to
		-- trigger unconditional network requests, which is what repeatedly
		-- applying the "cache-and-network" or "network-only" policies would seem
		-- to imply. Instead, when the cache reports an update after the initial
		-- network request, it may be desirable for subsequent network requests to
		-- be triggered only if the cache result is incomplete. To that end, the
		-- options.nextFetchPolicy option provides an easy way to update
		-- options.fetchPolicy after the intial network request, without having to
		-- call observableQuery.setOptions.
		if isCallable(nextFetchPolicy) then
			options.fetchPolicy = nextFetchPolicy(options, fetchPolicy)
		else
			options.fetchPolicy = nextFetchPolicy
		end
	end
end
exports.applyNextFetchPolicy = applyNextFetchPolicy

return exports
