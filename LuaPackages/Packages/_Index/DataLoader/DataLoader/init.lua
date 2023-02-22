-- ROBLOX upstream: https://github.com/graphql/dataloader/blob/v2.2.1-2-ge286f66/index.js
--[[*
 * Copyright (c) 2019-present, GraphQL Foundation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict
 ]]
type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local instanceof = LuauPolyfill.instanceof
local setTimeout = LuauPolyfill.setTimeout
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation START: use Array for ReadOnly Array
type _ReadOnlyArray<T> = Array<T>
-- ROBLOX deviation END
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

-- ROBLOX deviation START: additional imports
local TypeError = LuauPolyfill.Error
local Error = LuauPolyfill.Error
local Promise = require(Packages.Promise)
-- ROBLOX deviation END

local exports = {}

-- ROBLOX deviation START: move function definitions to the top of the file
local getCurrentBatch
local getValidMaxBatchSize
local dispatchBatch
local failedDispatch
local resolveCacheHits
local getValidBatchScheduleFn
local getValidCacheKeyFn
local getValidCacheMap
local getValidName
local isArrayLike
-- ROBLOX deviation END

-- A Function, which when given an Array of keys, returns a Promise of an Array
-- of values or Errors.
export type BatchLoadFn<K, V> = (keys: _ReadOnlyArray<K>) -> Promise<_ReadOnlyArray<V | Error>>
-- Optionally turn off batching or caching or provide a cache key function or a
-- custom cache instance.
export type Options<K, V, C> = {
	batch: boolean?,
	maxBatchSize: number?,
	batchScheduleFn: ((callback: () -> ()) -> ())?,
	cache: boolean?,
	cacheKeyFn: ((key: K) -> C)?,
	cacheMap: (CacheMap<C, Promise<V>> | nil)?,
	name: string?,
}
-- If a custom cache is provided, it must be of this type (a subset of ES6 Map).
export type CacheMap<K, V> = {
	get: (self: CacheMap<K, V>, key: K) -> V | void,
	set: (self: CacheMap<K, V>, key: K, value: V) -> any,
	delete: (self: CacheMap<K, V>, key: K) -> any,
	clear: (self: CacheMap<K, V>) -> any,
}
--[[*
	 * A `DataLoader` creates a public API for loading data from a particular
	 * data back-end with unique keys such as the `id` column of a SQL table or
	 * document name in a MongoDB database, given a batch loading function.
	 *
	 * Each `DataLoader` instance contains a unique memoized cache. Use caution when
	 * used in long-lived applications or those which serve many users with
	 * different access permissions and consider creating a new instance per
	 * web request.
	 ]]
export type DataLoader<K, V, C> = { -- Private
	_batchLoadFn: BatchLoadFn<K, V>,
	_maxBatchSize: number,
	_batchScheduleFn: (() -> ()) -> (),
	_cacheKeyFn: (K) -> C,
	_cacheMap: CacheMap<C, Promise<V>> | nil,
	_batch: Batch<K, V> | nil,
	--[[*
		 * Loads a key, returning a `Promise` for the value represented by that key.
		 ]]
	load: (self: DataLoader<K, V, C>, key: K) -> Promise<V>,
	--[[*
		 * Loads multiple keys, promising an array of values:
		 *
		 *     var [ a, b ] = await myLoader.loadMany([ 'a', 'b' ]);
		 *
		 * This is similar to the more verbose:
		 *
		 *     var [ a, b ] = await Promise.all([
		 *       myLoader.load('a'),
		 *       myLoader.load('b')
		 *     ]);
		 *
		 * However it is different in the case where any load fails. Where
		 * Promise.all() would reject, loadMany() always resolves, however each result
		 * is either a value or an Error instance.
		 *
		 *     var [ a, b, c ] = await myLoader.loadMany([ 'a', 'b', 'badkey' ]);
		 *     // c instanceof Error
		 *
		 ]]
	loadMany: (self: DataLoader<K, V, C>, keys: _ReadOnlyArray<K>) -> Promise<Array<V | Error>>,
	--[[*
		 * Clears the value at `key` from the cache, if it exists. Returns itself for
		 * method chaining.
		 ]]
	clear: (self: DataLoader<K, V, C>, key: K) -> DataLoader<K, V, C>,
	--[[*
		 * Clears the entire cache. To be used when some event results in unknown
		 * invalidations across this particular `DataLoader`. Returns itself for
		 * method chaining.
		 ]]
	clearAll: (self: DataLoader<K, V, C>) -> DataLoader<K, V, C>,
	--[[*
		 * Adds the provided key and value to the cache. If the key already
		 * exists, no change is made. Returns itself for method chaining.
		 *
		 * To prime the cache with an error at a key, provide an Error instance.
		 ]]
	prime: (self: DataLoader<K, V, C>, key: K, value: V | Promise<V> | Error) -> DataLoader<K, V, C>,
	--[[*
		 * The name given to this `DataLoader` instance. Useful for APM tools.
		 *
		 * Is `null` if not set in the constructor.
		 ]]
	name: string?,
}
type DataLoader_statics = {
	new: <K, V, C>(batchLoadFn: BatchLoadFn<K, V>, options: Options<K, V, C>?) -> DataLoader<K, V, C>,
}

local DataLoader = {} :: DataLoader<any, any, any> & DataLoader_statics;

(DataLoader :: any).__index = DataLoader

function DataLoader.new<K, V, C>(batchLoadFn: BatchLoadFn<K, V>, options: Options<K, V, C>?): DataLoader<K, V, C>
	local self = setmetatable({}, DataLoader)
	if typeof(batchLoadFn) ~= "function" then
		error(
			TypeError.new(
				"DataLoader must be constructed with a function which accepts "
					.. ("Array<key> and returns Promise<Array<value>>, but got: %s."):format(tostring(batchLoadFn))
			)
		)
	end
	self._batchLoadFn = batchLoadFn
	self._maxBatchSize = getValidMaxBatchSize(options)
	self._batchScheduleFn = getValidBatchScheduleFn(options)
	self._cacheKeyFn = getValidCacheKeyFn(options)
	self._cacheMap = getValidCacheMap(options)
	self._batch = nil
	self.name = getValidName(options)
	return (self :: any) :: DataLoader<K, V, C>
end

function DataLoader:load<K, V>(key: K): Promise<V>
	if key == nil then
		error(
			TypeError.new(
				"The loader.load() function must be called with a value, " .. ("but got: %s."):format(tostring(key))
			)
		)
	end
	local batch = getCurrentBatch(self)
	local cacheMap = self._cacheMap
	local cacheKey = self._cacheKeyFn(key)
	-- If caching and there is a cache-hit, return cached Promise.
	if Boolean.toJSBoolean(cacheMap) then
		local cachedPromise = cacheMap:get(cacheKey)
		if Boolean.toJSBoolean(cachedPromise) then
			local cacheHits = Boolean.toJSBoolean(batch.cacheHits) and batch.cacheHits
				or (function()
					batch.cacheHits = {}
					return batch.cacheHits
				end)()
			return Promise.new(function(resolve)
				table.insert(cacheHits, function()
					resolve(cachedPromise)
				end)
			end)
		end
	end
	-- Otherwise, produce a new Promise for this key, and enqueue it to be
	-- dispatched along with the current batch.
	table.insert(batch.keys, key)
	local promise = Promise.new(function(resolve, reject)
		table.insert(batch.callbacks, { resolve = resolve, reject = reject })
	end)
	-- If caching, cache this promise.
	if Boolean.toJSBoolean(cacheMap) then
		cacheMap:set(cacheKey, promise)
	end
	return promise
end

function DataLoader:loadMany<K, V>(keys: _ReadOnlyArray<K>): Promise<Array<V | Error>>
	if not Boolean.toJSBoolean(isArrayLike(keys)) then
		error(
			TypeError.new(
				"The loader.loadMany() function must be called with Array<key> "
					.. ("but got: %s."):format(tostring(keys :: any))
			)
		)
	end
	-- Support ArrayLike by using only minimal property access
	local loadPromises = {}
	do
		local i = 0
		while i < #keys do
			table.insert(
				loadPromises,
				-- ROBLOX deviation START: add 1 for array index
				self:load(keys[i + 1]):catch(function(error_)
					return error_
				end)
				-- ROBLOX deviation END
			)
			i += 1
		end
	end
	return Promise.all(loadPromises)
end

function DataLoader:clear<K>(key: K): DataLoader<K, any, any>
	local cacheMap = self._cacheMap
	if Boolean.toJSBoolean(cacheMap) then
		local cacheKey = self._cacheKeyFn(key)
		cacheMap:delete(cacheKey)
	end
	return self
end

function DataLoader:clearAll(): DataLoader<any, any, any>
	local cacheMap = self._cacheMap
	if Boolean.toJSBoolean(cacheMap) then
		cacheMap:clear()
	end
	return self
end

function DataLoader:prime<K, V>(key: K, value: V | Promise<V> | Error): DataLoader<K, V, any>
	local cacheMap = self._cacheMap
	if Boolean.toJSBoolean(cacheMap) then
		local cacheKey = self._cacheKeyFn(key)
		-- Only add the key if it does not already exist.
		if cacheMap:get(cacheKey) == nil then
			-- Cache a rejected promise if the value is an Error, in order to match
			-- the behavior of load(key).
			local promise
			if instanceof(value, Error) then
				promise = Promise.reject(value)
				-- Since this is a case where an Error is intentionally being primed
				-- for a given key, we want to disable unhandled promise rejection.
				promise:catch(function() end)
			else
				promise = Promise.resolve(value)
			end
			cacheMap:set(cacheKey, promise)
		end
	end
	return self
end
-- Private: Enqueue a Job to be executed after all "PromiseJobs" Jobs.
--
-- ES6 JavaScript uses the concepts Job and JobQueue to schedule work to occur
-- after the current execution context has completed:
-- http://www.ecma-international.org/ecma-262/6.0/#sec-jobs-and-job-queues
--
-- Node.js uses the `process.nextTick` mechanism to implement the concept of a
-- Job, maintaining a global FIFO JobQueue for all Jobs, which is flushed after
-- the current call stack ends.
--
-- When calling `then` on a Promise, it enqueues a Job on a specific
-- "PromiseJobs" JobQueue which is flushed in Node as a single Job on the
-- global JobQueue.
--
-- DataLoader batches all loads which occur in a single frame of execution, but
-- should include in the batch all loads which occur during the flushing of the
-- "PromiseJobs" JobQueue after that same execution frame.
--
-- In order to avoid the DataLoader dispatch Job occuring before "PromiseJobs",
-- A Promise Job is created with the sole purpose of enqueuing a global Job,
-- ensuring that it always occurs after "PromiseJobs" ends.
--
-- Node.js's job queue is unique. Browsers do not have an equivalent mechanism
-- for enqueuing a job to be performed after promise microtasks and before the
-- next macrotask. For browser environments, a macrotask is used (via
-- setImmediate or setTimeout) at a potential performance penalty.
-- ROBLOX deviation START: use setTimeout instead of process tick
local enqueuePostPromiseJob = function(fn)
	setTimeout(fn)
end
-- ROBLOX deviation END

-- Private: cached resolved Promise instance

-- ROBLOX deviation START: ignore resolvedPromise
local _resolvedPromise
-- ROBLOX deviation END

-- Private: Describes a batch of requests
type Batch<K, V> = {
	hasDispatched: boolean,
	keys: Array<K>,
	callbacks: Array<{ resolve: (value: V) -> (), reject: (error_: Error) -> () }>,
	cacheHits: Array<() -> ()>?,
}
-- Private: Either returns the current batch, or creates and schedules a
-- dispatch of a new batch for the given loader.
function getCurrentBatch<K, V>(loader: DataLoader<K, V, any>): Batch<K, V>
	-- If there is an existing batch which has not yet dispatched and is within
	-- the limit of the batch size, then return it.
	local existingBatch = loader._batch
	if
		existingBatch ~= nil
		and not Boolean.toJSBoolean(existingBatch.hasDispatched)
		and #existingBatch.keys < loader._maxBatchSize
	then
		return existingBatch
	end
	-- Otherwise, create a new batch for this loader.
	local newBatch = { hasDispatched = false, keys = {}, callbacks = {} }
	-- Store it on the loader so it may be reused.
	loader._batch = newBatch
	-- Then schedule a task to dispatch this batch of requests.
	loader._batchScheduleFn(function()
		dispatchBatch(loader, newBatch)
	end)
	return newBatch
end

function dispatchBatch<K, V>(loader: DataLoader<K, V, any>, batch: Batch<K, V>)
	-- Mark this batch as having been dispatched.
	batch.hasDispatched = true
	-- If there's nothing to load, resolve any cache hits and return early.
	if #batch.keys == 0 then
		resolveCacheHits(batch)
		return
	end
	-- Call the provided batchLoadFn for this loader with the batch's keys and
	-- with the loader as the `this` context.
	local batchPromise
	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		local _ok, result, hasReturned = xpcall(function()
			batchPromise = loader._batchLoadFn(batch.keys)
		end, function(e)
			return failedDispatch(
				loader,
				batch,
				TypeError.new(
					"DataLoader must be constructed with a function which accepts "
						.. "Array<key> and returns Promise<Array<value>>, but the function "
						.. ("errored synchronously: %s."):format(tostring(e))
				)
			),
				true
		end)
		if hasReturned then
			return result
		end
	end
	-- Assert the expected response from batchLoadFn
	-- ROBLOX deviation START: use andThen for promises
	if not Boolean.toJSBoolean(batchPromise) or typeof(batchPromise["andThen"]) ~= "function" then
		-- ROBLOX deviation END
		return failedDispatch(
			loader,
			batch,
			TypeError.new(
				"DataLoader must be constructed with a function which accepts "
					.. "Array<key> and returns Promise<Array<value>>, but the function did "
					.. ("not return a Promise: %s."):format(tostring(batchPromise))
			)
		)
	end
	-- Await the resolution of the call to batchLoadFn.
	batchPromise
		:andThen(function(values)
			-- Assert the expected resolution from batchLoadFn.
			if not Boolean.toJSBoolean(isArrayLike(values)) then
				error(
					TypeError.new(
						"DataLoader must be constructed with a function which accepts "
							.. "Array<key> and returns Promise<Array<value>>, but the function did "
							.. ("not return a Promise of an Array: %s."):format(table.concat(values, ","))
					)
				)
			end
			if #values ~= #batch.keys then
				error(
					TypeError.new(
						"DataLoader must be constructed with a function which accepts "
							.. "Array<key> and returns Promise<Array<value>>, but the function did "
							.. "not return a Promise of an Array of the same length as the Array "
							.. "of keys."
							.. ("\n\nKeys:\n%s"):format(table.concat(batch.keys, ","))
							.. ("\n\nValues:\n%s"):format(table.concat(values, ","))
					)
				)
			end
			-- Resolve all cache hits in the same micro-task as freshly loaded values.
			resolveCacheHits(batch)
			-- Step through values, resolving or rejecting each Promise in the batch.
			do
				local i = 0
				while i < #batch.callbacks do
					-- ROBLOX deviation START: add 1 for array index
					local value = values[i + 1]
					if instanceof(value, Error) then
						batch.callbacks[i + 1].reject(value)
					else
						batch.callbacks[i + 1].resolve(value)
					end
					-- ROBLOX deviation END
					i += 1
				end
			end
		end)
		:catch(function(error_)
			failedDispatch(loader, batch, error_)
		end)
	return nil
end

-- Private: do not cache individual loads if the entire batch dispatch fails,
-- but still reject each request so they do not hang.
function failedDispatch<K, V>(loader: DataLoader<K, V, any>, batch: Batch<K, V>, error_)
	-- Cache hits are resolved, even though the batch failed.
	resolveCacheHits(batch)
	do
		local i = 0
		while i < #batch.keys do
			-- ROBLOX deviation START: add 1 for array index
			loader:clear(batch.keys[i + 1])
			batch.callbacks[i + 1].reject(error_)
			-- ROBLOX deviation END
			i += 1
		end
	end
end
-- Private: Resolves the Promises for any cache hits in this batch.
function resolveCacheHits(batch: Batch<any, any>)
	if Boolean.toJSBoolean(batch.cacheHits) then
		do
			local i = 0
			while i < #batch.cacheHits :: Array<() -> ()> do
				-- ROBLOX deviation START: add 1 for array index
				(batch.cacheHits :: Array<() -> ()>)[i + 1]()
				-- ROBLOX deviation END
				i += 1
			end
		end
	end
end

-- Private: given the DataLoader's options, produce a valid max batch size.
function getValidMaxBatchSize(options: Options<any, any, any>?): number
	local shouldBatch = not Boolean.toJSBoolean(options) or (options :: Options<any, any, any>).batch ~= false
	if not Boolean.toJSBoolean(shouldBatch) then
		return 1
	end
	local maxBatchSize = if Boolean.toJSBoolean(options)
		then (options :: Options<any, any, any>).maxBatchSize
		else options
	if maxBatchSize == nil then
		return math.huge
	end
	if typeof(maxBatchSize) ~= "number" or (maxBatchSize :: number) < 1 then
		error(TypeError.new(("maxBatchSize must be a positive number: %s"):format(tostring(maxBatchSize :: any))))
	end
	return maxBatchSize
end

-- Private
function getValidBatchScheduleFn(options: Options<any, any, any>?): (() -> ()) -> ()
	local batchScheduleFn = if Boolean.toJSBoolean(options)
		then (options :: Options<any, any, any>).batchScheduleFn
		else options
	if batchScheduleFn == nil then
		return enqueuePostPromiseJob
	end
	if typeof(batchScheduleFn) ~= "function" then
		error(TypeError.new(("batchScheduleFn must be a function: %s"):format(tostring(batchScheduleFn :: any))))
	end
	return batchScheduleFn
end

-- Private: given the DataLoader's options, produce a cache key function.
function getValidCacheKeyFn<K, C>(options: Options<K, any, C>?): (K) -> C
	local cacheKeyFn = if Boolean.toJSBoolean(options) then (options :: Options<K, any, C>).cacheKeyFn else options
	if cacheKeyFn == nil then
		return function(key)
			return key
		end :: any
	end
	if typeof(cacheKeyFn) ~= "function" then
		error(TypeError.new(("cacheKeyFn must be a function: %s"):format(tostring(cacheKeyFn :: any))))
	end
	return cacheKeyFn
end

-- Private: given the DataLoader's options, produce a CacheMap to be used.
function getValidCacheMap<K, V, C>(options: Options<K, V, C>?): CacheMap<C, Promise<V>> | nil
	local shouldCache = not Boolean.toJSBoolean(options) or (options :: Options<K, V, C>).cache ~= false
	if not Boolean.toJSBoolean(shouldCache) then
		return nil
	end
	local cacheMap = if Boolean.toJSBoolean(options) then (options :: Options<K, V, C>).cacheMap else options
	if cacheMap == nil then
		return Map.new()
	end
	if cacheMap ~= nil then
		local cacheFunctions = { "get", "set", "delete", "clear" }
		local missingFunctions = Array.filter(cacheFunctions, function(fnName)
			return if Boolean.toJSBoolean(cacheMap) then typeof(cacheMap[tostring(fnName)]) ~= "function" else cacheMap
		end)
		if #missingFunctions ~= 0 then
			error(TypeError.new("Custom cacheMap missing methods: " .. tostring(Array.join(missingFunctions, ", "))))
		end
	end
	return cacheMap
end

function getValidName<K, V, C>(options: Options<K, V, C>?): string?
	if Boolean.toJSBoolean(if Boolean.toJSBoolean(options) then (options :: Options<K, V, C>).name else options) then
		return (options :: Options<K, V, C>).name
	end
	return nil
end

-- Private
function isArrayLike(x: any): boolean
	-- ROBLOX deviation START: optimize isArrayLike
	return typeof(x) == "table" and (#x == 0 or (#x > 0 and x[#x] ~= nil))
	-- ROBLOX deviation END
end
exports.DataLoader = DataLoader
return exports
