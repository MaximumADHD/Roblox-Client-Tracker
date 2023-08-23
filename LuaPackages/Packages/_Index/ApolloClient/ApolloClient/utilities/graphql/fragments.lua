--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/graphql/fragments.ts
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local graphqlModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphqlModule.DocumentNode
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type InlineFragmentNode = graphqlModule.InlineFragmentNode
type SelectionNode = graphqlModule.SelectionNode
type DefinitionNode = graphqlModule.DefinitionNode
type FragmentSpreadNode = graphqlModule.FragmentSpreadNode
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local Error = LuauPolyfill.Error
--[[*
 * Returns a query document which adds a single query operation that only
 * spreads the target fragment inside of it.
 *
 * So for example a document of:
 *
 * ```graphql
 * fragment foo on Foo { a b c }
 * ```
 *
 * Turns into:
 *
 * ```graphql
 * { ...foo }
 *
 * fragment foo on Foo { a b c }
 * ```
 *
 * The target fragment will either be the only fragment in the document, or a
 * fragment specified by the provided `fragmentName`. If there is more than one
 * fragment, but a `fragmentName` was not defined then an error will be thrown.
]]

local function getFragmentQueryDocument(document: DocumentNode, fragmentName: string?): DocumentNode
	local actualFragmentName = fragmentName
	-- Build an array of all our fragment definitions that will be used for
	-- validations. We also do some validations on the other definitions in the
	-- document while building this list.
	local fragments: Array<FragmentDefinitionNode> = {}
	Array.forEach(document.definitions, function(definition)
		-- Throw an error if we encounter an operation definition because we will
		-- define our own operation definition later on.
		if definition.kind == "OperationDefinition" then
			error(
				Error.new(
					("Found a %s operation%s. "):format(
						tostring(definition.operation),
						if Boolean.toJSBoolean(definition.name)
							then (" named '%s'"):format(tostring(definition.name.value))
							else ""
					)
						.. "No operations are allowed when using a fragment as a query. Only fragments are allowed."
				)
			)
		end
		-- Add our definition to the fragments array if it is a fragment
		-- definition.
		if definition.kind == "FragmentDefinition" then
			table.insert(fragments, definition)
		end
	end)

	--	If the user did not give us a fragment name then let us try to get a
	--	name from a single fragment in the definition.
	if typeof(actualFragmentName) == "nil" then
		invariant(
			#fragments == 1,
			string.format(
				"Found %s fragments. `fragmentName` must be provided when there is not exactly 1 fragment.",
				tostring(#fragments)
			)
		)
		actualFragmentName = fragments[1].name.value
	end

	-- Generate a query document with an operation that simply spreads the
	-- fragment inside of it.
	local query: DocumentNode = Object.assign({}, document, {
		definitions = Array.concat({}, {
			{
				kind = "OperationDefinition",
				operation = "query",
				selectionSet = {
					kind = "SelectionSet",
					selections = {
						{
							kind = "FragmentSpread",
							name = { kind = "Name", value = actualFragmentName },
						},
					},
				},
			},
		} :: DefinitionNode, document.definitions),
	})
	return query
end
exports.getFragmentQueryDocument = getFragmentQueryDocument

--[[*
 * This is an interface that describes a map from fragment names to fragment definitions.
 ]]
export type FragmentMap = { [string]: FragmentDefinitionNode }

-- Utility function that takes a list of fragment definitions and makes a hash out of them
-- that maps the name of the fragment to the fragment definition.
local function createFragmentMap(fragments_: Array<FragmentDefinitionNode>?): FragmentMap
	local fragments: Array<FragmentDefinitionNode> = if fragments_ ~= nil then fragments_ else {}
	local symTable: FragmentMap = {}
	Array.forEach(fragments, function(fragment)
		symTable[fragment.name.value] = fragment
	end)
	return symTable
end
exports.createFragmentMap = createFragmentMap

local function getFragmentFromSelection(
	selection: SelectionNode,
	fragmentMap: FragmentMap?
): InlineFragmentNode | FragmentDefinitionNode | nil
	local condition_ = selection.kind
	if condition_ == "InlineFragment" then
		return selection :: InlineFragmentNode
	elseif condition_ == "FragmentSpread" then
		local fragment = if fragmentMap
			then (fragmentMap :: FragmentMap)[(selection :: FragmentSpreadNode).name.value]
			else fragmentMap
		invariant(fragment, ("No fragment named %s."):format((selection :: FragmentSpreadNode).name.value))
		return fragment :: any
	else
		return nil
	end
end
exports.getFragmentFromSelection = getFragmentFromSelection

return exports
