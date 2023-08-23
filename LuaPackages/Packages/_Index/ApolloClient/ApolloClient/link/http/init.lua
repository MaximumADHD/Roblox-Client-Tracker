--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/index.ts

local exports = {}

local parseAndCheckHttpResponseModule = require(script.parseAndCheckHttpResponse)
exports.parseAndCheckHttpResponse = parseAndCheckHttpResponseModule.parseAndCheckHttpResponse
export type ServerParseError = parseAndCheckHttpResponseModule.ServerParseError
local serializeFetchParameterModule = require(script.serializeFetchParameter)
exports.serializeFetchParameter = serializeFetchParameterModule.serializeFetchParameter
export type ClientParseError = serializeFetchParameterModule.ClientParseError
local selectHttpOptionsAndBodyModule = require(script.selectHttpOptionsAndBody)
export type HttpOptions = selectHttpOptionsAndBodyModule.HttpOptions
exports.fallbackHttpConfig = selectHttpOptionsAndBodyModule.fallbackHttpConfig
exports.selectHttpOptionsAndBody = selectHttpOptionsAndBodyModule.selectHttpOptionsAndBody
export type UriFunction = selectHttpOptionsAndBodyModule.UriFunction
exports.checkFetcher = require(script.checkFetcher).checkFetcher
exports.createSignalIfSupported = require(script.createSignalIfSupported).createSignalIfSupported
exports.selectURI = require(script.selectURI).selectURI
exports.createHttpLink = require(script.createHttpLink).createHttpLink
local httpLinkModule = require(script.HttpLink)
exports.HttpLink = httpLinkModule.HttpLink
export type HttpLink = httpLinkModule.HttpLink
exports.rewriteURIForGET = require(script.rewriteURIForGET).rewriteURIForGET

return exports
