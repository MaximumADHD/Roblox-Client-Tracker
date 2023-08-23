--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/HttpLink.ts

local exports = {}
local coreModule = require(script.Parent.Parent.core)
local ApolloLink = coreModule.ApolloLink
type ApolloLink = coreModule.ApolloLink
type RequestHandler = coreModule.RequestHandler
local httpOptionsModule = require(script.Parent.selectHttpOptionsAndBody)
type HttpOptions = httpOptionsModule.HttpOptions
local createHttpLink = require(script.Parent.createHttpLink).createHttpLink

export type HttpLink = ApolloLink & { options: HttpOptions, requester: RequestHandler }

local HttpLink = setmetatable({}, { __index = ApolloLink })
HttpLink.__index = HttpLink

function HttpLink.new(options: HttpOptions?): HttpLink
	if options == nil then
		options = {}
	end
	local self = (setmetatable(ApolloLink.new(createHttpLink(options).request), HttpLink) :: any) :: HttpLink
	self.options = options :: HttpOptions
	return self
end
exports.HttpLink = HttpLink

return exports
