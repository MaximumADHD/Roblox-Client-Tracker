--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/useApolloClient.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
type Object = { [string]: any }
local exports = {}

local React = require(rootWorkspace.React)
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local getApolloContext = require(srcWorkspace.react.context).getApolloContext

local coreModule = require(srcWorkspace.core)
type ApolloClient<TCacheShape> = coreModule.ApolloClient<TCacheShape>

function useApolloClient(): ApolloClient<{ [string]: any }>
	local context = React.useContext(getApolloContext())
	local client = context.client
	invariant(
		client,
		"No Apollo Client instance can be found. Please ensure that you "
			.. "have called `ApolloProvider` higher up in your tree."
	)
	-- ROBLOX FIXME Luau: invariant already checked for nil (falsy) value
	return client :: ApolloClient<{ [string]: any }>
end
exports.useApolloClient = useApolloClient

return exports
