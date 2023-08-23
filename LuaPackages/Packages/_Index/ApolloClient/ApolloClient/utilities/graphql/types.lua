--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX note: extracted from storeUtils to break circular dependencies
-- policies_types.lua:55:28-68: ApolloClient/Packages/ApolloClient/cache/inmemory/writeToStore_types -> ApolloClient/Packages/ApolloClient/cache/inmemory/types -> ApolloClient/Packages/ApolloClient/cache/inmemory/policies_types
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local graphqlModule = require(rootWorkspace.GraphQL)
type VariableNode = graphqlModule.VariableNode

export type Reference = { __ref: string }
export type StoreValue = number | string | Array<string> | Reference | Array<Reference> | nil | Object
export type StoreObject = { __typename: string?, [string]: StoreValue }
export type Directives = { --[[ ROBLOX TODO: Unhandled node for type: TSIndexSignature ]]
	[string]: { -- ROBLOX note [directiveName: string]
		[string]: any, -- note ROBLOX [argName: string]
	},
}
export type VariableValue = (node: VariableNode) -> any
-- ROBLOX TODO: implement fragment module
-- local fragmentsModule = require(script.graphql.fragments)
-- exports.FragmentMap = fragmentsModule.FragmentMap
export type FragmentMap = { [string]: any }

return {}
