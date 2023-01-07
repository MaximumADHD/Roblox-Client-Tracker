--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/aa650618426a301e3f0f61ead3adcd755055a627/src/type/schema.js
local srcWorkspace = script.Parent.Parent
local luaUtilsWorkspace = srcWorkspace.luaUtils

local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>
type Set<T> = LuauPolyfill.Set<T>

local isNillishModule = require(luaUtilsWorkspace.isNillish)
local isNillish = isNillishModule.isNillish
local isNotNillish = isNillishModule.isNotNillish
local NULL = require(luaUtilsWorkspace.null)
type NULL = typeof(NULL)

local jsutilsWorkspace = srcWorkspace.jsutils
local inspect = require(jsutilsWorkspace.inspect).inspect
local toObjMap = require(jsutilsWorkspace.toObjMap).toObjMap
local devAssert = require(jsutilsWorkspace.devAssert).devAssert
local instanceOf = require(jsutilsWorkspace.instanceOf)
local isObjectLike = require(jsutilsWorkspace.isObjectLike).isObjectLike

local introspectionModule = require(script.Parent.introspection)
local __Schema = introspectionModule.__Schema

local astModule = require(srcWorkspace.language.ast)
type SchemaDefinitionNode = astModule.SchemaDefinitionNode
type SchemaExtensionNode = astModule.SchemaExtensionNode

local GraphQLErrorModule = require(srcWorkspace.error.GraphQLError)
type GraphQLError = GraphQLErrorModule.GraphQLError

local directivesModule = require(script.Parent.directives)
type GraphQLDirective = directivesModule.GraphQLDirective
local isDirective = directivesModule.isDirective
local specifiedDirectives = directivesModule.specifiedDirectives

local ObjMapModule = require(jsutilsWorkspace.ObjMap)
type ObjMap<T> = ObjMapModule.ObjMap<T>
type ObjMapLike<T> = ObjMapModule.ObjMapLike<T>

local definitionModule = require(script.Parent.definition)
type GraphQLType = definitionModule.GraphQLType
type GraphQLNamedType = definitionModule.GraphQLNamedType
type GraphQLAbstractType = definitionModule.GraphQLAbstractType
type GraphQLUnionType = definitionModule.GraphQLUnionType
type GraphQLObjectType = definitionModule.GraphQLObjectType
type GraphQLInterfaceType = definitionModule.GraphQLInterfaceType

local isObjectType = definitionModule.isObjectType
local isInterfaceType = definitionModule.isInterfaceType
local isUnionType = definitionModule.isUnionType
local isInputObjectType = definitionModule.isInputObjectType
local getNamedType = definitionModule.getNamedType

-- ROBLOX deviation: pre-declare variables
local GraphQLSchema: GraphQLSchema
local collectReferencedTypes

-- /**
--  * Test if the given value is a GraphQL schema.
--  */
local function isSchema(schema: any): boolean
	return instanceOf(schema, GraphQLSchema)
end

local function assertSchema(schema: any): GraphQLSchema
	if not isSchema(schema) then
		error(Error.new(("Expected %s to be a GraphQL schema."):format(inspect(schema))))
	end
	return schema
end

-- /**
--  * Schema Definition
--  *
--  * A Schema is created by supplying the root types of each type of operation,
--  * query and mutation (optional). A schema definition is then supplied to the
--  * validator and executor.
--  *
--  * Example:
--  *
--  *     const MyAppSchema = new GraphQLSchema({
--  *       query: MyAppQueryRootType,
--  *       mutation: MyAppMutationRootType,
--  *     })
--  *
--  * Note: When the schema is constructed, by default only the types that are
--  * reachable by traversing the root types are included, other types must be
--  * explicitly referenced.
--  *
--  * Example:
--  *
--  *     const characterInterface = new GraphQLInterfaceType({
--  *       name: 'Character',
--  *       ...
--  *     });
--  *
--  *     const humanType = new GraphQLObjectType({
--  *       name: 'Human',
--  *       interfaces: [characterInterface],
--  *       ...
--  *     });
--  *
--  *     const droidType = new GraphQLObjectType({
--  *       name: 'Droid',
--  *       interfaces: [characterInterface],
--  *       ...
--  *     });
--  *
--  *     const schema = new GraphQLSchema({
--  *       query: new GraphQLObjectType({
--  *         name: 'Query',
--  *         fields: {
--  *           hero: { type: characterInterface, ... },
--  *         }
--  *       }),
--  *       ...
--  *       // Since this schema references only the `Character` interface it's
--  *       // necessary to explicitly list the types that implement it if
--  *       // you want them to be included in the final schema.
--  *       types: [humanType, droidType],
--  *     })
--  *
--  * Note: If an array of `directives` are provided to GraphQLSchema, that will be
--  * the exact list of directives represented and allowed. If `directives` is not
--  * provided then a default set of the specified directives (e.g. @include and
--  * @skip) will be used. If you wish to provide *additional* directives to these
--  * specified directives, you must explicitly declare them. Example:
--  *
--  *     const MyAppSchema = new GraphQLSchema({
--  *       ...
--  *       directives: specifiedDirectives.concat([ myCustomDirective ]),
--  *     })
--  *
--  */
export type GraphQLSchema = {
	description: string?,
	extensions: ObjMap<any>?,
	astNode: SchemaDefinitionNode?,
	extensionASTNodes: Array<SchemaExtensionNode>?,

	_queryType: GraphQLObjectType? | NULL,
	_mutationType: GraphQLObjectType? | NULL,
	_subscriptionType: GraphQLObjectType? | NULL,
	_directives: Array<GraphQLDirective>,
	_typeMap: TypeMap,
	_subTypeMap: Map<string, ObjMap<boolean>>,
	_implementationsMap: Map<string, {
		objects: Array<GraphQLObjectType>,
		interfaces: Array<GraphQLInterfaceType>,
	}>,

	-- // Used as a cache for validateSchema().
	__validationErrors: Array<GraphQLError>?,

	-- method definitions
	getQueryType: (self: GraphQLSchema) -> GraphQLObjectType? | NULL,
	toConfig: (self: GraphQLSchema) -> GraphQLSchemaNormalizedConfig,
	getMutationType: (self: GraphQLSchema) -> GraphQLObjectType? | NULL,
	getSubscriptionType: (self: GraphQLSchema) -> GraphQLObjectType? | NULL,
	getTypeMap: (self: GraphQLSchema) -> TypeMap,
	getType: (self: GraphQLSchema, name: string) -> GraphQLNamedType?,
	getPossibleTypes: (
		self: GraphQLSchema,
		abstractType: GraphQLAbstractType
	) -> Array<GraphQLObjectType>,
	getImplementations: (
		self: GraphQLSchema,
		interfaceType: GraphQLInterfaceType
	) -> {
		objects: Array<GraphQLObjectType>,
		interfaces: Array<GraphQLInterfaceType>,
	},
	isSubType: (
		self: GraphQLSchema,
		abstractType: GraphQLAbstractType,
		maybeSubType: GraphQLObjectType | GraphQLInterfaceType
	) -> boolean,
	getDirectives: (self: GraphQLSchema) -> Array<GraphQLDirective>,
	getDirective: (self: GraphQLSchema, any) -> GraphQLDirective?,
	__tostring: (self: GraphQLSchema) -> string,
	new: (config: GraphQLSchemaConfig) -> GraphQLSchema,
}

GraphQLSchema = {} :: GraphQLSchema;
(GraphQLSchema :: any).__index = GraphQLSchema

function GraphQLSchema.new(config: GraphQLSchemaConfig): GraphQLSchema
	local self = (setmetatable({}, GraphQLSchema) :: any) :: GraphQLSchema

	-- // If this schema was built from a source known to be valid, then it may be
	-- // marked with assumeValid to avoid an additional type system validation.
	self.__validationErrors = nil
	if config.assumeValid == true then
		self.__validationErrors = {}
	end

	-- // Check for common mistakes during construction to produce early errors.
	devAssert(isObjectLike(config), "Must provide configuration object.")
	devAssert(
		not config.types or Array.isArray(config.types),
		('"types" must be Array if provided but got: %s.'):format(inspect(config.types))
	)
	devAssert(
		not config.directives or Array.isArray(config.directives),
		'"directives" must be Array if provided but got: '
			.. ("%s."):format(inspect(config.directives))
	)

	self.description = config.description
	self.extensions = if config.extensions then toObjMap(config.extensions) else nil
	self.astNode = config.astNode
	self.extensionASTNodes = config.extensionASTNodes

	self._queryType = config.query
	self._mutationType = config.mutation
	self._subscriptionType = config.subscription
	-- // Provide specified directives (e.g. @include and @skip) by default.
	self._directives = config.directives or specifiedDirectives

	-- // To preserve order of user-provided types, we add first to add them to
	-- // the set of "collected" types, so `collectReferencedTypes` ignore them.
	local allReferencedTypes: Set<GraphQLNamedType> = Set.new()
	for _, type_ in ipairs(config.types or {}) do
		allReferencedTypes:add(type_)
	end
	if config.types ~= nil then
		for _, type_ in ipairs(config.types) do
			-- // When we ready to process this type, we remove it from "collected" types
			-- // and then add it together with all dependent types in the correct position.
			allReferencedTypes:delete(type_)
			collectReferencedTypes(type_, allReferencedTypes)
		end
	end

	if isNotNillish(self._queryType) then
		collectReferencedTypes(self._queryType, allReferencedTypes)
	end
	if isNotNillish(self._mutationType) then
		collectReferencedTypes(self._mutationType, allReferencedTypes)
	end
	if isNotNillish(self._subscriptionType) then
		collectReferencedTypes(self._subscriptionType, allReferencedTypes)
	end

	for _, directive in ipairs(self._directives) do
		-- Directives are not validated until validateSchema() is called.
		if isDirective(directive) then
			for _, arg in ipairs(directive.args) do
				collectReferencedTypes(arg.type, allReferencedTypes)
			end
		end
	end
	collectReferencedTypes(__Schema, allReferencedTypes)

	-- // Storing the resulting map for reference by the schema.
	self._typeMap = Map.new()
	self._subTypeMap = Map.new()
	-- // Keep track of all implementations by interface name.
	self._implementationsMap = Map.new()

	for _, namedType in allReferencedTypes do
		if isNillish(namedType) then
			continue
		end

		-- ROBLOX deviation: can't attempt to access the name property on a function
		local typeName
		if typeof(namedType) == "table" then
			typeName = namedType.name
		else
			typeName = tostring(namedType)
		end

		devAssert(
			typeName and typeName ~= "",
			"One of the provided types for building the Schema is missing a name."
		)
		if self._typeMap:has(typeName) then
			error(
				Error.new(
					(
						'Schema must contain uniquely named types but contains multiple types named "%s".'
					):format(typeName)
				)
			)
		end
		self._typeMap:set(typeName, namedType)

		if isInterfaceType(namedType) then
			-- // Store implementations by interface.
			for _, iface in ipairs(namedType:getInterfaces()) do
				if isInterfaceType(iface) then
					-- ROBLOX FIXME Luau: Luau doesn't understand if nil then initialize pattern
					local implementations = self._implementationsMap:get(iface.name) :: {
						objects: Array<GraphQLObjectType>,
						interfaces: Array<GraphQLInterfaceType>,
					}
					if implementations == nil then
						implementations = {
							objects = {},
							interfaces = {},
						}
						self._implementationsMap:set(iface.name, implementations)
					end

					table.insert(implementations.interfaces, namedType)
				end
			end
		elseif isObjectType(namedType) then
			-- // Store implementations by objects.
			for _, iface in ipairs(namedType:getInterfaces()) do
				if isInterfaceType(iface) then
					-- ROBLOX FIXME Luau: Luau doesn't understand if nil then initialize pattern
					local implementations = self._implementationsMap:get(iface.name) :: {
						objects: Array<GraphQLObjectType>,
						interfaces: Array<GraphQLInterfaceType>,
					}

					if implementations == nil then
						implementations = {
							objects = {},
							interfaces = {},
						}
						self._implementationsMap:set(iface.name, implementations)
					end

					table.insert(implementations.objects, namedType)
				end
			end
		end
	end

	return self
end

function GraphQLSchema:getQueryType(): GraphQLObjectType? | NULL
	return self._queryType
end

function GraphQLSchema:getMutationType(): GraphQLObjectType? | NULL
	return self._mutationType
end

function GraphQLSchema:getSubscriptionType(): GraphQLObjectType? | NULL
	return self._subscriptionType
end

function GraphQLSchema:getTypeMap(): TypeMap
	return self._typeMap
end

function GraphQLSchema:getType(name: string): GraphQLNamedType?
	return self:getTypeMap()[name]
end

function GraphQLSchema:getPossibleTypes(abstractType: GraphQLAbstractType): Array<GraphQLObjectType>
	-- ROBLOX TODO Luau: need return constraints so we can narrow: isUnionType(type: unknown): type is GraphQLUnionType
	if isUnionType(abstractType) then
		return (abstractType :: GraphQLUnionType):getTypes()
	else
		return self:getImplementations(abstractType :: GraphQLInterfaceType).objects
	end
end

function GraphQLSchema:getImplementations(
	interfaceType: GraphQLInterfaceType
): {
	objects: Array<GraphQLObjectType>,
	interfaces: Array<GraphQLInterfaceType>,
}
	local implementations = self._implementationsMap:get(interfaceType.name)
	return implementations or { objects = {}, interfaces = {} }
end

function GraphQLSchema:isSubType(
	abstractType: GraphQLAbstractType,
	maybeSubType: GraphQLObjectType | GraphQLInterfaceType
): boolean
	-- ROBLOX FIXME Luau: type states should narrow map to non-nil based on nil check+assign
	local map: ObjMap<boolean> = self._subTypeMap[abstractType.name] :: ObjMap<boolean>
	if map == nil then
		map = {}

		if isUnionType(abstractType) then
			for _, type_ in ipairs((abstractType :: GraphQLUnionType):getTypes()) do
				map[type_.name] = true
			end
		else
			local implementations = self:getImplementations(abstractType :: GraphQLInterfaceType)
			for _, type_ in ipairs(implementations.objects) do
				map[type_.name] = true
			end
			for _, type_ in ipairs(implementations.interfaces) do
				map[type_.name] = true
			end
		end

		self._subTypeMap:set(abstractType.name, map)
	end

	return map[maybeSubType.name] ~= nil
end

function GraphQLSchema:getDirectives(): Array<GraphQLDirective>
	return self._directives
end

function GraphQLSchema:getDirective(name): GraphQLDirective?
	return Array.find(self:getDirectives(), function(directive)
		return directive.name == name
	end)
end

function GraphQLSchema:toConfig(): GraphQLSchemaNormalizedConfig
	return {
		description = self.description,
		query = self:getQueryType(),
		mutation = self:getMutationType(),
		subscription = self:getSubscriptionType(),
		-- ROBLOX deviation: use Map type
		types = self:getTypeMap():values(),
		directives = Array.slice(self:getDirectives()),
		extensions = self.extensions,
		astNode = self.astNode,
		extensionASTNodes = self.extensionASTNodes or {},
		assumeValid = self.__validationErrors ~= nil,
	}
end

function GraphQLSchema:__tostring(): string
	return "GraphQLSchema"
end

-- ROBLOX deviation - use custom map type
type TypeMap = Map<string, GraphQLNamedType>

export type GraphQLSchemaValidationOptions = {
	-- /**
	-- * When building a schema from a GraphQL service's introspection result, it
	-- * might be safe to assume the schema is valid. Set to true to assume the
	-- * produced schema is valid.
	-- *
	-- * Default: false
	-- */
	assumeValid: boolean?,
}

export type GraphQLSchemaConfig = {
	description: string?,
	query: GraphQLObjectType? | NULL,
	mutation: GraphQLObjectType? | NULL,
	subscription: GraphQLObjectType? | NULL,
	types: Array<GraphQLNamedType>?,
	directives: Array<GraphQLDirective>?,
	extensions: ObjMapLike<any>?,
	astNode: SchemaDefinitionNode?,
	extensionASTNodes: Array<SchemaExtensionNode>?,
} & GraphQLSchemaValidationOptions

-- /**
--  * @internal
--  */
export type GraphQLSchemaNormalizedConfig = GraphQLSchemaConfig & {
	description: string?,
	types: Array<GraphQLNamedType>,
	directives: Array<GraphQLDirective>,
	extensions: ObjMap<any>?,
	extensionASTNodes: Array<SchemaExtensionNode>,
	assumeValid: boolean,
}

function collectReferencedTypes(type_: GraphQLType, typeSet: Set<GraphQLNamedType>)
	local namedType = getNamedType(type_)

	if not typeSet:has(namedType) then
		typeSet:add(namedType)
		if isUnionType(namedType) then
			for _, memberType in ipairs(namedType:getTypes()) do
				collectReferencedTypes(memberType, typeSet)
			end
		elseif isObjectType(namedType) or isInterfaceType(namedType) then
			for _, interfaceType in ipairs(namedType:getInterfaces()) do
				collectReferencedTypes(interfaceType, typeSet)
			end

			-- ROBLOX deviation: use Map
			for _, field in ipairs(namedType:getFields():values()) do
				collectReferencedTypes(field.type, typeSet)
				for _, arg in ipairs(field.args) do
					collectReferencedTypes(arg.type, typeSet)
				end
			end
		elseif isInputObjectType(namedType) then
			-- ROBLOX deviation: use Map
			for _, field in ipairs(namedType:getFields():values()) do
				collectReferencedTypes(field.type, typeSet)
			end
		end
	end

	return typeSet
end

return {
	isSchema = isSchema,
	assertSchema = assertSchema,
	GraphQLSchema = GraphQLSchema,
}
