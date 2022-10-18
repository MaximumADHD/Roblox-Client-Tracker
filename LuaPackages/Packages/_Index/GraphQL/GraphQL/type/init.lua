--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/index.js

local exports = {}

local PathModule = require(script.Parent.jsutils.Path)
export type ResponsePath = PathModule.Path

local schemaModule = require(script.schema)
-- Predicate
exports.isSchema = schemaModule.isSchema
-- Assertion
exports.assertSchema = schemaModule.assertSchema
-- GraphQL Schema definition
exports.GraphQLSchema = schemaModule.GraphQLSchema

export type GraphQLSchemaConfig = schemaModule.GraphQLSchemaConfig
export type GraphQLSchema = schemaModule.GraphQLSchema

local definitionModule = require(script.definition)
-- Predicates
exports.isType = definitionModule.isType
exports.isScalarType = definitionModule.isScalarType
exports.isObjectType = definitionModule.isObjectType
exports.isInterfaceType = definitionModule.isInterfaceType
exports.isUnionType = definitionModule.isUnionType
exports.isEnumType = definitionModule.isEnumType
exports.isInputObjectType = definitionModule.isInputObjectType
exports.isListType = definitionModule.isListType
exports.isNonNullType = definitionModule.isNonNullType
exports.isInputType = definitionModule.isInputType
exports.isOutputType = definitionModule.isOutputType
exports.isLeafType = definitionModule.isLeafType
exports.isCompositeType = definitionModule.isCompositeType
exports.isAbstractType = definitionModule.isAbstractType
exports.isWrappingType = definitionModule.isWrappingType
exports.isNullableType = definitionModule.isNullableType
exports.isNamedType = definitionModule.isNamedType
exports.isRequiredArgument = definitionModule.isRequiredArgument
exports.isRequiredInputField = definitionModule.isRequiredInputField
-- Assertions
exports.assertType = definitionModule.assertType
exports.assertScalarType = definitionModule.assertScalarType
exports.assertObjectType = definitionModule.assertObjectType
exports.assertInterfaceType = definitionModule.assertInterfaceType
exports.assertUnionType = definitionModule.assertUnionType
exports.assertEnumType = definitionModule.assertEnumType
exports.assertInputObjectType = definitionModule.assertInputObjectType
exports.assertListType = definitionModule.assertListType
exports.assertNonNullType = definitionModule.assertNonNullType
exports.assertInputType = definitionModule.assertInputType
exports.assertOutputType = definitionModule.assertOutputType
exports.assertLeafType = definitionModule.assertLeafType
exports.assertCompositeType = definitionModule.assertCompositeType
exports.assertAbstractType = definitionModule.assertAbstractType
exports.assertWrappingType = definitionModule.assertWrappingType
exports.assertNullableType = definitionModule.assertNullableType
exports.assertNamedType = definitionModule.assertNamedType
-- Un-modifiers
exports.getNullableType = definitionModule.getNullableType
exports.getNamedType = definitionModule.getNamedType
-- Definitions
exports.GraphQLScalarType = definitionModule.GraphQLScalarType
exports.GraphQLObjectType = definitionModule.GraphQLObjectType
exports.GraphQLInterfaceType = definitionModule.GraphQLInterfaceType
exports.GraphQLUnionType = definitionModule.GraphQLUnionType
exports.GraphQLEnumType = definitionModule.GraphQLEnumType
exports.GraphQLInputObjectType = definitionModule.GraphQLInputObjectType
-- Type Wrappers
exports.GraphQLList = definitionModule.GraphQLList
exports.GraphQLNonNull = definitionModule.GraphQLNonNull

export type GraphQLScalarType = definitionModule.GraphQLScalarType
export type GraphQLObjectType = definitionModule.GraphQLObjectType
export type GraphQLInterfaceType = definitionModule.GraphQLInterfaceType
export type GraphQLUnionType = definitionModule.GraphQLUnionType
export type GraphQLEnumType = definitionModule.GraphQLEnumType
export type GraphQLInputObjectType = definitionModule.GraphQLInputObjectType

local directivesModule = require(script.directives)

-- Predicate
exports.isDirective = directivesModule.isDirective
-- Assertion
exports.assertDirective = directivesModule.assertDirective
-- Directives Definition
exports.GraphQLDirective = directivesModule.GraphQLDirective
-- Built-in Directives defined by the Spec
exports.isSpecifiedDirective = directivesModule.isSpecifiedDirective
exports.specifiedDirectives = directivesModule.specifiedDirectives
exports.GraphQLIncludeDirective = directivesModule.GraphQLIncludeDirective
exports.GraphQLSkipDirective = directivesModule.GraphQLSkipDirective
exports.GraphQLDeprecatedDirective = directivesModule.GraphQLDeprecatedDirective
exports.GraphQLSpecifiedByDirective = directivesModule.GraphQLSpecifiedByDirective
-- Constant Deprecation Reason
exports.DEFAULT_DEPRECATION_REASON = directivesModule.DEFAULT_DEPRECATION_REASON

export type GraphQLDirectiveConfig = directivesModule.GraphQLDirectiveConfig
export type GraphQLDirective = directivesModule.GraphQLDirective

-- Common built-in scalar instances.
local scalarsModule = require(script.scalars)

-- Predicate
exports.isSpecifiedScalarType = scalarsModule.isSpecifiedScalarType
-- Standard GraphQL Scalars
exports.specifiedScalarTypes = scalarsModule.specifiedScalarTypes
exports.GraphQLInt = scalarsModule.GraphQLInt
exports.GraphQLFloat = scalarsModule.GraphQLFloat
exports.GraphQLString = scalarsModule.GraphQLString
exports.GraphQLBoolean = scalarsModule.GraphQLBoolean
exports.GraphQLID = scalarsModule.GraphQLID

local introspectionModule = require(script.introspection)

-- Predicate
exports.isIntrospectionType = introspectionModule.isIntrospectionType
-- GraphQL Types for introspection.
exports.introspectionTypes = introspectionModule.introspectionTypes
exports.__Schema = introspectionModule.__Schema
exports.__Directive = introspectionModule.__Directive
exports.__DirectiveLocation = introspectionModule.__DirectiveLocation
exports.__Type = introspectionModule.__Type
exports.__Field = introspectionModule.__Field
exports.__InputValue = introspectionModule.__InputValue
exports.__EnumValue = introspectionModule.__EnumValue
exports.__TypeKind = introspectionModule.__TypeKind
-- "Enum" of Type Kinds
exports.TypeKind = introspectionModule.TypeKind
-- Meta-field definitions.
exports.SchemaMetaFieldDef = introspectionModule.SchemaMetaFieldDef
exports.TypeMetaFieldDef = introspectionModule.TypeMetaFieldDef
exports.TypeNameMetaFieldDef = introspectionModule.TypeNameMetaFieldDef

-- ROBLOX deviation: add types
export type GraphQLType = definitionModule.GraphQLType
export type GraphQLInputType = definitionModule.GraphQLInputType
export type GraphQLOutputType = definitionModule.GraphQLOutputType
export type GraphQLLeafType = definitionModule.GraphQLLeafType
export type GraphQLCompositeType = definitionModule.GraphQLCompositeType
export type GraphQLAbstractType = definitionModule.GraphQLAbstractType
export type GraphQLWrappingType = definitionModule.GraphQLWrappingType
export type GraphQLNullableType = definitionModule.GraphQLNullableType
export type GraphQLNamedType = definitionModule.GraphQLNamedType
export type Thunk<T> = definitionModule.Thunk<T>
export type GraphQLArgument = definitionModule.GraphQLArgument
export type GraphQLArgumentConfig = definitionModule.GraphQLArgumentConfig
export type GraphQLEnumTypeConfig = definitionModule.GraphQLEnumTypeConfig
export type GraphQLEnumValue = definitionModule.GraphQLEnumValue
export type GraphQLEnumValueConfig = definitionModule.GraphQLEnumValueConfig
export type GraphQLEnumValueConfigMap = definitionModule.GraphQLEnumValueConfigMap
export type GraphQLField<TSource, TContext, TArgs> = definitionModule.GraphQLField<
	TSource,
	TContext,
	TArgs
>
export type GraphQLFieldConfig<TSource, TContext, TArgs> = definitionModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
export type GraphQLFieldConfigArgumentMap = definitionModule.GraphQLFieldConfigArgumentMap
export type GraphQLFieldConfigMap<TSource, TContext> = definitionModule.GraphQLFieldConfigMap<
	TSource,
	TContext
>
export type GraphQLFieldMap<TSource, TContext> = definitionModule.GraphQLFieldMap<TSource, TContext>
export type GraphQLFieldResolver<TSource, TContext, TArgs> = definitionModule.GraphQLFieldResolver<
	TSource,
	TContext,
	TArgs
>
export type GraphQLInputField = definitionModule.GraphQLInputField
export type GraphQLInputFieldConfig = definitionModule.GraphQLInputFieldConfig
export type GraphQLInputFieldConfigMap = definitionModule.GraphQLInputFieldConfigMap
export type GraphQLInputFieldMap = definitionModule.GraphQLInputFieldMap
export type GraphQLInputObjectTypeConfig = definitionModule.GraphQLInputObjectTypeConfig
export type GraphQLInterfaceTypeConfig<TSource, TContext> =
	definitionModule.GraphQLInterfaceTypeConfig<TSource, TContext>
export type GraphQLIsTypeOfFn<TSource, TContext> = definitionModule.GraphQLIsTypeOfFn<
	TSource,
	TContext
>
export type GraphQLObjectTypeConfig<TSource, TContext> = definitionModule.GraphQLObjectTypeConfig<
	TSource,
	TContext
>
export type GraphQLResolveInfo = definitionModule.GraphQLResolveInfo
export type GraphQLScalarTypeConfig<TInternal, TExternal> = definitionModule.GraphQLScalarTypeConfig<
	TInternal,
	TExternal
>
export type GraphQLTypeResolver<TSource, TContext> = definitionModule.GraphQLTypeResolver<
	TSource,
	TContext
>
export type GraphQLUnionTypeConfig<TSource, TContext> = definitionModule.GraphQLUnionTypeConfig<
	TSource,
	TContext
>
export type GraphQLScalarSerializer<TExternal> = definitionModule.GraphQLScalarSerializer<TExternal>
export type GraphQLScalarValueParser<TInternal> = definitionModule.GraphQLScalarValueParser<
	TInternal
>
export type GraphQLScalarLiteralParser<TInternal> = definitionModule.GraphQLScalarLiteralParser<
	TInternal
>

-- Validate GraphQL schema.
local validateModule = require(script.validate)

exports.validateSchema = validateModule.validateSchema
exports.assertValidSchema = validateModule.assertValidSchema

return exports
