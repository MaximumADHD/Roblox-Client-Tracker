--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/parser/index.ts
local exports = {}
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array, Boolean = LuauPolyfill.Array, LuauPolyfill.Boolean

local graphqlModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphqlModule.DocumentNode
type DefinitionNode = graphqlModule.DefinitionNode
type VariableDefinitionNode = graphqlModule.VariableDefinitionNode
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
local invariant = require(srcWorkspace.jsutils.invariant).invariant

local Map = LuauPolyfill.Map
type Map<T, V> = LuauPolyfill.Map<T, V>
type Array<T> = LuauPolyfill.Array<T>

local DocumentType = {
	Query = 0,
	Mutation = 1,
	Subscription = 2,
}
exports.DocumentType = DocumentType
export type DocumentType = number

export type IDocumentDefinition = { type: number, name: string, variables: Array<VariableDefinitionNode> }

local cache = Map.new(nil)
local function operationName(type_: DocumentType)
	local name
	--[[ ROBLOX comment: switch statement conversion ]]
	if type_ == DocumentType.Query then
		name = "Query"
	elseif type_ == DocumentType.Mutation then
		name = "Mutation"
	elseif type_ == DocumentType.Subscription then
		name = "Subscription"
	end
	return name
end
exports.operationName = operationName

-- This parser is mostly used to saftey check incoming documents.
local function parser(document: DocumentNode): IDocumentDefinition
	local cached = cache:get(document)
	if cached ~= nil then
		return cached
	end
	local variables, type_, name
	invariant(
		Boolean.toJSBoolean(document) and Boolean.toJSBoolean(document.kind),
		("Argument of %s passed to parser was not a valid GraphQL "):format(tostring(document))
			.. "DocumentNode. You may need to use 'graphql-tag' or another method "
			.. "to convert your operation into a document"
	)
	local fragments = Array.filter(document.definitions, function(x: DefinitionNode)
		return x.kind == "FragmentDefinition"
	end) :: Array<DefinitionNode>

	local queries = Array.filter(document.definitions, function(x: DefinitionNode)
		-- ROBLOX TODO: OperationDefinitionNode cast could be removed once we adopt singleton type for kind field
		return x.kind == "OperationDefinition" and (x :: OperationDefinitionNode).operation == "query"
	end) :: Array<DefinitionNode>

	local mutations = Array.filter(document.definitions, function(x: DefinitionNode)
		-- ROBLOX TODO: OperationDefinitionNode cast could be removed once we adopt singleton type for kind field
		return x.kind == "OperationDefinition" and (x :: OperationDefinitionNode).operation == "mutation"
	end) :: Array<DefinitionNode>

	local subscriptions = Array.filter(document.definitions, function(x: DefinitionNode)
		return x.kind == "OperationDefinition" and (x :: OperationDefinitionNode).operation == "subscription"
	end) :: Array<DefinitionNode>

	invariant(
		#fragments == 0 or (#queries ~= 0 or #mutations ~= 0 or #subscriptions ~= 0),
		"Passing only a fragment to 'graphql' is not yet supported. "
			.. "You must include a query, subscription or mutation as well"
	)
	invariant(
		#queries + #mutations + #subscriptions <= 1,
		"react-apollo only supports a query, subscription, or a mutation per HOC. "
			.. ("%s had %s queries, %s "):format(tostring(document), tostring(#queries), tostring(#subscriptions))
			.. ("subscriptions and %s mutations. "):format(tostring(#mutations))
			.. "You can use 'compose' to join multiple operation types to a component"
	)

	type_ = if #queries ~= 0 then DocumentType.Query else DocumentType.Mutation

	if #queries == 0 and #mutations == 0 then
		type_ = DocumentType.Subscription
	end

	-- ROBLOX FIXME Luau: Luau currently needs this manual annotation because unification fails here: CLI-48823
	local definitions: Array<DefinitionNode> = if #queries > 0
		then queries
		else if #mutations > 0 then mutations else subscriptions

	invariant(
		#definitions == 1,
		("react-apollo only supports one definition per HOC. %s had "):format(tostring(document))
			.. ("%s definitions. "):format(tostring(#definitions))
			.. "You can use 'compose' to join multiple operation types to a component"
	)

	local definition = definitions[1] :: OperationDefinitionNode
	variables = definition.variableDefinitions and definition.variableDefinitions or {}
	if definition.name and definition.name.kind == "Name" then
		name = definition.name.value
	else
		name = "data" -- fallback to using data if no name
	end

	local payload = { name = name, type = type_, variables = variables }
	cache:set(document, payload)
	return payload
end

exports.parser = parser

return exports
