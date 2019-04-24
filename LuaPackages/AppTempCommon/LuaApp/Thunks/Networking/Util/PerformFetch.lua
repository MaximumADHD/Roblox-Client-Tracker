local CorePackages = game:GetService("CorePackages")

local Result = require(CorePackages.AppTempCommon.LuaApp.Result)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local PromiseUtilities = require(CorePackages.AppTempCommon.LuaApp.PromiseUtilities)
local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)
local UpdateFetchingStatus = require(CorePackages.AppTempCommon.LuaApp.Actions.UpdateFetchingStatus)

--[[
	PerformFetch wraps the notion of a network request together with its fetching status
	so that it is easier to de-duplicate concurrent requests for the same resource. The
	fetching status for individual fetching operations are available in the store as:

		storeState.FetchingStatus[key]

	When you use one of the methods in this helper, you provide a key (or keymap), and
	supply a functor that will only be called when a fetch actually needs to be performed.

	Any follow-up andThen/catch clauses will be correctly daisy-chained onto the original
	ongoing fetch request if one is already underway.
]]
local PerformFetch = {}

local batchPromises = {} -- fetch key = outstanding promise from PerformFetch.Batch

--[[
	Helper function for unit tests to be able to clean up batchPromises created from
	previous test case. This is because unit tests don't wait until the mock requests
	are resolved and moves onto the next test. If tests happen to generate duplicate
	fetchStatusKey, unresolved batchPromise will throw thinking that the promise does
	not have the correct status.
]]
function PerformFetch.ClearOutstandingPromiseStatus()
	batchPromises = {}
end

local function singleFetchKeymapper(item)
	-- Single fetch keys are used directly
	return item
end

--[[
	Get the fetching status for a given status key. Defaults to
	RetrievalStatus.NotStarted for missing keys.
]]
function PerformFetch.GetStatus(state, fetchStatusKey)
	assert(typeof(state) == "table")
	assert(typeof(fetchStatusKey) == "string")
	assert(#fetchStatusKey > 0)
	return state.FetchingStatus[fetchStatusKey] or RetrievalStatus.NotStarted
end

--[[
	Perform a fetch operation for a single resource.

	Args:
		fetchStatusKey	- String key for the fetching status to index the Rodux store.
		fetchFunctor	- Functor to call when a fetch needs to be performed for fetchStatusKey.

	Returns:
		A Promise that resolves or rejects in accordance with the result of fetchFunctor, or the
		promise for the original fetch if one is already ongoing.

	Usage:
		In your main thunk, wrap your inner store function with this thunk, like this:

		return function(arg1, arg2)
			return PerformFetch.Single("mykey", function(store)
				return doYourLogicHere() -- Must return a Promise!!!
			end)
		end

		Please note that in order for single fetches to integrate well with batch fetches,
		your promise must NEVER resolve or reject with multiple arguments! Wrap your results
		in a table instead.
]]
function PerformFetch.Single(fetchStatusKey, fetchFunctor)
	assert(typeof(fetchStatusKey) == "string")
	assert(typeof(fetchFunctor) == "function")
	assert(#fetchStatusKey > 0)

	return function(store)
		-- Call batch API to handle the individual fetch
		return PerformFetch.Batch({ fetchStatusKey }, singleFetchKeymapper, function(batchStore, itemsToFetch)
			assert(#itemsToFetch == 1)

			local functorPromise = fetchFunctor(batchStore)
			assert(Promise.is(functorPromise))

			return functorPromise:andThen(function(...)
				assert(#{...} <= 1)
				return Promise.resolve({ [fetchStatusKey] = Result.new(true, (...)) })
			end, function(...)
				assert(#{...} <= 1)
				return Promise.resolve({ [fetchStatusKey] = Result.new(false, (...)) })
			end)
		end)(store):andThen(function(batchResults)
			local success, value = batchResults[fetchStatusKey]:unwrap()
			if success then
				return Promise.resolve(value)
			else
				return Promise.reject(value)
			end
		end)
	end
end

--[[
	Perform a fetch operation for multiple resources at once (batching).

	Args:
		items			- The list of item ids that need to be fetched.
		keyMapper		- A function that maps items to string keys for the Rodux store.
		fetchFunctor	- A function that will be called when at least one item needs to be fetched.

	Returns:
		A Promise that always resolves. Result data is returned in a single table to the
		andThen() clause, where item fetch keys are the keys and the results for each key
		are encoded using a Result object.

	Usage:
		In your main thunk, wrap your inner store function with this thunk, like this:

			local MAPPER = function(item)
				return doSomething(item) -- Each key must be unique
			end

			return function(arg1, arg2)
				local allItems = makeYourItemsList()
				return PerformFetch.Batch(allItems, MAPPER, function(store, itemsToFetch)
					return doYourLogicHere(itemsToFetch) -- Must return a Promise!!!
				end)
			end

		Your implementation of fetchFunctor should return a promise that resolves
		according to the structure of PromiseUtilities.Batch, ex:

			return Promise.resolve({
				itemFetchKey1 = Result.new(true, payload1),
				itemFetchKey2 = Result.new(false, payload2), -- failed
			})

		Any other resolving arguments will be dropped for consistency and safety of the API.
		Since this is a batching API, your implementation should NOT reject().

		Please keep in mind that batching calls have to fit into an environment where they may
		be daisy chained onto other batching calls, and those results have to be amalgamated
		at the end of the chain into unique tables for each of the callers!
]]
function PerformFetch.Batch(items, keyMapper, fetchFunctor)
	assert(typeof(items) == "table")
	assert(typeof(keyMapper) == "function")
	assert(typeof(fetchFunctor) == "function")

	return function(store)
		local itemsToFetch = {}
		local itemsToFetchKeyMap = {}
		local batchPromisesForItemsAlreadyBeingFetched = {}

		-- Filter out items that do not need to be fetched
		for _, item in ipairs(items) do
			local fetchStatusKey = keyMapper(item)
			local fetchingStatus = PerformFetch.GetStatus(store:getState(), fetchStatusKey)
			local batchPromise = batchPromises[fetchStatusKey]

			if batchPromise then
				assert(fetchingStatus == RetrievalStatus.Fetching)

				batchPromisesForItemsAlreadyBeingFetched[fetchStatusKey] = batchPromise
			else
				assert(fetchingStatus ~= RetrievalStatus.Fetching)

				table.insert(itemsToFetch, item)
				itemsToFetchKeyMap[item] = fetchStatusKey
			end
		end

		local doResolve
		local batchFetchingPromise = Promise.new(function(resolve)
			doResolve = resolve
		end)

		-- Call functor if there are items to fetch, otherwise short-circuit it
		-- We want to call it FIRST because we need to kick off async fetch before blocking
		-- on other responses.
		local functorPromise
		if #itemsToFetch > 0 then
			-- Place remaining items into fetching state and make entry in table before
			-- we kick off functor just in case it returns already-completed promise
			for _, fetchStatusKey in pairs(itemsToFetchKeyMap) do
				store:dispatch(UpdateFetchingStatus(fetchStatusKey, RetrievalStatus.Fetching))
				batchPromises[fetchStatusKey] = batchFetchingPromise
			end

			functorPromise = fetchFunctor(store, itemsToFetch)
			assert(Promise.is(functorPromise))
		else
			functorPromise = Promise.resolve({})
		end

		functorPromise:andThen(function(myResults)
			myResults = myResults or {} -- No resolve args = empty table for ease of use

			return PromiseUtilities.Batch(batchPromisesForItemsAlreadyBeingFetched):andThen(function(batchResults)
				local filteredResults = {}
				for batchKey, batchResult in pairs(batchResults) do
					-- Extract only the result for the key we care about from the batch results
					local _, value = batchResult:unwrap()
					filteredResults[batchKey] = value[batchKey]
				end

				return myResults, filteredResults
			end)
		end,
		function()
			assert(false, "PerformFetch fetchFunctor should never reject")
		end):andThen(function(myResults, batchResults)
			-- Iterate on requested items rather than on actual result set
			-- so that we are sure to check all our keys and ignore extra ones
			for _, fetchKey in pairs(itemsToFetchKeyMap) do
				local resultObj = myResults[fetchKey]
				if Result.is(resultObj) then
					batchResults[fetchKey] = resultObj
				else
					batchResults[fetchKey] = Result.error()
				end

				-- Update fetching status in store from Result object status
				-- (The extra parens unwrap a multi-return value!)
				local itemStatus = (batchResults[fetchKey]:unwrap()) and RetrievalStatus.Done or RetrievalStatus.Failed
				store:dispatch(UpdateFetchingStatus(fetchKey, itemStatus))
				batchPromises[fetchKey] = nil
			end

			return batchResults
		end):andThen(function(joinedResults)
			doResolve(joinedResults)
		end)

		return batchFetchingPromise
	end
end

return PerformFetch
