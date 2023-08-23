--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/index.ts

local exports = {}
local srcWorkspace = script.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

local invariant = require(srcWorkspace.jsutils.invariant).invariant
local DEV = require(srcWorkspace.utilities).DEV
invariant("boolean" == typeof(DEV), tostring(DEV))

local contextModule = require(script.context)
exports.ApolloProvider = contextModule.ApolloProvider
exports.ApolloConsumer = contextModule.ApolloConsumer
exports.getApolloContext = contextModule.getApolloContext
exports.resetApolloContext = contextModule.resetApolloContext
export type ApolloContextValue = contextModule.ApolloContextValue

local hooksModule = require(script.hooks)
Object.assign(exports, hooksModule)

local parserModule = require(script.parser)
export type DocumentType = parserModule.DocumentType
export type IDocumentDefinition = parserModule.IDocumentDefinition

exports.DocumentType = parserModule.DocumentType
exports.operationName = parserModule.operationName
exports.parser = parserModule.parser

local typesModule = require(script.types.types)
Object.assign(exports, typesModule)
export type BaseMutationOptions<TData, TVariables, TContext, TCache> = typesModule.BaseMutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type BaseQueryOptions<TVariables> = typesModule.BaseQueryOptions<TVariables>
export type BaseSubscriptionOptions<TData, TVariables> = typesModule.BaseSubscriptionOptions<TData, TVariables>
export type CommonOptions<TOptions> = typesModule.CommonOptions<TOptions>
export type Context = typesModule.Context
export type LazyQueryHookOptions<TData, TVariables> = typesModule.LazyQueryHookOptions<TData, TVariables>
export type LazyQueryResult<TData, TVariables> = typesModule.LazyQueryResult<TData, TVariables>
export type MutationDataOptions<TData, TVariables, TContext, TCache> = typesModule.MutationDataOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationFunction<TData, TVariables, TContext, TCache> = typesModule.MutationFunction<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationFunctionOptions<TData, TVariables, TContext, TCache> = typesModule.MutationFunctionOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationHookOptions<TData, TVariables, TContext, TCache> = typesModule.MutationHookOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
export type MutationResult<TData> = typesModule.MutationResult<TData>
export type MutationTuple<TData, TVariables, TContext, TCache> = typesModule.MutationTuple<
	TData,
	TVariables,
	TContext,
	TCache
>
export type ObservableQueryFields<TData, TVariables> = typesModule.ObservableQueryFields<TData, TVariables>
export type OnSubscriptionDataOptions<TData> = typesModule.OnSubscriptionDataOptions<TData>
export type QueryDataOptions<TData, TVariables> = typesModule.QueryDataOptions<TData, TVariables>
export type QueryFunctionOptions<TData, TVariables> = typesModule.QueryFunctionOptions<TData, TVariables>
export type QueryHookOptions<TData, TVariables> = typesModule.QueryHookOptions<TData, TVariables>
export type QueryLazyOptions<TVariables> = typesModule.QueryLazyOptions<TVariables>
export type QueryResult<TData, TVariables> = typesModule.QueryResult<TData, TVariables>
export type QueryTuple<TData, TVariables> = typesModule.QueryTuple<TData, TVariables>
export type RefetchQueriesFunction = typesModule.RefetchQueriesFunction
export type SubscriptionCurrentObservable = typesModule.SubscriptionCurrentObservable
export type SubscriptionDataOptions<TData, TVariables> = typesModule.SubscriptionDataOptions<TData, TVariables>
export type SubscriptionHookOptions<TData, TVariables> = typesModule.SubscriptionHookOptions<TData, TVariables>
export type SubscriptionResult<TData> = typesModule.SubscriptionResult<TData>

return exports :: typeof(exports) & typeof(hooksModule)
