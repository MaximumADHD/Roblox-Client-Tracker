-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/types.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Parameters<T> = any --[[ ROBLOX TODO: TS 'Parameters' built-in type is not available in Luau ]]
type Partial<T> = T --[[ ROBLOX TODO: TS 'Partial' built-in type is not available in Luau ]]
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLEnumType = graphqlModule.GraphQLEnumType
-- local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
-- local GraphQLScalarType = graphqlModule.GraphQLScalarType
type GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLScalarType = graphqlModule.GraphQLScalarType
-- ROBLOX deviation END
local visit = graphqlModule.visit
export type SchemaPrintOptions = { --[[*
   * Descriptions are defined as preceding string literals, however an older
   * experimental version of the SDL supported preceding comments as
   * descriptions. Set to true to enable this deprecated behavior.
   * This option is provided to ease adoption and will be removed in v16.
   *
   * Default: false
   ]]
	commentDescriptions: boolean?,
	assumeValid: boolean?,
}
export type GetDocumentNodeFromSchemaOptions = { pathToDirectivesInExtensions: Array<string>? }
export type PrintSchemaWithDirectivesOptions = SchemaPrintOptions & GetDocumentNodeFromSchemaOptions
export type Maybe<T> =
	nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	| nil
	| T
export type Constructor<T> = any --[[ ROBLOX TODO: Unhandled node for type: TSConstructorType ]] --[[ new (...args: any[]) => T ]]
export type PruneSchemaFilter = (type_: any) -> boolean
--[[*
 * Options for removing unused types from the schema
 ]]
export type PruneSchemaOptions = { --[[*
   * Return true to skip pruning this type. This check will run first before any other options.
   * This can be helpful for schemas that support type extensions like Apollo Federation.
   ]]
	skipPruning: PruneSchemaFilter?,
	--[[*
   * Set to `true` to skip pruning object types or interfaces with no no fields
   ]]
	skipEmptyCompositeTypePruning: boolean?,
	--[[*
   * Set to `true` to skip pruning interfaces that are not implemented by any
   * other types
   ]]
	skipUnimplementedInterfacesPruning: boolean?,
	--[[*
   * Set to `true` to skip pruning empty unions
   ]]
	skipEmptyUnionPruning: boolean?,
	--[[*
   * Set to `true` to skip pruning unused types
   ]]
	skipUnusedTypesPruning: boolean?,
}
-- ROBLOX deviation START: narrow types
-- export type InputLeafValueTransformer = (type_: any, originalValue: any) -> any
export type InputLeafValueTransformer = (type_: GraphQLEnumType | GraphQLScalarType, originalValue: any) -> any
-- ROBLOX deviation END
export type InputObjectValueTransformer = (
	-- ROBLOX deviation START: narrow type
	-- type_: any,
	type_: GraphQLInputObjectType,
	-- ROBLOX deviation END
	originalValue: Record<string, any>
) -> Record<string, any> -- GraphQL v14 doesn't have it. Remove this once we drop support for v14
export type ASTVisitorKeyMap = Partial<typeof((({} :: any) :: Parameters<typeof(visit)>)[1]) --[[ ROBLOX CHECK: Resulting type may differ ]] --[[ Upstream: Parameters<typeof visit>[2] ]]>
-- ROBLOX deviation START: inline type
-- export type DirectiveLocationEnum = typeof(DirectiveLocation)
export type DirectiveLocationEnum = {
	QUERY: "QUERY",
	MUTATION: "MUTATION",
	SUBSCRIPTION: "SUBSCRIPTION",
	FIELD: "FIELD",
	FRAGMENT_DEFINITION: "FRAGMENT_DEFINITION",
	FRAGMENT_SPREAD: "FRAGMENT_SPREAD",
	INLINE_FRAGMENT: "INLINE_FRAGMENT",
	VARIABLE_DEFINITION: "VARIABLE_DEFINITION",
	SCHEMA: "SCHEMA",
	SCALAR: "SCALAR",
	OBJECT: "OBJECT",
	FIELD_DEFINITION: "FIELD_DEFINITION",
	ARGUMENT_DEFINITION: "ARGUMENT_DEFINITION",
	INTERFACE: "INTERFACE",
	UNION: "UNION",
	ENUM: "ENUM",
	ENUM_VALUE: "ENUM_VALUE",
	INPUT_OBJECT: "INPUT_OBJECT",
	INPUT_FIELD_DEFINITION: "INPUT_FIELD_DEFINITION",
}
-- ROBLOX deviation END
local DirectiveLocation = {
	--[[* Request Definitions ]]
	QUERY = "QUERY",
	MUTATION = "MUTATION",
	SUBSCRIPTION = "SUBSCRIPTION",
	FIELD = "FIELD",
	FRAGMENT_DEFINITION = "FRAGMENT_DEFINITION",
	FRAGMENT_SPREAD = "FRAGMENT_SPREAD",
	INLINE_FRAGMENT = "INLINE_FRAGMENT",
	VARIABLE_DEFINITION = "VARIABLE_DEFINITION",
	--[[* Type System Definitions ]]
	SCHEMA = "SCHEMA",
	SCALAR = "SCALAR",
	OBJECT = "OBJECT",
	FIELD_DEFINITION = "FIELD_DEFINITION",
	ARGUMENT_DEFINITION = "ARGUMENT_DEFINITION",
	INTERFACE = "INTERFACE",
	UNION = "UNION",
	ENUM = "ENUM",
	ENUM_VALUE = "ENUM_VALUE",
	INPUT_OBJECT = "INPUT_OBJECT",
	INPUT_FIELD_DEFINITION = "INPUT_FIELD_DEFINITION",
}
export type DirectiveLocation = { [string]: string }
exports.DirectiveLocation = DirectiveLocation
export type ExtensionsObject = Record<string, any>
export type ObjectTypeExtensions = {
	type: "object",
	fields: Record<string, { extensions: ExtensionsObject, arguments: Record<string, ExtensionsObject> }>,
}
export type InputTypeExtensions = {
	type: "input",
	fields: Record<string, { extensions: ExtensionsObject }>,
}
export type InterfaceTypeExtensions = {
	type: "interface",
	fields: Record<string, { extensions: ExtensionsObject, arguments: Record<string, ExtensionsObject> }>,
}
export type UnionTypeExtensions = { type: "union" }
export type ScalarTypeExtensions = { type: "scalar" }
export type EnumTypeExtensions = { type: "enum", values: Record<string, ExtensionsObject> }
export type PossibleTypeExtensions =
	InputTypeExtensions
	| InterfaceTypeExtensions
	| ObjectTypeExtensions
	| UnionTypeExtensions
	| ScalarTypeExtensions
	| EnumTypeExtensions
export type SchemaExtensions = {
	schemaExtensions: ExtensionsObject,
	types: Record<string, { extensions: ExtensionsObject } & PossibleTypeExtensions>,
}
export type DirectiveArgs = { [string]: any }
export type DirectiveUsage = { name: string, args: DirectiveArgs }
return exports
