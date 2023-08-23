--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/ObservableQuery.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

type Partial<T> = Object

local GraphQL = require(rootWorkspace.GraphQL)
type GraphQLError = GraphQL.GraphQLError

local networkStatusModule = require(script.Parent.networkStatus)
type NetworkStatus = networkStatusModule.NetworkStatus

local utilitiesModule = require(script.Parent.Parent.utilities)
type Observable<T> = utilitiesModule.Observable<T>

local errorsModule = require(script.Parent.Parent.errors)
type ApolloError = errorsModule.ApolloError

-- ROBLOX deviation: circular deps - inline types
-- local typesModule = require(script.Parent.types)
-- type ApolloQueryResult<T> = typesModule.ApolloQueryResult<T>
-- type OperationVariables = typesModule.OperationVariables
export type ApolloQueryResult<T> = {
	data: T,
	errors: Array<GraphQLError>?,
	error: ApolloError?,
	loading: boolean,
	networkStatus: NetworkStatus,
	partial: boolean?,
}
export type OperationVariables = { [string]: any }

local watchQueryOptionsModule = require(script.Parent.watchQueryOptions_types)
type WatchQueryOptions<TVariables, TData> = watchQueryOptionsModule.WatchQueryOptions<TVariables, TData>
type FetchMoreQueryOptions<TVariables, TData> = watchQueryOptionsModule.FetchMoreQueryOptions<TVariables, TData>
type SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData> =
	watchQueryOptionsModule.SubscribeToMoreOptions<TData, TSubscriptionVariables, TSubscriptionData>
type TSubscriptionVariables_ = any
type TSubscriptionData_ = any

export type FetchMoreOptions<TData, TVariables> = {
	updateQuery: ((
		previousQueryResult: TData,
		options: {
			fetchMoreResult: TData?,
			variables: TVariables?,
		}
	) -> TData)?,
}

-- ROBLOX TODO: a workaround to mimic the default generic type params. Remove when default generic types are supported
export type ObservableQuery_<TData> = ObservableQuery<TData, OperationVariables>
export type ObservableQuery__ = ObservableQuery<any, OperationVariables>

export type ObservableQuery<TData, TVariables> = Observable<ApolloQueryResult<TData>> & {
	options: WatchQueryOptions<TVariables, TData>,
	queryId: string,
	queryName: string?,
	variables: TVariables | nil,
	result: (self: ObservableQuery<TData, TVariables>) -> Promise<ApolloQueryResult<TData>>,
	getCurrentResult: (
		self: ObservableQuery<TData, TVariables>,
		saveAsLastResult: boolean?
	) -> ApolloQueryResult<TData>,
	isDifferentFromLastResult: (
		self: ObservableQuery<TData, TVariables>,
		newResult: ApolloQueryResult<TData>
	) -> boolean,
	getLastResult: (self: ObservableQuery<TData, TVariables>) -> ApolloQueryResult<TData> | nil,
	getLastError: (self: ObservableQuery<TData, TVariables>) -> ApolloError | nil,
	resetLastResults: (self: ObservableQuery<TData, TVariables>) -> (),
	resetQueryStoreErrors: (self: ObservableQuery<TData, TVariables>) -> (),
	refetch: (
		self: ObservableQuery<TData, TVariables>,
		variables: Partial<TVariables>?
	) -> Promise<ApolloQueryResult<TData>>,
	fetchMore: (
		self: ObservableQuery<TData, TVariables>,
		fetchMoreOptions: FetchMoreQueryOptions<TVariables, TData> & FetchMoreOptions<TData, TVariables>
	) -> Promise<ApolloQueryResult<TData>>,
	subscribeToMore: (
		self: ObservableQuery<TData, TVariables>,
		options: SubscribeToMoreOptions<TData, TSubscriptionVariables_, TSubscriptionData_>
	) -> (() -> ()),
	setOptions: (
		self: ObservableQuery<TData, TVariables>,
		newOptions: Partial<WatchQueryOptions<TVariables, TData>>
	) -> Promise<ApolloQueryResult<TData>>,
	setVariables: (
		self: ObservableQuery<TData, TVariables>,
		variables: TVariables
	) -> Promise<ApolloQueryResult<TData>?>,
	updateQuery: (
		self: ObservableQuery<TData, TVariables>,
		mapFn: (
			previousQueryResult: TData,
			options: Object --[[Pick<WatchQueryOptions<TVars, TData>, "variables">]]
		) -> TData
	) -> (),
	startPolling: (self: ObservableQuery<TData, TVariables>, pollInterval: number) -> (),
	stopPolling: (self: ObservableQuery<TData, TVariables>) -> (),
	reobserve: (
		self: ObservableQuery<TData, TVariables>,
		newOptions: Partial<WatchQueryOptions<TVariables, TData>>?,
		newNetworkStatus: NetworkStatus?
	) -> Promise<ApolloQueryResult<TData>>,
	hasObservers: (self: ObservableQuery<TData, TVariables>) -> boolean,
}
return {}
