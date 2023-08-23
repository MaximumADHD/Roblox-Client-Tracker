--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/inMemoryCache.ts

-- ROBLOX FIXME: remove when analyze is fixed
type InvalidAnalyzeErrorFix = any

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local instanceof = LuauPolyfill.instanceof
local NULL = require(srcWorkspace.utilities).NULL
type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
type Object = LuauPolyfill.Object
type Set<T> = LuauPolyfill.Set<T>
type Promise<T> = LuauPolyfill.Promise<T>

type Record<T, U> = { [T]: U }

local Promise = require(rootWorkspace.Promise)

local exports = {}

-- ROBLOX deviation: fixPolyfills is not necessary
-- require(script.Parent.fixPolyfills)

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode
local optimismModule = require(srcWorkspace.optimism)
type OptimisticWrapperFunction<TArgs, TResult, TKeyArgs, TCacheKey> = optimismModule.OptimisticWrapperFunction<
	TArgs,
	TResult,
	TKeyArgs,
	TCacheKey
>
local wrap = optimismModule.wrap
local equal = require(srcWorkspace.jsutils.equal)

local coreCacheModule = require(script.Parent.Parent.core.cache)
local ApolloCache = coreCacheModule.ApolloCache
type ApolloCache<TSerialized> = coreCacheModule.ApolloCache<TSerialized>
local cacheModule = require(script.Parent.Parent.core.types.Cache)
type Cache_BatchOptions<C> = cacheModule.Cache_BatchOptions<C>
type Cache_WatchOptions<Watcher> = cacheModule.Cache_WatchOptions<Watcher>
type Cache_ReadOptions<TVariables, TData> = cacheModule.Cache_ReadOptions<TVariables, TData>
type Cache_WriteOptions<TResult, TVariables> = cacheModule.Cache_WriteOptions<TResult, TVariables>
type Cache_ModifyOptions = cacheModule.Cache_ModifyOptions
type Cache_DiffOptions = cacheModule.Cache_DiffOptions
type Cache_DiffResult<T> = cacheModule.Cache_DiffResult<T>
type Cache_EvictOptions = cacheModule.Cache_EvictOptions
local coreTypesCommonModule = require(script.Parent.Parent.core.types.common)
local MissingFieldError = coreTypesCommonModule.MissingFieldError
type MissingFieldError = coreTypesCommonModule.MissingFieldError
local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
local addTypenameToDocument = utilitiesModule.addTypenameToDocument
type StoreObject = utilitiesModule.StoreObject
type Reference = utilitiesModule.Reference
-- ROBLOX deviation START: import NULL type
type NULL = utilitiesModule.NULL
-- ROBLOX deviation END
local isReference = utilitiesModule.isReference
local typesModule = require(script.Parent.types)
type ApolloReducerConfig = typesModule.ApolloReducerConfig
type NormalizedCacheObject = typesModule.NormalizedCacheObject
type NormalizedCache = typesModule.NormalizedCache
local storeReaderModule = require(script.Parent.readFromStore)
local StoreReader = storeReaderModule.StoreReader
type StoreReader = storeReaderModule.StoreReader
local storeWriterModule = require(script.Parent.writeToStore)
local StoreWriter = storeWriterModule.StoreWriter
type StoreWriter = storeWriterModule.StoreWriter
local entityStoreModule = require(script.Parent.entityStore)
type EntityStore = entityStoreModule.EntityStore
local EntityStore_Root = entityStoreModule.EntityStore_Root
local supportsResultCaching = entityStoreModule.supportsResultCaching
local reactiveVarsModule = require(script.Parent.reactiveVars)
local makeVar = reactiveVarsModule.makeVar
local forgetCache = reactiveVarsModule.forgetCache
local recallCache = reactiveVarsModule.recallCache
local policiesModule = require(script.Parent.policies)
local defaultDataIdFromObject = policiesModule.defaultDataIdFromObject
type PossibleTypesMap = policiesModule.PossibleTypesMap
local Policies = policiesModule.Policies
type Policies = policiesModule.Policies
type TypePolicies = policiesModule.TypePolicies
local hasOwn = require(script.Parent.helpers).hasOwn
local objectCanonModule = require(script.Parent["object-canon"])
local canonicalStringify = objectCanonModule.canonicalStringify
type ObjectCanon = objectCanonModule.ObjectCanon

type T_ = any
type C_ = any

-- ROBLOX FIXME: default type generic for Cache_WatchOptions, remove when available
type Watcher_ = Record<string, any>

type TVariables_ = any
type TData_ = any
type TResult_ = any

export type InMemoryCacheConfig = ApolloReducerConfig & {
	resultCaching: boolean?,
	possibleTypes: PossibleTypesMap?,
	typePolicies: TypePolicies?,
	resultCacheMaxSize: number?,
}

type BroadcastOptions = typeof({
	optimistic = (({} :: any) :: Cache_BatchOptions<InMemoryCache>).optimistic,
	onWatchUpdated = (({} :: any) :: Cache_BatchOptions<InMemoryCache>).onWatchUpdated,
})

local defaultConfig: InMemoryCacheConfig = {
	dataIdFromObject = defaultDataIdFromObject,
	addTypename = true,
	resultCaching = true,
	typePolicies = {},
}

export type InMemoryCache = ApolloCache<NormalizedCacheObject> & {
	-- Dynamically imported code can augment existing typePolicies or
	-- possibleTypes by calling cache.policies.addTypePolicies or
	-- cache.policies.addPossibletypes.
	policies: Policies,
	makeVar: typeof(makeVar),
	restore: (self: InMemoryCache, data: NormalizedCacheObject) -> InMemoryCache,
	extract: (self: InMemoryCache, optimistic: boolean?) -> NormalizedCacheObject,
	-- ROBLOX deviation START: adding explicit default types to Cache_ReadOptions, Cache_WriteOptions
	read: <T>(self: InMemoryCache, options: Cache_ReadOptions<any, any>) -> T | nil,
	write: (self: InMemoryCache, options: Cache_WriteOptions<any, any>) -> Reference | nil,
	modify: (self: InMemoryCache, options: Cache_ModifyOptions) -> boolean,
	diff: <T>(self: InMemoryCache, options: Cache_DiffOptions) -> Cache_DiffResult<T>,
	watch: (self: InMemoryCache, options: Cache_WatchOptions<Watcher_>) -> (() -> ()),
	-- ROBLOX deviation END
	gc: (
		self: InMemoryCache,
		options: {
			-- If true, also free non-essential result cache memory by bulk-releasing
			-- this.{store{Reader,Writer},maybeBroadcastWatch}. Defaults to false.
			resetResultCache: boolean?,
			-- If resetResultCache is true, this.storeReader.canon will be preserved by
			-- default, but can also be discarded by passing resetResultIdentities:true.
			-- Defaults to false.
			resetResultIdentities: boolean?,
		}?
	) -> (),
	retain: (self: InMemoryCache, rootId: string, optimistic: boolean?) -> number,
	release: (self: InMemoryCache, rootId: string, optimistic: boolean?) -> number,
	identify: (self: InMemoryCache, object: StoreObject | Reference) -> string | nil,
	evict: (self: InMemoryCache, options: Cache_EvictOptions) -> boolean,
	reset: (self: InMemoryCache) -> Promise<nil>,
	removeOptimistic: (self: InMemoryCache, idToRemove: string) -> (),
	batch: (self: InMemoryCache, options: Cache_BatchOptions<InMemoryCache>) -> (),
	performTransaction: (
		self: InMemoryCache,
		update: (cache: InMemoryCache) -> (),
		optimisticId: (string | nil)?
	) -> (),
	transformDocument: (self: InMemoryCache, document: DocumentNode) -> DocumentNode,
}

type InMemoryCachePrivate = InMemoryCache & {
	data: EntityStore,
	optimisticData: EntityStore,

	config: InMemoryCacheConfig, -- ROBLOX NOTE: protected property
	watches: Set<Cache_WatchOptions<Watcher_>>,
	addTypename: boolean,

	typenameDocumentCache: Map<DocumentNode, DocumentNode>,
	storeReader: StoreReader,
	storeWriter: StoreWriter,

	maybeBroadcastWatch: OptimisticWrapperFunction<
		Array<Cache_WatchOptions<Watcher_> | BroadcastOptions?>,
		any,
		Array<Cache_WatchOptions<Watcher_>>,
		any
	>,

	init: (self: InMemoryCachePrivate) -> (),
	resetResultCache: (self: InMemoryCachePrivate, resetResultIdentities: boolean?) -> (),
	txCount: number,
	broadcastWatches: (self: InMemoryCachePrivate, options: BroadcastOptions?) -> (), -- ROBLOX NOTE: protected method
	broadcastWatch: (self: InMemoryCachePrivate, c: Cache_WatchOptions<Watcher_>, options: BroadcastOptions?) -> (),
}

local InMemoryCache = setmetatable({}, { __index = ApolloCache })
InMemoryCache.__index = InMemoryCache
function InMemoryCache.new(config: InMemoryCacheConfig?): InMemoryCache
	local self = setmetatable(ApolloCache.new(), InMemoryCache) :: any
	if config == nil then
		config = {}
	end

	self.watches = Set.new()
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.typenameDocumentCache = Map.new(nil) :: Map<DocumentNode, DocumentNode>
	self.makeVar = makeVar
	self.txCount = 0

	self.config = Object.assign({}, defaultConfig, config)
	-- ROBLOX deviation START: remove Boolean
	self.addTypename = self.config.addTypename
	-- ROBLOX deviation END
	self.policies = Policies.new({
		cache = self,
		dataIdFromObject = self.config.dataIdFromObject,
		possibleTypes = self.config.possibleTypes,
		typePolicies = self.config.typePolicies,
	})

	self:init()

	return self :: InMemoryCache
end

function InMemoryCache:init(): ()
	-- Passing { resultCaching: false } in the InMemoryCache constructor options
	-- will completely disable dependency tracking, which will improve memory
	-- usage but worsen the performance of repeated reads.
	self.data = EntityStore_Root.new({
		policies = self.policies,
		resultCaching = self.config.resultCaching,
	})
	local rootStore = self.data

	-- When no optimistic writes are currently active, cache.optimisticData ===
	-- cache.data, so there are no additional layers on top of the actual data.
	-- When an optimistic update happens, this.optimisticData will become a
	-- linked list of EntityStore Layer objects that terminates with the
	-- original this.data cache object.
	self.optimisticData = rootStore.stump

	self:resetResultCache()
end

function InMemoryCache:resetResultCache(resetResultIdentities: boolean?): ()
	self = self :: InMemoryCachePrivate
	local previousReader = self.storeReader

	-- The StoreWriter is mostly stateless and so doesn't really need to be
	-- reset, but it does need to have its writer.storeReader reference updated,
	-- so it's simpler to update this.storeWriter as well.
	self.storeReader = StoreReader.new({
		cache = (self :: any) :: InMemoryCache,
		addTypename = self.addTypename,
		resultCacheMaxSize = self.config.resultCacheMaxSize,
		-- ROBLOX deviation START: simplify function wrap to if then else
		canon = if resetResultIdentities then nil else (if previousReader then previousReader.canon else nil),
		-- ROBLOX deviation END
	} :: InvalidAnalyzeErrorFix)
	self.storeWriter = StoreWriter.new(self, self.storeReader)

	self.maybeBroadcastWatch = wrap(function(_self, c: Cache_WatchOptions<Watcher_>, options: BroadcastOptions?): ()
		return self:broadcastWatch(c, options)
	end, {
		max = self.config.resultCacheMaxSize,
		makeCacheKey = function(_self, c: Cache_WatchOptions<Watcher_>): ...Object
			-- Return a cache key (thus enabling result caching) only if we're
			-- currently using a data store that can track cache dependencies.
			local store: EntityStore
			-- ROBLOX deviation START: remove Boolean
			if c.optimistic then
				-- ROBLOX deviation END
				store = self.optimisticData
			else
				store = self.data
			end
			if supportsResultCaching((store :: any) :: NormalizedCache) then
				local optimistic, rootId, variables = c.optimistic, c.rootId, c.variables
				return store:makeCacheKey(
					c.query,
					-- Different watches can have the same query, optimistic
					-- status, rootId, and variables, but if their callbacks are
					-- different, the (identical) result needs to be delivered to
					-- each distinct callback. The easiest way to achieve that
					-- separation is to include c.callback in the cache key for
					-- maybeBroadcastWatch calls. See issue #5733.
					c.callback,
					canonicalStringify({
						optimistic = optimistic,
						rootId = rootId,
						variables = variables,
					})
				)
			end
			return
		end,
	}, self)

	-- Since we have thrown away all the cached functions that depend on the
	-- CacheGroup dependencies maintained by EntityStore, we should also reset
	-- all CacheGroup dependency information.
	Set.new({ self.data.group, self.optimisticData.group }):forEach(function(group)
		return group:resetCaching()
	end)
end

function InMemoryCache:restore(data: NormalizedCacheObject): InMemoryCache
	self:init()
	-- Since calling this.init() discards/replaces the entire StoreReader, along
	-- with the result caches it maintains, this.data.replace(data) won't have
	-- to bother deleting the old data.
	-- ROBLOX deviation START: remove Boolean
	if data then
		-- ROBLOX deviation END
		self.data:replace(data)
	end
	return (self :: any) :: InMemoryCache
end

function InMemoryCache:extract(optimistic: boolean?): NormalizedCacheObject
	if optimistic == nil then
		optimistic = false
	end

	if optimistic then
		return self.optimisticData:extract()
	else
		return self.data:extract()
	end
end

function InMemoryCache:read<T>(options: Cache_ReadOptions<TVariables_, TData_>): T | nil
	-- Since read returns data or null, without any additional metadata
	-- about whether/where there might have been missing fields, the
	-- default behavior cannot be returnPartialData = true (like it is
	-- for the diff method), since defaulting to true would violate the
	-- integrity of the T in the return type. However, partial data may
	-- be useful in some cases, so returnPartialData:true may be
	-- specified explicitly.
	local returnPartialData
	if options.returnPartialData == nil then
		returnPartialData = false
	else
		returnPartialData = options.returnPartialData
	end

	local ok, result = pcall(function()
		local ref = self.storeReader:diffQueryAgainstStore(Object.assign({}, options, {
			store = options.optimistic and self.optimisticData or self.data,
			config = self.config,
			returnPartialData = returnPartialData,
		})).result
		-- ROBLOX deviation START: remove Boolean
		return ref or NULL
		-- ROBLOX deviation END
	end)
	if not ok then
		local e = result
		if instanceof(e, MissingFieldError) then
			-- Swallow MissingFieldError and return null, so callers do not
			-- need to worry about catching "normal" exceptions resulting from
			-- incomplete cache data. Unexpected errors will be re-thrown. If
			-- you need more information about which fields were missing, use
			-- cache.diff instead, and examine diffResult.missing.
			return NULL
		end
		error(e)
	end
	return result
end

function InMemoryCache:write(options: Cache_WriteOptions<TResult_, TVariables_>): Reference | nil
	self = self :: InMemoryCachePrivate
	local ok, result = pcall(function()
		self.txCount += 1
		return self.storeWriter:writeToStore((self.data :: any) :: NormalizedCache, options)
	end)
	do
		self.txCount -= 1
		-- ROBLOX deviation START: remove Boolean
		if self.txCount == 0 and options.broadcast ~= false then
			-- ROBLOX deviation END
			self:broadcastWatches()
		end
	end
	if not ok then
		error(result)
	end
	return result
end

function InMemoryCache:modify(options: Cache_ModifyOptions): boolean
	self = self :: InMemoryCachePrivate
	-- ROBLOX deviation START: remove Boolean
	if hasOwn(options, "id") and not options.id then
		-- ROBLOX deviation END
		-- To my knowledge, TypeScript does not currently provide a way to
		-- enforce that an optional property?:type must *not* be undefined
		-- when present. That ability would be useful here, because we want
		-- options.id to default to ROOT_QUERY only when no options.id was
		-- provided. If the caller attempts to pass options.id with a
		-- falsy/undefined value (perhaps because cache.identify failed), we
		-- should not assume the goal was to modify the ROOT_QUERY object.
		-- We could throw, but it seems natural to return false to indicate
		-- that nothing was modified.
		return false
	end
	local store
	-- ROBLOX deviation START: remove Boolean
	if options.optimistic then
		-- ROBLOX deviation END
		-- Defaults to false.
		store = self.optimisticData
	else
		store = self.data
	end
	local ok, result = pcall(function()
		self.txCount += 1
		-- ROBLOX deviation START: remove Boolean
		return store:modify(options.id or "ROOT_QUERY", options.fields)
		-- ROBLOX deviation END
	end)
	do
		self.txCount -= 1
		-- ROBLOX deviation START: remove Boolean
		if self.txCount == 0 and options.broadcast ~= false then
			-- ROBLOX deviation END
			self:broadcastWatches()
		end
	end
	if not ok then
		error(result)
	end
	return result
end

function InMemoryCache:diff(options: Cache_DiffOptions): Cache_DiffResult<T_>
	return self.storeReader:diffQueryAgainstStore(Object.assign({}, options, {
		store = options.optimistic and self.optimisticData or self.data,
		-- ROBLOX deviation START: remove Boolean
		rootId = options.id or "ROOT_QUERY",
		-- ROBLOX deviation END
		config = self.config,
	}))
end

function InMemoryCache:watch(watch: Cache_WatchOptions<Watcher_>): () -> ()
	self = self :: InMemoryCachePrivate
	-- ROBLOX deviation START: remove Boolean
	if self.watches.size == 0 then
		-- ROBLOX deviation END
		-- In case we previously called forgetCache(this) because
		-- this.watches became empty (see below), reattach this cache to any
		-- reactive variables on which it previously depended. It might seem
		-- paradoxical that we're able to recall something we supposedly
		-- forgot, but the point of calling forgetCache(this) is to silence
		-- useless broadcasts while this.watches is empty, and to allow the
		-- cache to be garbage collected. If, however, we manage to call
		-- recallCache(this) here, this cache object must not have been
		-- garbage collected yet, and should resume receiving updates from
		-- reactive variables, now that it has a watcher to notify.
		recallCache(self)
	end
	self.watches:add(watch)
	if watch.immediate then
		self:maybeBroadcastWatch(watch)
	end
	return function()
		-- Once we remove the last watch from this.watches, cache.broadcastWatches
		-- no longer does anything, so we preemptively tell the reactive variable
		-- system to exclude this cache from future broadcasts.
		-- ROBLOX deviation START: remove Boolean
		if self.watches:delete(watch) and self.watches.size == 0 then
			-- ROBLOX deviation END
			forgetCache(self)
		end
		-- Remove this watch from the LRU cache managed by the
		-- maybeBroadcastWatch OptimisticWrapperFunction, to prevent memory
		-- leaks involving the closure of watch.callback.
		self.maybeBroadcastWatch:forget(watch)
	end
end

function InMemoryCache:gc(
	options: {
		-- If true, also free non-essential result cache memory by bulk-releasing
		-- this.{store{Reader,Writer},maybeBroadcastWatch}. Defaults to false.
		resetResultCache: boolean?,
		-- If resetResultCache is true, this.storeReader.canon will be preserved by
		-- default, but can also be discarded by passing resetResultIdentities:true.
		-- Defaults to false.
		resetResultIdentities: boolean?,
	}?
): ()
	canonicalStringify:reset()
	local ids = self.optimisticData:gc()
	-- ROBLOX deviation START: remove Boolean
	if options and self.txCount == 0 then
		-- ROBLOX deviation END
		if options.resetResultCache then
			self:resetResultCache(options.resetResultIdentities)
		elseif options.resetResultIdentities then
			self.storeReader:resetCanon()
		end
	end
	return ids
end

-- Call this method to ensure the given root ID remains in the cache after
-- garbage collection, along with its transitive child entities. Note that
-- the cache automatically retains all directly written entities. By default,
-- the retainment persists after optimistic updates are removed. Pass true
-- for the optimistic argument if you would prefer for the retainment to be
-- discarded when the top-most optimistic layer is removed. Returns the
-- resulting (non-negative) retainment count.
function InMemoryCache:retain(rootId: string, optimistic: boolean?): number
	-- ROBLOX deviation START: remove Boolean
	if optimistic then
		-- ROBLOX deviation END
		return self.optimisticData:retain(rootId)
	else
		return self.data:retain(rootId)
	end
end

-- Call this method to undo the effect of the retain method, above. Once the
-- retainment count falls to zero, the given ID will no longer be preserved
-- during garbage collection, though it may still be preserved by other safe
-- entities that refer to it. Returns the resulting (non-negative) retainment
-- count, in case that's useful.
function InMemoryCache:release(rootId: string, optimistic: boolean?): number
	-- ROBLOX deviation START: remove Boolean
	if optimistic then
		-- ROBLOX deviation END
		return self.optimisticData:release(rootId)
	else
		return self.data:release(rootId)
	end
end

-- Returns the canonical ID for a given StoreObject, obeying typePolicies
-- and keyFields (and dataIdFromObject, if you still use that). At minimum,
-- the object must contain a __typename and any primary key fields required
-- to identify entities of that type. If you pass a query result object, be
-- sure that none of the primary key fields have been renamed by aliasing.
-- If you pass a Reference object, its __ref ID string will be returned.
function InMemoryCache:identify(object: StoreObject | Reference): string | nil
	if isReference(object) then
		return (object :: Reference).__ref
	else
		return self.policies:identify(object)[1]
	end
end

function InMemoryCache:evict(options: Cache_EvictOptions): boolean
	self = self :: InMemoryCachePrivate
	-- ROBLOX deviation START: remove Boolean
	if not options.id then
		-- ROBLOX deviation END
		if hasOwn(options, "id") then
			-- See comment in modify method about why we return false when
			-- options.id exists but is falsy/undefined.
			return false
		end
		-- ROBLOX deviation START: replace spread with table.clone
		options = Object.assign(table.clone(options), { id = "ROOT_QUERY" })
		-- ROBLOX deviation END
	end

	local ok, result = pcall(function()
		-- It's unlikely that the eviction will end up invoking any other
		-- cache update operations while it's running, but {in,de}crementing
		-- this.txCount still seems like a good idea, for uniformity with
		-- the other update methods.
		self.txCount += 1
		return self.optimisticData:evict(options)
	end)
	do
		self.txCount -= 1
		-- ROBLOX deviation START: remove Boolean
		if self.txCount == 0 and options.broadcast ~= false then
			-- ROBLOX deviation END
			self:broadcastWatches()
		end
	end
	if not ok then
		error(result)
	end
	return result
end

function InMemoryCache:reset(): Promise<nil>
	self:init()
	self:broadcastWatches()
	canonicalStringify:reset()
	return Promise.delay(0)
end

function InMemoryCache:removeOptimistic(idToRemove: string): ()
	local newOptimisticData = self.optimisticData:removeLayer(idToRemove)
	if newOptimisticData ~= self.optimisticData then
		self.optimisticData = newOptimisticData
		self:broadcastWatches()
	end
end

function InMemoryCache:batch(options: Cache_BatchOptions<InMemoryCache>)
	self = self :: InMemoryCachePrivate
	local optimistic, removeOptimistic, onWatchUpdated =
		options.optimistic == nil and true or options.optimistic, options.removeOptimistic, options.onWatchUpdated

	local function perform(layer: EntityStore?)
		local data, optimisticData = self.data, self.optimisticData
		self.txCount += 1
		if layer then
			self.optimisticData = layer
			self.data = self.optimisticData
		end

		-- ROBLOX FIXME Luau: options.update doesnt return any value. pcall expects value to be returned
		local ok, result = pcall(options.update :: any, options, self)
		do
			self.txCount -= 1
			self.data = data
			self.optimisticData = optimisticData
		end
		if not ok then
			error(result)
		end
	end

	local alreadyDirty = Set.new()

	-- ROBLOX deviation START: remove Boolean
	if onWatchUpdated and self.txCount == 0 then
		-- ROBLOX deviation END
		-- If an options.onWatchUpdated callback is provided, we want to call it
		-- with only the Cache.WatchOptions objects affected by options.update,
		-- but there might be dirty watchers already waiting to be broadcast that
		-- have nothing to do with the update. To prevent including those watchers
		-- in the post-update broadcast, we perform this initial broadcast to
		-- collect the dirty watchers, so we can re-dirty them later, after the
		-- post-update broadcast, allowing them to receive their pending
		-- broadcasts the next time broadcastWatches is called, just as they would
		-- if we never called cache.batch.
		-- ROBLOX deviation START: use table.clone to avoid iteration
		self:broadcastWatches(Object.assign(table.clone(options), {
			-- ROBLOX deviation END
			onWatchUpdated = function(_self, watch)
				alreadyDirty:add(watch)
				return false
			end,
		}))
	end

	if typeof(optimistic) == "string" then
		-- Note that there can be multiple layers with the same optimistic ID.
		-- When removeOptimistic(id) is called for that id, all matching layers
		-- will be removed, and the remaining layers will be reapplied.
		self.optimisticData = self.optimisticData:addLayer(optimistic, perform)
	elseif optimistic == false then
		-- Ensure both this.data and this.optimisticData refer to the root
		-- (non-optimistic) layer of the cache during the update. Note that
		-- this.data could be a Layer if we are currently executing an optimistic
		-- update function, but otherwise will always be an EntityStore.Root
		-- instance.
		perform(self.data)
	else
		-- Otherwise, leave this.data and this.optimisticData unchanged and run
		-- the update with broadcast batching.
		perform()
	end

	if typeof(removeOptimistic) == "string" then
		self.optimisticData = self.optimisticData:removeLayer(removeOptimistic)
	end

	-- Note: if this.txCount > 0, then alreadyDirty.size === 0, so this code
	-- takes the else branch and calls this.broadcastWatches(options), which
	-- does nothing when this.txCount > 0.
	-- ROBLOX deviation START: remove Boolean
	if onWatchUpdated and alreadyDirty.size > 0 then
		self:broadcastWatches(Object.assign(table.clone(options), {
			-- ROBLOX deviation END
			onWatchUpdated = function(self, watch, diff)
				local result = onWatchUpdated(self, watch, diff)
				if result ~= false then
					-- Since onWatchUpdated did not return false, this diff is
					-- about to be broadcast to watch.callback, so we don't need
					-- to re-dirty it with the other alreadyDirty watches below.
					alreadyDirty:delete(watch)
				end
				return result
			end,
		}))
		-- Silently re-dirty any watches that were already dirty before the update
		-- was performed, and were not broadcast just now.
		-- ROBLOX deviation START: remove Boolean
		if alreadyDirty.size > 0 then
			-- ROBLOX deviation END
			alreadyDirty:forEach(function(watch)
				return self.maybeBroadcastWatch:dirty(watch)
			end)
		end
	else
		-- If alreadyDirty is empty or we don't have an onWatchUpdated
		-- function, we don't need to go to the trouble of wrapping
		-- options.onWatchUpdated.
		self:broadcastWatches((options :: any) :: BroadcastOptions)
	end
end

-- ROBLOX deviation START: performTransaction can be passed in string, NULL, or nil
--[[
	ROBLOX comment: in upstream, this function has different behaviors for when it is passed null
	and when it is passed undefined. In most cases, this function should get passed undefined. This
	means that optimistic is set to true. For lua, there is no distinction between nil and undefined,
	so optimistic gets set to false in most cases, which results in the wrong entityStore getting set.
	In that branch, we perform a diff on the incorrect entityStore, and then we later redo the diff for
	the correct entityStore. The cache still ends up in the correct state, but we do about twice the work.
]]
function InMemoryCache:performTransaction(update: (cache: InMemoryCache) -> any, optimisticId: (string | NULL)?): ()
	-- ROBLOX deviation END
	return self:batch({
		update = function(_self, ...)
			return update(...)
		end,
		-- ROBLOX deviation START: remove Boolean, compare to NULL instead of nil
		optimistic = optimisticId or optimisticId ~= NULL,
		-- ROBLOX deviation END
	})
end

function InMemoryCache:transformDocument(document: DocumentNode): DocumentNode
	if self.addTypename then
		local result = self.typenameDocumentCache:get(document)
		if not result then
			result = addTypenameToDocument(document)
			self.typenameDocumentCache:set(document, result)
			-- If someone calls transformDocument and then mistakenly passes the
			-- result back into an API that also calls transformDocument, make sure
			-- we don't keep creating new query documents.
			self.typenameDocumentCache:set(result, result)
		end
		return result
	end
	return document
end

function InMemoryCache:broadcastWatches(options: BroadcastOptions?): ()
	-- ROBLOX deviation START: remove Boolean
	if self.txCount == 0 then
		self.watches:forEach(function(c)
			return self:maybeBroadcastWatch(c, options)
		end)
	end
end

-- This method is wrapped by maybeBroadcastWatch, which is called by
-- broadcastWatches, so that we compute and broadcast results only when
-- the data that would be broadcast might have changed. It would be
-- simpler to check for changes after recomputing a result but before
-- broadcasting it, but this wrapping approach allows us to skip both
-- the recomputation and the broadcast, in most cases.
function InMemoryCache:broadcastWatch(c: Cache_WatchOptions<Watcher_>, options: BroadcastOptions?): ()
	self = self :: InMemoryCachePrivate
	local lastDiff = c.lastDiff
	local diff = self:diff({ query = c.query, variables = c.variables, optimistic = c.optimistic })
	if options then
		if c.optimistic and typeof(options.optimistic) == "string" then
			diff.fromOptimisticTransaction = true
		end

		-- ROBLOX deviation: extracting into variable to help Luau analyzer
		local onWatchUpdated = options.onWatchUpdated
		if onWatchUpdated and onWatchUpdated(self, c, diff, lastDiff) == false then
			-- Returning false from the onWatchUpdated callback will prevent
			-- calling c.callback(diff) for this watcher.
			return
		end
	end

	if not lastDiff or not equal(lastDiff.result, diff.result) then
		c.lastDiff = diff
		c:callback(c.lastDiff :: Cache_DiffResult<any>, lastDiff)
	end
end

exports.InMemoryCache = InMemoryCache

return exports
