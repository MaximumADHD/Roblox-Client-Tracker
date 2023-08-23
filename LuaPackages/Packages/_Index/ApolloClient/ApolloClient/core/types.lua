--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/types.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Record<T, U> = { [T]: U }
type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Map<K, V> = LuauPolyfill.Map<K, V>
type Promise<T> = LuauPolyfill.Promise<T>

local GraphQL = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQL.DocumentNode
type GraphQLError = GraphQL.GraphQLError
type ExecutionResult = GraphQL.ExecutionResult

local cacheModule = require(script.Parent.Parent.cache)
type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>

-- ROBLOX deviation: inline trivial type to avoid circular dependency
-- local FetchResult = require(script.Parent.Parent.link.core).FetchResult
type FetchResult<TData, C, E> = ExecutionResult & { data: (TData | nil)?, extensions: E?, context: C? }

-- ROBLOX TODO: should be equivalent to:
-- type FetchResultWithoutContext = Omit<FetchResult<TData>, 'context'>
type FetchResultWithoutContext<TData> = FetchResult<TData, Record<string, any>, Record<string, any>>

-- ROBLOX deviation: inline typedef to avoid circular dependency
-- local ApolloError = require(script.Parent.Parent.errors).ApolloError
type ServerParserError = Object
type ServerError = Object
type ApolloError = Error & {
	message: string,
	graphQLErrors: Array<GraphQLError>,
	clientErrors: Array<Error>,
	networkError: Error | ServerParserError | ServerError | nil,
	-- An object that can be used to provide some additional information
	-- about an error, e.g. specifying the type of error this is. Used
	-- internally within Apollo Client.
	extraInfo: any,
}

local QueryInfo = require(script.Parent.QueryInfo)
type QueryInfo = QueryInfo.QueryInfo

local NetworkStatus = require(script.Parent.networkStatus)
type NetworkStatus = NetworkStatus.NetworkStatus

-- ROBLOX TODO: use import when Resolver is implemented
-- local Resolver = require(script.Parent.LocalState).Resolver
type Resolver = any

local ObservableQueryTypes = require(script.Parent.ObservableQuery_types)
type ObservableQuery<TData, TVariables> = ObservableQueryTypes.ObservableQuery<TData, TVariables>

-- ROBLOX comment: moved to different file to solve circular dependency issue
local watchQueryOptionsModule = require(script.Parent.watchQueryOptions_types)
type QueryOptions<TVariables, TData> = watchQueryOptionsModule.QueryOptions<TVariables, TData>

-- ROBLOX deviation: Luau doesn't support namespaces
local Cache = require(script.Parent.Parent.cache)
type Cache_DiffResult<T> = Cache.Cache_DiffResult<T>

-- ROBLOX TODO: This type is used in tandem with the RefetchQueriesPromiseResults
-- typedef. It will need to be defined if we fully conform to upstreams implementation
-- of RefetchQueriesPromiseResults.
-- local IsStrictlyAny = require(script.Parent.Parent.utilities).IsStrictlyAny

local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
export type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>

export type DefaultContext = Record<string, any>

export type QueryListener = (QueryInfo) -> nil

export type OnQueryUpdated<TResult> = (
	self: any,
	observableQuery: ObservableQuery<any, OperationVariables>, -- ROBLOX deviation: inline default type args
	diff: Cache_DiffResult<any>,
	lastDiff: Cache_DiffResult<any> | nil
) -> boolean | TResult

export type RefetchQueryDescriptor = string | DocumentNode
export type InternalRefetchQueryDescriptor = RefetchQueryDescriptor | QueryOptions<any, any>

-- ROBLOX deviation: type RefetchQueriesIncludeShorthand = "all" | "active"
type RefetchQueriesIncludeShorthand = string

export type RefetchQueriesInclude = Array<RefetchQueryDescriptor> | RefetchQueriesIncludeShorthand

export type InternalRefetchQueriesInclude = Array<InternalRefetchQueryDescriptor> | RefetchQueriesIncludeShorthand

-- ROBLOX deviation: can't restrict generic params
-- export interface RefetchQueriesOptions<
--   TCache extends ApolloCache<any>,
--   TResult,
-- >
-- Used by ApolloClient["refetchQueries"]
-- TODO Improve documentation comments for this public type.
export type RefetchQueriesOptions<TCache, TResult> = {
	updateCache: ((TCache) -> nil)?,
	-- The client.refetchQueries method discourages passing QueryOptions, by
	-- restricting the public type of options.include to exclude QueryOptions as
	-- an available array element type (see InternalRefetchQueriesInclude for a
	-- version of RefetchQueriesInclude that allows legacy QueryOptions objects).
	include: RefetchQueriesInclude?,
	optimistic: boolean?,
	-- If no onQueryUpdated function is provided, any queries affected by the
	-- updateCache function or included in the options.include array will be
	-- refetched by default. Passing null instead of undefined disables this
	-- default refetching behavior for affected queries, though included queries
	-- will still be refetched.
	onQueryUpdated: (OnQueryUpdated<TResult> | nil)?,
}

-- ROBLOX deviation: setting type as any
--
-- The client.refetchQueries method returns a thenable (PromiseLike) object
-- whose result is an array of Promise.resolve'd TResult values, where TResult
-- is whatever type the (optional) onQueryUpdated function returns. When no
-- onQueryUpdated function is given, TResult defaults to ApolloQueryResult<any>
-- (thanks to default type parameters for client.refetchQueries).
--
-- export type RefetchQueriesPromiseResults<TResult> =
--
-- If onQueryUpdated returns any, all bets are off, so the results array must
-- be a generic any[] array, which is much less confusing than the union type
-- we get if we don't check for any. I hoped `any extends TResult` would do
-- the trick here, instead of IsStrictlyAny, but you can see for yourself what
-- fails in the refetchQueries tests if you try making that simplification.
--
--   IsStrictlyAny<TResult> extends true
--     ? any[]
--
-- If the onQueryUpdated function passed to client.refetchQueries returns true
-- or false, that means either to refetch the query (true) or to skip the
-- query (false). Since refetching produces an ApolloQueryResult<any>, and
-- skipping produces nothing, the fully-resolved array of all results produced
-- will be an ApolloQueryResult<any>[], when TResult extends boolean.
--
--     : TResult extends boolean
--     ? ApolloQueryResult<any>[]
--
-- If onQueryUpdated returns a PromiseLike<U>, that thenable will be passed as
-- an array element to Promise.all, so we infer/unwrap the array type U here.
--
--     : TResult extends PromiseLike<infer U>
--     ? U[]
--
-- All other onQueryUpdated results end up in the final Promise.all array as
-- themselves, with their original TResult type. Note that TResult will
-- default to ApolloQueryResult<any> if no onQueryUpdated function is passed
-- to client.refetchQueries.
--
--     : TResult[];

export type RefetchQueriesPromiseResults<TResult> = Array<TResult>

-- The result of client.refetchQueries is thenable/awaitable, if you just want
-- an array of fully resolved results, but you can also access the raw results
-- immediately by examining the additional { queries, results } properties of
-- the RefetchQueriesResult<TResult> object.
export type RefetchQueriesResult<TResult> = Promise<RefetchQueriesPromiseResults<TResult>> & {
	-- An array of ObservableQuery objects corresponding 1:1 to TResult values
	-- in the results arrays (both the TResult[] array below, and the results
	-- array resolved by the Promise above).
	-- ROBLOX deviation: inline default type args
	queries: Array<ObservableQuery<any, OperationVariables>>,
	-- These are the raw TResult values returned by any onQueryUpdated functions
	-- that were invoked by client.refetchQueries.
	results: Array<InternalRefetchQueriesResult<TResult>>,
}

-- ROBLOX deviation: Luau doesn't have Omit type util so we need to be more verbose
-- Omit<RefetchQueriesOptions<TCache, TResult>, "include">
type RefetchQueriesOptionsWithoutInclude<TCache, TResult> = {
	updateCache: ((TCache) -> nil)?,
	optimistic: boolean?,
	onQueryUpdated: (OnQueryUpdated<TResult> | nil)?,
}
export type InternalRefetchQueriesOptions<TCache, TResult> = RefetchQueriesOptionsWithoutInclude<TCache, TResult> & {
	-- Just like the refetchQueries option for a mutation, an array of strings,
	-- DocumentNode objects, and/or QueryOptions objects, or one of the shorthand
	-- strings "all" or "active", to select every (active) query.
	include: InternalRefetchQueriesInclude?,
	-- This part of the API is a (useful) implementation detail, but need not be
	-- exposed in the public client.refetchQueries API (above).
	removeOptimistic: string?,
}

-- ROBLOX deviation: conditional type not available yet TResult extends boolean ? Promise<ApolloQueryResult<any>> : TResult;
-- If onQueryUpdated returns a boolean, that's equivalent to refetching the
-- query when the boolean is true and skipping the query when false, so the
-- internal type of refetched results is Promise<ApolloQueryResult<any>>.
-- Otherwise, onQueryUpdated returns whatever it returns. If onQueryUpdated is
-- not provided, TResult defaults to Promise<ApolloQueryResult<any>> (see the
-- generic type parameters of client.refetchQueries).
export type InternalRefetchQueriesResult<TResult> = Promise<ApolloQueryResult<any>> | TResult

-- ROBLOX deviation: inline default type args
export type InternalRefetchQueriesMap<TResult> = Map<
	ObservableQuery<any, OperationVariables>,
	InternalRefetchQueriesResult<TResult>
>

-- TODO Remove this unnecessary type in Apollo Client 4.
export type PureQueryOptions = QueryOptions<any, any>

export type OperationVariables = Record<string, any>

export type ApolloQueryResult<T> = {
	data: T,
	errors: Array<GraphQLError>?,
	error: ApolloError?,
	loading: boolean,
	networkStatus: NetworkStatus,
	-- If result.data was read from the cache with missing fields,
	-- result.partial will be true. Otherwise, result.partial will be falsy
	-- (usually because the property is absent from the result object).
	partial: boolean?,
}

-- This is part of the public API, people write these functions in `updateQueries`.
export type MutationQueryReducer<T> = (
	Record<string, any>,
	-- ROBLOX deviation: inline default type arg params: interface FetchResult<TData = { [key: string]: any },C = Record<string, any>,E = Record<string, any>
	{
		mutationResult: FetchResult<T, Record<string, any>, Record<string, any>>,
		queryName: string | nil,
		queryVariables: Record<string, any>,
	}
) -> Record<string, any>

export type MutationQueryReducersMap<T> = { [string]: MutationQueryReducer<T> }

-- @deprecated Use MutationUpdaterFunction instead.
export type MutationUpdaterFn<T> = (
	-- The MutationUpdaterFn type is broken because it mistakenly uses the same
	-- type parameter T for both the cache and the mutationResult. Do not use this
	-- type unless you absolutely need it for backwards compatibility.
	cache: ApolloCache<T>,
	mutationResult: FetchResult<T, any, any>
) -> ()

-- ROBLOX deviation: Luau doesn't have Omit type util so we need to be more verbose
-- Omit<FetchResult<TData>, 'context'>
export type MutationUpdaterFunction<TData, TVariables, TContext, TCache> = (
	self: any,
	TCache,
	FetchResultWithoutContext<TData>,
	{ context: TContext?, variables: TVariables? }
) -> ()

export type Resolvers = { [string]: { [string]: Resolver } }

return {}
