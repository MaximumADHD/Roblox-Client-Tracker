--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/buildClientSchema.js

-- ROBLOX deviation: utils
local srcWorkspace = script.Parent.Parent
local luaUtilsWorkspace = srcWorkspace.luaUtils
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
local NULL = require(luaUtilsWorkspace.null)
type NULL = typeof(NULL)
local isNillishModule = require(luaUtilsWorkspace.isNillish)
local isNillish = isNillishModule.isNillish
local isNotNillish = isNillishModule.isNotNillish

local inspect = require(srcWorkspace.jsutils.inspect).inspect
local devAssert = require(srcWorkspace.jsutils.devAssert).devAssert
local keyValMap = require(srcWorkspace.jsutils.keyValMap).keyValMap
local isObjectLike = require(srcWorkspace.jsutils.isObjectLike).isObjectLike

local parseValue = require(srcWorkspace.language.parser).parseValue

local GraphQLSchemaModule = require(srcWorkspace.type.schema)
type GraphQLSchemaValidationOptions = GraphQLSchemaModule.GraphQLSchemaValidationOptions
local definition = require(srcWorkspace.type.definition)
type GraphQLType = definition.GraphQLType
type GraphQLNamedType = definition.GraphQLNamedType
type GraphQLEnumValueConfig = definition.GraphQLEnumValueConfig
-- ROBLOX deviation: inlining any here because Luau doesn't support default type args yet
type GraphQLFieldConfig<TSource, TContext> = definition.GraphQLFieldConfig<TSource, TContext, any>
type GraphQLFieldConfigMap<TSource, TContext> = definition.GraphQLFieldConfigMap<TSource, TContext>
type GraphQLSchema = GraphQLSchemaModule.GraphQLSchema
local GraphQLSchema = GraphQLSchemaModule.GraphQLSchema
local GraphQLDirective = require(srcWorkspace.type.directives).GraphQLDirective
local scalarsImport = require(srcWorkspace.type.scalars)
local specifiedScalarTypes = scalarsImport.specifiedScalarTypes
local introspectionImport = require(srcWorkspace.type.introspection)
local introspectionTypes = introspectionImport.introspectionTypes
local TypeKind = introspectionImport.TypeKind
local isInputType = definition.isInputType
local isOutputType = definition.isOutputType
local GraphQLList = definition.GraphQLList
local GraphQLNonNull = definition.GraphQLNonNull
type GraphQLScalarType = definition.GraphQLScalarType
local GraphQLScalarType = definition.GraphQLScalarType
type GraphQLObjectType = definition.GraphQLObjectType
local GraphQLObjectType = definition.GraphQLObjectType
type GraphQLInterfaceType = definition.GraphQLInterfaceType
local GraphQLInterfaceType = definition.GraphQLInterfaceType
type GraphQLUnionType = definition.GraphQLUnionType
local GraphQLUnionType = definition.GraphQLUnionType
type GraphQLEnumType = definition.GraphQLEnumType
local GraphQLEnumType = definition.GraphQLEnumType
type GraphQLInputObjectType = definition.GraphQLInputObjectType
local GraphQLInputObjectType = definition.GraphQLInputObjectType
local assertNullableType = definition.assertNullableType
local assertObjectType = definition.assertObjectType
local assertInterfaceType = definition.assertInterfaceType

local getIntrospectionQueryModule = require(script.Parent.getIntrospectionQuery)
type IntrospectionQuery = getIntrospectionQueryModule.IntrospectionQuery
type IntrospectionDirective = getIntrospectionQueryModule.IntrospectionDirective
type IntrospectionField = getIntrospectionQueryModule.IntrospectionField
type IntrospectionInputValue = getIntrospectionQueryModule.IntrospectionInputValue
type IntrospectionType = getIntrospectionQueryModule.IntrospectionType
type IntrospectionScalarType = getIntrospectionQueryModule.IntrospectionScalarType
type IntrospectionObjectType = getIntrospectionQueryModule.IntrospectionObjectType
type IntrospectionInterfaceType = getIntrospectionQueryModule.IntrospectionInterfaceType
type IntrospectionUnionType = getIntrospectionQueryModule.IntrospectionUnionType
type IntrospectionEnumType = getIntrospectionQueryModule.IntrospectionEnumType
type IntrospectionEnumValue = getIntrospectionQueryModule.IntrospectionEnumValue
type IntrospectionInputObjectType = getIntrospectionQueryModule.IntrospectionInputObjectType
type IntrospectionTypeRef = getIntrospectionQueryModule.IntrospectionTypeRef
type IntrospectionListTypeRef = getIntrospectionQueryModule.IntrospectionListTypeRef
type IntrospectionNonNullTypeRef = getIntrospectionQueryModule.IntrospectionNonNullTypeRef
type IntrospectionNamedTypeRef<T = any> = getIntrospectionQueryModule.IntrospectionNamedTypeRef<T>
local valueFromAST = require(script.Parent.valueFromAST).valueFromAST

--[[*
--  * Build a GraphQLSchema for use by client tools.
--  *
--  * Given the result of a client running the introspection query, creates and
--  * returns a GraphQLSchema instance which can be then used with all graphql-js
--  * tools, but cannot be used to execute a query, as introspection does not
--  * represent the "resolver", "parse" or "serialize" functions or any other
--  * server-internal mechanisms.
--  *
--  * This function expects a complete introspection result. Don't forget to check
--  * the "errors" field of a server response before calling this function.
--  *]]

local function buildClientSchema(
	introspection: IntrospectionQuery,
	-- ROBLOX deviation: this is nil-ble upstream, but Luau narrowing bug makes analysis fail
	options: GraphQLSchemaValidationOptions
): GraphQLSchema
	-- ROBLOX deviation: predeclare functions
	local getType
	local getNamedType
	local getObjectType
	local getInterfaceType
	local buildType
	local buildScalarDef
	local buildImplementationsList
	local buildObjectDef
	local buildInterfaceDef
	local buildUnionDef
	local buildEnumDef
	local buildInputObjectDef
	local buildFieldDefMap
	local buildField
	local buildInputValueDefMap
	local buildInputValue
	local buildDirective

	-- ROBLOX deviation: predeclare variables
	local schemaIntrospection
	local typeMap

	-- ROBLOX deviation: manually hoist all function to the begining of the block

	-- Given a type reference in introspection, return the GraphQLType instance.
	-- preferring cached instances before building new instances.
	function getType(typeRef: IntrospectionTypeRef): GraphQLType
		if typeRef.kind == TypeKind.LIST then
			-- ROBLOX FIXME Luau: should narrow based on kind comparison to singleton type
			local itemRef = (typeRef :: IntrospectionListTypeRef).ofType
			if not itemRef then
				error(Error.new("Decorated type deeper than introspection query."))
			end

			return GraphQLList.new(getType(itemRef))
		end
		if typeRef.kind == TypeKind.NON_NULL then
			-- ROBLOX FIXME Luau: should narrow based on kind comparison to singleton type
			local nullableRef = (typeRef :: IntrospectionNonNullTypeRef).ofType
			if not nullableRef then
				error(Error.new("Decorated type deeper than introspection query."))
			end
			local nullableType = getType(nullableRef)

			return GraphQLNonNull.new(assertNullableType(nullableType))
		end
		return getNamedType(typeRef :: IntrospectionNamedTypeRef)
	end

	function getNamedType(typeRef: IntrospectionNamedTypeRef<any>): GraphQLNamedType
		local typeName = typeRef.name
		if isNillish(typeName) then
			error(Error.new(("Unknown type reference: %s."):format(inspect(typeRef))))
		end

		-- ROBLOX deviation: use Map
		local type_ = typeMap:get(typeName)
		if isNillish(type_) then
			error(
				Error.new(
					(
						"Invalid or incomplete schema, unknown type: %s. Ensure that a full introspection query is used in order to build a client schema."
					):format(typeName)
				)
			)
		end

		return type_
	end

	function getObjectType(
		typeRef: IntrospectionNamedTypeRef<IntrospectionObjectType>
	): GraphQLObjectType
		return assertObjectType(getNamedType(typeRef))
	end

	function getInterfaceType(
		typeRef: IntrospectionNamedTypeRef<IntrospectionInterfaceType>
	): GraphQLInterfaceType
		return assertInterfaceType(getNamedType(typeRef))
	end

	-- Given a type's introspection result, construct the correct
	-- GraphQLType instance.
	function buildType(type_: IntrospectionType): GraphQLNamedType
		if isNotNillish(type_) and isNotNillish(type_.name) and isNotNillish(type_.kind) then
			-- ROBLOX FIXME Luau: should narrow based on kind field comparison
			if type_.kind == TypeKind.SCALAR then
				return buildScalarDef(type_ :: IntrospectionScalarType)
			elseif type_.kind == TypeKind.OBJECT then
				return buildObjectDef(type_ :: IntrospectionObjectType)
			elseif type_.kind == TypeKind.INTERFACE then
				return buildInterfaceDef(type_ :: IntrospectionInterfaceType)
			elseif type_.kind == TypeKind.UNION then
				return buildUnionDef(type_ :: IntrospectionUnionType)
			elseif type_.kind == TypeKind.ENUM then
				return buildEnumDef(type_ :: IntrospectionEnumType)
			elseif type_.kind == TypeKind.INPUT_OBJECT then
				return buildInputObjectDef(type_ :: IntrospectionInputObjectType)
			end
		end
		local typeStr = inspect(type_)
		error(
			Error.new(
				(
					"Invalid or incomplete introspection result. Ensure that a full introspection query is used in order to build a client schema: %s."
				):format(typeStr)
			)
		)
	end

	function buildScalarDef(scalarIntrospection: IntrospectionScalarType): GraphQLScalarType
		return GraphQLScalarType.new({
			name = scalarIntrospection.name,
			description = scalarIntrospection.description,
			specifiedByUrl = scalarIntrospection.specifiedByUrl,
		})
	end

	function buildImplementationsList(
		implementingIntrospection: IntrospectionObjectType | IntrospectionInterfaceType
	): Array<GraphQLInterfaceType>
		-- TODO: Temporary workaround until GraphQL ecosystem will fully support
		-- 'interfaces' on interface types.
		if
			implementingIntrospection.interfaces == nil
			and implementingIntrospection.kind == TypeKind.INTERFACE
		then
			return {}
		end

		if not implementingIntrospection.interfaces then
			local implementingIntrospectionStr = inspect(implementingIntrospection)
			error(
				Error.new(
					("Introspection result missing interfaces: %s."):format(
						implementingIntrospectionStr
					)
				)
			)
		end

		return Array.map(implementingIntrospection.interfaces, getInterfaceType)
	end

	function buildObjectDef(objectIntrospection: IntrospectionObjectType): GraphQLObjectType
		return GraphQLObjectType.new({
			name = objectIntrospection.name,
			description = objectIntrospection.description,
			interfaces = function()
				return buildImplementationsList(objectIntrospection)
			end,
			fields = function()
				return buildFieldDefMap(objectIntrospection)
			end,
		})
	end

	function buildInterfaceDef(
		interfaceIntrospection: IntrospectionInterfaceType
	): GraphQLInterfaceType
		return GraphQLInterfaceType.new({
			name = interfaceIntrospection.name,
			description = interfaceIntrospection.description,
			interfaces = function()
				return buildImplementationsList(interfaceIntrospection)
			end,
			fields = function()
				return buildFieldDefMap(interfaceIntrospection)
			end,
		})
	end

	function buildUnionDef(unionIntrospection: IntrospectionUnionType): GraphQLUnionType
		if not unionIntrospection.possibleTypes then
			local unionIntrospectionStr = inspect(unionIntrospection)
			error(
				Error.new(
					("Introspection result missing possibleTypes: %s."):format(
						unionIntrospectionStr
					)
				)
			)
		end

		return GraphQLUnionType.new({
			name = unionIntrospection.name,
			description = unionIntrospection.description,
			types = function()
				return Array.map(unionIntrospection.possibleTypes, getObjectType)
			end,
		})
	end

	function buildEnumDef(enumIntrospection: IntrospectionEnumType): GraphQLEnumType
		if not enumIntrospection.enumValues then
			local enumIntrospectionStr = inspect(enumIntrospection)
			error(
				Error.new(
					("Introspection result missing enumValues: %s."):format(enumIntrospectionStr)
				)
			)
		end
		return GraphQLEnumType.new({
			name = enumIntrospection.name,
			description = enumIntrospection.description,
			values = keyValMap(enumIntrospection.enumValues, function(valueIntrospection)
				return valueIntrospection.name
			end, function(valueIntrospection)
				return {
					description = valueIntrospection.description,
					deprecationReason = valueIntrospection.deprecationReason,
					-- ROBLOX FIXME Luau: CLI-53723 without the cast below, I get 'Map<string, {| deprecationReason: string?, description: string? |}>' could not be converted into 'GraphQLEnumValueConfigMap'
				} :: GraphQLEnumValueConfig
			end),
		})
	end

	function buildInputObjectDef(
		inputObjectIntrospection: IntrospectionInputObjectType
	): GraphQLInputObjectType
		if not inputObjectIntrospection.inputFields then
			local inputObjectIntrospectionStr = inspect(inputObjectIntrospection)
			error(
				Error.new(
					("Introspection result missing inputFields: %s."):format(
						inputObjectIntrospectionStr
					)
				)
			)
		end
		return GraphQLInputObjectType.new({
			name = inputObjectIntrospection.name,
			description = inputObjectIntrospection.description,
			fields = function()
				return buildInputValueDefMap(inputObjectIntrospection.inputFields)
			end,
		})
	end

	function buildFieldDefMap(
		typeIntrospection: IntrospectionObjectType | IntrospectionInterfaceType
	): GraphQLFieldConfigMap<any, any>
		if not typeIntrospection.fields then
			error(
				Error.new(
					("Introspection result missing fields: %s."):format(inspect(typeIntrospection))
				)
			)
		end

		-- ROBLOX FIXME Luau: shouldn't need to manually annotate the function param here
		return keyValMap(typeIntrospection.fields, function(fieldIntrospection: IntrospectionField)
			return fieldIntrospection.name
		end, buildField)
	end

	function buildField(fieldIntrospection: IntrospectionField): GraphQLFieldConfig<any, any>
		local type_ = getType(fieldIntrospection.type)
		if not isOutputType(type_) then
			local typeStr = inspect(type_)
			error(
				Error.new(
					("Introspection must provide output type for fields, but received: %s."):format(
						typeStr
					)
				)
			)
		end

		if not fieldIntrospection.args then
			local fieldIntrospectionStr = inspect(fieldIntrospection)

			error(
				Error.new(
					("Introspection result missing field args: %s."):format(fieldIntrospectionStr)
				)
			)
		end

		return {
			description = fieldIntrospection.description,
			deprecationReason = fieldIntrospection.deprecationReason,
			type = type_,
			args = buildInputValueDefMap(fieldIntrospection.args),
		}
	end

	function buildInputValueDefMap(inputValueIntrospections: Array<IntrospectionInputValue>)
		return keyValMap(inputValueIntrospections, function(inputValue)
			return inputValue.name
		end, buildInputValue)
	end

	function buildInputValue(inputValueIntrospection: IntrospectionInputValue)
		local type_ = getType(inputValueIntrospection.type)
		if not isInputType(type_) then
			local typeStr = inspect(type_)
			error(
				Error.new(
					("Introspection must provide input type for arguments, but received: %s."):format(
						typeStr
					)
				)
			)
		end

		-- ROBLOX TODO Luau: should narrow type_ based on `not isInputType(type_)` error branch above
		local defaultValue = if isNotNillish(inputValueIntrospection.defaultValue)
			then valueFromAST(
				parseValue(inputValueIntrospection.defaultValue :: string),
				type_ :: GraphQLInputObjectType
			)
			else nil

		return {
			description = inputValueIntrospection.description,
			type = type_,
			defaultValue = defaultValue,
			deprecationReason = inputValueIntrospection.deprecationReason,
		}
	end

	function buildDirective(directiveIntrospection: IntrospectionDirective)
		if not directiveIntrospection.args then
			local directiveIntrospectionStr = inspect(directiveIntrospection)

			error(
				Error.new(
					("Introspection result missing directive args: %s."):format(
						directiveIntrospectionStr
					)
				)
			)
		end
		if not directiveIntrospection.locations then
			local directiveIntrospectionStr = inspect(directiveIntrospection)
			error(
				Error.new(
					("Introspection result missing directive locations: %s."):format(
						directiveIntrospectionStr
					)
				)
			)
		end
		return GraphQLDirective.new({
			name = directiveIntrospection.name,
			description = directiveIntrospection.description,
			isRepeatable = directiveIntrospection.isRepeatable,
			locations = Array.slice(directiveIntrospection.locations),
			args = buildInputValueDefMap(directiveIntrospection.args),
		})
	end

	devAssert(
		isObjectLike(introspection) and isObjectLike(introspection.__schema),
		(
			'Invalid or incomplete introspection result. Ensure that you are passing "data" property of introspection response and no "errors" was returned alongside: %s.'
		):format(inspect(introspection))
	)

	-- Get the schema from the introspection result.
	schemaIntrospection = introspection.__schema

	-- Iterate through all types, getting the type definition for each.
	typeMap = keyValMap(schemaIntrospection.types, function(typeIntrospection)
		return typeIntrospection.name
	end, function(typeIntrospection)
		return buildType(typeIntrospection)
	end)

	-- Include standard types only if they are used.
	for _, stdType in ipairs(Array.concat(specifiedScalarTypes, introspectionTypes)) do
		-- ROBLOX deviation START: keyValMap returns a Map instead of ObjMap
		if typeMap:get(stdType.name) then
			typeMap:set(stdType.name, stdType)
		end
		-- ROBLOX deviation END
	end

	-- Get the root Query, Mutation, and Subscription types.
	-- ROBLOX TODO Luau: should narrow on isNotNillish narrowing effect on the param
	local queryType = if isNotNillish(schemaIntrospection.queryType)
		then getObjectType(
			schemaIntrospection.queryType :: IntrospectionNamedTypeRef<IntrospectionObjectType>
		)
		else NULL

	local mutationType = if isNotNillish(schemaIntrospection.mutationType)
		then getObjectType(
			schemaIntrospection.mutationType :: IntrospectionNamedTypeRef<IntrospectionObjectType>
		)
		else NULL

	local subscriptionType = if isNotNillish(schemaIntrospection.subscriptionType)
		then getObjectType(
			schemaIntrospection.subscriptionType :: IntrospectionNamedTypeRef<IntrospectionObjectType>
		)
		else NULL

	-- Get the directives supported by Introspection, assuming empty-set if
	-- directives were not queried for.
	local directives = if isNotNillish(schemaIntrospection.directives)
		then Array.map(schemaIntrospection.directives, buildDirective)
		else {}

	-- Then produce and return a Schema with these types.
	return GraphQLSchema.new({
		description = schemaIntrospection.description,
		query = queryType,
		mutation = mutationType,
		subscription = subscriptionType,
		-- ROBLOX deviation: keyValMap returns a Map instead of ObjMap
		types = typeMap:values(),
		directives = directives,
		assumeValid = if options then options.assumeValid else nil,
	})
end

return {
	buildClientSchema = buildClientSchema,
}
