-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/Interfaces.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local GraphQLField = graphqlModule.GraphQLField
-- local GraphQLInputType = graphqlModule.GraphQLInputType
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
-- local GraphQLResolveInfo = graphqlModule.GraphQLResolveInfo
-- local GraphQLScalarType = graphqlModule.GraphQLScalarType
-- local DocumentNode = graphqlModule.DocumentNode
-- local FieldNode = graphqlModule.FieldNode
-- local GraphQLEnumValue = graphqlModule.GraphQLEnumValue
-- local GraphQLEnumType = graphqlModule.GraphQLEnumType
-- local GraphQLUnionType = graphqlModule.GraphQLUnionType
-- local GraphQLArgument = graphqlModule.GraphQLArgument
-- local GraphQLInputField = graphqlModule.GraphQLInputField
-- local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- local GraphQLDirective = graphqlModule.GraphQLDirective
-- local FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
-- local SelectionNode = graphqlModule.SelectionNode
type GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type GraphQLInputType = graphqlModule.GraphQLInputType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLResolveInfo = graphqlModule.GraphQLResolveInfo
type GraphQLScalarType = graphqlModule.GraphQLScalarType
type DocumentNode = graphqlModule.DocumentNode
type FieldNode = graphqlModule.FieldNode
type GraphQLEnumValue = graphqlModule.GraphQLEnumValue
type GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLUnionType = graphqlModule.GraphQLUnionType
type GraphQLArgument = graphqlModule.GraphQLArgument
type GraphQLInputField = graphqlModule.GraphQLInputField
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLDirective = graphqlModule.GraphQLDirective
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type SelectionNode = graphqlModule.SelectionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: type not available
-- local GraphQLExecutionResult = graphqlModule.ExecutionResult
type GraphQLExecutionResult<T> = any
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLOutputType = graphqlModule.GraphQLOutputType
-- local FieldDefinitionNode = graphqlModule.FieldDefinitionNode
-- local GraphQLFieldConfig = graphqlModule.GraphQLFieldConfig
-- local GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
-- local GraphQLArgumentConfig = graphqlModule.GraphQLArgumentConfig
-- local GraphQLEnumValueConfig = graphqlModule.GraphQLEnumValueConfig
-- local GraphQLScalarSerializer = graphqlModule.GraphQLScalarSerializer
-- local GraphQLScalarValueParser = graphqlModule.GraphQLScalarValueParser
-- local GraphQLScalarLiteralParser = graphqlModule.GraphQLScalarLiteralParser
-- local ScalarTypeDefinitionNode = graphqlModule.ScalarTypeDefinitionNode
-- local ScalarTypeExtensionNode = graphqlModule.ScalarTypeExtensionNode
-- local EnumTypeDefinitionNode = graphqlModule.EnumTypeDefinitionNode
-- local EnumTypeExtensionNode = graphqlModule.EnumTypeExtensionNode
-- local GraphQLIsTypeOfFn = graphqlModule.GraphQLIsTypeOfFn
-- local ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
-- local ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
-- local InterfaceTypeExtensionNode = graphqlModule.InterfaceTypeExtensionNode
-- local InterfaceTypeDefinitionNode = graphqlModule.InterfaceTypeDefinitionNode
-- local GraphQLTypeResolver = graphqlModule.GraphQLTypeResolver
-- local UnionTypeDefinitionNode = graphqlModule.UnionTypeDefinitionNode
-- local UnionTypeExtensionNode = graphqlModule.UnionTypeExtensionNode
-- local InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
-- local InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
-- local GraphQLType = graphqlModule.GraphQLType
-- local Source = graphqlModule.Source
-- local DefinitionNode = graphqlModule.DefinitionNode
-- local OperationTypeNode = graphqlModule.OperationTypeNode -- graphql-js < v15 backwards compatible ExecutionResult
type GraphQLOutputType = graphqlModule.GraphQLOutputType
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
type GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
type GraphQLArgumentConfig = graphqlModule.GraphQLArgumentConfig
type GraphQLEnumValueConfig = graphqlModule.GraphQLEnumValueConfig
type GraphQLScalarSerializer<TExternal> = graphqlModule.GraphQLScalarSerializer<TExternal>
type GraphQLScalarValueParser<TInternal> = graphqlModule.GraphQLScalarValueParser<TInternal>
type GraphQLScalarLiteralParser<TInternal> = graphqlModule.GraphQLScalarLiteralParser<TInternal>
type ScalarTypeDefinitionNode = graphqlModule.ScalarTypeDefinitionNode
type ScalarTypeExtensionNode = graphqlModule.ScalarTypeExtensionNode
type EnumTypeDefinitionNode = graphqlModule.EnumTypeDefinitionNode
type EnumTypeExtensionNode = graphqlModule.EnumTypeExtensionNode
type GraphQLIsTypeOfFn<TSource, TContext> = graphqlModule.GraphQLIsTypeOfFn<TSource, TContext>
type ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
type ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
type InterfaceTypeExtensionNode = graphqlModule.InterfaceTypeExtensionNode
type InterfaceTypeDefinitionNode = graphqlModule.InterfaceTypeDefinitionNode
type GraphQLTypeResolver<TSource, TContext> = graphqlModule.GraphQLTypeResolver<TSource, TContext>
type UnionTypeDefinitionNode = graphqlModule.UnionTypeDefinitionNode
type UnionTypeExtensionNode = graphqlModule.UnionTypeExtensionNode
type InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
type InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
type GraphQLType = graphqlModule.GraphQLType
type Source = graphqlModule.Source
type DefinitionNode = graphqlModule.DefinitionNode
type OperationTypeNode = graphqlModule.OperationTypeNode -- graphql-js < v15 backwards compatible ExecutionResult
-- ROBLOX deviation END
-- See: https://github.com/graphql/graphql-js/pull/2490
-- ROBLOX deviation START: remove Record from type declaration, otherwise we will get a `Recursive type being used with different parameters` error
-- export type ExecutionResult<TData = Record<string, any>> = GraphQLExecutionResult<TData> & {
export type ExecutionResult<TData = { [string]: any }> = GraphQLExecutionResult<TData> & {
	-- ROBLOX deviation END
	data: (TData | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]])?,
	extensions: Record<string, any>?,
}
export type ExecutionRequest<
	-- ROBLOX deviation START: remove Record from type declaration, otherwise we will get a `Recursive type being used with different parameters` error
	-- TArgs = Record<string, any>,
	TArgs = { [string]: any },
	-- ROBLOX deviation END
	TContext = any,
	TRootValue = any,
	-- ROBLOX deviation START: remove Record from type declaration, otherwise we will get a `Recursive type being used with different parameters` error
	-- TExtensions = Record<string, any>
	TExtensions = { [string]: any }
	-- ROBLOX deviation END
> = {
	document: DocumentNode,
	variables: TArgs?, -- TODO: Will be removed in next major
	operationType: OperationTypeNode?,
	operationName: string?,
	extensions: TExtensions?, -- If the request will be executed locally, it may contain a rootValue
	rootValue: TRootValue?, -- If the request originates within execution of a parent request, it may contain the parent context and info
	context: TContext?,
	info: GraphQLResolveInfo?,
} -- graphql-js non-exported typings
export type GraphQLParseOptions = {
	noLocation: boolean?,
	allowLegacySDLEmptyFields: boolean?,
	allowLegacySDLImplementsInterfaces: boolean?,
	experimentalFragmentVariables: boolean?,
	--[[*
   * Set to `true` in order to convert all GraphQL comments (marked with # sign) to descriptions (""")
   * GraphQL has built-in support for transforming descriptions to comments (with `print`), but not while
   * parsing. Turning the flag on will support the other way as well (`parse`)
   ]]
	commentDescriptions: boolean?,
} -- graphql-tools typings
export type ValidatorBehavior = "error" | "warn" | "ignore"
--[[*
 * Options for validating resolvers
 ]]
export type IResolverValidationOptions = { --[[*
   * Enable to require a resolver to be defined for any field that has
   * arguments. Defaults to `ignore`.
   ]]
	requireResolversForArgs: ValidatorBehavior?,
	--[[*
   * Enable to require a resolver to be defined for any field which has
   * a return type that isn't a scalar. Defaults to `ignore`.
   ]]
	requireResolversForNonScalar: ValidatorBehavior?,
	--[[*
   * Enable to require a resolver for be defined for all fields defined
   * in the schema. Defaults to `ignore`.
   ]]
	requireResolversForAllFields: ValidatorBehavior?,
	--[[*
   * Enable to require a `resolveType()` for Interface and Union types.
   * Defaults to `ignore`.
   ]]
	requireResolversForResolveType: ValidatorBehavior?,
	--[[*
   * Enable to require all defined resolvers to match fields that
   * actually exist in the schema. Defaults to `error` to catch common errors.
   ]]
	requireResolversToMatchSchema: ValidatorBehavior?,
}
--[[*
 * Configuration object for adding resolvers to a schema
 ]]
export type IAddResolversToSchemaOptions = { --[[*
   * The schema to which to add resolvers
   ]]
	schema: GraphQLSchema,
	--[[*
   * Object describing the field resolvers to add to the provided schema
   ]]
	resolvers: IResolvers,
	--[[*
   * Override the default field resolver provided by `graphql-js`
   ]]
	defaultFieldResolver: IFieldResolver<any, any>?,
	--[[*
   * Additional options for validating the provided resolvers
   ]]
	resolverValidationOptions: IResolverValidationOptions?,
	--[[*
   * GraphQL object types that implement interfaces will inherit any missing
   * resolvers from their interface types defined in the `resolvers` object
   ]]
	inheritResolversFromInterfaces: boolean?,
	--[[*
   * Set to `true` to modify the existing schema instead of creating a new one
   ]]
	updateResolversInPlace: boolean?,
}
export type IScalarTypeResolver = GraphQLScalarType & {
	__name: string?,
	__description: string?,
	__serialize: GraphQLScalarSerializer<any>?,
	__parseValue: GraphQLScalarValueParser<any>?,
	__parseLiteral: GraphQLScalarLiteralParser<any>?,
	__extensions: Record<string, any>?,
	__astNode: ScalarTypeDefinitionNode?,
	__extensionASTNodes: Array<ScalarTypeExtensionNode>?,
}
export type IEnumTypeResolver = Record<string, any> & {
	__name: string?,
	__description: string?,
	__extensions: Record<string, any>?,
	__astNode: EnumTypeDefinitionNode?,
	__extensionASTNodes: Array<EnumTypeExtensionNode>?,
}
export type IFieldResolverOptions<TSource = any, TContext = any, TArgs = any> = {
	name: string?,
	description: string?,
	type: GraphQLOutputType?,
	args: Array<GraphQLArgument>?,
	resolve: IFieldResolver<TSource, TContext, TArgs>?,
	subscribe: IFieldResolver<TSource, TContext, TArgs>?,
	isDeprecated: boolean?,
	deprecationReason: string?,
	extensions: Record<string, any>?,
	astNode: FieldDefinitionNode?,
}
export type FieldNodeMapper = (
	fieldNode: FieldNode,
	fragments: Record<string, FragmentDefinitionNode>,
	transformationContext: Record<string, any>
) -> SelectionNode | Array<SelectionNode>
export type FieldNodeMappers = Record<string, Record<string, FieldNodeMapper>>
export type InputFieldFilter = (
	typeName: string?,
	fieldName: string?,
	inputFieldConfig: GraphQLInputFieldConfig?
) -> boolean
export type FieldFilter = (
	typeName: string,
	fieldName: string,
	fieldConfig: GraphQLFieldConfig<any, any> | GraphQLInputFieldConfig
) -> boolean
export type ObjectFieldFilter = (
	typeName: string,
	fieldName: string,
	fieldConfig: GraphQLFieldConfig<any, any>
) -> boolean
export type RootFieldFilter = (
	operation: "Query" | "Mutation" | "Subscription",
	rootFieldName: string,
	fieldConfig: GraphQLFieldConfig<any, any>
) -> boolean
export type TypeFilter = (typeName: string, type_: any) -> boolean
export type ArgumentFilter = (
	typeName: string?,
	fieldName: string?,
	argName: string?,
	argConfig: GraphQLArgumentConfig?
) -> boolean
export type RenameTypesOptions = { renameBuiltins: boolean, renameScalars: boolean }
-- ROBLOX deviation START: remove Record from type, otherwise we will get a `Recursive type being used with different parameters` error
-- export type IFieldResolver<TSource, TContext, TArgs = Record<string, any>, TReturn = any> = (
export type IFieldResolver<TSource, TContext, TArgs = { [string]: any }, TReturn = any> = (
	-- ROBLOX deviation END
	source: TSource,
	args: TArgs,
	context: TContext,
	info: GraphQLResolveInfo
) -> TReturn
export type TypeSource =
	string
	| Source
	| DocumentNode
	| GraphQLSchema
	| DefinitionNode
	| Array<TypeSource>
	| () -> TypeSource
export type IObjectTypeResolver<TSource = any, TContext = any, TArgs = any> = {
	[string]: IFieldResolver<TSource, TContext, TArgs> | IFieldResolverOptions<TSource, TContext>,
} & {
	__name: string?,
	__description: string?,
	__isTypeOf: GraphQLIsTypeOfFn<TSource, TContext>?,
	__extensions: Record<string, any>?,
	__astNode: ObjectTypeDefinitionNode?,
	__extensionASTNodes: ObjectTypeExtensionNode?,
}
export type IInterfaceTypeResolver<TSource = any, TContext = any, TArgs = any> = {
	[string]: IFieldResolver<TSource, TContext, TArgs> | IFieldResolverOptions<TSource, TContext>,
} & {
	__name: string?,
	__description: string?,
	__resolveType: GraphQLTypeResolver<any, any>?,
	__extensions: Record<string, any>?,
	__astNode: InterfaceTypeDefinitionNode?,
	__extensionASTNodes: Array<InterfaceTypeExtensionNode>?,
}
export type IUnionTypeResolver = {
	__name: string?,
	__description: string?,
	__resolveType: GraphQLTypeResolver<any, any>?,
	__extensions: Record<string, any>?,
	__astNode: UnionTypeDefinitionNode?,
	__extensionASTNodes: Array<UnionTypeExtensionNode>?,
}
export type IInputObjectTypeResolver = {
	__name: string?,
	__description: string?,
	__extensions: Record<string, any>?,
	__astNode: InputObjectTypeDefinitionNode?,
	__extensionASTNodes: Array<InputObjectTypeExtensionNode>?,
}
-- ROBLOX deviation START: remove Record from type, otherwise we will get a `Recursive type being used with different parameters` error
-- export type ISchemaLevelResolver<TSource, TContext, TArgs = Record<string, any>, TReturn = any> = IFieldResolver<
export type ISchemaLevelResolver<TSource, TContext, TArgs = { [string]: any }, TReturn = any> = IFieldResolver<
	-- ROBLOX deviation END
	TSource,
	TContext,
	TArgs,
	TReturn
>
-- ROBLOX deviation START: remove Record from type, otherwise we will get a `Recursive type being used with different parameters` error
-- export type IResolvers<TSource = any, TContext = any, TArgs = Record<string, any>, TReturn = any> = Record<
export type IResolvers<TSource = any, TContext = any, TArgs = { [string]: any }, TReturn = any> = Record<
	-- ROBLOX deviation END
	string,
	ISchemaLevelResolver<TSource, TContext, TArgs, TReturn>
	| IObjectTypeResolver<TSource, TContext>
	| IInterfaceTypeResolver<TSource, TContext>
	| IUnionTypeResolver
	| IScalarTypeResolver
	| IEnumTypeResolver
	| IInputObjectTypeResolver
>
export type IFieldIteratorFn = (fieldDef: GraphQLField<any, any>, typeName: string, fieldName: string) -> ()
export type IDefaultValueIteratorFn = (type_: any, value: any) -> ()
export type NextResolverFn = () -> Promise<any>
export type VisitableSchemaType =
	GraphQLSchema
	| GraphQLObjectType
	| GraphQLInterfaceType
	| GraphQLInputObjectType
	| GraphQLNamedType
	| GraphQLScalarType
	| GraphQLField<any, any>
	| GraphQLInputField
	| GraphQLArgument
	| GraphQLUnionType
	| GraphQLEnumType
	| GraphQLEnumValue
local MapperKind = {
	TYPE = "MapperKind.TYPE",
	SCALAR_TYPE = "MapperKind.SCALAR_TYPE",
	ENUM_TYPE = "MapperKind.ENUM_TYPE",
	COMPOSITE_TYPE = "MapperKind.COMPOSITE_TYPE",
	OBJECT_TYPE = "MapperKind.OBJECT_TYPE",
	INPUT_OBJECT_TYPE = "MapperKind.INPUT_OBJECT_TYPE",
	ABSTRACT_TYPE = "MapperKind.ABSTRACT_TYPE",
	UNION_TYPE = "MapperKind.UNION_TYPE",
	INTERFACE_TYPE = "MapperKind.INTERFACE_TYPE",
	ROOT_OBJECT = "MapperKind.ROOT_OBJECT",
	QUERY = "MapperKind.QUERY",
	MUTATION = "MapperKind.MUTATION",
	SUBSCRIPTION = "MapperKind.SUBSCRIPTION",
	DIRECTIVE = "MapperKind.DIRECTIVE",
	FIELD = "MapperKind.FIELD",
	COMPOSITE_FIELD = "MapperKind.COMPOSITE_FIELD",
	OBJECT_FIELD = "MapperKind.OBJECT_FIELD",
	ROOT_FIELD = "MapperKind.ROOT_FIELD",
	QUERY_ROOT_FIELD = "MapperKind.QUERY_ROOT_FIELD",
	MUTATION_ROOT_FIELD = "MapperKind.MUTATION_ROOT_FIELD",
	SUBSCRIPTION_ROOT_FIELD = "MapperKind.SUBSCRIPTION_ROOT_FIELD",
	INTERFACE_FIELD = "MapperKind.INTERFACE_FIELD",
	INPUT_OBJECT_FIELD = "MapperKind.INPUT_OBJECT_FIELD",
	ARGUMENT = "MapperKind.ARGUMENT",
	ENUM_VALUE = "MapperKind.ENUM_VALUE",
}
-- ROBLOX deviation START: fix type to simple string
-- export type MapperKind = { [string]: string }
export type MapperKind = string
-- ROBLOX deviation END
exports.MapperKind = MapperKind
export type SchemaMapper = {
	-- ROBLOX deviation START: fix type to use string keys
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.TYPE ]]]: NamedTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.SCALAR_TYPE ]]]: ScalarTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.ENUM_TYPE ]]]: EnumTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.COMPOSITE_TYPE ]]]: CompositeTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.OBJECT_TYPE ]]]: ObjectTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.INPUT_OBJECT_TYPE ]]]: InputObjectTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.ABSTRACT_TYPE ]]]: AbstractTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.UNION_TYPE ]]]: UnionTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.INTERFACE_TYPE ]]]: InterfaceTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.ROOT_OBJECT ]]]: ObjectTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.QUERY ]]]: ObjectTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.MUTATION ]]]: ObjectTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.SUBSCRIPTION ]]]: ObjectTypeMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.ENUM_VALUE ]]]: EnumValueMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.FIELD ]]]: GenericFieldMapper<
	-- 		GraphQLFieldConfig<any, any> | GraphQLInputFieldConfig
	-- 	>?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.OBJECT_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.ROOT_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.QUERY_ROOT_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.MUTATION_ROOT_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.SUBSCRIPTION_ROOT_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.INTERFACE_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.COMPOSITE_FIELD ]]]: FieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.ARGUMENT ]]]: ArgumentMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.INPUT_OBJECT_FIELD ]]]: InputFieldMapper?,
	-- 	[string --[[ ROBLOX TODO: unhandled node for type: TSPropertySignature with key of type MemberExpression ]] --[[ MapperKind.DIRECTIVE ]]]: DirectiveMapper?,
	-- }
	["MapperKind.TYPE"]: NamedTypeMapper?,
	["MapperKind.SCALAR_TYPE"]: ScalarTypeMapper?,
	["MapperKind.ENUM_TYPE"]: EnumTypeMapper?,
	["MapperKind.COMPOSITE_TYPE"]: CompositeTypeMapper?,
	["MapperKind.OBJECT_TYPE"]: ObjectTypeMapper?,
	["MapperKind.INPUT_OBJECT_TYPE"]: InputObjectTypeMapper?,
	["MapperKind.ABSTRACT_TYPE"]: AbstractTypeMapper?,
	["MapperKind.UNION_TYPE"]: UnionTypeMapper?,
	["MapperKind.INTERFACE_TYPE"]: InterfaceTypeMapper?,
	["MapperKind.ROOT_OBJECT"]: ObjectTypeMapper?,
	["MapperKind.QUERY"]: ObjectTypeMapper?,
	["MapperKind.MUTATION"]: ObjectTypeMapper?,
	["MapperKind.SUBSCRIPTION"]: ObjectTypeMapper?,
	["MapperKind.ENUM_VALUE"]: EnumValueMapper?,
	["MapperKind.FIELD"]: GenericFieldMapper<GraphQLFieldConfig<any, any> | GraphQLInputFieldConfig>?,
	["MapperKind.OBJECT_FIELD"]: FieldMapper?,
	["MapperKind.ROOT_FIELD"]: FieldMapper?,
	["MapperKind.QUERY_ROOT_FIELD"]: FieldMapper?,
	["MapperKind.MUTATION_ROOT_FIELD"]: FieldMapper?,
	["MapperKind.SUBSCRIPTION_ROOT_FIELD"]: FieldMapper?,
	["MapperKind.INTERFACE_FIELD"]: FieldMapper?,
	["MapperKind.COMPOSITE_FIELD"]: FieldMapper?,
	["MapperKind.ARGUMENT"]: ArgumentMapper?,
	["MapperKind.INPUT_OBJECT_FIELD"]: InputFieldMapper?,
	["MapperKind.DIRECTIVE"]: DirectiveMapper?,
}
-- ROBLOX deviation END
-- ROBLOX deviation START: fix union type
-- export type SchemaFieldMapperTypes = Array<
-- 	MapperKind_FIELD
-- 	| MapperKind_COMPOSITE_FIELD
-- 	| MapperKind_OBJECT_FIELD
-- 	| MapperKind_ROOT_FIELD
-- 	| MapperKind_QUERY_ROOT_FIELD
-- 	| MapperKind_MUTATION_ROOT_FIELD
-- 	| MapperKind_SUBSCRIPTION_ROOT_FIELD
-- 	| MapperKind_INTERFACE_FIELD
-- 	| MapperKind_INPUT_OBJECT_FIELD
-- >
export type SchemaFieldMapperTypes = Array<
	"MapperKind.FIELD"
	| "MapperKind.COMPOSITE_FIELD"
	| "MapperKind.OBJECT_FIELD"
	| "MapperKind.ROOT_FIELD"
	| "MapperKind.QUERY_ROOT_FIELD"
	| "MapperKind.MUTATION_ROOT_FIELD"
	| "MapperKind.SUBSCRIPTION_ROOT_FIELD"
	| "MapperKind.INTERFACE_FIELD"
	| "MapperKind.INPUT_OBJECT_FIELD"
>
-- ROBLOX deviation END
export type NamedTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLNamedType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLNamedType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type ScalarTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLScalarType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLScalarType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type EnumTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLEnumType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLEnumType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type EnumValueMapper = (
	valueConfig: GraphQLEnumValueConfig,
	typeName: string,
	schema: GraphQLSchema,
	externalValue: string
) -> GraphQLEnumValueConfig | Array<string | GraphQLEnumValueConfig> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type CompositeTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLObjectType | GraphQLInterfaceType | GraphQLUnionType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLObjectType | GraphQLInterfaceType | GraphQLUnionType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type ObjectTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLObjectType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLObjectType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type InputObjectTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLInputObjectType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLInputObjectType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type AbstractTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLInterfaceType | GraphQLUnionType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLInterfaceType | GraphQLUnionType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type UnionTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLUnionType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLUnionType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type InterfaceTypeMapper = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLInterfaceType,
	-- ROBLOX deviation END
	schema: GraphQLSchema
) -> GraphQLInterfaceType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type DirectiveMapper = (
	directive: GraphQLDirective,
	schema: GraphQLSchema
) -> GraphQLDirective | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type GenericFieldMapper<F> = (
	fieldConfig: F,
	fieldName: string,
	typeName: string,
	schema: GraphQLSchema
) -> F | Array<string | F> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type FieldMapper = GenericFieldMapper<GraphQLFieldConfig<any, any>>
export type ArgumentMapper = (
	argumentConfig: GraphQLArgumentConfig,
	fieldName: string,
	typeName: string,
	schema: GraphQLSchema
) -> GraphQLArgumentConfig | Array<string | GraphQLArgumentConfig> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
export type InputFieldMapper = GenericFieldMapper<GraphQLInputFieldConfig>
return exports
