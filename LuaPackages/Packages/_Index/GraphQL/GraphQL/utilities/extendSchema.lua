--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/4931f93f297511c6f8465d0c8104b20388a517e8/src/utilities/extendSchema.js
--!strict
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local coerceToMap = LuauPolyfill.coerceToMap
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>

local mapValueOrdered = require(srcWorkspace.luaUtils.mapValueOrdered).mapValueOrdered
local NULL = require(srcWorkspace.luaUtils.null)
type NULL = typeof(NULL)

local jsutils = srcWorkspace.jsutils
local keyMap = require(jsutils.keyMap).keyMap
local inspect = require(jsutils.inspect).inspect
local devAssert = require(jsutils.devAssert).devAssert
local ObjMapModule = require(jsutils.ObjMap)
type ObjMap<T> = ObjMapModule.ObjMap<T>

local _astImport = require(srcWorkspace.language.ast)
type DocumentNode = _astImport.DocumentNode
type TypeNode = _astImport.TypeNode
type ListTypeNode = _astImport.ListTypeNode
type NamedTypeNode = _astImport.NamedTypeNode
type NonNullTypeNode = _astImport.NonNullTypeNode
type SchemaDefinitionNode = _astImport.SchemaDefinitionNode
type SchemaExtensionNode = _astImport.SchemaExtensionNode
type TypeDefinitionNode = _astImport.TypeDefinitionNode
type TypeExtensionNode = _astImport.TypeExtensionNode
type InterfaceTypeDefinitionNode = _astImport.InterfaceTypeDefinitionNode
type InterfaceTypeExtensionNode = _astImport.InterfaceTypeExtensionNode
type ObjectTypeDefinitionNode = _astImport.ObjectTypeDefinitionNode
type ObjectTypeExtensionNode = _astImport.ObjectTypeExtensionNode
type DefinitionNode = _astImport.DefinitionNode
type UnionTypeDefinitionNode = _astImport.UnionTypeDefinitionNode
type UnionTypeExtensionNode = _astImport.UnionTypeExtensionNode
type FieldDefinitionNode = _astImport.FieldDefinitionNode
type InputObjectTypeDefinitionNode = _astImport.InputObjectTypeDefinitionNode
type InputObjectTypeExtensionNode = _astImport.InputObjectTypeExtensionNode
type InputValueDefinitionNode = _astImport.InputValueDefinitionNode
type EnumTypeDefinitionNode = _astImport.EnumTypeDefinitionNode
type EnumTypeExtensionNode = _astImport.EnumTypeExtensionNode
type EnumValueDefinitionNode = _astImport.EnumValueDefinitionNode
type DirectiveDefinitionNode = _astImport.DirectiveDefinitionNode
type ScalarTypeDefinitionNode = _astImport.ScalarTypeDefinitionNode
type ScalarTypeExtensionNode = _astImport.ScalarTypeExtensionNode
local Kind = require(srcWorkspace.language.kinds).Kind

local predicates = require(srcWorkspace.language.predicates)
local isTypeDefinitionNode = predicates.isTypeDefinitionNode
local isTypeExtensionNode = predicates.isTypeExtensionNode

local assertValidSDLExtension = require(srcWorkspace.validation.validate).assertValidSDLExtension

local getDirectiveValues = require(srcWorkspace.execution.values).getDirectiveValues

local typeWorkspace = srcWorkspace.type
local schemaImport = require(typeWorkspace.schema)
type GraphQLSchemaNormalizedConfig = schemaImport.GraphQLSchemaNormalizedConfig
type GraphQLSchemaValidationOptions = schemaImport.GraphQLSchemaValidationOptions
local assertSchema = schemaImport.assertSchema
local GraphQLSchema = schemaImport.GraphQLSchema
local scalarsImport = require(typeWorkspace.scalars)
local specifiedScalarTypes = scalarsImport.specifiedScalarTypes
local isSpecifiedScalarType = scalarsImport.isSpecifiedScalarType
local introspectionImport = require(typeWorkspace.introspection)
local introspectionTypes = introspectionImport.introspectionTypes
local isIntrospectionType = introspectionImport.isIntrospectionType
local directives = require(typeWorkspace.directives)
type GraphQLDirective = directives.GraphQLDirective
local GraphQLDirective = directives.GraphQLDirective
local GraphQLDeprecatedDirective = directives.GraphQLDeprecatedDirective
local GraphQLSpecifiedByDirective = directives.GraphQLSpecifiedByDirective

local definitionImport = require(typeWorkspace.definition)
type GraphQLType = definitionImport.GraphQLType
type GraphQLNamedType = definitionImport.GraphQLNamedType
-- ROBLOX TODO: Luau doesn't currently support default type args, so we inline here
type DefaultGraphQLFieldConfigTArgs = { [string]: any }
type GraphQLFieldConfig<T, U> = definitionImport.GraphQLFieldConfig<
	T,
	U,
	DefaultGraphQLFieldConfigTArgs
>
type GraphQLFieldConfigMap<T, V> = definitionImport.GraphQLFieldConfigMap<T, V>
type GraphQLArgumentConfig = definitionImport.GraphQLArgumentConfig
type GraphQLFieldConfigArgumentMap = definitionImport.GraphQLFieldConfigArgumentMap
type GraphQLEnumValueConfigMap = definitionImport.GraphQLEnumValueConfigMap
type GraphQLInputFieldConfigMap = definitionImport.GraphQLInputFieldConfigMap
local isScalarType = definitionImport.isScalarType
local isObjectType = definitionImport.isObjectType
local isInterfaceType = definitionImport.isInterfaceType
local isUnionType = definitionImport.isUnionType
local isListType = definitionImport.isListType
local isNonNullType = definitionImport.isNonNullType
local isEnumType = definitionImport.isEnumType
local isInputObjectType = definitionImport.isInputObjectType
local GraphQLList = definitionImport.GraphQLList
local GraphQLNonNull = definitionImport.GraphQLNonNull
local GraphQLScalarType = definitionImport.GraphQLScalarType
type GraphQLScalarType = definitionImport.GraphQLScalarType
local GraphQLObjectType = definitionImport.GraphQLObjectType
type GraphQLObjectType = definitionImport.GraphQLObjectType
local GraphQLInterfaceType = definitionImport.GraphQLInterfaceType
type GraphQLInterfaceType = definitionImport.GraphQLInterfaceType
local GraphQLUnionType = definitionImport.GraphQLUnionType
type GraphQLUnionType = definitionImport.GraphQLUnionType
local GraphQLEnumType = definitionImport.GraphQLEnumType
type GraphQLEnumType = definitionImport.GraphQLEnumType
local GraphQLInputObjectType = definitionImport.GraphQLInputObjectType
type GraphQLInputObjectType = definitionImport.GraphQLInputObjectType

local valueFromAST = require(script.Parent.valueFromAST).valueFromAST

-- ROBLOX deviation: pre-declare variables
local stdTypeMap: ObjMap<GraphQLScalarType | GraphQLNamedType>
local getDeprecationReason: (node: EnumValueDefinitionNode | FieldDefinitionNode | InputValueDefinitionNode) -> string?
local getSpecifiedByUrl: (node: ScalarTypeDefinitionNode | ScalarTypeExtensionNode) -> string?

type Options = GraphQLSchemaValidationOptions & {
	-- /**
	--  * Set to true to assume the SDL is valid.
	--  *
	--  * Default: false
	--  */
	assumeValidSDL: boolean?,
}

-- /**
--  * Produces a new schema given an existing schema and a document which may
--  * contain GraphQL type extensions and definitions. The original schema will
--  * remain unaltered.
--  *
--  * Because a schema represents a graph of references, a schema cannot be
--  * extended without effectively making an entire copy. We do not know until it's
--  * too late if subgraphs remain unchanged.
--  *
--  * This algorithm copies the provided schema, applying extensions while
--  * producing the copy. The original schema remains unaltered.
--  */
local function extendSchema(schema, documentAST, options: Options)
	assertSchema(schema)

	devAssert(
		documentAST ~= nil and documentAST.kind == Kind.DOCUMENT,
		"Must provide valid Document AST."
	)

	if
		(options and options.assumeValid) ~= true
		and (options and options.assumeValidSDL) ~= true
	then
		assertValidSDLExtension(documentAST, schema)
	end

	local schemaConfig = schema:toConfig()
	local extendedConfig = extendSchemaImpl(schemaConfig, documentAST, options)
	return if schemaConfig == extendedConfig then schema else GraphQLSchema.new(extendedConfig)
end

-- /**
--  * @internal
--  */
function extendSchemaImpl(
	schemaConfig: GraphQLSchemaNormalizedConfig,
	documentAST: DocumentNode,
	options: Options?
): GraphQLSchemaNormalizedConfig
	-- // Collect the type definitions and extensions found in the document.
	local typeDefs: Array<TypeDefinitionNode> = {}
	-- ROBLOX deviation: use Map type
	-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
	local typeExtensionsMap = Map.new() :: Map<string, Array<TypeExtensionNode>>

	-- // New directives and types are separate because a directives and types can
	-- // have the same name. For example, a type named "skip".
	local directiveDefs: Array<DirectiveDefinitionNode> = {}

	local schemaDef: SchemaDefinitionNode?
	-- // Schema extensions are collected which may add additional operation types.
	local schemaExtensions: Array<any> = {} -- ROBLOX FIXME: use `SchemaExtensionNode` type

	for _, def in ipairs(documentAST.definitions) do
		-- ROBLOX FIXME Luau: Luau isn't narrowing the types based on these comparisons to the Kind singleton type
		if def.kind == Kind.SCHEMA_DEFINITION then
			schemaDef = def
		elseif def.kind == Kind.SCHEMA_EXTENSION then
			table.insert(schemaExtensions, def)
		elseif isTypeDefinitionNode(def) then
			table.insert(typeDefs, def :: TypeDefinitionNode)
		elseif isTypeExtensionNode(def) then
			local extendedTypeName = (def :: TypeExtensionNode).name.value
			-- ROBLOX deviation: use Map type
			local existingTypeExtensions = typeExtensionsMap:get(extendedTypeName)
			typeExtensionsMap:set(
				extendedTypeName,
				-- ROBLOX performance? optimize this here and upstream by pushing onto existing rather than concat
				(
						if existingTypeExtensions
							then Array.concat(existingTypeExtensions, { def :: TypeExtensionNode })
							else { def :: TypeExtensionNode }
					)
			)
		elseif def.kind == Kind.DIRECTIVE_DEFINITION then
			table.insert(directiveDefs, def :: DirectiveDefinitionNode)
		end
	end

	-- // If this document contains no new types, extensions, or directives then
	-- // return the same unmodified GraphQLSchema instance.
	if
		-- ROBLOX deviation: use Map type
		#typeExtensionsMap:keys() == 0
		and #typeDefs == 0
		and #directiveDefs == 0
		and #schemaExtensions == 0
		and schemaDef == nil
	then
		return schemaConfig
	end

	-- ROBLOX deviation: the rest of this function statements have been moved after
	-- the function declarations, because they are called within this scope, we can't
	-- pre-declare them like it's usually done. We still need to pre-declare some
	-- functions in relation to each other, and that is safe to do
	-- ROBLOX deviation: use Map type
	local typeMap = Map.new() :: Map<string, GraphQLNamedType>

	-- ROBLOX deviation: pre-declare variables
	local replaceNamedType
	local extendArg
	local extendField
	local extendScalarType
	local extendObjectType
	local extendInterfaceType
	local extendUnionType
	local extendEnumType
	local extendInputObjectType
	local buildInputFieldMap: (
		nodes: Array<InputObjectTypeDefinitionNode | InputObjectTypeExtensionNode>
	) -> GraphQLInputFieldConfigMap
	local buildEnumValueMap: (
		nodes: Array<EnumTypeDefinitionNode | EnumTypeExtensionNode>
	) -> GraphQLEnumValueConfigMap
	local buildInterfaces: (
		nodes: Array<
			InterfaceTypeDefinitionNode
			| InterfaceTypeExtensionNode
			| ObjectTypeDefinitionNode
			| ObjectTypeExtensionNode
		>
	) -> Array<GraphQLInterfaceType>
	local buildUnionTypes
	local getNamedType
	local buildArgumentMap: (args: Array<InputValueDefinitionNode>?) -> GraphQLFieldConfigArgumentMap
	local buildFieldMap: (
		nodes: Array<
			InterfaceTypeDefinitionNode
			| InterfaceTypeExtensionNode
			| ObjectTypeDefinitionNode
			| ObjectTypeExtensionNode
		>
	) -> GraphQLFieldConfigMap<any, any>

	-- // Below are functions used for producing this schema that have closed over
	-- // this scope and have access to the schema, cache, and newly defined types.

	local function replaceType(type_)
		if isListType(type_) then
			-- // $FlowFixMe[incompatible-return]
			return GraphQLList.new(replaceType(type_.ofType))
		end
		if isNonNullType(type_) then
			-- // $FlowFixMe[incompatible-return]
			return GraphQLNonNull.new(replaceType(type_.ofType))
		end
		return replaceNamedType(type_)
	end

	function replaceNamedType(type_)
		-- // Note: While this could make early assertions to get the correctly
		-- // typed values, that would throw immediately while type system
		-- // validation with validateSchema() will produce more actionable results.
		-- ROBLOX deviation: use Map type
		return typeMap:get(type_.name)
	end

	local function replaceDirective(directive: GraphQLDirective): GraphQLDirective
		local config = directive:toConfig()
		return GraphQLDirective.new(
			Object.assign(
				{},
				config,
				{ args = mapValueOrdered(coerceToMap(config.args), extendArg) }
			)
		)
	end

	local function extendNamedType(type_: GraphQLNamedType): GraphQLNamedType
		if isIntrospectionType(type_) or isSpecifiedScalarType(type_) then
			-- // Builtin types are not extended.
			return type_
		end
		-- ROBLOX TODO Luau: support `type is GraphQLScalarType` functionality and/or codegen into js2lua
		if isScalarType(type_) then
			return extendScalarType(type_ :: GraphQLScalarType)
		end
		if isObjectType(type_) then
			return extendObjectType(type_ :: GraphQLObjectType)
		end
		if isInterfaceType(type_) then
			return extendInterfaceType(type_ :: GraphQLInterfaceType)
		end
		if isUnionType(type_) then
			return extendUnionType(type_ :: GraphQLUnionType)
		end
		if isEnumType(type_) then
			return extendEnumType(type_ :: GraphQLEnumType)
		end
		-- // istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
		if isInputObjectType(type_) then
			return extendInputObjectType(type_ :: GraphQLInputObjectType)
		end

		-- // istanbul ignore next (Not reachable. All possible types have been considered)
		-- ROBLOX deviation: use assert so Luau understands it doesn't return
		assert(false, "Unexpected type: " .. inspect(type_))
	end

	function extendInputObjectType(type_: GraphQLInputObjectType): GraphQLInputObjectType
		local config = type_:toConfig()
		-- ROBLOX deviation: use Map type
		local extensions = typeExtensionsMap[config.name] or {}

		return GraphQLInputObjectType.new(Object.assign({}, config, {
			fields = function()
				return Map.new(Array.concat(
					mapValueOrdered(coerceToMap(config.fields), function(field)
						return Object.assign({}, field, { type = replaceType(field.type) })
					end):entries(),
					-- ROBLOX FIXME Luau: these types *can* be converted: TypeError: Type 'Array<EnumTypeExtensionNode | InputObjectTypeExtensionNode | InterfaceTypeExtensionNode | ObjectTypeExtensionNode | ScalarTypeExtensionNode | UnionTypeExtensionNode> | {  }' could not be converted into 'Array<InputObjectTypeDefinitionNode | InputObjectTypeExtensionNode>'
					buildInputFieldMap(extensions :: InputObjectTypeExtensionNode):entries()
				))
			end,
			extensionASTNodes = Array.concat(config.extensionASTNodes, extensions),
		}))
	end

	function extendEnumType(type_: GraphQLEnumType): GraphQLEnumType
		local config = type_:toConfig()
		-- ROBLOX deviation: use Map type
		local extensions = typeExtensionsMap:get(type_.name) or {}

		return GraphQLEnumType.new(Object.assign({}, config, {
			-- ROBLOX deviation: concat Maps instead of regular tables
			-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
			values = Map.new(
				Array.concat(
					config.values:entries(),
					buildEnumValueMap(extensions :: Array<EnumTypeExtensionNode>):entries()
				)
			),
			extensionASTNodes = Array.concat(config.extensionASTNodes, extensions),
		}))
	end

	function extendScalarType(type_: GraphQLScalarType): GraphQLScalarType
		local config = type_:toConfig()
		-- ROBLOX deviation: use Map type
		local extensions = typeExtensionsMap:get(config.name) or {}

		local specifiedByUrl = config.specifiedByUrl
		for _, extensionNode in ipairs(extensions) do
			specifiedByUrl = getSpecifiedByUrl(extensionNode) or specifiedByUrl
		end

		return GraphQLScalarType.new(Object.assign({}, config, {
			specifiedByUrl = specifiedByUrl,
			extensionASTNodes = Array.concat(config.extensionASTNodes, extensions),
		}))
	end

	function extendObjectType(type_: GraphQLObjectType): GraphQLObjectType
		local config = type_:toConfig()
		-- ROBLOX deviation: use Map type
		local extensions = typeExtensionsMap:get(config.name) or {}

		return GraphQLObjectType.new(Object.assign({}, config, {
			interfaces = function()
				-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
				return Array.concat(
					Array.map(type_:getInterfaces(), replaceNamedType),
					buildInterfaces(extensions :: Array<ObjectTypeExtensionNode>)
				)
			end,
			fields = function()
				return Map.new(
					Array.concat(
						mapValueOrdered(coerceToMap(config.fields), extendField):entries(),
						buildFieldMap(extensions :: Array<ObjectTypeExtensionNode>):entries()
					)
				)
			end,
			extensionASTNodes = Array.concat(config.extensionASTNodes, extensions),
		}))
	end

	function extendInterfaceType(type_: GraphQLInterfaceType): GraphQLInterfaceType
		local config = type_:toConfig()
		-- ROBLOX deviation: use Map type
		local extensions = typeExtensionsMap:get(config.name) or {}

		return GraphQLInterfaceType.new(Object.assign({}, config, {
			interfaces = function()
				-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
				return Array.concat(
					Array.map(type_:getInterfaces(), replaceNamedType),
					buildInterfaces(extensions :: Array<InterfaceTypeExtensionNode>)
				)
			end,
			fields = function()
				return Map.new(
					Array.concat(
						mapValueOrdered(coerceToMap(config.fields), extendField):entries(),
						buildFieldMap(extensions :: Array<InterfaceTypeExtensionNode>):entries()
					)
				)
			end,
			extensionASTNodes = Array.concat(config.extensionASTNodes, extensions),
		}))
	end

	function extendUnionType(type_: GraphQLUnionType): GraphQLUnionType
		local config = type_:toConfig()
		-- ROBLOX deviation: use Map type
		local extensions = typeExtensionsMap:get(config.name) or {}

		return GraphQLUnionType.new(Object.assign({}, config, {
			types = function()
				-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
				return Array.concat(
					Array.map(type_:getTypes(), replaceNamedType),
					buildUnionTypes(extensions :: Array<UnionTypeExtensionNode>)
				)
			end,
			extensionASTNodes = Array.concat(config.extensionASTNodes, extensions),
		}))
	end

	function extendField(field: GraphQLFieldConfig<any, any>): GraphQLFieldConfig<any, any>
		return Object.assign({}, field, {
			type = replaceType(field.type),
			-- // $FlowFixMe[incompatible-call]
			args = if field.args then mapValueOrdered(field.args, extendArg) else nil,
		})
	end

	function extendArg(arg: GraphQLArgumentConfig)
		return Object.assign({}, arg, { type = replaceType(arg.type) })
	end

	local function getOperationTypes(
		nodes: Array<SchemaDefinitionNode | SchemaExtensionNode>
	): {
		query: GraphQLObjectType?,
		mutation: GraphQLObjectType? | NULL,
		subscription: GraphQLObjectType?,
	}
		local opTypes = {}
		for _, node in ipairs(nodes) do
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			local operationTypesNodes = node.operationTypes or {}

			for _, operationType in ipairs(operationTypesNodes) do
				opTypes[operationType.operation] = getNamedType(operationType.type)
			end
		end

		-- // Note: While this could make early assertions to get the correctly
		-- // typed values below, that would throw immediately while type system
		-- // validation with validateSchema() will produce more actionable results.
		return opTypes
	end

	function getNamedType(node: NamedTypeNode): GraphQLNamedType
		local name = node.name.value
		-- ROBLOX deviation: use Map type
		local type_ = stdTypeMap[name] or typeMap[name]

		if type_ == nil then
			error(Error.new(('Unknown type: "%s".'):format(name)))
		end
		-- ROBLOX FIXME Luau: needs type states to understand type_ is narrowed to non-nil
		return type_ :: GraphQLNamedType
	end

	local function getWrappedType(node: TypeNode): GraphQLType
		-- ROBLOX FIXME Luau: Luau isn't narrowing based on equality of kind
		if node.kind == Kind.LIST_TYPE then
			return GraphQLList.new(getWrappedType((node :: ListTypeNode).type))
		end
		if node.kind == Kind.NON_NULL_TYPE then
			return GraphQLNonNull.new(getWrappedType((node :: NonNullTypeNode).type))
		end
		return getNamedType(node :: NamedTypeNode)
	end

	local function buildDirective(node: DirectiveDefinitionNode): GraphQLDirective
		local locations = Array.map(node.locations, function(location)
			return location.value
		end)

		-- ROBLOX FIXME: once Luau is able to refine types to support:
		-- `node.description and node.description.value`, then remove
		-- cast to any
		return GraphQLDirective.new({
			name = node.name.value,
			description = if node.description then node.description.value else nil,
			locations = locations,
			isRepeatable = node.repeatable,
			args = buildArgumentMap(node.arguments),
			astNode = node,
		})
	end

	function buildFieldMap(
		nodes: Array<
			InterfaceTypeDefinitionNode
			| InterfaceTypeExtensionNode
			| ObjectTypeDefinitionNode
			| ObjectTypeExtensionNode
		>
	): GraphQLFieldConfigMap<any, any>
		-- ROBLOX deviation: use Map
		local fieldConfigMap = Map.new() :: GraphQLFieldConfigMap<any, any>
		for _, node in ipairs(nodes) do
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			-- ROBLOX FIXME Luau: this annotation shouldn't be necessary, TS infers this correctly
			local nodeFields: Array<FieldDefinitionNode> = if node.fields then node.fields else {}

			for _, field in ipairs(nodeFields) do
				fieldConfigMap:set(field.name.value, {
					type = getWrappedType(field.type),
					description = if field.description then field.description.value else nil,
					args = buildArgumentMap(field.arguments),
					deprecationReason = getDeprecationReason(field),
					astNode = field,
				})
			end
		end
		return fieldConfigMap
	end

	function buildArgumentMap(args: Array<InputValueDefinitionNode>?): GraphQLFieldConfigArgumentMap
		-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		-- ROBLOX FIXME Luau: without this annotation, I get this bizarre error on the map set below: Property 'astNode' is not compatible. Type 'FieldDefinitionNode' could not be converted into 'InputValueDefinitionNode?'
		local argsNodes: Array<InputValueDefinitionNode> = if args then args else {}

		-- ROBLOX deviation: use Map
		local argConfigMap = Map.new() :: GraphQLFieldConfigArgumentMap
		for _, arg in ipairs(argsNodes) do
			-- // Note: While this could make assertions to get the correctly typed
			-- // value, that would throw immediately while type system validation
			-- // with validateSchema() will produce more actionable results.
			local type_: any = getWrappedType(arg.type)

			argConfigMap:set(arg.name.value, {
				type = type_,
				description = if arg.description then arg.description.value else nil,
				defaultValue = valueFromAST(arg.defaultValue, type_),
				deprecationReason = getDeprecationReason(arg :: InputValueDefinitionNode),
				astNode = arg,
			})
		end
		return argConfigMap
	end

	function buildInputFieldMap(
		nodes: Array<
			InputObjectTypeDefinitionNode | InputObjectTypeExtensionNode
		>
	): GraphQLInputFieldConfigMap
		-- ROBLOX deviation: use Map
		local inputFieldMap = Map.new() :: GraphQLInputFieldConfigMap
		for _, node in ipairs(nodes) do
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			-- ROBLOX FIXME Luau: this annotation shouldn't be necessary, TS infers this correctly
			local fieldsNodes: Array<InputValueDefinitionNode> = if node.fields
				then node.fields
				else {}

			for _, field in ipairs(fieldsNodes) do
				-- // Note: While this could make assertions to get the correctly typed
				-- // value, that would throw immediately while type system validation
				-- // with validateSchema() will produce more actionable results.
				local type_: any = getWrappedType(field.type)

				inputFieldMap:set(field.name.value, {
					type = type_,
					description = if field.description then field.description.value else nil,
					defaultValue = valueFromAST(field.defaultValue, type_),
					deprecationReason = getDeprecationReason(field),
					astNode = field,
				})
			end
		end
		return inputFieldMap
	end

	function buildEnumValueMap(
		nodes: Array<EnumTypeDefinitionNode | EnumTypeExtensionNode>
	): GraphQLEnumValueConfigMap
		-- ROBLOX deviation: use Map to guarantee order
		local enumValueMap = Map.new() :: GraphQLEnumValueConfigMap
		for _, node in ipairs(nodes) do
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			-- ROBLOX FIXME Luau: this annotation shouldn't be necessary, TS infers this correctly
			local valuesNodes: Array<EnumValueDefinitionNode> = if node.values
				then node.values
				else {}

			for _, value in ipairs(valuesNodes) do
				enumValueMap:set(value.name.value, {
					description = if value.description then value.description.value else nil,
					deprecationReason = getDeprecationReason(value),
					astNode = value,
				})
			end
		end
		return enumValueMap
	end

	function buildInterfaces(
		nodes: Array<
			InterfaceTypeDefinitionNode
			| InterfaceTypeExtensionNode
			| ObjectTypeDefinitionNode
			| ObjectTypeExtensionNode
		>
	): Array<GraphQLInterfaceType>
		local interfaces: Array<GraphQLInterfaceType> = {}
		for _, node in ipairs(nodes) do
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			if node.interfaces then
				-- ROBLOX FIXME Luau: this annotation shouldn't be necessary, TS infers this correctly
				for _, type_: NamedTypeNode in ipairs(node.interfaces) do
					-- // Note: While this could make assertions to get the correctly typed
					-- // values below, that would throw immediately while type system
					-- // validation with validateSchema() will produce more actionable
					-- // results.
					-- @ts-expect-error
					table.insert(interfaces, getNamedType(type_) :: any)
				end
			end
		end
		return interfaces
	end

	function buildUnionTypes(
		nodes: Array<UnionTypeDefinitionNode | UnionTypeExtensionNode>
	): Array<GraphQLObjectType>
		local types: Array<GraphQLObjectType> = {}
		for _, node in ipairs(nodes) do
			-- istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')

			if node.types then
				for _, type_ in ipairs(node.types) do
					-- // Note: While this could make assertions to get the correctly typed
					-- // values below, that would throw immediately while type system
					-- // validation with validateSchema() will produce more actionable
					-- // results.
					-- @ts-expect-error
					table.insert(types, getNamedType(type_) :: any)
				end
			end
		end
		return types
	end

	local function buildType(astNode: TypeDefinitionNode): GraphQLNamedType
		local name = astNode.name.value
		-- ROBLOX deviation START: use Map type, cache kind field access for performance
		local extensionASTNodes = typeExtensionsMap[name] or {}
		local astNodeKind = astNode.kind
		-- ROBLOX deviation END

		if astNodeKind == Kind.OBJECT_TYPE_DEFINITION then
			local allNodes = Array.concat(astNode, extensionASTNodes)

			return GraphQLObjectType.new({
				name = name,
				description = if astNode.description then astNode.description.value else nil,
				interfaces = function()
					return buildInterfaces(allNodes)
				end,
				fields = function()
					return buildFieldMap(allNodes)
				end,
				astNode = astNode :: ObjectTypeDefinitionNode,
				-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
				extensionASTNodes = extensionASTNodes :: Array<ObjectTypeExtensionNode>,
			})
		elseif astNodeKind == Kind.INTERFACE_TYPE_DEFINITION then
			local allNodes = Array.concat(astNode, extensionASTNodes)

			return GraphQLInterfaceType.new({
				name = name,
				-- ROBLOX TODO Luau: should narrow astNode based on astNodeKind branch
				-- ROBLOX FIXME Luau: description nil-ability not removed by if expression. needs type states?
				description = if (astNode :: InterfaceTypeDefinitionNode).description
					then (astNode.description :: any).value
					else nil,
				interfaces = function()
					return buildInterfaces(allNodes)
				end,
				fields = function()
					return buildFieldMap(allNodes)
				end,
				astNode = astNode :: InterfaceTypeDefinitionNode,
				extensionASTNodes = extensionASTNodes :: Array<InterfaceTypeExtensionNode>,
			})
		elseif astNodeKind == Kind.ENUM_TYPE_DEFINITION then
			local allNodes = Array.concat(astNode, extensionASTNodes)

			return GraphQLEnumType.new({
				name = name,
				description = if astNode.description then astNode.description.value else nil,
				values = buildEnumValueMap(allNodes),
				astNode = astNode :: EnumTypeDefinitionNode,
				-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
				extensionASTNodes = extensionASTNodes :: Array<EnumTypeExtensionNode>,
			})
		elseif astNodeKind == Kind.UNION_TYPE_DEFINITION then
			local allNodes = Array.concat(astNode, extensionASTNodes)

			return GraphQLUnionType.new({
				name = name,
				description = if astNode.description then astNode.description.value else nil,
				types = function()
					return buildUnionTypes(allNodes)
				end,
				-- ROBLOX FIXME Luau: should be able to narrow this to the specific type based on node.kind comparison
				astNode = astNode :: UnionTypeDefinitionNode,
				extensionASTNodes = extensionASTNodes :: Array<UnionTypeExtensionNode>,
			})
		elseif astNodeKind == Kind.SCALAR_TYPE_DEFINITION then
			return GraphQLScalarType.new({
				name = name,
				description = if astNode.description then astNode.description.value else nil,
				-- ROBLOX FIXME Luau: should be able to narrow this to the specific type based on node.kind comparison
				specifiedByUrl = getSpecifiedByUrl(astNode :: ScalarTypeDefinitionNode),
				astNode = astNode :: ScalarTypeDefinitionNode,
				-- ROBLOX TODO: upstream has typeExtensionMap as untyped, contribute this refinement upstream
				extensionASTNodes = extensionASTNodes :: Array<ScalarTypeExtensionNode>,
			})
		elseif astNodeKind == Kind.INPUT_OBJECT_TYPE_DEFINITION then
			local allNodes = Array.concat(astNode, extensionASTNodes)

			return GraphQLInputObjectType.new({
				name = name,
				description = if astNode.description then astNode.description.value else nil,
				fields = function()
					return buildInputFieldMap(allNodes)
				end,
				astNode = astNode,
				extensionASTNodes = extensionASTNodes,
			})
		end

		-- // istanbul ignore next (Not reachable. All possible type definition nodes have been considered)
		-- ROBLOX deviation: use assert so Luau understands it doesn't return
		assert(false, "Unexpected type definition node: " .. inspect(astNode))
	end

	for _, existingType in ipairs(schemaConfig.types) do
		-- ROBLOX deviation: use Map type
		typeMap:set(existingType.name, extendNamedType(existingType))
	end

	for _, typeNode in ipairs(typeDefs) do
		local name = typeNode.name.value
		-- ROBLOX deviation: use Map type
		typeMap:set(name, stdTypeMap[name] or buildType(typeNode))
	end

	local operationTypes = Object.assign(
		{},
		{
			-- // Get the extended root operation types.
			query = schemaConfig.query and replaceNamedType(schemaConfig.query),
			mutation = schemaConfig.mutation and replaceNamedType(schemaConfig.mutation),
			subscription = schemaConfig.subscription and replaceNamedType(
				schemaConfig.subscription
			),
		},
		-- // Then, incorporate schema definition and all schema extensions.
		schemaDef and getOperationTypes({ schemaDef }) or {},
		getOperationTypes(schemaExtensions)
	)

	local description = nil
	if schemaDef ~= nil and schemaDef.description ~= nil then
		description = schemaDef.description.value
	end
	local assumeValid = false
	if options ~= nil and options.assumeValid ~= nil then
		assumeValid = options.assumeValid
	end
	-- // Then produce and return a Schema config with these types.
	local schemaExtension = Object.assign(
		{},
		{
			description = description,
		},
		operationTypes,
		{
			-- ROBLOX deviation: use Map type
			types = typeMap:values(),
			directives = Array.concat(
				Array.map(schemaConfig.directives, replaceDirective),
				Array.map(directiveDefs, buildDirective)
			),
			-- ROBLOX deviation: we can't remove a property by mapping it to `nil` in Lua
			-- so we have to manually remove it on the next statement.
			-- extensions = nil,
			astNode = schemaDef or schemaConfig.astNode,
			extensionASTNodes = Array.concat(schemaConfig.extensionASTNodes, schemaExtensions),
			assumeValid = assumeValid,
		}
	)
	schemaExtension.extensions = nil
	return schemaExtension
end

stdTypeMap = keyMap(Array.concat(specifiedScalarTypes, introspectionTypes), function(type_)
	return type_.name
end)

-- /**
--  * Given a field or enum value node, returns the string value for the
--  * deprecation reason.
--  */
function getDeprecationReason(
	node: EnumValueDefinitionNode | FieldDefinitionNode | InputValueDefinitionNode
): string?
	local deprecated = getDirectiveValues(GraphQLDeprecatedDirective, node)
	return deprecated and deprecated.reason
end

-- /**
--  * Given a scalar node, returns the string value for the specifiedByUrl.
--  */
function getSpecifiedByUrl(node: ScalarTypeDefinitionNode | ScalarTypeExtensionNode): string?
	local specifiedBy = getDirectiveValues(GraphQLSpecifiedByDirective, node)
	return specifiedBy and specifiedBy.url
end

return {
	extendSchema = extendSchema,
	extendSchemaImpl = extendSchemaImpl,
}
