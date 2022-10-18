--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/056fac955b7172e55b33e0a1b35b4ddb8951a99c/src/type/introspection.js
--!strict
local srcWorkspace = script.Parent.Parent
local jsutilsWorkspace = srcWorkspace.jsutils
local languageWorkspace = srcWorkspace.language
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object

local isNotNillish = require(srcWorkspace.luaUtils.isNillish).isNotNillish

local inspect = require(jsutilsWorkspace.inspect).inspect
local invariant = require(jsutilsWorkspace.invariant).invariant

local print_ = require(languageWorkspace.printer).print
local DirectiveLocation = require(languageWorkspace.directiveLocation).DirectiveLocation
local astFromValue = require(srcWorkspace.utilities.astFromValue).astFromValue
local astImport = require(srcWorkspace.language.ast)
type ValueNode = astImport.ValueNode

local scalarsModule = require(script.Parent.scalars)
local GraphQLString = scalarsModule.GraphQLString
local GraphQLBoolean = scalarsModule.GraphQLBoolean
local definitionModule = require(script.Parent.definition)
type GraphQLType = definitionModule.GraphQLType
type GraphQLNamedType = definitionModule.GraphQLNamedType
type GraphQLInputField = definitionModule.GraphQLInputField
type GraphQLEnumValue = definitionModule.GraphQLEnumValue
type GraphQLField<TSource, TContext> = definitionModule.GraphQLField<TSource, TContext>
type GraphQLFieldConfigMap<TSource, TContext> = definitionModule.GraphQLFieldConfigMap<
	TSource,
	TContext
>

local GraphQLList = definitionModule.GraphQLList
local GraphQLNonNull = definitionModule.GraphQLNonNull
local GraphQLObjectType = definitionModule.GraphQLObjectType
local GraphQLEnumType = definitionModule.GraphQLEnumType
local isScalarType = definitionModule.isScalarType
local isObjectType = definitionModule.isObjectType
local isInterfaceType = definitionModule.isInterfaceType
local isUnionType = definitionModule.isUnionType
local isEnumType = definitionModule.isEnumType
local isInputObjectType = definitionModule.isInputObjectType
local isListType = definitionModule.isListType
local isNonNullType = definitionModule.isNonNullType
local isAbstractType = definitionModule.isAbstractType

local TypeKind: {
	SCALAR: "SCALAR",
	OBJECT: "OBJECT",
	INTERFACE: "INTERFACE",
	UNION: "UNION",
	ENUM: "ENUM",
	INPUT_OBJECT: "INPUT_OBJECT",
	LIST: "LIST",
	NON_NULL: "NON_NULL",
}
local __TypeKind, __Directive, __DirectiveLocation, __Type, __Field, __InputValue, __EnumValue

local __Schema = GraphQLObjectType.new({
	name = "__Schema",
	description = "A GraphQL Schema defines the capabilities of a GraphQL server. It exposes all available types and directives on the server, as well as the entry points for query, mutation, and subscription operations.",
	fields = function()
		return Map.new({
			{
				"description",
				{
					type = GraphQLString,
					resolve = function(schema)
						return schema.description
					end,
				},
			} :: Array<any>,
			{
				"types",
				{
					description = "A list of all types supported by this server.",
					type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(__Type))),
					resolve = function(schema)
						-- ROBLOX deviation: use Map type
						return schema:getTypeMap():values()
					end,
				},
			} :: Array<any>,
			{
				"queryType",
				{
					description = "The type that query operations will be rooted at.",
					type = GraphQLNonNull.new(__Type),
					resolve = function(schema)
						return schema:getQueryType()
					end,
				},
			} :: Array<any>,
			{
				"mutationType",
				{
					description = "If this server supports mutation, the type that mutation operations will be rooted at.",
					type = __Type,
					resolve = function(schema)
						return schema:getMutationType()
					end,
				},
			} :: Array<any>,
			{
				"subscriptionType",
				{
					description = "If this server support subscription, the type that subscription operations will be rooted at.",
					type = __Type,
					resolve = function(schema)
						return schema:getSubscriptionType()
					end,
				},
			} :: Array<any>,
			{
				"directives",
				{
					description = "A list of all directives supported by this server.",
					type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(__Directive))),
					resolve = function(schema)
						return schema:getDirectives()
					end,
				},
			} :: Array<any>,
		})
	end,
})

__Directive = GraphQLObjectType.new({
	name = "__Directive",
	description = "A Directive provides a way to describe alternate runtime execution and type validation behavior in a GraphQL document.\n\nIn some cases, you need to provide options to alter GraphQL's execution behavior in ways field arguments will not suffice, such as conditionally including or skipping a field. Directives provide this by describing additional information to the executor.",
	fields = function()
		return Map.new({
			{
				"name",
				{
					type = GraphQLNonNull.new(GraphQLString),
					resolve = function(directive)
						return directive.name
					end,
				},
			} :: Array<any>,
			{
				"description",
				{
					type = GraphQLString,
					resolve = function(directive)
						return directive.description
					end,
				},
			} :: Array<any>,
			{
				"isRepeatable",
				{
					type = GraphQLNonNull.new(GraphQLBoolean),
					resolve = function(directive)
						return directive.isRepeatable
					end,
				},
			} :: Array<any>,
			{
				"locations",
				{
					type = GraphQLNonNull.new(
						GraphQLList.new(GraphQLNonNull.new(__DirectiveLocation))
					),
					resolve = function(directive)
						return directive.locations
					end,
				},
			} :: Array<any>,
			{
				"args",
				{
					type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(__InputValue))),
					resolve = function(directive)
						return directive.args
					end,
				},
			} :: Array<any>,
		})
	end,
})

__DirectiveLocation = GraphQLEnumType.new({
	name = "__DirectiveLocation",
	description = "A Directive can be adjacent to many parts of the GraphQL language, a __DirectiveLocation describes one such possible adjacencies.",
	values = Map.new({
		{
			"QUERY",
			{
				value = DirectiveLocation.QUERY,
				description = "Location adjacent to a query operation.",
			},
		} :: Array<any>,
		{
			"MUTATION",
			{
				value = DirectiveLocation.MUTATION,
				description = "Location adjacent to a mutation operation.",
			},
		} :: Array<any>,
		{
			"SUBSCRIPTION",
			{
				value = DirectiveLocation.SUBSCRIPTION,
				description = "Location adjacent to a subscription operation.",
			},
		} :: Array<any>,
		{
			"FIELD",
			{
				value = DirectiveLocation.FIELD,
				description = "Location adjacent to a field.",
			},
		} :: Array<any>,
		{
			"FRAGMENT_DEFINITION",
			{
				value = DirectiveLocation.FRAGMENT_DEFINITION,
				description = "Location adjacent to a fragment definition.",
			},
		} :: Array<any>,
		{
			"FRAGMENT_SPREAD",
			{
				value = DirectiveLocation.FRAGMENT_SPREAD,
				description = "Location adjacent to a fragment spread.",
			},
		} :: Array<any>,
		{
			"INLINE_FRAGMENT",
			{
				value = DirectiveLocation.INLINE_FRAGMENT,
				description = "Location adjacent to an inline fragment.",
			},
		} :: Array<any>,
		{
			"VARIABLE_DEFINITION",
			{
				value = DirectiveLocation.VARIABLE_DEFINITION,
				description = "Location adjacent to a variable definition.",
			},
		} :: Array<any>,
		{
			"SCHEMA",
			{
				value = DirectiveLocation.SCHEMA,
				description = "Location adjacent to a schema definition.",
			},
		} :: Array<any>,
		{
			"SCALAR",
			{
				value = DirectiveLocation.SCALAR,
				description = "Location adjacent to a scalar definition.",
			},
		} :: Array<any>,
		{
			"OBJECT",
			{
				value = DirectiveLocation.OBJECT,
				description = "Location adjacent to an object type definition.",
			},
		} :: Array<any>,
		{
			"FIELD_DEFINITION",
			{
				value = DirectiveLocation.FIELD_DEFINITION,
				description = "Location adjacent to a field definition.",
			},
		} :: Array<any>,
		{
			"ARGUMENT_DEFINITION",
			{
				value = DirectiveLocation.ARGUMENT_DEFINITION,
				description = "Location adjacent to an argument definition.",
			},
		} :: Array<any>,
		{
			"INTERFACE",
			{
				value = DirectiveLocation.INTERFACE,
				description = "Location adjacent to an interface definition.",
			},
		} :: Array<any>,
		{
			"UNION",
			{
				value = DirectiveLocation.UNION,
				description = "Location adjacent to a union definition.",
			},
		} :: Array<any>,
		{
			"ENUM",
			{
				value = DirectiveLocation.ENUM,
				description = "Location adjacent to an enum definition.",
			},
		} :: Array<any>,
		{
			"ENUM_VALUE",
			{
				value = DirectiveLocation.ENUM_VALUE,
				description = "Location adjacent to an enum value definition.",
			},
		} :: Array<any>,
		{
			"INPUT_OBJECT",
			{
				value = DirectiveLocation.INPUT_OBJECT,
				description = "Location adjacent to an input object type definition.",
			},
		} :: Array<any>,
		{
			"INPUT_FIELD_DEFINITION",
			{
				value = DirectiveLocation.INPUT_FIELD_DEFINITION,
				description = "Location adjacent to an input object field definition.",
			},
		} :: Array<any>,
	}),
})

__Type = GraphQLObjectType.new({
	name = "__Type",
	description = "The fundamental unit of any GraphQL Schema is the type. There are many kinds of types in GraphQL as represented by the `__TypeKind` enum.\n\nDepending on the kind of a type, certain fields describe information about that type. Scalar types provide no information beyond a name, description and optional `specifiedByUrl`, while Enum types provide their values. Object and Interface types provide the fields they describe. Abstract types, Union and Interface, provide the Object types possible at runtime. List and NonNull types compose other types.",
	fields = function()
		return Map.new({
			{
				"kind",
				{
					type = GraphQLNonNull.new(__TypeKind),
					resolve = function(type_)
						if isScalarType(type_) then
							return TypeKind.SCALAR
						end
						if isObjectType(type_) then
							return TypeKind.OBJECT
						end
						if isInterfaceType(type_) then
							return TypeKind.INTERFACE
						end
						if isUnionType(type_) then
							return TypeKind.UNION
						end
						if isEnumType(type_) then
							return TypeKind.ENUM
						end
						if isInputObjectType(type_) then
							return TypeKind.INPUT_OBJECT
						end
						if isListType(type_) then
							return TypeKind.LIST
						end
						-- // istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
						if isNonNullType(type_) then
							return TypeKind.NON_NULL
						end

						-- // istanbul ignore next (Not reachable. All possible types have been considered)
						invariant(false, ('Unexpected type: "%s".'):format(inspect(type_)))
						assert(false)
					end,
				},
			} :: Array<any>,
			{
				"name",
				{
					type = GraphQLString,
					resolve = function(type_)
						return if type_.name ~= nil then type_.name else nil
					end,
				},
			} :: Array<any>,
			{
				"description",
				{
					type = GraphQLString,
					resolve = function(type_)
						return if type_.description ~= nil then type_.description else nil
					end,
				},
			} :: Array<any>,
			{
				"specifiedByUrl",
				{
					type = GraphQLString,
					resolve = function(obj)
						return if obj.specifiedByUrl ~= nil then obj.specifiedByUrl else nil
					end,
				},
			} :: Array<any>,
			{
				"fields",
				{
					type = GraphQLList.new(GraphQLNonNull.new(__Field)),
					args = {
						includeDeprecated = {
							type = GraphQLBoolean,
							defaultValue = false,
						},
					},
					resolve = function(type_, args)
						local includeDeprecated = args.includeDeprecated
						if isObjectType(type_) or isInterfaceType(type_) then
							-- ROBLOX deviation: use Map
							local fields = type_:getFields():values()
							return includeDeprecated and fields
								or Array.filter(fields, function(field)
									return field.deprecationReason == nil
								end)
						end
						return
					end,
				},
			} :: Array<any>,
			{
				"interfaces",
				{
					type = GraphQLList.new(GraphQLNonNull.new(__Type)),
					resolve = function(type_)
						if isObjectType(type_) or isInterfaceType(type_) then
							return type_:getInterfaces()
						end
						return
					end,
				},
			} :: Array<any>,
			{
				"possibleTypes",
				{
					type = GraphQLList.new(GraphQLNonNull.new(__Type)),
					resolve = function(type_, _args, _context, _ref)
						local schema = _ref.schema

						if isAbstractType(type_) then
							return schema:getPossibleTypes(type_)
						end
						return nil
					end,
				},
			} :: Array<any>,
			{
				"enumValues",
				{
					type = GraphQLList.new(GraphQLNonNull.new(__EnumValue)),
					args = {
						includeDeprecated = {
							type = GraphQLBoolean,
							defaultValue = false,
						},
					},
					resolve = function(type_, args)
						local includeDeprecated = args.includeDeprecated

						if isEnumType(type_) then
							local values = type_:getValues()

							return includeDeprecated and values
								or Array.filter(values, function(field)
									return field.deprecationReason == nil
								end)
						end
						return
					end,
				},
			} :: Array<any>,
			{
				"inputFields",
				{
					type = GraphQLList.new(GraphQLNonNull.new(__InputValue)),
					args = {
						includeDeprecated = {
							type = GraphQLBoolean,
							defaultValue = false,
						},
					},
					resolve = function(type_, args)
						local includeDeprecated = args.includeDeprecated

						if isInputObjectType(type_) then
							-- ROBLOX deviation: use Map
							local values = type_:getFields():values()

							return includeDeprecated and values
								or Array.filter(values, function(field)
									return field.deprecationReason == nil
								end)
						end
						return
					end,
				},
			} :: Array<any>,
			{
				"ofType",
				{
					type = __Type,
					resolve = function(type_)
						return if type_.ofType ~= nil then type_.ofType else nil
					end,
				},
			} :: Array<any>,
		})
	end,
})

__Field = GraphQLObjectType.new({
	name = "__Field",
	description = "Object and Interface types are described by a list of Fields, each of which has a name, potentially a list of arguments, and a return type.",
	fields = function()
		return Map.new({
			{
				"name",
				{
					type = GraphQLNonNull.new(GraphQLString),
					resolve = function(field)
						return field.name
					end,
				},
			} :: Array<any>,
			{
				"description",
				{
					type = GraphQLString,
					resolve = function(field)
						return field.description
					end,
				},
			} :: Array<any>,
			{
				"args",
				{
					type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(__InputValue))),
					args = {
						includeDeprecated = {
							type = GraphQLBoolean,
							defaultValue = false,
						},
					},
					resolve = function(field, args)
						local includeDeprecated = args.includeDeprecated

						return if includeDeprecated
							then field.args
							else Array.filter(field.args, function(arg)
								return arg.deprecationReason == nil
							end)
					end,
				},
			} :: Array<any>,
			{
				"type",
				{
					type = GraphQLNonNull.new(__Type),
					resolve = function(field)
						return field.type
					end,
				},
			} :: Array<any>,
			{
				"isDeprecated",
				{
					type = GraphQLNonNull.new(GraphQLBoolean),
					resolve = function(field)
						return isNotNillish(field.deprecationReason)
					end,
				},
			} :: Array<any>,
			{
				"deprecationReason",
				{
					type = GraphQLString,
					resolve = function(field)
						return field.deprecationReason
					end,
				},
			} :: Array<any>,
		})
	end,
})

__InputValue = GraphQLObjectType.new({
	name = "__InputValue",
	description = "Arguments provided to Fields or Directives and the input fields of an InputObject are represented as Input Values which describe their type and optionally a default value.",
	fields = function()
		return Map.new({
			{
				"name",
				{
					type = GraphQLNonNull.new(GraphQLString),
					resolve = function(inputValue)
						return inputValue.name
					end,
				},
			} :: Array<any>,
			{
				"description",
				{
					type = GraphQLString,
					resolve = function(inputValue)
						return inputValue.description
					end,
				},
			} :: Array<any>,
			{
				"type",
				{
					type = GraphQLNonNull.new(__Type),
					resolve = function(inputValue)
						return inputValue.type
					end,
				},
			} :: Array<any>,
			{
				"defaultValue",
				{
					type = GraphQLString,
					description = "A GraphQL-formatted string representing the default value for this input value.",
					resolve = function(inputValue)
						local type_, defaultValue = inputValue.type, inputValue.defaultValue
						local valueAST = astFromValue(defaultValue, type_)
						-- ROBLOX FIXME Luau: should narrow valueAST to be non-nil within the if-expression
						return if valueAST then print_(valueAST :: ValueNode) else nil
					end,
				},
			} :: Array<any>,
			{
				"isDeprecated",
				{
					type = GraphQLNonNull.new(GraphQLBoolean),
					resolve = function(field)
						return isNotNillish(field.deprecationReason)
					end,
				},
			} :: Array<any>,
			{
				"deprecationReason",
				{
					type = GraphQLString,
					resolve = function(obj)
						return obj.deprecationReason
					end,
				},
			} :: Array<any>,
		})
	end,
})

__EnumValue = GraphQLObjectType.new({
	name = "__EnumValue",
	description = "One possible value for a given Enum. Enum values are unique values, not a placeholder for a string or numeric value. However an Enum value is returned in a JSON response as a string.",
	fields = function()
		return Map.new({
			{
				"name",
				{
					type = GraphQLNonNull.new(GraphQLString),
					resolve = function(enumValue)
						return enumValue.name
					end,
				},
			} :: Array<any>,
			{
				"description",
				{
					type = GraphQLString,
					resolve = function(enumValue)
						return enumValue.description
					end,
				},
			} :: Array<any>,
			{
				"isDeprecated",
				{
					type = GraphQLNonNull.new(GraphQLBoolean),
					resolve = function(enumValue)
						return isNotNillish(enumValue.deprecationReason)
					end,
				},
			} :: Array<any>,
			{
				"deprecationReason",
				{
					type = GraphQLString,
					resolve = function(enumValue)
						return enumValue.deprecationReason
					end,
				},
			} :: Array<any>,
		})
	end,
})

TypeKind = Object.freeze({
	SCALAR = "SCALAR" :: "SCALAR",
	OBJECT = "OBJECT" :: "OBJECT",
	INTERFACE = "INTERFACE" :: "INTERFACE",
	UNION = "UNION" :: "UNION",
	ENUM = "ENUM" :: "ENUM",
	INPUT_OBJECT = "INPUT_OBJECT" :: "INPUT_OBJECT",
	LIST = "LIST" :: "LIST",
	NON_NULL = "NON_NULL" :: "NON_NULL",
})

__TypeKind = GraphQLEnumType.new({
	name = "__TypeKind",
	description = "An enum describing what kind of type a given `__Type` is.",
	values = Map.new({
		{
			"SCALAR",
			{
				value = TypeKind.SCALAR,
				description = "Indicates this type is a scalar.",
			},
		} :: Array<any>,
		{
			"OBJECT",
			{
				value = TypeKind.OBJECT,
				description = "Indicates this type is an object. `fields` and `interfaces` are valid fields.",
			},
		} :: Array<any>,
		{
			"INTERFACE",
			{
				value = TypeKind.INTERFACE,
				description = "Indicates this type is an interface. `fields`, `interfaces`, and `possibleTypes` are valid fields.",
			},
		} :: Array<any>,
		{
			"UNION",
			{
				value = TypeKind.UNION,
				description = "Indicates this type is a union. `possibleTypes` is a valid field.",
			},
		} :: Array<any>,
		{
			"ENUM",
			{
				value = TypeKind.ENUM,
				description = "Indicates this type is an enum. `enumValues` is a valid field.",
			},
		} :: Array<any>,
		{
			"INPUT_OBJECT",
			{
				value = TypeKind.INPUT_OBJECT,
				description = "Indicates this type is an input object. `inputFields` is a valid field.",
			},
		} :: Array<any>,
		{
			"LIST",
			{
				value = TypeKind.LIST,
				description = "Indicates this type is a list. `ofType` is a valid field.",
			},
		} :: Array<any>,
		{
			"NON_NULL",
			{
				value = TypeKind.NON_NULL,
				description = "Indicates this type is a non-null. `ofType` is a valid field.",
			},
		} :: Array<any>,
	}),
})

-- /**
--  * Note that these are GraphQLField and not GraphQLFieldConfig,
--  * so the format for args is different.
--  */

local SchemaMetaFieldDef: GraphQLField<any, any> = {
	name = "__schema",
	type = GraphQLNonNull.new(__Schema),
	description = "Access the current type schema of this server.",
	args = {},
	resolve = function(_source, _args, _context, _ref)
		local schema = _ref.schema

		return schema
	end,
	deprecationReason = nil,
	extensions = nil,
	astNode = nil,
}

local TypeMetaFieldDef: GraphQLField<any, any> = {
	name = "__type",
	type = __Type,
	description = "Request the type information of a single type.",
	args = {
		{
			name = "name",
			description = nil,
			type = GraphQLNonNull.new(GraphQLString),
			defaultValue = nil,
			deprecationReason = nil,
			extensions = nil,
			astNode = nil,
		},
	},
	resolve = function(_source, args, _context, _ref)
		local name = args.name
		local schema = _ref.schema

		return schema:getType(name)
	end,
	deprecationReason = nil,
	extensions = nil,
	astNode = nil,
}

local TypeNameMetaFieldDef: GraphQLField<any, any> = {
	name = "__typename",
	type = GraphQLNonNull.new(GraphQLString),
	description = "The name of the current Object type at runtime.",
	args = {},
	resolve = function(_source, _args, _context, _ref)
		local parentType = _ref.parentType

		return parentType.name
	end,
	deprecationReason = nil,
	extensions = nil,
	astNode = nil,
}

local introspectionTypes: Array<GraphQLNamedType> = Object.freeze({
	__Schema,
	__Directive,
	__DirectiveLocation,
	__Type,
	__Field,
	__InputValue,
	__EnumValue,
	__TypeKind,
})

local function isIntrospectionType(type_: GraphQLNamedType): boolean
	return Array.some(introspectionTypes, function(currentType_)
		local name = currentType_.name
		return type_.name == name
	end)
end

return {
	introspectionTypes = introspectionTypes,
	isIntrospectionType = isIntrospectionType,
	TypeNameMetaFieldDef = TypeNameMetaFieldDef,
	TypeMetaFieldDef = TypeMetaFieldDef,
	SchemaMetaFieldDef = SchemaMetaFieldDef,
	TypeKind = TypeKind,
	__TypeKind = __TypeKind,
	__Schema = __Schema,
	__Directive = __Directive,
	__DirectiveLocation = __DirectiveLocation,
	__Type = __Type,
	__Field = __Field,
	__InputValue = __InputValue,
	__EnumValue = __EnumValue,
}
