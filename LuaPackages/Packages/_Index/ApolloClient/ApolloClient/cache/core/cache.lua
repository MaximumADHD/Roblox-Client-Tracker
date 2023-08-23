--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/core/cache.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object
local Boolean = LuauPolyfill.Boolean

type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
type Record<T, U> = { [T]: U }

--[[
  ROBLOX deviation: no generic params for functions are supported.
  T_, TData_, TVariables_, TResult_, TSerialized_, QueryType_, FragmentType_
  are placeholders for generic
  T, TData, TVariables, TResult, TSerialized, QueryType, FragmentType_ param
]]
type T_ = any
type TData_ = any
type TVariables_ = any
type TResult_ = any
type TSerialized_ = any
type QueryType_ = any
type FragmentType_ = any

local exports = {}

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode
local wrap = require(srcWorkspace.optimism).wrap
local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
type StoreObject = utilitiesModule.StoreObject
type Reference = utilitiesModule.Reference
local getFragmentQueryDocument = utilitiesModule.getFragmentQueryDocument
local dataProxyModule = require(script.Parent.types.DataProxy)
type DataProxy = dataProxyModule.DataProxy
local cacheModule = require(script.Parent.types.Cache)
type Cache_ReadOptions<TVariables, TData> = cacheModule.Cache_ReadOptions<TVariables, TData>
type Cache_WriteOptions<TResult, TVariables> = cacheModule.Cache_WriteOptions<TResult, TVariables>
type Cache_DiffOptions = cacheModule.Cache_DiffOptions
type Cache_WatchOptions<Watcher> = cacheModule.Cache_WatchOptions<Watcher>
type Cache_DiffResult<T> = cacheModule.Cache_DiffResult<T>
type Cache_EvictOptions = cacheModule.Cache_EvictOptions
type Cache_BatchOptions<C> = cacheModule.Cache_BatchOptions<C>
type Cache_ModifyOptions = cacheModule.Cache_ModifyOptions
type Cache_ReadQueryOptions<TData, TVariables> = cacheModule.Cache_ReadQueryOptions<TData, TVariables>
type Cache_ReadFragmentOptions<TData, TVariables> = cacheModule.Cache_ReadFragmentOptions<TData, TVariables>
type Cache_WriteQueryOptions<TData, TVariables> = cacheModule.Cache_WriteQueryOptions<TData, TVariables>
type Cache_WriteFragmentOptions<TData, TVariables> = cacheModule.Cache_WriteFragmentOptions<TData, TVariables>

-- ROBLOX FIXME: this is a workaround for the 'recursive type with different args' error, remove this once that's fixed
export type Transaction<T> = (c: _ApolloCache) -> ()
type _Transaction = (c: _ApolloCache) -> ()
type _ApolloCache = DataProxy & {
	-- required to implement
	-- core API
	-- ROBLOX TODO: supply default type args
	read: <T, TVariables>(self: _ApolloCache, query: Cache_ReadOptions<TVariables, T>) -> T | nil,
	write: <TResult, TVariables>(self: _ApolloCache, write: Cache_WriteOptions<TResult, TVariables>) -> Reference | nil,
	diff: <T>(self: _ApolloCache, query: Cache_DiffOptions) -> Cache_DiffResult<T>,
	watch: (self: _ApolloCache, watch: Cache_WatchOptions<Record<string, any>>) -> (),
	reset: (self: _ApolloCache) -> Promise<nil>,
	evict: (self: _ApolloCache, options: Cache_EvictOptions) -> boolean,
	restore: (self: _ApolloCache, serializedState: TSerialized_) -> _ApolloCache,
	extract: (self: _ApolloCache, optimistic: boolean?) -> any,
	removeOptimistic: (self: _ApolloCache, id: string) -> (),
	batch: (self: _ApolloCache, options: Cache_BatchOptions<_ApolloCache>) -> (),
	performTransaction: (self: _ApolloCache, transaction: _Transaction, optimisticId: string) -> (),
	recordOptimisticTransaction: (self: _ApolloCache, transaction: _Transaction, optimisticId: string) -> (),
	transformDocument: (self: _ApolloCache, document: DocumentNode) -> DocumentNode,
	identify: (self: _ApolloCache, object: StoreObject | Reference) -> string | nil,
	gc: (self: _ApolloCache) -> Array<string>,
	modify: (self: _ApolloCache, options: Cache_ModifyOptions) -> boolean,
	transformForLink: (self: _ApolloCache, document: DocumentNode) -> DocumentNode,
	readQuery: <QueryType, TVariables>(
		self: _ApolloCache,
		options: Cache_ReadQueryOptions<QueryType, TVariables>,
		optimistic: boolean?
	) -> QueryType | nil,
	readFragment: <FragmentType, TVariables>(
		self: _ApolloCache,
		options: Cache_ReadFragmentOptions<FragmentType, TVariables>,
		optimistic: boolean?
	) -> FragmentType | nil,
	writeQuery: <TData, TVariables>(self: _ApolloCache, Cache_WriteQueryOptions<TData, TVariables>) -> Reference | nil,
	writeFragment: <TData, TVariables>(
		self: _ApolloCache,
		Cache_WriteFragmentOptions<TData, TVariables>
	) -> Reference | nil,
}

export type ApolloCache<TSerialized> = DataProxy & {
	-- required to implement
	-- core API
	read: <T, TVariables>(self: ApolloCache<TSerialized>, query: Cache_ReadOptions<TVariables, T>) -> T | nil,
	write: <TResult, TVariables>(
		self: ApolloCache<TSerialized>,
		write: Cache_WriteOptions<TResult, TVariables>
	) -> Reference | nil,
	diff: <T>(self: ApolloCache<TSerialized>, query: Cache_DiffOptions) -> Cache_DiffResult<T>,
	watch: (self: ApolloCache<TSerialized>, watch: Cache_WatchOptions<Record<string, any>>) -> (() -> ()),
	reset: (self: ApolloCache<TSerialized>) -> Promise<nil>,

	-- Remove whole objects from the cache by passing just options.id, or
	-- specific fields by passing options.field and/or options.args. If no
	-- options.args are provided, all fields matching options.field (even
	-- those with arguments) will be removed. Returns true iff any data was
	-- removed from the cache.
	evict: (self: ApolloCache<TSerialized>, options: Cache_EvictOptions) -> boolean,

	-- intializer / offline / ssr API
	--[[*
		* Replaces existing state in the cache (if any) with the values expressed by
		* `serializedState`.
		*
		* Called when hydrating a cache (server side rendering, or offline storage),
		* and also (potentially) during hot reloads.
	]]
	-- ROBLOX FIXME: go back to hi-fi types once recursive issue is fixed:
	-- restore: (self: ApolloCache<TSerialized>, serializedState: TSerialized) -> ApolloCache<TSerialized>,
	restore: (self: ApolloCache<TSerialized>, serializedState: TSerialized_) -> _ApolloCache,

	--[[*
		* Exposes the cache's complete state, in a serializable format for later restoration.
	]]
	extract: (self: ApolloCache<TSerialized>, optimistic: boolean?) -> TSerialized,

	-- Optimistic API

	removeOptimistic: (self: ApolloCache<TSerialized>, id: string) -> (),

	-- Transactional API

	-- The batch method is intended to replace/subsume both performTransaction
	-- and recordOptimisticTransaction, but performTransaction came first, so we
	-- provide a default batch implementation that's just another way of calling
	-- performTransaction. Subclasses of ApolloCache (such as InMemoryCache) can
	-- override the batch method to do more interesting things with its options.
	-- ROBLOX FIXME: go back to hi-fi types once recursive issue is fixed:
	-- 	batch: (self: ApolloCache<TSerialized>, options: Cache_BatchOptions<ApolloCache<TSerialized>>) -> (),
	-- 	performTransaction: (
	-- 		self: ApolloCache<TSerialized>,
	-- 		transaction: Transaction<TSerialized>,
	-- 		optimisticId: string
	-- 	) -> (),
	-- 	recordOptimisticTransaction: (
	-- 		self: ApolloCache<TSerialized>,
	-- 		transaction: Transaction<TSerialized>,
	batch: (self: ApolloCache<TSerialized>, options: Cache_BatchOptions<_ApolloCache>) -> (),
	performTransaction: (self: ApolloCache<TSerialized>, transaction: _Transaction, optimisticId: string) -> (),
	recordOptimisticTransaction: (
		self: ApolloCache<TSerialized>,
		transaction: _Transaction,
		optimisticId: string
	) -> (),

	-- Optional API

	transformDocument: (self: ApolloCache<TSerialized>, document: DocumentNode) -> DocumentNode,
	identify: (self: ApolloCache<TSerialized>, object: StoreObject | Reference) -> string | nil,
	gc: (self: ApolloCache<TSerialized>) -> Array<string>,
	modify: (self: ApolloCache<TSerialized>, options: Cache_ModifyOptions) -> boolean,

	-- Experimental API

	transformForLink: (self: ApolloCache<TSerialized>, document: DocumentNode) -> DocumentNode,

	-- DataProxy API
	--[[*
		*
		* @param options
		* @param optimistic
	]]
	-- ROBLOX FIXME: missing default generic types
	readQuery: <QueryType, TVariables>(
		self: ApolloCache<TSerialized>,
		options: Cache_ReadQueryOptions<QueryType, TVariables>,
		optimistic: boolean?
	) -> QueryType | nil,
	-- ROBLOX FIXME: missing default generic types
	readFragment: <FragmentType, TVariables>(
		self: ApolloCache<TSerialized>,
		options: Cache_ReadFragmentOptions<FragmentType, TVariables>,
		optimistic: boolean?
	) -> FragmentType | nil,
	-- ROBLOX FIXME: missing default generic types
	writeQuery: <TData, TVariables>(
		self: ApolloCache<TSerialized>,
		Cache_WriteQueryOptions<TData, TVariables>
	) -> Reference | nil,
	-- ROBLOX FIXME: missing default generic types
	writeFragment: <TData, TVariables>(
		self: ApolloCache<TSerialized>,
		Cache_WriteFragmentOptions<TData, TVariables>
	) -> Reference | nil,
}
local ApolloCache = {}
ApolloCache.__index = ApolloCache
function ApolloCache.new<TSerialized>(): ApolloCache<TSerialized>
	local self = setmetatable({}, ApolloCache)

	-- Make sure we compute the same (===) fragment query document every
	-- time we receive the same fragment in readFragment.
	self.getFragmentDoc = wrap(getFragmentQueryDocument)

	return (self :: any) :: ApolloCache<TSerialized>
end

function ApolloCache:read(query: Cache_ReadOptions<TVariables_, T_>): T_ | nil
	error("not implemented abstract method")
end
function ApolloCache:write(write: Cache_WriteOptions<TResult_, TVariables_>): Reference | nil
	error("not implemented abstract method")
end
function ApolloCache:diff(query: Cache_DiffOptions): Cache_DiffResult<T_>
	error("not implemented abstract method")
end
function ApolloCache:watch(watch: Cache_WatchOptions<Record<string, any>>): () -> ()
	error("not implemented abstract method")
end
function ApolloCache:reset(): Promise<any>
	error("not implemented abstract method")
end

function ApolloCache:evict(options: Cache_EvictOptions): boolean
	error("not implemented abstract method")
end

function ApolloCache:restore(serializedState: TSerialized_): ApolloCache<TSerialized_>
	error("not implemented abstract method")
end

function ApolloCache:extract(optimistic: boolean?): TSerialized_
	error("not implemented abstract method")
end

function ApolloCache:removeOptimistic(id: string): ()
	error("not implemented abstract method")
end

function ApolloCache:batch(options: Cache_BatchOptions<ApolloCache<any>>): ()
	local optimisticId: string | nil
	if typeof(options.optimistic) == "string" then
		optimisticId = options.optimistic
	else
		if options.optimistic == false then
			optimisticId = nil -- ROBLOX CHECK: this is null upstream
		else
			optimisticId = nil
		end
	end
	self:performTransaction(options.update, optimisticId)
end

function ApolloCache:performTransaction(
	transaction: _Transaction,
	-- Although subclasses may implement recordOptimisticTransaction
	-- however they choose, the default implementation simply calls
	-- performTransaction with a string as the second argument, allowing
	-- performTransaction to handle both optimistic and non-optimistic
	-- (broadcast-batching) transactions. Passing null for optimisticId is
	-- also allowed, and indicates that performTransaction should apply
	-- the transaction non-optimistically (ignoring optimistic data).
	optimisticId: (string | nil)?
): ()
	error("not implemented abstract method")
end

function ApolloCache:recordOptimisticTransaction(transaction: _Transaction, optimisticId: string): ()
	self:performTransaction(transaction, optimisticId)
end

function ApolloCache:transformDocument(document: DocumentNode): DocumentNode
	return document
end

function ApolloCache:identify(object: StoreObject | Reference): string | nil
	return
end

function ApolloCache:gc(): Array<string>
	return {}
end

function ApolloCache:modify(options: Cache_ModifyOptions): boolean
	return false
end

function ApolloCache:transformForLink(document: DocumentNode): DocumentNode
	return document
end

function ApolloCache:readQuery(
	options: Cache_ReadQueryOptions<QueryType_, TVariables_>,
	optimistic: boolean?
): QueryType_ | nil
	if optimistic == nil then
		-- ROBLOX deviation START: remove Boolean
		optimistic = not not options.optimistic
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: use table.clone
	return self:read(Object.assign(table.clone(options), {
		-- ROBLOX deviation END
		-- ROBLOX deviation START: remove Boolean
		rootId = Boolean.toJSBoolean(options.id) and options.id or "ROOT_QUERY",
		-- ROBLOX deviation END
		optimistic = optimistic,
	}))
end

function ApolloCache:readFragment(
	options: Cache_ReadFragmentOptions<FragmentType_, TVariables_>,
	optimistic: boolean?
): FragmentType_ | nil
	if optimistic == nil then
		-- ROBLOX deviation START: remove Boolean
		optimistic = not not options.optimistic
		-- ROBLOX deviation END
	end
	return self:read(Object.assign({}, options, {
		-- ROBLOX deviation START: getFragmentDoc does not take self argument
		query = self.getFragmentDoc(options.fragment, options.fragmentName),
		-- ROBLOX deviation END
		rootId = options.id,
		optimistic = optimistic,
	}))
end

function ApolloCache:writeQuery(ref): Reference | nil
	-- ROBLOX deviation START: use table.clone
	local id, data, options =
		ref.id, ref.data, Object.assign(table.clone(ref), { id = Object.None, data = Object.None })
	-- ROBLOX deviation END
	return self:write(
		-- ROBLOX deviation START: remove Boolean
		Object.assign(options, { dataId = id or "ROOT_QUERY", result = data })
		-- ROBLOX deviation END
	)
end

function ApolloCache:writeFragment(ref): Reference | nil
	-- ROBLOX deviation START: use table.clone
	local id, data, fragment, fragmentName, options =
		ref.id,
		ref.data,
		ref.fragment,
		ref.fragmentName,
		Object.assign(
			table.clone(ref),
			{ id = Object.None, data = Object.None, fragment = Object.None, fragmentName = Object.None }
		)
	-- ROBLOX deviation END
	return self:write(
		-- ROBLOX deviation START: getFragmentDoc does not take self argument
		Object.assign(options, { query = self.getFragmentDoc(fragment, fragmentName), dataId = id, result = data })
		-- ROBLOX deviation END
	)
end

exports.ApolloCache = ApolloCache

return exports
