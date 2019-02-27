return function()
	local PerformFetch = require(script.Parent.PerformFetch)
	local CorePackages = game:GetService("CorePackages")

	local Rodux = require(CorePackages.Rodux)
	local FetchingStatus = require(CorePackages.AppTempCommon.LuaApp.Reducers.FetchingStatus)
	local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)
	local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
	local Result = require(CorePackages.AppTempCommon.LuaApp.Result)

	local function batchKeyMapper(item)
		return tostring(item) .. "_key"
	end

	local TEST_ITEM_1 = "item1"
	local TEST_ITEM_2 = "item2"

	local TEST_KEY_1 = batchKeyMapper(TEST_ITEM_1)
	local TEST_KEY_2 = batchKeyMapper(TEST_ITEM_2)

	local function MockReducer(state, action)
		state = state or {}
		return {
			FetchingStatus = FetchingStatus(state.FetchingStatus, action),
		}
	end

	local function makeResolver()
		local startResolve
		local startReject
		local testPromise = Promise.new(function(resolve, reject)
			startResolve = resolve
			startReject = reject
		end)

		return {
			promise = testPromise,
			resolve = startResolve,
			reject = startReject
		}
	end

	local function doDispatchSingle(store, key, functor)
		-- Wrap functor like a thunk would normally be
		local thunkFunc = function()
			return PerformFetch.Single(key, functor)
		end

		return store:dispatch(thunkFunc())
	end

	local function doDispatchBatch(store, items, functor)
		-- Wrap functor like a thunk would normally be
		local thunkFunc = function()
			return PerformFetch.Batch(items, batchKeyMapper, functor)
		end

		return store:dispatch(thunkFunc())
	end

	local function doBasicSingleTest(key)
		local resolver = makeResolver()
		local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
		local thunkPromise = doDispatchSingle(store, key, function()
			return resolver.promise
		end)

		return {
			store = store,
			resolver = resolver,
			promise = thunkPromise
		}
	end

	local function doBasicBatchTest(keys)
		local resolver = makeResolver()
		local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
		local thunkPromise = doDispatchBatch(store, keys, function()
			return resolver.promise
		end)

		return {
			store = store,
			resolver = resolver,
			promise = thunkPromise
		}
	end

	describe("PerformFetch.GetStatus", function()
		it("should return NotStarted for missing key", function()
			local state = { FetchingStatus = {} }
			local status = PerformFetch.GetStatus(state, TEST_KEY_1)

			expect(status).to.equal(RetrievalStatus.NotStarted)
		end)

		it("should return matching status for state in store", function()
			local statusesToTest = {
				RetrievalStatus.NotStarted,
				RetrievalStatus.Fetching,
				RetrievalStatus.Done,
				RetrievalStatus.Failed
			}

			for _, testStatus in ipairs(statusesToTest) do
				local state = {
					FetchingStatus = {
						[TEST_KEY_1] = testStatus
					}
				}

				expect(PerformFetch.GetStatus(state, TEST_KEY_1)).to.equal(testStatus)
			end

			expect(#statusesToTest).to.equal(4)
		end)
	end)

	describe("PerformFetch.Single", function()
		it("should set fetching state in store when fetch begins", function()
			local bundle = doBasicSingleTest(TEST_KEY_1)

			expect(bundle.store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Fetching)
			bundle.resolver.resolve() -- clear key from global fetchingPromiseMap or later tests get blocked
		end)

		it("should pass store parameter to fetch functor", function()
			local originalStore = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local newStore
			doDispatchSingle(originalStore, TEST_KEY_1, function(store)
				newStore = store
				return Promise.resolve()
			end)

			expect(newStore ~= nil).to.equal(true)
		end)

		it("should set fetching state to done for sync resolve", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.resolve()
			end)

			expect(store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Done)
		end)

		it("should set fetching state to failed for sync reject", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.reject()
			end)

			expect(store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Failed)
		end)

		it("should set fetching state to Done after async fetch resolves", function()
			local bundle = doBasicSingleTest(TEST_KEY_1)

			bundle.resolver.resolve()
			expect(bundle.store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Done)
		end)


		it("should set fetching state to Failed after async fetch rejects", function()
			local bundle = doBasicSingleTest(TEST_KEY_1)

			bundle.resolver.reject()
			expect(bundle.store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Failed)
		end)


		it("should not mix fetching status of two separate keys", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })

			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.resolve()
			end)

			doDispatchSingle(store, TEST_KEY_2, function()
				return Promise.reject()
			end)

			expect(store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Done)
			expect(store:getState().FetchingStatus[TEST_KEY_2]).to.equal(RetrievalStatus.Failed)
		end)

		it("should pass original promise args to daisy-chained promise upon resolve", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local testTable = { a = 1 }

			local passedArg
			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.resolve(testTable)
			end):andThen(function(results)
				passedArg = results
			end)

			expect(passedArg).to.equal(testTable)
		end)

		it("should pass original promise args to daisy-chained promise upon reject", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local testTable = { a = 1 }

			local passedArg
			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.reject(testTable)
			end):catch(function(results)
				passedArg = results
			end)

			expect(passedArg).to.equal(testTable)
		end)

		it("should not call second thunk instance for same key while request is ongoing", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local firstThunkExecuted = false
			local secondThunkExecuted = false

			local firstThunkResolver = makeResolver()
			doDispatchSingle(store, TEST_KEY_1, function()
				firstThunkExecuted = true
				return firstThunkResolver.promise
			end)

			doDispatchSingle(store, TEST_KEY_1, function()
				secondThunkExecuted = true
				return Promise.resolve()
			end)

			expect(store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Fetching)
			expect(firstThunkExecuted).to.equal(true)
			expect(secondThunkExecuted).to.equal(false)

			firstThunkResolver.resolve()
		end)

		it("should call both thunks when the first one is completed soon enough", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local firstThunkExecuted = false
			local secondThunkExecuted = false

			doDispatchSingle(store, TEST_KEY_1, function()
				firstThunkExecuted = true
				return Promise.resolve()
			end)

			doDispatchSingle(store, TEST_KEY_1, function()
				secondThunkExecuted = true
				return Promise.resolve()
			end)

			expect(firstThunkExecuted).to.equal(true)
			expect(secondThunkExecuted).to.equal(true)
		end)

		it("should resolve daisy-chained promises after thunk resolves", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local chainedPromiseExecuted = false

			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.resolve()
			end):andThen(function()
				chainedPromiseExecuted = true
			end):catch(function()
				assert(false)
			end)

			expect(chainedPromiseExecuted).to.equal(true)
		end)

		it("should reject daisy-chained promises after thunk rejects", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local chainedCatchExecuted = false

			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.reject()
			end):andThen(function()
				assert(false)
			end):catch(function()
				chainedCatchExecuted = true
			end)

			expect(chainedCatchExecuted).to.equal(true)
		end)

		it("should resolve daisy-chained promises on second thunk after first resolves", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local secondPromiseResolved = false

			local startResolve
			local firstThunkPromise = Promise.new(function(resolve)
				startResolve = resolve
			end)

			doDispatchSingle(store, TEST_KEY_1, function()
				return firstThunkPromise
			end)

			doDispatchSingle(store, TEST_KEY_1, function()
				assert(false)
				return Promise.reject()
			end):andThen(function()
				secondPromiseResolved = true
			end):catch(function()
				assert(false)
			end)

			expect(secondPromiseResolved).to.equal(false)

			startResolve()

			expect(secondPromiseResolved).to.equal(true)
		end)

		it("should reject daisy-chained promises on second thunk after first thunk rejects", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local secondPromiseRejected = false

			local startReject
			local firstThunkPromise = Promise.new(function(_, reject)
				startReject = reject
			end)

			doDispatchSingle(store, TEST_KEY_1, function()
				return firstThunkPromise
			end)

			doDispatchSingle(store, TEST_KEY_1, function()
				return Promise.new(function() end)
			end):andThen(function()
				assert(false)
			end):catch(function()
				secondPromiseRejected = true
			end)

			expect(secondPromiseRejected).to.equal(false)

			startReject()

			expect(secondPromiseRejected).to.equal(true)
		end)
	end)

	describe("PerformFetch.Batch", function()
		it("should set fetching state in store for all batch items when fetching begins", function()
			local originalItemList = { TEST_ITEM_1, TEST_ITEM_2 }
			local bundle = doBasicBatchTest(originalItemList)

			expect(bundle.store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Fetching)
			expect(bundle.store:getState().FetchingStatus[TEST_KEY_2]).to.equal(RetrievalStatus.Fetching)

			local results = {
				[TEST_KEY_1] = Result.new(true),
				[TEST_KEY_2] = Result.new(true),
			}

			bundle.resolver.resolve(results) -- Cleanup to avoid test blockage
		end)

		it("should set fetching state to matching status for all batch items when fetching completes successfully", function()
			local originalItemList = { TEST_ITEM_1, TEST_ITEM_2 }
			local bundle = doBasicBatchTest(originalItemList)

			local results = {
				[TEST_KEY_1] = Result.new(true),
				[TEST_KEY_2] = Result.new(false),
			}

			bundle.resolver.resolve(results)

			expect(bundle.store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Done)
			expect(bundle.store:getState().FetchingStatus[TEST_KEY_2]).to.equal(RetrievalStatus.Failed)
		end)

		it("should fail items when they are not in the result list", function()
			local originalItemList = { TEST_ITEM_1, TEST_ITEM_2 }
			local bundle = doBasicBatchTest(originalItemList)

			bundle.resolver.resolve({})

			expect(bundle.store:getState().FetchingStatus[TEST_KEY_1]).to.equal(RetrievalStatus.Failed)
			expect(bundle.store:getState().FetchingStatus[TEST_KEY_2]).to.equal(RetrievalStatus.Failed)
		end)

		it("should return a daisy chainable batch style promise that resolves with results", function()
			local originalItemList = { TEST_ITEM_1, TEST_ITEM_2 }
			local bundle = doBasicBatchTest(originalItemList)

			local chainedResults = nil
			bundle.promise:andThen(function(promisedResults)
				chainedResults = promisedResults
			end)

			local results = {
				[TEST_KEY_1] = Result.new(true, 42),
				[TEST_KEY_2] = Result.new(false, 29),
			}

			bundle.resolver.resolve(results)

			local result1Status, result1Value = chainedResults[TEST_KEY_1]:unwrap()
			local result2Status, result2Value = chainedResults[TEST_KEY_2]:unwrap()

			expect(result1Status).to.equal(true)
			expect(result1Value).to.equal(42)

			expect(result2Status).to.equal(false)
			expect(result2Value).to.equal(29)
		end)

		it("should not call batch functor when there are no items to fetch", function()
			local store = Rodux.Store.new(MockReducer, { }, { Rodux.thunkMiddleware })
			local promise = doDispatchBatch(store, {}, function()
				assert(false, "Functor should not be called when there are no items to fetch")
			end)

			local promiseResolved = false
			promise:andThen(function()
				promiseResolved = true
			end)

			expect(promiseResolved).to.equal(true)
		end)

		it("should amalgamate results from multiple batch calls", function()
			local testItemList = { TEST_ITEM_1, TEST_ITEM_2 }

			local bundle = doBasicBatchTest(testItemList)

			local promise2 = doDispatchBatch(bundle.store, testItemList, function(_, itemsToFetch)
				assert(false, "second batch should not be called")
				return Promise.resolve({ })
			end)

			local chainedResults = nil
			promise2:andThen(function(promisedResults)
				chainedResults = promisedResults
			end)

			local results = {
				[TEST_KEY_1] = Result.new(true, 41),
				[TEST_KEY_2] = Result.new(false, 39),
			}

			bundle.resolver.resolve(results)

			local result1Status, result1Value = chainedResults[TEST_KEY_1]:unwrap()
			local result2Status, result2Value = chainedResults[TEST_KEY_2]:unwrap()

			expect(result1Status).to.equal(true)
			expect(result1Value).to.equal(41)

			expect(result2Status).to.equal(false)
			expect(result2Value).to.equal(39)
		end)
	end)

	describe("PerformFetch with mixed Single/Batch", function()
		it("should include outstanding single results for matching batch keys", function()
			local singleBundle = doBasicSingleTest(TEST_KEY_1)

			local batchItemCount = -1
			local batchPromise = doDispatchBatch(singleBundle.store, { TEST_ITEM_1, TEST_ITEM_2 },
			function(_, items)
				batchItemCount = #items
				return Promise.resolve({ [TEST_KEY_2] = Result.new(false, 35) })
			end)

			singleBundle.resolver.resolve(49)

			local chainedResults = nil
			batchPromise:andThen(function(results)
				chainedResults = results
			end)

			local result1Status, result1Value = chainedResults[TEST_KEY_1]:unwrap()
			local result2Status, result2Value = chainedResults[TEST_KEY_2]:unwrap()

			expect(result1Status).to.equal(true)
			expect(result1Value).to.equal(49)

			expect(result2Status).to.equal(false)
			expect(result2Value).to.equal(35)

			expect(batchItemCount).to.equal(1)
		end)

		it("should use batch result for duplicate single request", function()
			local batchBundle = doBasicBatchTest({ TEST_ITEM_1, TEST_ITEM_2 })

			local singlePromise = doDispatchSingle(batchBundle.store, TEST_KEY_1, function()
				assert(false, "Single functor should not be called")
				return Promise.reject()
			end)

			batchBundle.resolver.resolve({
				[TEST_KEY_1] = Result.new(true, 42),
				[TEST_KEY_2] = Result.new(true, 39)
			})

			local chainedResult = nil
			singlePromise:andThen(function(result)
				chainedResult = result
			end)

			expect(chainedResult).to.equal(42)
		end)
	end)
end
