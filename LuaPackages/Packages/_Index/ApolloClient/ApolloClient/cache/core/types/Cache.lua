--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/core/types/Cache.ts

local srcWorkspace = script.Parent.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

-- ROBLOX deviation: importing DocumentNode and TypedDocumentNode now because we needed to redefine type DataProxy_Query due to Omit, which depended on them
local GraphQL = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQL.DocumentNode
local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>

-- ROBLOX deviation: no support for typescript namespaces, importing types as needed from DataProxy module
local DataProxyModule = require(script.Parent.DataProxy)
type DataProxy_DiffResult<T> = DataProxyModule.DataProxy_DiffResult<T>
type DataProxy_Query<TVariables, TData> = DataProxyModule.DataProxy_Query<TVariables, TData>
type DataProxy_ReadQueryOptions<TData, TVariables> = DataProxyModule.DataProxy_ReadQueryOptions<TData, TVariables>
type DataProxy_ReadFragmentOptions<TData, TVariables> = DataProxyModule.DataProxy_ReadFragmentOptions<TData, TVariables>
type DataProxy_WriteQueryOptions<TData, TVariables> = DataProxyModule.DataProxy_WriteQueryOptions<TData, TVariables>
type DataProxy_WriteFragmentOptions<TData, TVariables> = DataProxyModule.DataProxy_WriteFragmentOptions<
	TData,
	TVariables
>
type DataProxy_Fragment<TData, TVariables> = DataProxyModule.DataProxy_Fragment<TData, TVariables>

local commonModule = require(script.Parent.common)
type Modifier<T> = commonModule.Modifier<T>
type Modifiers = commonModule.Modifiers

-- ROBLOX deviation: no need for ApolloCache type since its used as a generic type constraint, unavailible in luau
-- type ApolloCache = require(script.Parent.Parent.cache).ApolloCache

local exports = {}

-- ROBLOX deviation: defining Record type from TypeScript
type Record<T, U> = { [T]: U }

export type Cache_DiffResult<T> = DataProxy_DiffResult<T>

export type Cache_WatchCallback = (self: any, diff: Cache_DiffResult<any>, lastDiff: Cache_DiffResult<any>?) -> ()

export type Cache_ReadOptions<TVariables = any, TData = any> = DataProxy_Query<TVariables, TData> & {
	rootId: string?,
	previousResult: any?,
	optimistic: boolean,
	returnPartialData: boolean?,
	canonizeResults: boolean?,
}

-- ROBLOX deviation: defining Type returned from using Omit utility type
type Omit_id_from_DataProxy_Query<TVariables, TData> = {
	query: DocumentNode | TypedDocumentNode<TData, TVariables>,
	variables: TVariables?,
}

-- ROBLOX deviation: defining Type returned from using Omit utility type
type Omit_data_from_DataProxy_WriteOptions<TResult> = { broadcast: boolean?, overwrite: boolean? }

export type Cache_WriteOptions<TResult = any, TVariables = any> =
	Omit_id_from_DataProxy_Query<TVariables, TResult>
	& Omit_data_from_DataProxy_WriteOptions<TResult>
	& { dataId: string?, result: TResult }

-- ROBLOX deviation START: add explicit default types for Cache_ReadOptions
export type Cache_DiffOptions = Cache_ReadOptions<any, any> & {
	-- The DiffOptions interface is currently just an alias for
	-- ReadOptions, though DiffOptions used to be responsible for
	-- declaring the returnPartialData option.
}
-- ROBLOX deviation END

-- ROBLOX deviation: no generic type parameter declaration with constraints in luau
-- export interface WatchOptions<
--     Watcher extends object = Record<string, any>
-- >
export type Cache_WatchOptions<Watcher> = Cache_ReadOptions<any, any> & {
	watcher: Watcher?,
	immediate: boolean?,
	callback: Cache_WatchCallback,
	lastDiff: Cache_DiffResult<any>?,
}

export type Cache_EvictOptions = { id: string?, fieldName: string?, args: Record<string, any>?, broadcast: boolean? }

export type Cache_ModifyOptions = {
	id: string?,
	fields: Modifiers | Modifier<any>,
	optimistic: boolean?,
	broadcast: boolean?,
}

-- ROBLOX deviation: no generic type parameter declaration with constraints in luau
-- export interface BatchOptions<C extends ApolloCache<any>>
export type Cache_BatchOptions<C> = {
	-- Same as the first parameter of performTransaction, except the cache
	-- argument will have the subclass type rather than ApolloCache.
	update: (_self: any, cache: C) -> (),

	-- Passing a string for this option creates a new optimistic layer, with the
	-- given string as its layer.id, just like passing a string for the
	-- optimisticId parameter of performTransaction. Passing true is the same as
	-- passing undefined to performTransaction (running the batch operation
	-- against the current top layer of the cache), and passing false is the
	-- same as passing null (running the operation against root/non-optimistic
	-- cache data).
	optimistic: string | boolean,

	-- If you specify the ID of an optimistic layer using this option, that
	-- layer will be removed as part of the batch transaction, triggering at
	-- most one broadcast for both the transaction and the removal of the layer.
	-- Note: this option is needed because calling cache.removeOptimistic during
	-- the transaction function may not be not safe, since any modifications to
	-- cache layers may be discarded after the transaction finishes.
	removeOptimistic: string?,

	-- If you want to find out which watched queries were invalidated during
	-- this batch operation, pass this optional callback function. Returning
	-- false from the callback will prevent broadcasting this result.
	onWatchUpdated: ((
		self: C,
		watch: Cache_WatchOptions<any>,
		diff: Cache_DiffResult<any>,
		lastDiff: Cache_DiffResult<any>?
	) -> any)?,
}

export type Cache_ReadQueryOptions<TData, TVariables> = DataProxy_ReadQueryOptions<TData, TVariables>
export type Cache_ReadFragmentOptions<TData, TVariables> = DataProxy_ReadFragmentOptions<TData, TVariables>
export type Cache_WriteQueryOptions<TData, TVariables> = DataProxy_WriteQueryOptions<TData, TVariables>
export type Cache_WriteFragmentOptions<TData, TVariables> = DataProxy_WriteFragmentOptions<TData, TVariables>
export type Cache_Fragment<TData, TVariables> = DataProxy_Fragment<TData, TVariables>

return exports
