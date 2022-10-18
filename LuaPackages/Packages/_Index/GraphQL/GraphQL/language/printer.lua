--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/printer.js
--!strict
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
local HttpService = game:GetService("HttpService")

local astImport = require(script.Parent.ast)
type ASTNode = astImport.ASTNode
type ArgumentNode = astImport.ArgumentNode
type ScalarTypeDefinitionNode = astImport.ScalarTypeDefinitionNode
type ObjectTypeDefinitionNode = astImport.ObjectTypeDefinitionNode
type FieldDefinitionNode = astImport.FieldDefinitionNode
type InputValueDefinitionNode = astImport.InputValueDefinitionNode
type InterfaceTypeDefinitionNode = astImport.InterfaceTypeDefinitionNode
type UnionTypeDefinitionNode = astImport.UnionTypeDefinitionNode
type EnumTypeDefinitionNode = astImport.EnumTypeDefinitionNode
type EnumValueDefinitionNode = astImport.EnumValueDefinitionNode
type InputObjectTypeDefinitionNode = astImport.InputObjectTypeDefinitionNode
type DirectiveDefinitionNode = astImport.DirectiveDefinitionNode
type ScalarTypeExtensionNode = astImport.ScalarTypeExtensionNode
type SchemaExtensionNode = astImport.SchemaExtensionNode
type ObjectTypeExtensionNode = astImport.ObjectTypeExtensionNode
type InterfaceTypeExtensionNode = astImport.InterfaceTypeExtensionNode
type UnionTypeExtensionNode = astImport.UnionTypeExtensionNode
type EnumTypeExtensionNode = astImport.EnumTypeExtensionNode
type InputObjectTypeExtensionNode = astImport.InputObjectTypeExtensionNode
type OperationDefinitionNode = astImport.OperationDefinitionNode
type OperationTypeDefinitionNode = astImport.OperationTypeDefinitionNode
type VariableDefinitionNode = astImport.VariableDefinitionNode
type VariableNode = astImport.VariableNode
type DocumentNode = astImport.DocumentNode
type FieldNode = astImport.FieldNode
type NameNode = astImport.NameNode
type SchemaDefinitionNode = astImport.SchemaDefinitionNode
type InlineFragmentNode = astImport.InlineFragmentNode
type FragmentDefinitionNode = astImport.FragmentDefinitionNode
type FragmentSpreadNode = astImport.FragmentSpreadNode
type ValueNode = astImport.ValueNode
type NamedTypeNode = astImport.NamedTypeNode
type ListTypeNode = astImport.ListTypeNode
type DirectiveNode = astImport.DirectiveNode
type StringValueNode = astImport.StringValueNode
type BooleanValueNode = astImport.BooleanValueNode
type NullValueNode = astImport.NullValueNode
type NonNullTypeNode = astImport.NonNullTypeNode
type EnumValueNode = astImport.EnumValueNode
type SelectionSetNode = astImport.SelectionSetNode

local visit = require(script.Parent.visitor).visit
local printBlockString = require(script.Parent.blockString).printBlockString

-- ROBLOX deviation: pre-declare functions, with repeat of types due to toposorting issue
local printDocASTReducer
local addDescription
local join: (maybeArray: Array<any>?, separator: string?) -> string
local block: (array: Array<any>?) -> string
local wrap: (start: string, maybeString: any?, end_: string?) -> string
local indent: (str: string) -> string
local isMultiline
local hasMultilineItems: (maybeArray: Array<any>?) -> boolean

--[[**
--  * Converts an AST into a string, using one set of reasonable
--  * formatting rules.
--  *]]
local function print_(ast: ASTNode): string
	return visit(ast, { leave = printDocASTReducer })
end

local MAX_LINE_LENGTH = 80

-- ROBLOX deviation: addDescription needs to be declared above printDocASTReducer
-- addDescription is called when declaring printDocASTReducer and Lua doesn't hoist functions
function addDescription(cb)
	-- ROBLOX note: 15.x.x isn't typed here, 16.x.x ditches this approach, and it's tricky to reverse engineer the right thing
	return function(_self, node)
		return join({ node.description, cb(node) }, "\n")
	end
end

-- TODO: provide better type coverage in future
printDocASTReducer = {
	Name = function(_self, node: NameNode)
		return node.value
	end,

	Variable = function(_self, node: VariableNode)
		return "$" .. tostring(node.name)
	end,

	-- Document

	Document = function(_self, node: DocumentNode)
		return join(node.definitions, "\n\n") .. "\n"
	end,

	OperationDefinition = function(_self, node: OperationDefinitionNode): SelectionSetNode | string
		local op = node.operation
		local name = node.name
		local varDefs = wrap("(", join(node.variableDefinitions, ", "), ")")
		local directives = join(node.directives, " ")
		local selectionSet = node.selectionSet
		-- Anonymous queries with no directives or variable definitions can use
		-- the query short form.
		if
			not name
			and not (directives and directives ~= "")
			and not (varDefs and varDefs ~= "")
			and op == "query"
		then
			return selectionSet
		else
			-- ROBLOX FIXME Luau: Luau needs to understand mixed arrays
			-- ROBLOX note: on this next line, name is NameNode, which is a bug. upstream 16.x fixes this with name.value, but that fix triggers test failures in 15.x
			return join(
				{ op, join({ name :: any, varDefs }), directives, selectionSet } :: Array<any>,
				" "
			)
		end
	end,

	VariableDefinition = function(_self, node: VariableDefinitionNode)
		local variable = node.variable
		local type_ = node.type
		local defaultValue = node.defaultValue
		local directives = node.directives
		return tostring(variable)
			.. ": "
			.. tostring(type_)
			.. wrap(" = ", defaultValue)
			.. wrap(" ", join(directives, " "))
	end,

	SelectionSet = function(_self, node)
		return block(node.selections)
	end,

	Field = function(_self, node: FieldNode)
		local alias = node.alias
		local name = node.name
		local args = node.arguments
		local directives = node.directives
		local selectionSet = node.selectionSet
		local prefix = wrap("", alias, ": ") .. tostring(name)
		local argsLine = prefix .. wrap("(", join(args, ", "), ")")

		-- ROBLOX deviation: assert valid utf8 string, utf8.len can return nil
		local argsLineLength = utf8.len(argsLine)
		assert(argsLineLength ~= nil, "invalid utf8 string")

		if argsLineLength > MAX_LINE_LENGTH then
			argsLine = prefix .. wrap("(\n", indent(join(args, "\n")), "\n)")
		end

		-- ROBLOX FIXME Luau: Luau needs to understand mixed arrays
		return join({ argsLine, join(directives, " "), selectionSet } :: Array<any>, " ")
	end,

	Argument = function(_self, node: ArgumentNode)
		local name = node.name
		local value = node.value
		return tostring(name) .. ": " .. tostring(value)
	end,

	-- Fragments

	FragmentSpread = function(_self, node: FragmentSpreadNode)
		local name = node.name
		local directives = node.directives
		return "..." .. tostring(name) .. wrap(" ", join(directives, " "))
	end,

	InlineFragment = function(_self, node: InlineFragmentNode)
		local typeCondition = node.typeCondition
		local directives = node.directives
		local selectionSet = node.selectionSet
		-- ROBLOX FIXME Luau: Luau needs to understand mixed arrays
		return join(
			{ "...", wrap("on ", typeCondition), join(directives, " "), selectionSet } :: Array<any>,
			" "
		)
	end,

	FragmentDefinition = function(_self, node: FragmentDefinitionNode)
		local name = node.name
		local typeCondition = node.typeCondition
		local variableDefinitions = node.variableDefinitions
		local directives = node.directives
		local selectionSet = node.selectionSet
		-- Note: fragment variable definitions are experimental and may be changed
		-- or removed in the future.
		-- ROBLOX deviation: inlined output for formatting
		local output = "fragment "
			.. tostring(name)
			.. wrap("(", join(variableDefinitions, ", "), ")")
			.. " "
			.. "on "
			.. tostring(typeCondition)
			.. " "
			.. wrap("", join(directives, " "), " ")
			.. tostring(selectionSet)
		return output
	end,

	-- Value

	IntValue = function(_self, node)
		local value = node.value
		return value
	end,
	FloatValue = function(_self, node)
		local value = node.value
		return value
	end,
	StringValue = function(_self, node: StringValueNode, key: string)
		local value = node.value
		local isBlockingString = node.block
		return if isBlockingString
			then printBlockString(value, if key == "description" then "" else "  ")
			else HttpService:JSONEncode(value)
	end,
	BooleanValue = function(_self, node: BooleanValueNode)
		local value = node.value
		if value then
			return "true"
		else
			return "false"
		end
	end,
	NullValue = function(_self, _node: NullValueNode)
		return "null"
	end,
	EnumValue = function(_self, node: EnumValueNode)
		local value = node.value
		return value
	end,
	ListValue = function(_self, node: { values: Array<string> })
		local values = node.values
		return "[" .. join(values, ", ") .. "]"
	end,
	ObjectValue = function(_self, node: { fields: Array<string> })
		local fields = node.fields
		return "{" .. join(fields, ", ") .. "}"
	end,
	ObjectField = function(_self, node: { name: string, value: string })
		local name = node.name
		local value = node.value
		return name .. ": " .. value
	end,

	-- Directive

	Directive = function(_self, node: DirectiveNode)
		local name = node.name
		local args = node.arguments
		return "@" .. tostring(name) .. wrap("(", join(args, ", "), ")")
	end,

	-- Type

	NamedType = function(_self, node: NamedTypeNode)
		local name = node.name
		return name
	end,
	ListType = function(_self, node: ListTypeNode)
		local type_ = node.type
		return "[" .. tostring(type_) .. "]"
	end,
	NonNullType = function(_self, node: NonNullTypeNode)
		local type_ = node.type
		return tostring(type_) .. "!"
	end,

	-- Type System Definitions

	-- ROBLOX note: 15.x.x isn't typed here, 16.x.x ditches this approach, and it's tricky to reverse engineer the right thing
	SchemaDefinition = addDescription(function(node: SchemaDefinitionNode)
		local directives = node.directives
		local operationTypes = node.operationTypes
		-- ROBLOX FIXME Luau: Luau needs to understand mixed arrays
		return join({ "schema", join(directives, " "), block(operationTypes) } :: Array<any>, " ")
	end),

	OperationTypeDefinition = function(_self, node: OperationTypeDefinitionNode)
		local operation = node.operation
		local type_ = node.type
		return tostring(operation) .. ": " .. tostring(type_)
	end,

	ScalarTypeDefinition = addDescription(function(node: ScalarTypeDefinitionNode)
		local name = node.name
		local directives = node.directives
		-- ROBLOX FIXME Luau: Luau needs to understand mixed arrays
		return join({ "scalar", name, join(directives, " ") } :: Array<any>, " ")
	end),

	ObjectTypeDefinition = addDescription(function(node: ObjectTypeDefinitionNode)
		local name = node.name
		local interfaces = node.interfaces
		local directives = node.directives
		local fields = node.fields
		return join({
			"type",
			name,
			wrap("implements ", join(interfaces, " & ")),
			join(directives, " "),
			block(fields),
		} :: Array<any>, " ")
	end),

	FieldDefinition = addDescription(function(node: FieldDefinitionNode)
		local name = node.name
		local args = node.arguments
		local type_ = node.type
		local directives = node.directives
		return tostring(name)
			.. (if hasMultilineItems(args)
				then wrap("(\n", indent(join(args, "\n")), "\n)")
				else wrap("(", join(args, ", "), ")"))
			.. ": "
			.. tostring(type_)
			.. wrap(" ", join(directives, " "))
	end),

	InputValueDefinition = addDescription(function(node: InputValueDefinitionNode)
		local name = node.name
		local type_ = node.type
		local defaultValue = node.defaultValue
		local directives = node.directives
		return join({
			tostring(name) .. ": " .. tostring(type_),
			wrap("= ", defaultValue),
			join(directives, " "),
		}, " ")
	end),

	InterfaceTypeDefinition = addDescription(function(node: InterfaceTypeDefinitionNode)
		local name = node.name
		local interfaces = node.interfaces
		local directives = node.directives
		local fields = node.fields
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"interface",
			name,
			wrap("implements ", join(interfaces, " & ")),
			join(directives, " "),
			block(fields),
		} :: Array<any>, " ")
	end),

	UnionTypeDefinition = addDescription(function(node: UnionTypeDefinitionNode)
		local name = node.name
		local directives = node.directives
		local types = node.types
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"union",
			name,
			join(directives, " "),
			(if types and #types ~= 0 then "= " .. join(types, " | ") else ""),
		} :: Array<any>, " ")
	end),

	EnumTypeDefinition = addDescription(function(node: EnumTypeDefinitionNode)
		local name = node.name
		local directives = node.directives
		local values = node.values
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"enum",
			name,
			join(directives, " "),
			block(values),
		} :: Array<any>, " ")
	end),

	EnumValueDefinition = addDescription(function(node: EnumValueDefinitionNode)
		local name = node.name
		local directives = node.directives
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			name,
			join(directives, " "),
		} :: Array<any>, " ")
	end),

	InputObjectTypeDefinition = addDescription(function(node: InputObjectTypeDefinitionNode)
		local name = node.name
		local directives = node.directives
		local fields = node.fields
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"input",
			name,
			join(directives, " "),
			block(fields),
		} :: Array<any>, " ")
	end),

	DirectiveDefinition = addDescription(function(node: DirectiveDefinitionNode)
		local name = node.name
		local args = node.arguments
		local repeatable = node.repeatable
		local locations = node.locations
		return "directive @"
			.. tostring(name)
			.. (if hasMultilineItems(args)
				then wrap("(\n", indent(join(args, "\n")), "\n)")
				else wrap("(", join(args, ", "), ")"))
			.. (if repeatable then " repeatable" else "")
			.. " on "
			.. join(locations, " | ")
	end),

	SchemaExtension = function(_self, node: SchemaExtensionNode)
		local directives = node.directives
		local operationTypes = node.operationTypes
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend schema",
			join(directives, " "),
			block(operationTypes),
		} :: Array<any>, " ")
	end,

	ScalarTypeExtension = function(_self, node: ScalarTypeExtensionNode)
		local name = node.name
		local directives = node.directives
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend scalar",
			name,
			join(directives, " "),
		} :: Array<any>, " ")
	end,

	ObjectTypeExtension = function(_self, node: ObjectTypeExtensionNode)
		local name = node.name
		local interfaces = node.interfaces
		local directives = node.directives
		local fields = node.fields
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend type",
			name,
			wrap("implements ", join(interfaces, " & ")),
			join(directives, " "),
			block(fields),
		} :: Array<any>, " ")
	end,

	InterfaceTypeExtension = function(_self, node: InterfaceTypeExtensionNode)
		local name = node.name
		local interfaces = node.interfaces
		local directives = node.directives
		local fields = node.fields
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend interface",
			name,
			wrap("implements ", join(interfaces, " & ")),
			join(directives, " "),
			block(fields),
		} :: Array<any>, " ")
	end,

	UnionTypeExtension = function(_self, node: UnionTypeExtensionNode)
		local name = node.name
		local directives = node.directives
		local types = node.types
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend union",
			name,
			join(directives, " "),
			(if types and #types ~= 0 then "= " .. join(types, " | ") else ""),
		} :: Array<any>, " ")
	end,

	EnumTypeExtension = function(_self, node: EnumTypeExtensionNode)
		local name = node.name
		local directives = node.directives
		local values = node.values
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend enum",
			name,
			join(directives, " "),
			block(values),
		} :: Array<any>, " ")
	end,

	InputObjectTypeExtension = function(_self, node: InputObjectTypeExtensionNode)
		local name = node.name
		local directives = node.directives
		local fields = node.fields
		-- ROBLOX FIXME Luau: Luau needs to support mixed arrays
		return join({
			"extend input",
			name,
			join(directives, " "),
			block(fields),
		} :: Array<any>, " ")
	end,
} :: any -- ROBLOX FIXME Luau: needs unification

--[[**
--  * Given maybeArray, print an empty string if it is null or empty, otherwise
--  * print all items together separated by separator if provided
--  *]]
function join(maybeArray: Array<any>?, separator: string?): string
	separator = separator or ""
	if maybeArray then
		return Array.join(
			Array.filter(maybeArray, function(x)
				return tostring(x) and x ~= ""
			end),
			separator
		)
	else
		return ""
	end
end

-- /**
--  * Given array, print each item on its own line, wrapped in an
--  * indented "{ }" block.
--  */
function block(array: Array<any>?): string
	return wrap("{\n", indent(join(array, "\n")), "\n}")
end

--[[**
--  * If maybeString is not nil or empty, then wrap with start and end, otherwise print an empty string.
--  *]]
function wrap(start: string, maybeString: any?, end_: string?): string
	end_ = end_ or ""
	if maybeString ~= nil and maybeString ~= "" then
		-- ROBLOX FIXME: Luau nil refinement improvements needed to remove tostring(maybeString)
		return start .. tostring(maybeString) .. tostring(end_)
	else
		return ""
	end
end

function indent(str: string): string
	-- ROBLOX deviation: separate local variable is necessary
	-- string.gsub return total nr of matches as a 2nd returned value
	local substr = str:gsub("\n", "\n  ")
	return wrap("  ", substr)
end

function isMultiline(str: string): boolean
	return string.find(tostring(str), "\n") ~= nil
end

function hasMultilineItems(maybeArray: Array<any>?): boolean
	return maybeArray ~= nil and Array.some(maybeArray, isMultiline)
end

return {
	print = print_,
}
