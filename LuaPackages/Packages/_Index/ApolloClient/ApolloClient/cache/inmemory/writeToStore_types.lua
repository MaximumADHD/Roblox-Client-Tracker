--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/writeToStore.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>
type Set<T> = LuauPolyfill.Set<T>

local graphQLModule = require(rootWorkspace.GraphQL)
type SelectionSetNode = graphQLModule.SelectionSetNode
type FieldNode = graphQLModule.FieldNode
type SelectionNode = graphQLModule.SelectionNode

local utilitiesGraphqlTypesModule = require(srcWorkspace.utilities.graphql.types)
type FragmentMap = utilitiesGraphqlTypesModule.FragmentMap
type StoreObject = utilitiesGraphqlTypesModule.StoreObject

local typesModule = require(script.Parent.types)
type ReadMergeModifyContext = typesModule.ReadMergeModifyContext
type MergeTree = typesModule.MergeTree

export type WriteContext = ReadMergeModifyContext & {
	written: { [string]: Array<SelectionSetNode> },
	fragmentMap: FragmentMap?,
	-- General-purpose deep-merge function for use during writes.
	merge: <T>(existing: T, incoming: T) -> T,
	-- General-purpose deep-merge function for use during writes.
	overwrite: boolean,
	incomingById: Map<string, { fields: StoreObject, mergeTree: MergeTree, selections: Set<SelectionNode> }>,
	clientOnly: boolean,
}

return {}
