--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.0-rc.6/src/react/context/ApolloContext.ts

local rootWorkspace = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local WeakMap = LuauPolyfill.WeakMap
type WeakMap<T, V> = LuauPolyfill.WeakMap<T, V>

local React = require(rootWorkspace.React)
local coreModule = require(script.Parent.Parent.Parent.core)
type ApolloClient<TCacheShape> = coreModule.ApolloClient<TCacheShape>
type Object = { [string]: any }
type Record<T, U> = { [T]: U }

export type ApolloContextValue = {
	client: ApolloClient<Object>?,
	renderPromises: Record<any, any>?,
}

local cache: WeakMap<typeof(React.createContext), React.Context<ApolloContextValue>> = WeakMap.new()

-- To make sure Apollo Client doesn't create more than one React context
-- (which can lead to problems like having an Apollo Client instance added
-- in one context, then attempting to retrieve it from another different
-- context), a single Apollo context is created and tracked in global state.
-- We use React.createContext as the key instead of just React to avoid
-- ambiguities between default and namespace React imports.
local function getApolloContext()
	local context = cache:get(React.createContext)
	if context == nil then
		context = React.createContext({})
		context.displayName = "ApolloContext"
		cache:set(React.createContext, context)
	end
	return context :: React.Context<ApolloContextValue>
end

return {
	getApolloContext = getApolloContext,
	resetApolloContext = function()
		cache = WeakMap.new()
	end,
}
