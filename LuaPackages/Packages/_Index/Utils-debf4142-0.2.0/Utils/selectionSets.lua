-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/selectionSets.ts
local Packages = script.Parent.Parent
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import types
-- local OperationDefinitionNode = graphqlModule.OperationDefinitionNode
-- local SelectionSetNode = graphqlModule.SelectionSetNode
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
type SelectionSetNode = graphqlModule.SelectionSetNode
-- ROBLOX deviation END
local parse = graphqlModule.parse
-- ROBLOX deviation START: import type
-- local GraphQLParseOptions = require(script.Parent["Interfaces.js"]).GraphQLParseOptions
local interfacesJsModule = require(script.Parent.Interfaces)
type GraphQLParseOptions = interfacesJsModule.GraphQLParseOptions
-- ROBLOX deviation END
local function parseSelectionSet(selectionSet: string, options: GraphQLParseOptions?): SelectionSetNode
	local query = parse(selectionSet, options).definitions[
		1 --[[ ROBLOX adaptation: added 1 to array index ]]
	] :: OperationDefinitionNode
	return query.selectionSet
end
exports.parseSelectionSet = parseSelectionSet
return exports
