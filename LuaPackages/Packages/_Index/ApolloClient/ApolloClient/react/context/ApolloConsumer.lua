--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/context/ApolloConsumer.tsx

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local React = require(rootWorkspace.React)
local getApolloContext = require(script.Parent.ApolloContext).getApolloContext
local invariant = require(srcWorkspace.jsutils.invariant).invariant

local apolloClientModule = require(srcWorkspace.core.ApolloClient)
type ApolloClient<TCacheShape> = apolloClientModule.ApolloClient<TCacheShape>
type ReactChild = React.ReactChild
export type ApolloConsumerProps<TCacheShape> = { children: (ApolloClient<TCacheShape>) -> ReactChild | nil }

function ApolloConsumer(props: ApolloConsumerProps<{ [string]: any }>)
	local ApolloContext = getApolloContext()
	return React.createElement(ApolloContext.Consumer, nil, function(context)
		invariant(
			(context and context.client),
			'Could not find "client" in the context of ApolloConsumer. '
				.. "Wrap the root component in an <ApolloProvider>."
		)
		return props.children(context.client)
	end)
end

return {
	ApolloConsumer = ApolloConsumer,
}
