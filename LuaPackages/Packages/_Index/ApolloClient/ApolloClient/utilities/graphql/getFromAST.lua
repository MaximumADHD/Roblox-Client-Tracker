--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/graphql/getFromAST.ts

local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
type Record<T, U> = { [T]: U }

local graphqlModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphqlModule.DocumentNode
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type ValueNode = graphqlModule.ValueNode
local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant
local InvariantError = invariantModule.InvariantError
local valueToObjectRepresentation = require(script.Parent.storeUtils).valueToObjectRepresentation

local function checkDocument(doc: DocumentNode)
	invariant(
		doc and doc.kind == "Document",
		[[Expecting a parsed GraphQL document. Perhaps you need to wrap the query string in a "gql" tag? http://docs.apollostack.com/apollo-client/core.html#gql]]
	)

	local operations = Array.map(
		Array.filter(doc.definitions, function(d)
			return d.kind ~= "FragmentDefinition"
		end),
		function(definition)
			if definition.kind ~= "OperationDefinition" then
				error(
					InvariantError.new(
						('Schema type definitions not allowed in queries. Found: "%s"'):format(definition.kind)
					)
				)
			end
			return definition
		end
	)

	invariant(#operations <= 1, ("Ambiguous GraphQL document: contains %s operations"):format(tostring(#operations)))

	return doc
end
exports.checkDocument = checkDocument

local function getOperationDefinition(doc: DocumentNode): OperationDefinitionNode | nil
	checkDocument(doc)
	return Array.filter(doc.definitions, function(definition)
		return definition.kind == "OperationDefinition"
	end)[1] :: OperationDefinitionNode
end
exports.getOperationDefinition = getOperationDefinition

local function getOperationName(doc: DocumentNode): (string | nil)
	local mapped = Array.map(
		Array.filter(doc.definitions, function(definition)
			if Boolean.toJSBoolean(definition.kind == "OperationDefinition") then
				return definition.name
			else
				return definition.kind == "OperationDefinition"
			end
		end),
		function(x: OperationDefinitionNode)
			return (Boolean.toJSBoolean(x) and Boolean.toJSBoolean(x.name) and (x.name :: any).value or nil)
		end
	)

	return Boolean.toJSBoolean(mapped[1]) and mapped[1] or nil
end
exports.getOperationName = getOperationName

-- Returns the FragmentDefinitions from a particular document as an array
local function getFragmentDefinitions(doc: DocumentNode): Array<FragmentDefinitionNode>
	return Array.filter(doc.definitions, function(definition)
		return definition.kind == "FragmentDefinition"
	end) :: Array<FragmentDefinitionNode>
end
exports.getFragmentDefinitions = getFragmentDefinitions

local function getQueryDefinition(doc: DocumentNode): OperationDefinitionNode
	local queryDef = getOperationDefinition(doc) :: OperationDefinitionNode

	invariant(Boolean.toJSBoolean(queryDef) and queryDef.operation == "query", "Must contain a query definition.")
	return queryDef
end
exports.getQueryDefinition = getQueryDefinition

local function getFragmentDefinition(doc: DocumentNode): FragmentDefinitionNode
	invariant(
		doc.kind == "Document",
		[[Expecting a parsed GraphQL document. Perhaps you need to wrap the query string in a "gql" tag? http://docs.apollostack.com/apollo-client/core.html#gql]]
	)

	invariant(#doc.definitions <= 1, "Fragment must have exactly one definition.")

	local fragmentDef = doc.definitions[1] :: FragmentDefinitionNode

	invariant(fragmentDef.kind == "FragmentDefinition", "Must be a fragment definition.")

	return fragmentDef :: FragmentDefinitionNode
end
exports.getFragmentDefinition = getFragmentDefinition

--[[
 * Returns the first operation definition found in this document.
 * If no operation definition is found, the first fragment definition will be returned.
 * If no definitions are found, an error will be thrown.
]]
local function getMainDefinition(queryDoc: DocumentNode): OperationDefinitionNode | FragmentDefinitionNode
	checkDocument(queryDoc)

	local fragmentDefinition

	for _, definition in ipairs(queryDoc.definitions) do
		if definition.kind == "OperationDefinition" then
			local operation = (definition :: OperationDefinitionNode).operation

			if operation == "query" or operation == "mutation" or operation == "subscription" then
				return definition :: OperationDefinitionNode
			end
		end
		if definition.kind == "FragmentDefinition" and not Boolean.toJSBoolean(fragmentDefinition) then
			-- we do this because we want to allow multiple fragment definitions
			-- to precede an operation definition.
			fragmentDefinition = definition :: FragmentDefinitionNode
		end
	end

	if Boolean.toJSBoolean(fragmentDefinition) then
		return fragmentDefinition
	end

	error(InvariantError.new("Expected a parsed GraphQL query with a query, mutation, subscription, or a fragment."))
end
exports.getMainDefinition = getMainDefinition

local function getDefaultValues(definition: OperationDefinitionNode | nil): Record<string, any>
	local defaultValues = {}
	local defs: typeof((definition :: OperationDefinitionNode).variableDefinitions) | nil
	if definition ~= nil then
		defs = definition.variableDefinitions
	else
		defs = nil
	end
	if defs ~= nil and #defs > 0 then
		Array.forEach(defs, function(def)
			if Boolean.toJSBoolean(def.defaultValue) then
				valueToObjectRepresentation(defaultValues, def.variable.name, def.defaultValue :: ValueNode)
			end
		end)
	end
	return defaultValues
end
exports.getDefaultValues = getDefaultValues
return exports
