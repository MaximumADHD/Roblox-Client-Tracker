-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/collectFields.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Set<T> = LuauPolyfill.Set<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
-- ROBLOX deviation START: fix import
-- local memoize5 = require(script.Parent["memoize.js"]).memoize5
local memoize5 = require(script.Parent.memoize).memoize5
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import types
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- local SelectionSetNode = graphqlModule.SelectionSetNode
-- local FieldNode = graphqlModule.FieldNode
type GraphQLSchema = graphqlModule.GraphQLSchema
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type SelectionSetNode = graphqlModule.SelectionSetNode
type FieldNode = graphqlModule.FieldNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import types
-- local FragmentSpreadNode = graphqlModule.FragmentSpreadNode
-- local InlineFragmentNode = graphqlModule.InlineFragmentNode
type FragmentSpreadNode = graphqlModule.FragmentSpreadNode
type InlineFragmentNode = graphqlModule.InlineFragmentNode
-- ROBLOX deviation END
local getDirectiveValues = graphqlModule.getDirectiveValues
local GraphQLSkipDirective = graphqlModule.GraphQLSkipDirective
local GraphQLIncludeDirective = graphqlModule.GraphQLIncludeDirective
local isAbstractType = graphqlModule.isAbstractType
local typeFromAST = graphqlModule.typeFromAST
-- ROBLOX deviation START: predeclare variables
local shouldIncludeNode
local getFieldEntryKey
local doesFragmentConditionMatch
-- ROBLOX deviation END
-- ROBLOX deviation START: additional types
type NamedTypeNode = graphqlModule.NamedTypeNode
type GraphQLAbstractType = graphqlModule.GraphQLAbstractType
-- ROBLOX deviation END
-- Taken from GraphQL-JS v16 for backwards compat
local function collectFields(
	schema: GraphQLSchema,
	fragments: Record<string, FragmentDefinitionNode>,
	variableValues: { [string]: unknown },
	runtimeType: GraphQLObjectType,
	selectionSet: SelectionSetNode,
	fields: Map<string, Array<FieldNode>>,
	visitedFragmentNames: Set<string>
): Map<string, Array<FieldNode>>
	for _, selection in selectionSet.selections do
		repeat --[[ ROBLOX comment: switch statement conversion ]]
			local condition_ = selection.kind
			if condition_ == Kind.FIELD then
				do
					if not Boolean.toJSBoolean(shouldIncludeNode(variableValues, selection)) then
						continue
					end
					-- ROBLOX deviation START: need cast
					-- local name = getFieldEntryKey(selection)
					-- ROBLOX FIXME Luau: should narrow type
					local name = getFieldEntryKey(selection :: FieldNode)
					-- ROBLOX deviation END
					local fieldList = fields:get(name)
					if fieldList ~= nil then
						-- ROBLOX deviation START: need cast
						-- table.insert(fieldList, selection) --[[ ROBLOX CHECK: check if 'fieldList' is an Array ]]
						table.insert(fieldList, selection :: FieldNode)
						-- ROBLOX deviation END
					else
						-- ROBLOX deviation START: need cast
						-- fields:set(name, { selection })
						fields:set(name, { selection :: FieldNode })
						-- ROBLOX deviation END
					end
					break
				end
			elseif condition_ == Kind.INLINE_FRAGMENT then
				do
					if
						-- ROBLOX deviation START: simplify
						-- not Boolean.toJSBoolean(shouldIncludeNode(variableValues, selection))
						-- or not Boolean.toJSBoolean(
						-- 	doesFragmentConditionMatch(schema, selection, runtimeType)
						-- )
						-- ROBLOX FIXME Luau: should narrow type
						not shouldIncludeNode(variableValues, selection)
						or not doesFragmentConditionMatch(schema, selection :: InlineFragmentNode, runtimeType)
						-- ROBLOX deviation END
					then
						continue
					end
					collectFields(
						schema,
						fragments,
						variableValues,
						runtimeType,
						-- ROBLOX deviation START: need cast
						-- selection.selectionSet,
						(selection :: InlineFragmentNode).selectionSet,
						-- ROBLOX deviation END
						fields,
						visitedFragmentNames
					)
					break
				end
			elseif condition_ == Kind.FRAGMENT_SPREAD then
				do
					-- ROBLOX deviation START: simplify
					-- local fragName = selection.name.value
					-- if
					-- 	Boolean.toJSBoolean((function()
					-- 		local ref = visitedFragmentNames:has(fragName)
					-- 		return Boolean.toJSBoolean(ref) and ref
					-- 			or not Boolean.toJSBoolean(shouldIncludeNode(variableValues, selection))
					-- 	end)())
					-- then
					local fragName = (selection :: FragmentSpreadNode).name.value
					if visitedFragmentNames:has(fragName) or not shouldIncludeNode(variableValues, selection) then
						-- ROBLOX deviation END
						continue
					end
					visitedFragmentNames:add(fragName)
					local fragment = fragments[tostring(fragName)]
					if
						not Boolean.toJSBoolean(fragment)
						or not Boolean.toJSBoolean(doesFragmentConditionMatch(schema, fragment, runtimeType))
					then
						continue
					end
					collectFields(
						schema,
						fragments,
						variableValues,
						runtimeType,
						fragment.selectionSet,
						fields,
						visitedFragmentNames
					)
					break
				end
			end
		until true
	end
	return fields
end
exports.collectFields = collectFields
--[[*
 * Determines if a field should be included based on the `@include` and `@skip`
 * directives, where `@skip` has higher precedence than `@include`.
 ]]
-- ROBLOX deviation START: predeclare function
-- local function shouldIncludeNode(
function shouldIncludeNode(
	-- ROBLOX deviation END
	variableValues: { [string]: unknown },
	node: FragmentSpreadNode | FieldNode | InlineFragmentNode
): boolean
	local skip = getDirectiveValues(GraphQLSkipDirective, node, variableValues)
	if (if typeof(skip) == "table" then skip["if"] else nil) == true then
		return false
	end
	local include = getDirectiveValues(GraphQLIncludeDirective, node, variableValues)
	if (if typeof(include) == "table" then include["if"] else nil) == false then
		return false
	end
	return true
end
--[[*
 * Determines if a fragment is applicable to the given type.
 ]]
-- ROBLOX deviation START: predeclare function
-- local function doesFragmentConditionMatch(
function doesFragmentConditionMatch(
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	fragment: FragmentDefinitionNode | InlineFragmentNode,
	-- ROBLOX deviation START: add explicit type
	-- type_
	type_: GraphQLObjectType
	-- ROBLOX deviation END
): boolean
	local typeConditionNode = fragment.typeCondition
	if not Boolean.toJSBoolean(typeConditionNode) then
		return true
	end
	-- ROBLOX deviation START: need cast
	-- local conditionalType = typeFromAST(schema, typeConditionNode)
	local conditionalType = typeFromAST(schema, typeConditionNode :: NamedTypeNode)
	-- ROBLOX deviation END
	if conditionalType == type_ then
		return true
	end
	if Boolean.toJSBoolean(isAbstractType(conditionalType)) then
		-- ROBLOX deviation START: need cast
		-- local possibleTypes = schema:getPossibleTypes(conditionalType)
		local possibleTypes = schema:getPossibleTypes(conditionalType :: GraphQLAbstractType)
		-- ROBLOX deviation END
		return Array.includes(possibleTypes, type_) --[[ ROBLOX CHECK: check if 'possibleTypes' is an Array ]]
	end
	return false
end
--[[*
 * Implements the logic to compute the key of a given field's entry
 ]]
-- ROBLOX deviation START: predeclare function
-- local function getFieldEntryKey(node: FieldNode): string
function getFieldEntryKey(node: FieldNode): string
	-- ROBLOX deviation END
	-- ROBLOX deviation START: no nil assertion because of Boolean.toJSBoolaan
	-- return if Boolean.toJSBoolean(node.alias) then node.alias.value else node.name.value
	return if node.alias then node.alias.value else node.name.value
	-- ROBLOX deviation END
end
local collectSubFields = memoize5(
	function(
		schema: GraphQLSchema,
		fragments: Record<string, FragmentDefinitionNode>,
		variableValues: Record<string, any>,
		type_,
		fieldNodes: Array<FieldNode>
	): Map<string, Array<FieldNode>>
		local subFieldNodes = Map.new()
		local visitedFragmentNames = Set.new()
		for _, fieldNode in fieldNodes do
			-- ROBLOX deviation START: no nil assertion because of Boolean.toJSBoolean
			-- if Boolean.toJSBoolean(fieldNode.selectionSet) then
			if fieldNode.selectionSet then
				-- ROBLOX deviation END
				collectFields(
					schema,
					fragments,
					variableValues,
					type_,
					fieldNode.selectionSet,
					subFieldNodes,
					visitedFragmentNames
				)
			end
		end
		return subFieldNodes
	end
)
exports.collectSubFields = collectSubFields
return exports
