--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/separateOperations.js
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>

local ObjMapModule = require(srcWorkspace.jsutils.ObjMap) -- type { ObjMap } from '../jsutils/ObjMap';
type ObjMap<T> = ObjMapModule.ObjMap<T>

local languageAstModule = require(srcWorkspace.language.ast)
type DocumentNode = languageAstModule.DocumentNode
type OperationDefinitionNode = languageAstModule.OperationDefinitionNode
type FragmentDefinitionNode = languageAstModule.FragmentDefinitionNode
type SelectionSetNode = languageAstModule.SelectionSetNode

local Kind = require(srcWorkspace.language.kinds).Kind
local visit = require(srcWorkspace.language.visitor).visit

local collectDependencies
local collectTransitiveDependencies

--[[**
	* separateOperations accepts a single AST document which may contain many
	* operations and fragments and returns a collection of AST documents each of
	* which contains a single operation as well the fragment definitions it
	* refers to.
	*]]
local function separateOperations(documentAST: DocumentNode): ObjMap<DocumentNode>
	local operations: Array<OperationDefinitionNode> = {}
	local depGraph: DepGraph = {}

	-- Populate metadata and build a dependency graph
	for _, definitionNode in pairs(documentAST.definitions) do
		local definitionNodeKind = definitionNode.kind
		if definitionNodeKind == Kind.OPERATION_DEFINITION then
			-- ROBLOX FIXME Luau: Luau should narrow definitionNode based on this branch
			table.insert(operations, definitionNode :: OperationDefinitionNode)
		elseif definitionNodeKind == Kind.FRAGMENT_DEFINITION then
			-- ROBLOX FIXME Luau: Luau should narrow definitionNode based on this branch
			depGraph[(definitionNode :: FragmentDefinitionNode).name.value] = collectDependencies(
				(definitionNode :: FragmentDefinitionNode).selectionSet
			)
		end
	end

	-- For each operation, produce a new synthesized AST which includes only what
	-- is necessary for completing that operation.
	--[[
		ROBLOX FIXME?:
		original code:

		const separatedDocumentASTs = Object.create(null);

		which suggests it should retain order. Also later comments suggest the same
	]]
	local separatedDocumentASTs = {}
	for _, operation in pairs(operations) do
		local dependencies: Set<string> = Set.new()

		for _, fragmentName in pairs(collectDependencies(operation.selectionSet)) do
			collectTransitiveDependencies(dependencies, depGraph, fragmentName)
		end

		-- Provides the empty string for anonymous operations
		local operationName = operation.name and operation.name.value or ""

		-- The list of definition nodes to be included for this operation, sorted
		-- to retain the same order as the original document.
		separatedDocumentASTs[operationName] = {
			kind = Kind.DOCUMENT,
			definitions = Array.filter(documentAST.definitions, function(node)
				return node == operation
					or (node.kind == Kind.FRAGMENT_DEFINITION and dependencies:has(node.name.value))
			end),
		}
	end

	return separatedDocumentASTs
end

type DepGraph = ObjMap<Array<string>>

-- From a dependency graph, collects a list of transitive dependencies by
-- recursing through a dependency graph.
function collectTransitiveDependencies(
	collected: Set<string>,
	depGraph: DepGraph,
	fromName: string
): ()
	if not collected:has(fromName) then
		collected:add(fromName)

		local immediateDeps = depGraph[fromName]
		if immediateDeps ~= nil then
			for key, toName in pairs(immediateDeps) do
				collectTransitiveDependencies(collected, depGraph, toName)
			end
		end
	end
end

function collectDependencies(selectionSet: SelectionSetNode): Array<string>
	local dependencies: Array<string> = {}

	visit(selectionSet, {
		FragmentSpread = function(_self, node)
			table.insert(dependencies, node.name.value)
		end,
	})

	return dependencies
end

return {
	separateOperations = separateOperations,
}
