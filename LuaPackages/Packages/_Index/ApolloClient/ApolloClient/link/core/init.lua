--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/core/index.ts
local exports = {}
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

local invariant = require(srcWorkspace.jsutils.invariant).invariant
local DEV = require(srcWorkspace.utilities).DEV
invariant("boolean" == typeof(DEV), tostring(DEV))

exports.empty = require(script.empty).empty
exports.from = require(script.from).from
exports.split = require(script.split).split
exports.concat = require(script.concat).concat
exports.execute = require(script.execute).execute

local apolloLinkModule = require(script.ApolloLink)
exports.ApolloLink = apolloLinkModule.ApolloLink
export type ApolloLink = apolloLinkModule.ApolloLink

local typesModule = require(script.types)
Object.assign(exports, typesModule)
export type DocumentNode = typesModule.DocumentNode
export type GraphQLRequest = typesModule.GraphQLRequest
export type Operation = typesModule.Operation
export type FetchResult_<TData, C> = typesModule.FetchResult_<TData, C>
export type FetchResult__<TData> = typesModule.FetchResult__<TData>
export type FetchResult___ = typesModule.FetchResult___
export type FetchResult<TData, C, E> = typesModule.FetchResult<TData, C, E>
export type NextLink = typesModule.NextLink
export type RequestHandler = typesModule.RequestHandler

return exports
