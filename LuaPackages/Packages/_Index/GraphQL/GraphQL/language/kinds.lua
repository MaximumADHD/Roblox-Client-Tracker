--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/kinds.js
--!strict
local exports = {}

-- ROBLOX FIXME Luau: this gross workaround is because string literals don't automatically express as the singleton type yet
exports.Kind = {
	-- Name
	NAME = "Name" :: "Name",

	-- Document
	DOCUMENT = "Document" :: "Document",
	OPERATION_DEFINITION = "OperationDefinition" :: "OperationDefinition",
	VARIABLE_DEFINITION = "VariableDefinition" :: "VariableDefinition",
	SELECTION_SET = "SelectionSet" :: "SelectionSet",
	FIELD = "Field" :: "Field",
	ARGUMENT = "Argument" :: "Argument",

	-- Fragments
	FRAGMENT_SPREAD = "FragmentSpread" :: "FragmentSpread",
	INLINE_FRAGMENT = "InlineFragment" :: "InlineFragment",
	FRAGMENT_DEFINITION = "FragmentDefinition" :: "FragmentDefinition",

	-- Values
	VARIABLE = "Variable" :: "Variable",
	INT = "IntValue" :: "IntValue",
	FLOAT = "FloatValue" :: "FloatValue",
	STRING = "StringValue" :: "StringValue",
	BOOLEAN = "BooleanValue" :: "BooleanValue",
	NULL = "NullValue" :: "NullValue",
	ENUM = "EnumValue" :: "EnumValue",
	LIST = "ListValue" :: "ListValue",
	OBJECT = "ObjectValue" :: "ObjectValue",
	OBJECT_FIELD = "ObjectField" :: "ObjectField",

	-- Directives
	DIRECTIVE = "Directive" :: "Directive",

	-- Types
	NAMED_TYPE = "NamedType" :: "NamedType",
	LIST_TYPE = "ListType" :: "ListType",
	NON_NULL_TYPE = "NonNullType" :: "NonNullType",

	-- Type System Definitions
	SCHEMA_DEFINITION = "SchemaDefinition" :: "SchemaDefinition",
	OPERATION_TYPE_DEFINITION = "OperationTypeDefinition" :: "OperationTypeDefinition",

	-- Type Definitions
	SCALAR_TYPE_DEFINITION = "ScalarTypeDefinition" :: "ScalarTypeDefinition",
	OBJECT_TYPE_DEFINITION = "ObjectTypeDefinition" :: "ObjectTypeDefinition",
	FIELD_DEFINITION = "FieldDefinition" :: "FieldDefinition",
	INPUT_VALUE_DEFINITION = "InputValueDefinition" :: "InputValueDefinition",
	INTERFACE_TYPE_DEFINITION = "InterfaceTypeDefinition" :: "InterfaceTypeDefinition",
	UNION_TYPE_DEFINITION = "UnionTypeDefinition" :: "UnionTypeDefinition",
	ENUM_TYPE_DEFINITION = "EnumTypeDefinition" :: "EnumTypeDefinition",
	ENUM_VALUE_DEFINITION = "EnumValueDefinition" :: "EnumValueDefinition",
	INPUT_OBJECT_TYPE_DEFINITION = "InputObjectTypeDefinition" :: "InputObjectTypeDefinition",

	-- Directive Definitions
	DIRECTIVE_DEFINITION = "DirectiveDefinition" :: "DirectiveDefinition",

	-- Type System Extensions
	SCHEMA_EXTENSION = "SchemaExtension" :: "SchemaExtension",

	-- Type Extensions
	SCALAR_TYPE_EXTENSION = "ScalarTypeExtension" :: "ScalarTypeExtension",
	OBJECT_TYPE_EXTENSION = "ObjectTypeExtension" :: "ObjectTypeExtension",
	INTERFACE_TYPE_EXTENSION = "InterfaceTypeExtension" :: "InterfaceTypeExtension",
	UNION_TYPE_EXTENSION = "UnionTypeExtension" :: "UnionTypeExtension",
	ENUM_TYPE_EXTENSION = "EnumTypeExtension" :: "EnumTypeExtension",
	INPUT_OBJECT_TYPE_EXTENSION = "InputObjectTypeExtension" :: "InputObjectTypeExtension",
}

--[[
 * The enum type representing the possible kind values of AST nodes.
 *]]
-- ROBLOX deviation: Luau can't express this $Values<typeof Kind>, so unroll inline
-- ROBLOX FIXME StyLua: bug filed here: https://github.com/JohnnyMorganz/StyLua/issues/378

export type KindEnum =
	"Name"
	-- Document
	| "Document"
	| "OperationDefinition"
	| "VariableDefinition"
	| "SelectionSet"
	| "Field"
	| "Argument"
	-- Fragments
	| "FragmentSpread"
	| "InlineFragment"
	| "FragmentDefinition"
	-- Values
	| "Variable"
	| "IntValue"
	| "FloatValue"
	| "StringValue"
	| "BooleanValue"
	| "NullValue"
	| "EnumValue"
	| "ListValue"
	| "ObjectValue"
	| "ObjectField"
	-- Directives
	| "Directive"
	-- Types
	| "NamedType"
	| "ListType"
	| "NonNullType"
	-- Type System Definitions
	| "SchemaDefinition"
	| "OperationTypeDefinition"
	-- Type Definitions
	| "ScalarTypeDefinition"
	| "ObjectTypeDefinition"
	| "FieldDefinition"
	| "InputValueDefinition"
	| "InterfaceTypeDefinition"
	| "UnionTypeDefinition"
	| "EnumTypeDefinition"
	| "EnumValueDefinition"
	| "InputObjectTypeDefinition"
	-- Directive Definitions
	| "DirectiveDefinition"
	-- Type System Extensions
	| "SchemaExtension"
	-- Type Extensions
	| "ScalarTypeExtension"
	| "ObjectTypeExtension"
	| "InterfaceTypeExtension"
	| "UnionTypeExtension"
	| "EnumTypeExtension"
	| "InputObjectTypeExtension"

return exports
