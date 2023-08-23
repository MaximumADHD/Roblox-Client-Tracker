--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/types.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

type Object = { [string]: any }
type Record<T, U> = { [T]: U }

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>

local GraphQL = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQL.DocumentNode
type FieldNode = GraphQL.FieldNode

-- ROBLOX TODO: import this when Transaction is converted with ApolloCache
-- local Transaction = require(script.Parent.Parent.core.cache).Transaction
type Transaction<T> = (c: { [string]: any }) -> ()

local utilitiesGraphqlTypesModule = require(srcWorkspace.utilities.graphql.types)
export type StoreObject = utilitiesGraphqlTypesModule.StoreObject
export type StoreValue = utilitiesGraphqlTypesModule.StoreValue
export type Reference = utilitiesGraphqlTypesModule.Reference

-- local FieldValueGetter = require(script.Parent.entityStore).FieldValueGetter
-- ROBLOX deviation: bringing the type inline to avoid circular dependency
type FieldValueGetter = (self: any, objectOrReference: StoreObject | Reference | nil, storeFieldName: string) -> any

local policiesModule = require(script.Parent.policies_types)
type KeyFieldsFunction = policiesModule.KeyFieldsFunction
type StorageType = policiesModule.StorageType
type FieldMergeFunction<T, V> = policiesModule.FieldMergeFunction<T, V>

local commonModule = require(srcWorkspace.cache.core.types.common)
type Modifier<T> = commonModule.Modifier<T>
type Modifiers = commonModule.Modifiers
type ToReferenceFunction = commonModule.ToReferenceFunction
type CanReadFunction = commonModule.CanReadFunction

export type IdGetterObj = Object & { __typename: string?, id: string?, _id: string? }

export type IdGetter = (value: IdGetterObj) -> string?

--[[
	* This is an interface used to access, set and remove
	* StoreObjects from the cache
]]
export type NormalizedCache = {
	has: (self: NormalizedCache, dataId: string) -> boolean,
	get: (self: NormalizedCache, dataId: string, fieldName: string) -> StoreValue,

	-- The store.merge method allows either argument to be a string ID, but
	-- the other argument has to be a StoreObject. Either way, newer fields
	-- always take precedence over older fields.
	-- ROBLOX deviation: luau doesnt have function overloading, instead defining one function that fits all overloads
	merge: (self: NormalizedCache, olderIdOrObject: string | StoreObject, newerObjectOrId: StoreObject | string) -> (),

	modify: (self: NormalizedCache, dataId: string, fields: Modifiers | Modifier<any>) -> boolean,
	delete: (self: NormalizedCache, dataId: string, fieldName: string?) -> boolean,
	clear: (self: NormalizedCache) -> (),

	-- non-Map elements:
	--[[
		* returns an Object with key-value pairs matching the contents of the store
	]]
	toObject: (self: NormalizedCache) -> NormalizedCacheObject,

	--[[
	 * replace the state of the store
	]]
	replace: (self: NormalizedCache, newData: NormalizedCacheObject) -> (),

	--[[
		* Retain (or release) a given root ID to protect (or expose) it and its
		* transitive child entities from (or to) garbage collection. The current
		* retainment count is returned by both methods. Note that releasing a root
		* ID does not cause that entity to be garbage collected, but merely removes
		* it from the set of root IDs that will be considered during the next
		* mark-and-sweep collection.
	]]
	retain: (self: NormalizedCache, rootId: string) -> number,
	release: (self: NormalizedCache, rootId: string) -> number,

	getFieldValue: FieldValueGetter,
	toReference: ToReferenceFunction,
	canRead: CanReadFunction,

	-- ROBLOX deviation: luau doesnt have named Rest Parameters in function type annotations, can't assign Identifier 'storeFieldNames' to Rest Parameter
	getStorage: (self: NormalizedCache, idOrObj: string | StoreObject, ...(string | number)) -> StorageType,
}

--[[
	* This is a normalized representation of the Apollo query result cache. It consists of
	* a flattened representation of query result trees.
]]
export type NormalizedCacheObject = {
	__META: {
		-- Well-known singleton IDs like ROOT_QUERY and ROOT_MUTATION are
		-- always considered to be root IDs during cache.gc garbage
		-- collection, but other IDs can become roots if they are written
		-- directly with cache.writeFragment or retained explicitly with
		-- cache.retain. When such IDs exist, we include them in the __META
		-- section so that they can survive cache.{extract,restore}.
		extraRootIds: Array<string>,
	}?,
	[string]: StoreObject | nil,
}

export type OptimisticStoreItem = {
	id: string,
	data: NormalizedCacheObject,
	transaction: Transaction<NormalizedCacheObject>,
}

export type ReadQueryOptions = {
	store: NormalizedCache,
	query: DocumentNode,
	variables: Object?,
	previousResult: any?,
	canonizeResults: boolean?,
	rootId: string?,
	config: ApolloReducerConfig?,
}

export type DiffQueryAgainstStoreOptions = ReadQueryOptions & { returnPartialData: boolean? }

export type ApolloReducerConfig = { dataIdFromObject: KeyFieldsFunction?, addTypename: boolean? }

export type MergeInfo = { field: FieldNode, typename: string | nil, merge: FieldMergeFunction<any, any> }

export type MergeTree = { info: MergeInfo?, map: Map<string | number, MergeTree> }

export type ReadMergeModifyContext = {
	store: NormalizedCache,
	variables: Record<string, any>?,
	-- A JSON.stringify-serialized version of context.variables.
	varString: string?,
}

return {}
