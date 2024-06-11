--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/index.js
--!strict

--[[
 * GraphQL.js provides a reference implementation for the GraphQL specification
 * but is also a useful utility for operating on GraphQL files and building
 * sophisticated tools.
 *
 * This primary module exports a general purpose function for fulfilling all
 * steps of the GraphQL specification in a single operation, but also includes
 * utilities for every part of the GraphQL specification:
 *
 *   - Parsing the GraphQL language.
 *   - Building a GraphQL type schema.
 *   - Validating a GraphQL request against a type schema.
 *   - Executing a GraphQL request against a type schema.
 *
 * This also includes utility functions for operating on GraphQL types and
 * GraphQL documents to facilitate building tools.
 *
 * You may also import from each sub-directory directly. For example, the
 * following two import statements are equivalent:
 *
 *     import { parse } from 'graphql';
 *     import { parse } from 'graphql/language';
 *]]

local exports = {}

-- The GraphQL.js version info.
local versionModule = require(script.version)
exports.version = versionModule.version
exports.versionInfo = versionModule.versionInfo

-- The primary entry point into fulfilling a GraphQL request.
local graphQlModule = require(script.graphql)
exports.graphql = graphQlModule.graphql
exports.graphqlSync = graphQlModule.graphqlSync

export type GraphQLArgs = graphQlModule.GraphQLArgs

-- Create and operate on GraphQL type definitions and schema.
local typeModule = require(script.type)

-- Definitions
exports.GraphQLSchema = typeModule.GraphQLSchema
exports.GraphQLDirective = typeModule.GraphQLDirective
exports.GraphQLScalarType = typeModule.GraphQLScalarType
exports.GraphQLObjectType = typeModule.GraphQLObjectType
exports.GraphQLInterfaceType = typeModule.GraphQLInterfaceType
exports.GraphQLUnionType = typeModule.GraphQLUnionType
exports.GraphQLEnumType = typeModule.GraphQLEnumType
exports.GraphQLInputObjectType = typeModule.GraphQLInputObjectType
exports.GraphQLList = typeModule.GraphQLList
exports.GraphQLNonNull = typeModule.GraphQLNonNull
-- Standard GraphQL Scalars
exports.specifiedScalarTypes = typeModule.specifiedScalarTypes
exports.GraphQLInt = typeModule.GraphQLInt
exports.GraphQLFloat = typeModule.GraphQLFloat
exports.GraphQLString = typeModule.GraphQLString
exports.GraphQLBoolean = typeModule.GraphQLBoolean
exports.GraphQLID = typeModule.GraphQLID
-- Built-in Directives defined by the Spec
exports.specifiedDirectives = typeModule.specifiedDirectives
exports.GraphQLIncludeDirective = typeModule.GraphQLIncludeDirective
exports.GraphQLSkipDirective = typeModule.GraphQLSkipDirective
exports.GraphQLDeprecatedDirective = typeModule.GraphQLDeprecatedDirective
exports.GraphQLSpecifiedByDirective = typeModule.GraphQLSpecifiedByDirective
-- "Enum" of Type Kinds
exports.TypeKind = typeModule.TypeKind
-- Constant Deprecation Reason
exports.DEFAULT_DEPRECATION_REASON = typeModule.DEFAULT_DEPRECATION_REASON
-- GraphQL Types for introspection.
exports.introspectionTypes = typeModule.introspectionTypes
exports.__Schema = typeModule.__Schema
exports.__Directive = typeModule.__Directive
exports.__DirectiveLocation = typeModule.__DirectiveLocation
exports.__Type = typeModule.__Type
exports.__Field = typeModule.__Field
exports.__InputValue = typeModule.__InputValue
exports.__EnumValue = typeModule.__EnumValue
exports.__TypeKind = typeModule.__TypeKind
-- Meta-field definitions.
exports.SchemaMetaFieldDef = typeModule.SchemaMetaFieldDef
exports.TypeMetaFieldDef = typeModule.TypeMetaFieldDef
exports.TypeNameMetaFieldDef = typeModule.TypeNameMetaFieldDef
-- Predicates
exports.isSchema = typeModule.isSchema
exports.isDirective = typeModule.isDirective
exports.isType = typeModule.isType
exports.isScalarType = typeModule.isScalarType
exports.isObjectType = typeModule.isObjectType
exports.isInterfaceType = typeModule.isInterfaceType
exports.isUnionType = typeModule.isUnionType
exports.isEnumType = typeModule.isEnumType
exports.isInputObjectType = typeModule.isInputObjectType
exports.isListType = typeModule.isListType
exports.isNonNullType = typeModule.isNonNullType
exports.isInputType = typeModule.isInputType
exports.isOutputType = typeModule.isOutputType
exports.isLeafType = typeModule.isLeafType
exports.isCompositeType = typeModule.isCompositeType
exports.isAbstractType = typeModule.isAbstractType
exports.isWrappingType = typeModule.isWrappingType
exports.isNullableType = typeModule.isNullableType
exports.isNamedType = typeModule.isNamedType
exports.isRequiredArgument = typeModule.isRequiredArgument
exports.isRequiredInputField = typeModule.isRequiredInputField
exports.isSpecifiedScalarType = typeModule.isSpecifiedScalarType
exports.isIntrospectionType = typeModule.isIntrospectionType
exports.isSpecifiedDirective = typeModule.isSpecifiedDirective
-- Assertions
exports.assertSchema = typeModule.assertSchema
exports.assertDirective = typeModule.assertDirective
exports.assertType = typeModule.assertType
exports.assertScalarType = typeModule.assertScalarType
exports.assertObjectType = typeModule.assertObjectType
exports.assertInterfaceType = typeModule.assertInterfaceType
exports.assertUnionType = typeModule.assertUnionType
exports.assertEnumType = typeModule.assertEnumType
exports.assertInputObjectType = typeModule.assertInputObjectType
exports.assertListType = typeModule.assertListType
exports.assertNonNullType = typeModule.assertNonNullType
exports.assertInputType = typeModule.assertInputType
exports.assertOutputType = typeModule.assertOutputType
exports.assertLeafType = typeModule.assertLeafType
exports.assertCompositeType = typeModule.assertCompositeType
exports.assertAbstractType = typeModule.assertAbstractType
exports.assertWrappingType = typeModule.assertWrappingType
exports.assertNullableType = typeModule.assertNullableType
exports.assertNamedType = typeModule.assertNamedType
-- Un-modifiers
exports.getNullableType = typeModule.getNullableType
exports.getNamedType = typeModule.getNamedType
-- Validate GraphQL schema.
exports.validateSchema = typeModule.validateSchema
exports.assertValidSchema = typeModule.assertValidSchema

export type GraphQLType = typeModule.GraphQLType
export type GraphQLInputType = typeModule.GraphQLInputType
export type GraphQLOutputType = typeModule.GraphQLOutputType
export type GraphQLLeafType = typeModule.GraphQLLeafType
export type GraphQLCompositeType = typeModule.GraphQLCompositeType
export type GraphQLAbstractType = typeModule.GraphQLAbstractType
export type GraphQLWrappingType = typeModule.GraphQLWrappingType
export type GraphQLNullableType = typeModule.GraphQLNullableType
export type GraphQLNamedType = typeModule.GraphQLNamedType
export type Thunk<T> = typeModule.Thunk<T>
export type GraphQLSchemaConfig = typeModule.GraphQLSchemaConfig
export type GraphQLDirectiveConfig = typeModule.GraphQLDirectiveConfig
export type GraphQLArgument = typeModule.GraphQLArgument
export type GraphQLArgumentConfig = typeModule.GraphQLArgumentConfig
export type GraphQLEnumTypeConfig = typeModule.GraphQLEnumTypeConfig
export type GraphQLEnumValue = typeModule.GraphQLEnumValue
export type GraphQLEnumValueConfig = typeModule.GraphQLEnumValueConfig
export type GraphQLEnumValueConfigMap = typeModule.GraphQLEnumValueConfigMap
export type GraphQLField<TSource, TContext, TArgs> = typeModule.GraphQLField<
	TSource,
	TContext,
	TArgs
>
export type GraphQLFieldConfig<TSource, TContext, TArgs> = typeModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
export type GraphQLFieldConfigArgumentMap = typeModule.GraphQLFieldConfigArgumentMap
export type GraphQLFieldConfigMap<TSource, TContext> = typeModule.GraphQLFieldConfigMap<
	TSource,
	TContext
>
export type GraphQLFieldMap<TSource, TContext> = typeModule.GraphQLFieldMap<TSource, TContext>
export type GraphQLFieldResolver<TSource, TContext, TArgs> = typeModule.GraphQLFieldResolver<
	TSource,
	TContext,
	TArgs
>
export type GraphQLInputField = typeModule.GraphQLInputField
export type GraphQLInputFieldConfig = typeModule.GraphQLInputFieldConfig
export type GraphQLInputFieldConfigMap = typeModule.GraphQLInputFieldConfigMap
export type GraphQLInputFieldMap = typeModule.GraphQLInputFieldMap
export type GraphQLInputObjectTypeConfig = typeModule.GraphQLInputObjectTypeConfig
export type GraphQLInterfaceTypeConfig<TSource, TContext> = typeModule.GraphQLInterfaceTypeConfig<
	TSource,
	TContext
>
export type GraphQLIsTypeOfFn<TSource, TContext> = typeModule.GraphQLIsTypeOfFn<TSource, TContext>
export type GraphQLObjectTypeConfig<TSource, TContext> = typeModule.GraphQLObjectTypeConfig<
	TSource,
	TContext
>
export type GraphQLResolveInfo = typeModule.GraphQLResolveInfo
export type ResponsePath = typeModule.ResponsePath
export type GraphQLScalarTypeConfig<TInternal, TExternal> = typeModule.GraphQLScalarTypeConfig<
	TInternal,
	TExternal
>
export type GraphQLTypeResolver<TSource, TContext> = typeModule.GraphQLTypeResolver<
	TSource,
	TContext
>
export type GraphQLUnionTypeConfig<TSource, TContext> = typeModule.GraphQLUnionTypeConfig<
	TSource,
	TContext
>
export type GraphQLScalarSerializer<TExternal> = typeModule.GraphQLScalarSerializer<TExternal>
export type GraphQLScalarValueParser<TExternal> = typeModule.GraphQLScalarValueParser<TExternal>
export type GraphQLScalarLiteralParser<TInternal> = typeModule.GraphQLScalarLiteralParser<TInternal>
export type GraphQLScalarType = typeModule.GraphQLScalarType
export type GraphQLObjectType = typeModule.GraphQLObjectType
export type GraphQLInterfaceType = typeModule.GraphQLInterfaceType
export type GraphQLUnionType = typeModule.GraphQLUnionType
export type GraphQLEnumType = typeModule.GraphQLEnumType
export type GraphQLInputObjectType = typeModule.GraphQLInputObjectType
export type GraphQLDirective = typeModule.GraphQLDirective
export type GraphQLSchema = typeModule.GraphQLSchema

local languageModule = require(script.language)

-- Parse and operate on GraphQL language source files.

exports.Token = languageModule.Token
exports.Source = languageModule.Source
exports.Location = languageModule.Location
exports.getLocation = languageModule.getLocation
-- Print source location
exports.printLocation = languageModule.printLocation
exports.printSourceLocation = languageModule.printSourceLocation
-- Lex
exports.Lexer = languageModule.Lexer
export type Lexer = languageModule.Lexer
exports.TokenKind = languageModule.TokenKind
-- Parse
exports.parse = languageModule.parse
exports.parseValue = languageModule.parseValue
exports.parseType = languageModule.parseType
-- Print
exports.print = languageModule.print
-- Visit
exports.visit = languageModule.visit
exports.visitInParallel = languageModule.visitInParallel
exports.getVisitFn = languageModule.getVisitFn
exports.BREAK = languageModule.BREAK
exports.REMOVE = languageModule.REMOVE
exports.Kind = languageModule.Kind
exports.DirectiveLocation = languageModule.DirectiveLocation
-- Predicates
exports.isDefinitionNode = languageModule.isDefinitionNode
exports.isExecutableDefinitionNode = languageModule.isExecutableDefinitionNode
exports.isSelectionNode = languageModule.isSelectionNode
exports.isValueNode = languageModule.isValueNode
exports.isTypeNode = languageModule.isTypeNode
exports.isTypeSystemDefinitionNode = languageModule.isTypeSystemDefinitionNode
exports.isTypeDefinitionNode = languageModule.isTypeDefinitionNode
exports.isTypeSystemExtensionNode = languageModule.isTypeSystemExtensionNode
exports.isTypeExtensionNode = languageModule.isTypeExtensionNode

export type ParseOptions = languageModule.ParseOptions
export type SourceLocation = languageModule.SourceLocation
export type TokenKindEnum = languageModule.TokenKindEnum
export type KindEnum = languageModule.KindEnum
export type DirectiveLocationEnum = languageModule.DirectiveLocationEnum
export type Location = languageModule.Location
export type Token = languageModule.Token
export type Source = languageModule.Source

-- Visitor utilities
export type ASTVisitor = languageModule.ASTVisitor
export type Visitor<KindToNode, Nodes = any> = languageModule.Visitor<KindToNode, Nodes>
export type VisitFn<TAnyNode, TVisitedNode = TAnyNode> = languageModule.VisitFn<
	TAnyNode,
	TVisitedNode
>
export type VisitorKeyMap<KindToNode> = languageModule.VisitorKeyMap<KindToNode>

-- AST nodes
export type ASTNode = languageModule.ASTNode
export type ASTKindToNode = languageModule.ASTKindToNode
-- Each kind of AST node
export type NameNode = languageModule.NameNode
export type DocumentNode = languageModule.DocumentNode
export type DefinitionNode = languageModule.DefinitionNode
export type ExecutableDefinitionNode = languageModule.ExecutableDefinitionNode
export type OperationDefinitionNode = languageModule.OperationDefinitionNode
export type OperationTypeNode = languageModule.OperationTypeNode
export type VariableDefinitionNode = languageModule.VariableDefinitionNode
export type VariableNode = languageModule.VariableNode
export type SelectionSetNode = languageModule.SelectionSetNode
export type SelectionNode = languageModule.SelectionNode
export type FieldNode = languageModule.FieldNode
export type ArgumentNode = languageModule.ArgumentNode
export type FragmentSpreadNode = languageModule.FragmentSpreadNode
export type InlineFragmentNode = languageModule.InlineFragmentNode
export type FragmentDefinitionNode = languageModule.FragmentDefinitionNode
export type ValueNode = languageModule.ValueNode
export type IntValueNode = languageModule.IntValueNode
export type FloatValueNode = languageModule.FloatValueNode
export type StringValueNode = languageModule.StringValueNode
export type BooleanValueNode = languageModule.BooleanValueNode
export type NullValueNode = languageModule.NullValueNode
export type EnumValueNode = languageModule.EnumValueNode
export type ListValueNode = languageModule.ListValueNode
export type ObjectValueNode = languageModule.ObjectValueNode
export type ObjectFieldNode = languageModule.ObjectFieldNode
export type DirectiveNode = languageModule.DirectiveNode
export type TypeNode = languageModule.TypeNode
export type NamedTypeNode = languageModule.NamedTypeNode
export type ListTypeNode = languageModule.ListTypeNode
export type NonNullTypeNode = languageModule.NonNullTypeNode
export type TypeSystemDefinitionNode = languageModule.TypeSystemDefinitionNode
export type SchemaDefinitionNode = languageModule.SchemaDefinitionNode
export type OperationTypeDefinitionNode = languageModule.OperationTypeDefinitionNode
export type TypeDefinitionNode = languageModule.TypeDefinitionNode
export type ScalarTypeDefinitionNode = languageModule.ScalarTypeDefinitionNode
export type ObjectTypeDefinitionNode = languageModule.ObjectTypeDefinitionNode
export type FieldDefinitionNode = languageModule.FieldDefinitionNode
export type InputValueDefinitionNode = languageModule.InputValueDefinitionNode
export type InterfaceTypeDefinitionNode = languageModule.InterfaceTypeDefinitionNode
export type UnionTypeDefinitionNode = languageModule.UnionTypeDefinitionNode
export type EnumTypeDefinitionNode = languageModule.EnumTypeDefinitionNode
export type EnumValueDefinitionNode = languageModule.EnumValueDefinitionNode
export type InputObjectTypeDefinitionNode = languageModule.InputObjectTypeDefinitionNode
export type DirectiveDefinitionNode = languageModule.DirectiveDefinitionNode
export type TypeSystemExtensionNode = languageModule.TypeSystemExtensionNode
export type SchemaExtensionNode = languageModule.SchemaExtensionNode
export type TypeExtensionNode = languageModule.TypeExtensionNode
export type ScalarTypeExtensionNode = languageModule.ScalarTypeExtensionNode
export type ObjectTypeExtensionNode = languageModule.ObjectTypeExtensionNode
export type InterfaceTypeExtensionNode = languageModule.InterfaceTypeExtensionNode
export type UnionTypeExtensionNode = languageModule.UnionTypeExtensionNode
export type EnumTypeExtensionNode = languageModule.EnumTypeExtensionNode
export type InputObjectTypeExtensionNode = languageModule.InputObjectTypeExtensionNode

local executionModule = require(script.execution)

-- Execute GraphQL queries.
exports.execute = executionModule.execute
exports.executeSync = executionModule.executeSync
exports.defaultFieldResolver = executionModule.defaultFieldResolver
exports.defaultTypeResolver = executionModule.defaultTypeResolver
exports.responsePathAsArray = executionModule.responsePathAsArray
exports.getDirectiveValues = executionModule.getDirectiveValues

export type ExecutionArgs = executionModule.ExecutionArgs
export type ExecutionResult = executionModule.ExecutionResult
export type FormattedExecutionResult = executionModule.FormattedExecutionResult

local subscriptionModule = require(script.subscription)
exports.subscribe = subscriptionModule.subscribe
exports.createSourceEventStream = subscriptionModule.createSourceEventStream
export type SubscriptionArgs = subscriptionModule.SubscriptionArgs

-- Validate GraphQL documents.
local validationModule = require(script.validation)

exports.validate = validationModule.validate
exports.ValidationContext = validationModule.ValidationContext
-- All validation rules in the GraphQL Specification.
exports.specifiedRules = validationModule.specifiedRules
-- Individual validation rules.
exports.ExecutableDefinitionsRule = validationModule.ExecutableDefinitionsRule
exports.FieldsOnCorrectTypeRule = validationModule.FieldsOnCorrectTypeRule
exports.FragmentsOnCompositeTypesRule = validationModule.FragmentsOnCompositeTypesRule
exports.KnownArgumentNamesRule = validationModule.KnownArgumentNamesRule
exports.KnownDirectivesRule = validationModule.KnownDirectivesRule
exports.KnownFragmentNamesRule = validationModule.KnownFragmentNamesRule
exports.KnownTypeNamesRule = validationModule.KnownTypeNamesRule
exports.LoneAnonymousOperationRule = validationModule.LoneAnonymousOperationRule
exports.NoFragmentCyclesRule = validationModule.NoFragmentCyclesRule
exports.NoUndefinedVariablesRule = validationModule.NoUndefinedVariablesRule
exports.NoUnusedFragmentsRule = validationModule.NoUnusedFragmentsRule
exports.NoUnusedVariablesRule = validationModule.NoUnusedVariablesRule
exports.OverlappingFieldsCanBeMergedRule = validationModule.OverlappingFieldsCanBeMergedRule
exports.PossibleFragmentSpreadsRule = validationModule.PossibleFragmentSpreadsRule
exports.ProvidedRequiredArgumentsRule = validationModule.ProvidedRequiredArgumentsRule
exports.ScalarLeafsRule = validationModule.ScalarLeafsRule
exports.SingleFieldSubscriptionsRule = validationModule.SingleFieldSubscriptionsRule
exports.UniqueArgumentNamesRule = validationModule.UniqueArgumentNamesRule
exports.UniqueDirectivesPerLocationRule = validationModule.UniqueDirectivesPerLocationRule
exports.UniqueFragmentNamesRule = validationModule.UniqueFragmentNamesRule
exports.UniqueInputFieldNamesRule = validationModule.UniqueInputFieldNamesRule
exports.UniqueOperationNamesRule = validationModule.UniqueOperationNamesRule
exports.UniqueVariableNamesRule = validationModule.UniqueVariableNamesRule
exports.ValuesOfCorrectTypeRule = validationModule.ValuesOfCorrectTypeRule
exports.VariablesAreInputTypesRule = validationModule.VariablesAreInputTypesRule
exports.VariablesInAllowedPositionRule = validationModule.VariablesInAllowedPositionRule
-- SDL-specific validation rules
exports.LoneSchemaDefinitionRule = validationModule.LoneSchemaDefinitionRule
exports.UniqueOperationTypesRule = validationModule.UniqueOperationTypesRule
exports.UniqueTypeNamesRule = validationModule.UniqueTypeNamesRule
exports.UniqueEnumValueNamesRule = validationModule.UniqueEnumValueNamesRule
exports.UniqueFieldDefinitionNamesRule = validationModule.UniqueFieldDefinitionNamesRule
exports.UniqueDirectiveNamesRule = validationModule.UniqueDirectiveNamesRule
exports.PossibleTypeExtensionsRule = validationModule.PossibleTypeExtensionsRule
-- Custom validation rules
exports.NoDeprecatedCustomRule = validationModule.NoDeprecatedCustomRule
exports.NoSchemaIntrospectionCustomRule = validationModule.NoSchemaIntrospectionCustomRule

export type ValidationRule = validationModule.ValidationRule
export type ASTValidationContext = validationModule.ASTValidationContext
export type SDLValidationContext = validationModule.SDLValidationContext
export type ValidationContext = validationModule.ValidationContext

-- Create, format, and print GraphQL errors.
local errorModule = require(script.error)
exports.GraphQLError = errorModule.GraphQLError
exports.syntaxError = errorModule.syntaxError
exports.locatedError = errorModule.locatedError
exports.printError = errorModule.printError
exports.formatError = errorModule.formatError

export type GraphQLFormattedError = errorModule.GraphQLFormattedError
export type GraphQLError = errorModule.GraphQLError

-- Utilities for operating on GraphQL type schema and parsed sources.
local utilitiesModule = require(script.utilities)

-- Produce the GraphQL query recommended for a full schema introspection.
-- Accepts optional IntrospectionOptions.
exports.getIntrospectionQuery = utilitiesModule.getIntrospectionQuery
-- Gets the target Operation from a Document.
exports.getOperationAST = utilitiesModule.getOperationAST
-- Gets the Type for the target Operation AST.
exports.getOperationRootType = utilitiesModule.getOperationRootType
-- Convert a GraphQLSchema to an IntrospectionQuery.
exports.introspectionFromSchema = utilitiesModule.introspectionFromSchema
-- Build a GraphQLSchema from an introspection result.
exports.buildClientSchema = utilitiesModule.buildClientSchema
-- Build a GraphQLSchema from a parsed GraphQL Schema language AST.
exports.buildASTSchema = utilitiesModule.buildASTSchema
-- Build a GraphQLSchema from a GraphQL schema language document.
exports.buildSchema = utilitiesModule.buildSchema
exports.parse = utilitiesModule.parse
-- Extends an existing GraphQLSchema from a parsed GraphQL Schema
-- language AST.
exports.extendSchema = utilitiesModule.extendSchema
-- Sort a GraphQLSchema.
exports.lexicographicSortSchema = utilitiesModule.lexicographicSortSchema
-- Print a GraphQLSchema to GraphQL Schema language.
exports.printSchema = utilitiesModule.printSchema
-- Print a GraphQLType to GraphQL Schema language.
exports.printType = utilitiesModule.printType
-- Prints the built-in introspection schema in the Schema Language
-- format.
exports.printIntrospectionSchema = utilitiesModule.printIntrospectionSchema
-- Create a GraphQLType from a GraphQL language AST.
exports.typeFromAST = utilitiesModule.typeFromAST
-- Create a JavaScript value from a GraphQL language AST with a Type.
exports.valueFromAST = utilitiesModule.valueFromAST
-- Create a JavaScript value from a GraphQL language AST without a Type.
exports.valueFromASTUntyped = utilitiesModule.valueFromASTUntyped
-- Create a GraphQL language AST from a JavaScript value.
exports.astFromValue = utilitiesModule.astFromValue
-- A helper to use within recursive-descent visitors which need to be aware of
-- the GraphQL type system.
exports.TypeInfo = utilitiesModule.TypeInfo
exports.visitWithTypeInfo = utilitiesModule.visitWithTypeInfo
-- Coerces a JavaScript value to a GraphQL type, or produces errors.
exports.coerceInputValue = utilitiesModule.coerceInputValue
-- Concatenates multiple AST together.
exports.concatAST = utilitiesModule.concatAST
-- Separates an AST into an AST per Operation.
exports.separateOperations = utilitiesModule.separateOperations
-- Strips characters that are not significant to the validity or execution
-- of a GraphQL document.
exports.stripIgnoredCharacters = utilitiesModule.stripIgnoredCharacters
-- Comparators for types
exports.isEqualType = utilitiesModule.isEqualType
exports.isTypeSubTypeOf = utilitiesModule.isTypeSubTypeOf
exports.doTypesOverlap = utilitiesModule.doTypesOverlap
-- Asserts a string is a valid GraphQL name.
exports.assertValidName = utilitiesModule.assertValidName
-- Determine if a string is a valid GraphQL name.
exports.isValidNameError = utilitiesModule.isValidNameError
-- Compares two GraphQLSchemas and detects breaking changes.
exports.BreakingChangeType = utilitiesModule.BreakingChangeType
exports.DangerousChangeType = utilitiesModule.DangerousChangeType
exports.findBreakingChanges = utilitiesModule.findBreakingChanges
exports.findDangerousChanges = utilitiesModule.findDangerousChanges

export type IntrospectionOptions = utilitiesModule.IntrospectionOptions
export type IntrospectionQuery = utilitiesModule.IntrospectionQuery
export type IntrospectionSchema = utilitiesModule.IntrospectionSchema
export type IntrospectionType = utilitiesModule.IntrospectionType
export type IntrospectionInputType = utilitiesModule.IntrospectionInputType
export type IntrospectionOutputType = utilitiesModule.IntrospectionOutputType
export type IntrospectionScalarType = utilitiesModule.IntrospectionScalarType
export type IntrospectionObjectType = utilitiesModule.IntrospectionObjectType
export type IntrospectionInterfaceType = utilitiesModule.IntrospectionInterfaceType
export type IntrospectionUnionType = utilitiesModule.IntrospectionUnionType
export type IntrospectionEnumType = utilitiesModule.IntrospectionEnumType
export type IntrospectionInputObjectType = utilitiesModule.IntrospectionInputObjectType
export type IntrospectionTypeRef = utilitiesModule.IntrospectionTypeRef
export type IntrospectionInputTypeRef = utilitiesModule.IntrospectionInputTypeRef
export type IntrospectionOutputTypeRef = utilitiesModule.IntrospectionOutputTypeRef
export type IntrospectionNamedTypeRef<T> = utilitiesModule.IntrospectionNamedTypeRef<T>
export type IntrospectionListTypeRef<T> = utilitiesModule.IntrospectionListTypeRef<T>
export type IntrospectionNonNullTypeRef<T> = utilitiesModule.IntrospectionNonNullTypeRef<T>
export type IntrospectionField = utilitiesModule.IntrospectionField
export type IntrospectionInputValue = utilitiesModule.IntrospectionInputValue
export type IntrospectionEnumValue = utilitiesModule.IntrospectionEnumValue
export type IntrospectionDirective = utilitiesModule.IntrospectionDirective
export type BuildSchemaOptions = utilitiesModule.BuildSchemaOptions
export type BreakingChange = utilitiesModule.BreakingChange
export type DangerousChange = utilitiesModule.DangerousChange
export type TypeInfo = utilitiesModule.TypeInfo

-- ROBLOX comment: reexport NULL
exports.NULL = require(script.luaUtils.null)

-- ROBLOX comment: export stringify
exports.stringify = require(script.luaUtils.stringify)

return exports
