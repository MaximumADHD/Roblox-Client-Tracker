--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/core/types/DataProxy.ts

local srcWorkspace = script.Parent.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local GraphQL = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQL.DocumentNode

local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>

local commonTypeModule = require(script.Parent.common)
type MissingFieldError = commonTypeModule.MissingFieldError

local exports = {}

export type DataProxy_Query<TVariables, TData> = {
	--[[
	 * The GraphQL query shape to be used constructed using the `gql` template
	 * string tag from `graphql-tag`. The query will be used to determine the
	 * shape of the data to be read.
	]]
	query: DocumentNode | TypedDocumentNode<TData, TVariables>,
	--[[
   * Any variables that the GraphQL query may depend on.
  ]]
	variables: TVariables?,
	--[[
   * The root id to be used. Defaults to "ROOT_QUERY", which is the ID of the
   * root query object. This property makes writeQuery capable of writing data
   * to any object in the cache.
  ]]
	id: string?,
}

export type DataProxy_Fragment<TVariables, TData> = {
	--[[
   * The root id to be used. This id should take the same form as the
   * value returned by your `dataIdFromObject` function. If a value with your
   * id does not exist in the store, `null` will be returned.
  ]]
	id: string?,
	--[[
   * A GraphQL document created using the `gql` template string tag from
   * `graphql-tag` with one or more fragments which will be used to determine
   * the shape of data to read. If you provide more than one fragment in this
   * document then you must also specify `fragmentName` to select a single.
  ]]
	fragment: DocumentNode | TypedDocumentNode<TData, TVariables>,
	--[[
   * The name of the fragment in your GraphQL document to be used. If you do
   * not provide a `fragmentName` and there is only one fragment in your
   * `fragment` document then that fragment will be used.
  ]]
	fragmentName: string?,
	--[[
   * Any variables that your GraphQL fragments depend on.
  ]]
	variables: TVariables?,
}

export type DataProxy_ReadQueryOptions<TData, TVariables> = DataProxy_Query<TVariables, TData> & {
	--[[
   * Whether to return incomplete data rather than null.
   * Defaults to false.
  ]]
	returnPartialData: boolean?,
	--[[
   * Whether to read from optimistic or non-optimistic cache data. If
   * this named option is provided, the optimistic parameter of the
   * readQuery method can be omitted. Defaults to false.
  ]]
	optimistic: boolean?,
	--[[
   * Whether to canonize cache results before returning them. Canonization
   * takes some extra time, but it speeds up future deep equality comparisons.
   * Defaults to true.
  ]]
	canonizeResults: boolean?,
}

export type DataProxy_ReadFragmentOptions<TData, TVariables> = DataProxy_Fragment<TVariables, TData> & {
	--[[
   * Whether to return incomplete data rather than null.
   * Defaults to false.
  ]]
	returnPartialData: boolean?,
	--[[
   * Whether to read from optimistic or non-optimistic cache data. If
   * this named option is provided, the optimistic parameter of the
   * readQuery method can be omitted. Defaults to false.
  ]]
	optimistic: boolean?,
	--[[
   * Whether to canonize cache results before returning them. Canonization
   * takes some extra time, but it speeds up future deep equality comparisons.
   * Defaults to true.
  ]]
	canonizeResults: boolean?,
}

export type DataProxy_WriteOptions<TData> = {
	--[[
   * The data you will be writing to the store.
  ]]
	data: TData,
	--[[
   * Whether to notify query watchers (default: true).
  ]]
	broadcast: boolean?,
	--[[
   * When true, ignore existing field data rather than merging it with
   * incoming data (default: false).
  ]]
	overwrite: boolean?,
}

export type DataProxy_WriteQueryOptions<TData, TVariables> =
	DataProxy_Query<TVariables, TData>
	& DataProxy_WriteOptions<TData>

export type DataProxy_WriteFragmentOptions<TData, TVariables> =
	DataProxy_Fragment<TVariables, TData>
	& DataProxy_WriteOptions<TData>

export type DataProxy_DiffResult<T> = {
	result: T?,
	complete: boolean?,
	missing: Array<MissingFieldError>?,
	fromOptimisticTransaction: boolean?,
}

--[[
 * A proxy to the normalized data living in our store. This interface allows a
 * user to read and write denormalized data which feels natural to the user
 * whilst in the background this data is being converted into the normalized
 * store format.
]]
export type DataProxy = {
	--[[
   * Reads a GraphQL query from the root query id.
  ]]
	-- ROBLOX deviation: not including function generics, not supported yet
	readQuery: (options: DataProxy_ReadQueryOptions<any, any>, optimistic: boolean?) -> any?,
	--[[
   * Reads a GraphQL fragment from any arbitrary id. If there is more than
   * one fragment in the provided document then a `fragmentName` must be
   * provided to select the correct fragment.
  ]]
	readFragment: (options: DataProxy_ReadFragmentOptions<any, any>, optimistic: boolean?) -> any?,
	--[[
   * Writes a GraphQL query to the root query id.
  ]]
	writeQuery: (options: DataProxy_WriteQueryOptions<any, any>) -> (),
	--[[
   * Writes a GraphQL fragment to any arbitrary id. If there is more than
   * one fragment in the provided document then a `fragmentName` must be
   * provided to select the correct fragment.
  ]]
	writeFragment: (options: DataProxy_WriteFragmentOptions<any, any>) -> (),
}

return exports
