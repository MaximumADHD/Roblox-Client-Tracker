--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/index.ts
local exports = {}
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

-- ROBLOX TODO: uncomment these exports as we implement them
local useApolloClientModule = require(script.useApolloClient)
local useQueryModule = require(script.useQuery)
local useLazyQueryModule = require(script.useLazyQuery)
local useMutationModule = require(script.useMutation)
-- local useSubscriptionModule = require(script.useSubscription)
local useReactiveVarModule = require(script.useReactiveVar)

Object.assign(
	exports,
	useApolloClientModule,
	useQueryModule,
	useLazyQueryModule,
	useMutationModule,
	useReactiveVarModule
)

return exports :: typeof(exports) & typeof(useApolloClientModule) & typeof(useQueryModule) & typeof(useLazyQueryModule) & typeof(useMutationModule) & typeof(useReactiveVarModule)
