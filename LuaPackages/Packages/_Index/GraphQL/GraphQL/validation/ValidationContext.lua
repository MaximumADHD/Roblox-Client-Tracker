--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/661ff1a6b591eea1e7a7e7c9e6b8b2dcfabf3bd7/src/validation/ValidationContext.js
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
local Map = LuauPolyfill.Map
type Map<T, V> = LuauPolyfill.Map<T, V>

local jsutilsWorkspace = srcWorkspace.jsutils
local ObjMap = require(jsutilsWorkspace.ObjMap)
type ObjMap<T> = ObjMap.ObjMap<T>

local language = srcWorkspace.language
local Kind = require(language.kinds).Kind
local visitor = require(language.visitor)
local visit = visitor.visit
type ASTVisitor = visitor.ASTVisitor

local _ast = require(language.ast)
type DocumentNode = _ast.DocumentNode
type OperationDefinitionNode = _ast.OperationDefinitionNode
type VariableNode = _ast.VariableNode
type SelectionSetNode = _ast.SelectionSetNode
type FieldNode = _ast.FieldNode
type InlineFragmentNode = _ast.InlineFragmentNode
type FragmentSpreadNode = _ast.FragmentSpreadNode
type FragmentDefinitionNode = _ast.FragmentDefinitionNode

local _GraphQLErrorExports = require(srcWorkspace.error.GraphQLError)
type GraphQLError = _GraphQLErrorExports.GraphQLError

local TypeInfoExports = require(srcWorkspace.utilities.TypeInfo)
local TypeInfo = TypeInfoExports.TypeInfo
local visitWithTypeInfo = TypeInfoExports.visitWithTypeInfo
type TypeInfo = TypeInfoExports.TypeInfo

local _schemaExports = require(srcWorkspace.type.schema)
type GraphQLSchema = _schemaExports.GraphQLSchema
local directivesExports = require(srcWorkspace.type.directives)
type GraphQLDirective = directivesExports.GraphQLDirective

local definitionModule = require(srcWorkspace.type.definition)
type GraphQLInputType = definitionModule.GraphQLInputType
type GraphQLOutputType = definitionModule.GraphQLOutputType
type GraphQLCompositeType = definitionModule.GraphQLCompositeType
-- ROBLOX TODO: Luau doesn't currently support default type arguments, so we inline here
type GraphQLFieldDefaultTArgs = { [string]: any }
type GraphQLField<T, U> = definitionModule.GraphQLField<T, U, GraphQLFieldDefaultTArgs>
type GraphQLArgument = definitionModule.GraphQLArgument
type GraphQLEnumValue = definitionModule.GraphQLEnumValue

type NodeWithSelectionSet = OperationDefinitionNode | FragmentDefinitionNode
type VariableUsage = {
	node: VariableNode,
	type: GraphQLInputType?,
	defaultValue: any?,
}

-- /**
--  * An instance of this class is passed as the "this" context to all validators,
--  * allowing access to commonly useful contextual information from within a
--  * validation rule.
--  */
export type ASTValidationContext = {
	_ast: DocumentNode,
	_onError: (error: GraphQLError) -> (),
	_fragments: ObjMap<FragmentDefinitionNode>?,
	_fragmentSpreads: Map<SelectionSetNode, Array<FragmentSpreadNode>>,
	_recursivelyReferencedFragments: Map<OperationDefinitionNode, Array<FragmentDefinitionNode>>,
	-- ROBLOX FIXME Luau: when inheriting methods (ctor and otherwise), Luau does a union per ordinal argument rather than a union of the total signature.
	-- ROBLOX FIXME Luau: this leads to errors like "Type '(GraphQLSchema, DocumentNode, TypeInfo, (GraphQLError) -> ()) -> t1 [...] could not be converted into '(DocumentNode, (GraphQLError) -> ()) -> ASTValidationContext' [...] Table type 'DocumentNode' not compatible with type 'GraphQLSchema' because the former is missing fields"
	-- new: (ast: DocumentNode, onError: (GraphQLError) -> ()) -> ASTValidationContext,
	reportError: (self: ASTValidationContext, GraphQLError) -> (),
	getDocument: (self: ASTValidationContext) -> DocumentNode,
	getFragment: (self: ASTValidationContext, string) -> FragmentDefinitionNode?,
	getFragmentSpreads: (self: ASTValidationContext, SelectionSetNode) -> Array<FragmentSpreadNode>,
	getRecursivelyReferencedFragments: (
		self: ASTValidationContext,
		OperationDefinitionNode
	) -> Array<FragmentDefinitionNode>,
}

type ASTValidationContextStatics = {
	new: (...any) -> ASTValidationContext,
}

local ASTValidationContext: ASTValidationContext & ASTValidationContextStatics =
	({} :: any) :: ASTValidationContext & ASTValidationContextStatics
local ASTValidationContextMetatable = { __index = ASTValidationContext }

function ASTValidationContext.new(
	ast: DocumentNode,
	onError: (GraphQLError) -> ()
): ASTValidationContext
	return (
		setmetatable({
			_ast = ast,
			_fragments = nil,
			_fragmentSpreads = {},
			_recursivelyReferencedFragments = {},
			_onError = onError,
		}, ASTValidationContextMetatable) :: any
	) :: ASTValidationContext
end

function ASTValidationContext:reportError(error_: GraphQLError): ()
	self._onError(error_)
end

function ASTValidationContext:getDocument(): DocumentNode
	return self._ast
end

function ASTValidationContext:getFragment(name: string): FragmentDefinitionNode?
	local fragments: ObjMap<FragmentDefinitionNode>
	if self._fragments then
		fragments = self._fragments
	else
		fragments = {}
		for _, defNode in ipairs(self:getDocument().definitions) do
			if defNode.kind == Kind.FRAGMENT_DEFINITION then
				fragments[defNode.name.value] = defNode
			end
		end
		self._fragments = fragments
	end
	return fragments[name]
end

function ASTValidationContext:getFragmentSpreads(node: SelectionSetNode): Array<FragmentSpreadNode>
	-- ROBLOX FIXME Luau: workaround analysis issue until Deferred Constraint Resolution lands
	local spreads = self._fragmentSpreads[node] or {}
	if not self._fragmentSpreads[node] then
		local setsToVisit: Array<SelectionSetNode> = { node }
		while #setsToVisit ~= 0 do
			-- ROBLOX FIXME Luau: Luau doesn't understand that # ~= 0 means table.remove return will be non-nil
			local set = table.remove(setsToVisit) :: SelectionSetNode
			for _, selection in ipairs(set.selections) do
				-- ROBLOX FIXME Luau: kind is a singleton type, so else branch should narrow: Key 'selectionSet' is missing from 'FragmentSpreadNode' in the type 'FieldNode | FragmentSpreadNode | InlineFragmentNode'
				if selection.kind == Kind.FRAGMENT_SPREAD then
					-- ROBLOX FIXME Luau: TypeError: Cannot cast 'nil' into 'Array<FragmentSpreadNode>' because the types are unrelated
					table.insert(spreads :: Array<FragmentSpreadNode>, selection)
				elseif (selection :: FieldNode | InlineFragmentNode).selectionSet then
					table.insert(
						setsToVisit,
						(selection :: FieldNode | InlineFragmentNode).selectionSet :: SelectionSetNode
					)
				end
			end
		end
		self._fragmentSpreads[node] = spreads
	end
	return spreads
end

function ASTValidationContext:getRecursivelyReferencedFragments(
	operation: OperationDefinitionNode
): Array<FragmentDefinitionNode>
	-- ROBLOX FIXME Luau: workaround analysis issue until Deferred Constraint Resolution lands
	local fragments = self._recursivelyReferencedFragments[operation] or {}
	if not self._recursivelyReferencedFragments[operation] then
		local collectedNames = {}
		local nodesToVisit = { operation.selectionSet }
		while #nodesToVisit ~= 0 do
			-- ROBLOX FIXME Luau: Needs type states to understand that #x ~= 0 means table.remove(x) won't be nil
			local node = table.remove(nodesToVisit) :: SelectionSetNode
			for _, spread in ipairs(self:getFragmentSpreads(node)) do
				local fragName = spread.name.value
				if collectedNames[fragName] ~= true then
					collectedNames[fragName] = true
					local fragment = self:getFragment(fragName)
					if fragment then
						table.insert(fragments, fragment)
						table.insert(nodesToVisit, fragment.selectionSet)
					end
				end
			end
		end
		self._recursivelyReferencedFragments[operation] = fragments
	end
	return fragments
end

export type ASTValidationRule = (ASTValidationContext) -> ASTVisitor

export type SDLValidationContext = ASTValidationContext & {
	_schema: GraphQLSchema?,

	new: (...any) -> SDLValidationContext,

	getSchema: (self: SDLValidationContext) -> GraphQLSchema?,
}
local SDLValidationContext: SDLValidationContext = setmetatable(
	{},
	{ __index = ASTValidationContext }
) :: any
local SDLValidationContextMetatable = { __index = SDLValidationContext }

function SDLValidationContext.new(
	ast: DocumentNode,
	schema: GraphQLSchema?,
	onError: (GraphQLError) -> ()
): SDLValidationContext
	local self = (ASTValidationContext.new(ast, onError) :: any) :: SDLValidationContext
	self._schema = schema
	return (setmetatable(self, SDLValidationContextMetatable) :: any) :: SDLValidationContext
end

function SDLValidationContext:getSchema(): GraphQLSchema?
	return self._schema
end

export type SDLValidationRule = (SDLValidationContext) -> ASTVisitor

export type ValidationContext = ASTValidationContext & {
	_schema: GraphQLSchema,
	_typeInfo: TypeInfo,
	_variableUsages: Map<NodeWithSelectionSet, Array<VariableUsage>>,
	_recursiveVariableUsages: Map<OperationDefinitionNode, Array<VariableUsage>>,
	new: (
		schema: GraphQLSchema,
		ast: DocumentNode,
		typeInfo: TypeInfo,
		onError: (GraphQLError) -> ()
	) -> ValidationContext,
	-- ROBLOX deviation: add argument for self
	getSchema: (self: ValidationContext) -> GraphQLSchema,
	getVariableUsages: (self: ValidationContext, NodeWithSelectionSet) -> Array<VariableUsage>,
	getRecursiveVariableUsages: (
		self: ValidationContext,
		OperationDefinitionNode
	) -> Array<VariableUsage>,
	getType: (self: ValidationContext) -> GraphQLOutputType?,
	getParentType: (self: ValidationContext) -> GraphQLCompositeType?,
	getInputType: (self: ValidationContext) -> GraphQLInputType?,
	getParentInputType: (self: ValidationContext) -> GraphQLInputType?,
	getFieldDef: (self: ValidationContext) -> GraphQLField<any, any>?,
	getDirective: (self: ValidationContext) -> GraphQLDirective?,
	getArgument: (self: ValidationContext) -> GraphQLArgument?,
	getEnumValue: (self: ValidationContext) -> GraphQLEnumValue?,
}

-- ROBLOX TODO Luau: can't strongly type this table due to inactionable analyze message: Not all intersection parts are compatible. Type 'ASTValidationContext & ...
local ValidationContext =
	(setmetatable({}, { __index = ASTValidationContext }) :: any) :: ValidationContext
local ValidationContextMetatable = { __index = ValidationContext }

function ValidationContext.new(
	schema: GraphQLSchema,
	ast: DocumentNode,
	typeInfo: TypeInfo,
	onError: (GraphQLError) -> ()
): ValidationContext
	local self = (ASTValidationContext.new(ast, onError) :: any) :: ValidationContext
	self._schema = schema
	self._typeInfo = typeInfo
	self._variableUsages = Map.new() :: Map<
		FragmentDefinitionNode | OperationDefinitionNode,
		Array<VariableUsage>
	>
	self._recursiveVariableUsages = Map.new() :: Map<OperationDefinitionNode, Array<VariableUsage>>
	return (setmetatable(self, ValidationContextMetatable) :: any) :: ValidationContext
end

function ValidationContext:getSchema(): GraphQLSchema
	return self._schema
end

function ValidationContext:getVariableUsages(node: NodeWithSelectionSet): Array<VariableUsage>
	local usages = self._variableUsages[node]
	if not usages then
		local newUsages = {}
		local typeInfo = TypeInfo.new(self._schema)
		visit(
			node,
			visitWithTypeInfo(typeInfo, {
				VariableDefinition = function()
					return false
				end,
				Variable = function(_self, variable: VariableNode)
					table.insert(newUsages, {
						node = variable,
						type = typeInfo:getInputType(),
						defaultValue = typeInfo:getDefaultValue(),
					})
				end,
			})
		)
		usages = newUsages
		self._variableUsages[node] = usages
	end

	return usages
end

function ValidationContext:getRecursiveVariableUsages(
	operation: OperationDefinitionNode
): Array<VariableUsage>
	local usages = self._recursiveVariableUsages[operation]
	if not usages then
		usages = self:getVariableUsages(operation)
		for _, frag in ipairs(self:getRecursivelyReferencedFragments(operation)) do
			usages = Array.concat(usages, self:getVariableUsages(frag))
		end
		self._recursiveVariableUsages[operation] = usages
	end
	return usages
end

function ValidationContext:getType(): GraphQLOutputType?
	return self._typeInfo:getType()
end

function ValidationContext:getParentType(): GraphQLCompositeType?
	return self._typeInfo:getParentType()
end

function ValidationContext:getInputType(): GraphQLInputType?
	return self._typeInfo:getInputType()
end

function ValidationContext:getParentInputType(): GraphQLInputType?
	return self._typeInfo:getParentInputType()
end

function ValidationContext:getFieldDef(): GraphQLField<any, any>?
	return self._typeInfo:getFieldDef()
end

function ValidationContext:getDirective(): GraphQLDirective?
	return self._typeInfo:getDirective()
end

function ValidationContext:getArgument(): GraphQLArgument?
	return self._typeInfo:getArgument()
end

function ValidationContext:getEnumValue(): GraphQLEnumValue?
	return self._typeInfo:getEnumValue()
end

export type ValidationRule = (ValidationContext) -> ASTVisitor

return {
	ASTValidationContext = ASTValidationContext,
	SDLValidationContext = SDLValidationContext,
	ValidationContext = ValidationContext,
}
