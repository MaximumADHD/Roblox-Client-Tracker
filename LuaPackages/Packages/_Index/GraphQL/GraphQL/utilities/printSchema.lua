--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/printSchema.js

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local PackagesWorkspace = rootWorkspace

local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
local Boolean = LuauPolyfill.Boolean

local inspect = require(script.Parent.Parent.jsutils.inspect).inspect
local invariant = require(script.Parent.Parent.jsutils.invariant).invariant

local print_ = require(script.Parent.Parent.language.printer).print
local printBlockString = require(script.Parent.Parent.language.blockString).printBlockString

local isIntrospectionType = require(script.Parent.Parent.type.introspection).isIntrospectionType
local GraphQLString = require(script.Parent.Parent.type.scalars).GraphQLString
local isSpecifiedScalarType = require(script.Parent.Parent.type.scalars).isSpecifiedScalarType
local DirectivesModules = require(script.Parent.Parent.type.directives)
type GraphQLDirective = DirectivesModules.GraphQLDirective
local DEFAULT_DEPRECATION_REASON = DirectivesModules.DEFAULT_DEPRECATION_REASON
local isSpecifiedDirective = DirectivesModules.isSpecifiedDirective
local DefinitionModule = require(script.Parent.Parent.type.definition)
local isScalarType = DefinitionModule.isScalarType
local isObjectType = DefinitionModule.isObjectType
local isInterfaceType = DefinitionModule.isInterfaceType
local isUnionType = DefinitionModule.isUnionType
local isEnumType = DefinitionModule.isEnumType
local isInputObjectType = DefinitionModule.isInputObjectType
-- ROBLOX TODO Luau: Luau doesn't automatically forward default type aliases
type GraphQLField<TSource, TContext, TArgs = any> = DefinitionModule.GraphQLField<
	TSource,
	TContext,
	TArgs
>
type GraphQLType = DefinitionModule.GraphQLType
type GraphQLEnumValue = DefinitionModule.GraphQLEnumValue
type GraphQLList<T> = DefinitionModule.GraphQLList<T>
type GraphQLNonNull<T> = DefinitionModule.GraphQLNonNull<T>
type GraphQLNamedType = DefinitionModule.GraphQLNamedType
type GraphQLObjectType = DefinitionModule.GraphQLObjectType
type GraphQLEnumType = DefinitionModule.GraphQLEnumType
type GraphQLUnionType = DefinitionModule.GraphQLUnionType
type GraphQLInterfaceType = DefinitionModule.GraphQLInterfaceType
type GraphQLArgument = DefinitionModule.GraphQLArgument
type GraphQLInputField = DefinitionModule.GraphQLInputField
type GraphQLScalarType = DefinitionModule.GraphQLScalarType
type GraphQLInputObjectType = DefinitionModule.GraphQLInputObjectType
type GraphQLFieldConfigMap<T, V> = DefinitionModule.GraphQLFieldConfigMap<T, V>
type GraphQLFieldMap<T, V> = DefinitionModule.GraphQLFieldMap<T, V>
type GraphQLFieldConfigArgumentMap = DefinitionModule.GraphQLFieldConfigArgumentMap
type GraphQLInputFieldConfigMap = DefinitionModule.GraphQLInputFieldConfigMap
local SchemaModule = require(script.Parent.Parent.type.schema)
type GraphQLSchema = SchemaModule.GraphQLSchema
local astModule = require(script.Parent.Parent.language.ast)
type StringValueNode = astModule.StringValueNode
type ValueNode = astModule.ValueNode

local astFromValue = require(script.Parent.astFromValue).astFromValue
local NULL = require(script.Parent.astFromValue).NULL
local isNillishModule = require(script.Parent.Parent.luaUtils.isNillish)
local isNillish = isNillishModule.isNillish
local isNotNillish = isNillishModule.isNotNillish

-- ROBLOX deviation: predeclare types
local printScalar, printDescription, printFilteredSchema, isDefinedType, printSchemaDefinition, printDirective, printType, isSchemaOfCommonNames, printObject, printArgs, printInputValue, printDeprecated, printBlock, printInterface, printUnion, printEnum, printInputObject, printSpecifiedByUrl
local printFields: (type_: GraphQLObjectType | GraphQLInterfaceType) -> string
local function printSchema(schema: GraphQLSchema): string
	return printFilteredSchema(schema, function(n)
		return not isSpecifiedDirective(n)
	end, isDefinedType)
end

local function printIntrospectionSchema(schema: GraphQLSchema): string
	return printFilteredSchema(schema, isSpecifiedDirective, isIntrospectionType)
end

function isDefinedType(type_: GraphQLNamedType): boolean
	return not isSpecifiedScalarType(type_) and not isIntrospectionType(type_)
end

function printFilteredSchema(
	schema: GraphQLSchema,
	directiveFilter: (type: GraphQLDirective) -> boolean,
	typeFilter: (type: GraphQLNamedType) -> boolean
): string
	local directives = Array.filter(schema:getDirectives(), directiveFilter)
	-- ROBLOX deviation: use Map type
	local types = Array.filter(schema:getTypeMap():values(), typeFilter)

	local combined = Array.concat(
		{
			printSchemaDefinition(schema),
		},
		Array.map(directives, function(directive)
			return printDirective(directive)
		end),
		Array.map(types, function(type_)
			return printType(type_)
		end)
	)

	local filtered = Array.filter(combined, function(el)
		return Boolean.toJSBoolean(el)
	end)

	return Array.join(filtered, "\n\n") .. "\n"
end

function printSchemaDefinition(schema: GraphQLSchema): string?
	if isNillish(schema.description) and isSchemaOfCommonNames(schema) then
		return
	end

	local operationTypes = {}
	local queryType = schema:getQueryType()

	-- ROBLOX TODO Luau: we need return type constraint annotations in Luau
	if isNotNillish(queryType) then
		table.insert(operationTypes, ("  query: %s"):format((queryType :: GraphQLObjectType).name))
	end

	local mutationType = schema:getMutationType()

	if isNotNillish(mutationType) then
		table.insert(
			operationTypes,
			("  mutation: %s"):format((mutationType :: GraphQLObjectType).name)
		)
	end

	local subscriptionType = schema:getSubscriptionType()

	if isNotNillish(subscriptionType) then
		table.insert(
			operationTypes,
			("  subscription: %s"):format((subscriptionType :: GraphQLObjectType).name)
		)
	end

	return printDescription(schema) .. ("schema {\n%s\n}"):format(Array.join(operationTypes, "\n"))
end

--[[
 * GraphQL schema define root types for each type of operation. These types are
 * the same as any other type and can be named in any manner, however there is
 * a common naming convention:
 *
 *   schema {
 *     query: Query
 *     mutation: Mutation
 *   }
 *
 * When using this naming convention, the schema description can be omitted.
 *]]
function isSchemaOfCommonNames(schema: GraphQLSchema): boolean
	local queryType = schema:getQueryType()

	-- ROBLOX TODO Luau: Luau needs return constraint feature like TS
	if isNotNillish(queryType) and (queryType :: GraphQLObjectType).name ~= "Query" then
		return false
	end

	local mutationType = schema:getMutationType()

	if isNotNillish(mutationType) and (mutationType :: GraphQLObjectType).name ~= "Mutation" then
		return false
	end

	local subscriptionType = schema:getSubscriptionType()

	if
		isNotNillish(subscriptionType)
		and (subscriptionType :: GraphQLObjectType).name ~= "Subscription"
	then
		return false
	end

	return true
end

function printType(type_: GraphQLNamedType): string
	-- ROBLOX TODO Luau: needs return constraints feature to narrow and avoid manual casts
	if isScalarType(type_) then
		return printScalar(type_ :: GraphQLScalarType)
	end
	if isObjectType(type_) then
		return printObject(type_ :: GraphQLObjectType)
	end
	if isInterfaceType(type_) then
		return printInterface(type_ :: GraphQLInterfaceType)
	end
	if isUnionType(type_) then
		return printUnion(type_ :: GraphQLUnionType)
	end
	if isEnumType(type_) then
		return printEnum(type_ :: GraphQLEnumType)
	end
	-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
	if isInputObjectType(type_) then
		return printInputObject(type_ :: GraphQLInputObjectType)
	end

	-- istanbul ignore next (Not reachable. All possible types have been considered)
	invariant(false, "Unexpected type: " .. inspect(type_))
	-- ROBLOX FIXME Luau: should understand and propagate throws/noreturn of invariant
	return ""
end

function printScalar(type_: GraphQLScalarType): string
	return printDescription(type_) .. ("scalar %s"):format(type_.name) .. printSpecifiedByUrl(type_)
end

local function printImplementedInterfaces(type_: GraphQLObjectType | GraphQLInterfaceType)
	-- ROBLOX FIXME Luau: ** weird bug, where self param is unified into `any`: Cannot call non-function ((any) -> Array<GraphQLInterfaceType>) | ((any) -> Array<any>)
	local interfaces = (type_.getInterfaces :: (
		GraphQLObjectType | GraphQLInterfaceType
	) -> Array<GraphQLInterfaceType>)(type_)

	return if #interfaces > 0
		then " implements " .. Array.join(
			Array.map(interfaces, function(i)
				return i.name
			end),
			" & "
		)
		else ""
end

function printObject(type_: GraphQLObjectType): string
	return printDescription(type_)
		.. ("type %s"):format(type_.name)
		.. printImplementedInterfaces(type_)
		.. printFields(type_)
end

function printInterface(type_: GraphQLInterfaceType): string
	return printDescription(type_)
		.. ("interface %s"):format(type_.name)
		.. printImplementedInterfaces(type_)
		.. printFields(type_)
end

function printUnion(type_: GraphQLUnionType): string
	local types = type_:getTypes()
	local possibleTypes = if #types > 0 then " = " .. Array.join(types, " | ") else ""

	return printDescription(type_) .. "union " .. type_.name .. possibleTypes
end

function printEnum(type_: GraphQLEnumType): string
	-- ROBLOX FIXME Luau: ** I shouldn't need to annotation value param below
	local values = Array.map(type_:getValues(), function(value: GraphQLEnumValue, i)
		return printDescription(value, "  ", i == 1)
			.. "  "
			.. value.name
			.. printDeprecated(value.deprecationReason)
	end)

	return printDescription(type_) .. ("enum %s"):format(type_.name) .. printBlock(values)
end

function printInputObject(type_: GraphQLInputObjectType)
	-- ROBLOX deviation: use Map
	-- ROBLOX FIXME Luau: ** I shouldn't need to annotation value param below. It looks like Luau loses the Map<K, V> V type in the return from values
	local fields = Array.map(type_:getFields():values(), function(f: GraphQLInputField, i)
		return printDescription(f, "  ", i == 1) .. "  " .. printInputValue(f)
	end)

	return printDescription(type_) .. ("input %s"):format(type_.name) .. printBlock(fields)
end

function printFields(type_: GraphQLObjectType | GraphQLInterfaceType): string
	-- ROBLOX deviation: use Map
	-- ROBLOX FIXME Luau: ** I shouldn't need to annotation value param below. It looks like Luau loses the Map<K, V> V type in the return from values
	-- ROBLOX FIXME Luau: ** shouldn't need deep unification to reduce this: Cannot call non-function ((any) -> GraphQLFieldMap<any, any>) | ((any) -> GraphQLFieldMap<any, any>)
	local fields = Array.map(
		(type_.getFields :: (any) -> GraphQLFieldMap<any, any>)(type_):values(),
		function(f: GraphQLField<any, any>, i)
			return printDescription(f, "  ", i == 1)
				.. "  "
				.. f.name
				.. printArgs(f.args, "  ")
				.. ": "
				.. tostring(f.type)
				.. printDeprecated(f.deprecationReason)
		end
	)

	return printBlock(fields)
end

function printBlock(items: Array<string>): string
	return if #items ~= 0 then " {\n" .. Array.join(items, "\n") .. "\n}" else ""
end

function printArgs(args: Array<GraphQLArgument>, indentation_: string?): string
	local indentation = if indentation_ ~= nil then indentation_ else ""

	if #args == 0 then
		return ""
	end

	-- If every arg does not have a description, print them on one line.
	if
		Array.every(args, function(arg)
			-- ROBLOX deviation START: execution can return NULL - so we must check for null or nil
			return isNillish(arg.description)
			-- ROBLOX deviation END
		end)
	then
		return "(" .. Array.join(Array.map(args, printInputValue), ", ") .. ")"
	end

	return "(\n"
		.. Array.join(
			-- ROBLOX FIXME Luau: ** I shouldn't need to annotation value param below
			Array.map(args, function(arg: GraphQLArgument, i)
				return printDescription(arg, "  " .. indentation, i == 1)
					.. "  "
					.. indentation
					.. printInputValue(arg)
			end),
			"\n"
		)
		.. "\n"
		.. indentation
		.. ")"
end

function printInputValue(arg: GraphQLInputField): string
	local defaultAST = astFromValue(arg.defaultValue, arg.type)
	local argDecl = arg.name .. ": " .. tostring(arg.type)

	-- ROBLOX TODO Luau: needs return constraints feature to narrow to non-nil
	if isNotNillish(defaultAST) then
		argDecl ..= (" = %s"):format(print_(defaultAST :: ValueNode))
	end

	return argDecl .. printDeprecated(arg.deprecationReason)
end

function printDirective(directive: GraphQLDirective)
	return printDescription(directive)
		.. "directive @"
		.. directive.name
		.. printArgs(directive.args)
		.. (if directive.isRepeatable then " repeatable" else "")
		.. " on "
		.. Array.join(directive.locations, " | ")
end

function printDeprecated(reason: string?): string
	if isNillish(reason) then
		return ""
	end

	local reasonAST = astFromValue(reason, GraphQLString)

	if reasonAST and reason ~= DEFAULT_DEPRECATION_REASON then
		-- ROBLOX FIXME Luau: should narrow reasonAST based on above branch
		return " @deprecated(reason: " .. print_(reasonAST :: ValueNode) .. ")"
	end

	return " @deprecated"
end

function printSpecifiedByUrl(scalar: GraphQLScalarType): string
	if isNillish(scalar.specifiedByUrl) then
		return ""
	end

	local url = scalar.specifiedByUrl
	local urlAST = astFromValue(url, GraphQLString)

	-- ROBLOX TODO Luau: should propagate throws/noreturn of invariant, and narrow first argument to be non-nil
	invariant(urlAST, "Unexpected null value returned from `astFromValue` for specifiedByUrl")

	return " @specifiedBy(url: " .. print_(urlAST :: StringValueNode) .. ")"
end

function printDescription(
	def: { description: string? },
	indentation_: string?,
	firstInBlock_: boolean?
): string
	-- ROBLOX deviation: handle default paramters
	local indentation: string = if indentation_ ~= nil then indentation_ else ""

	local firstInBlock = if firstInBlock_ ~= nil then firstInBlock_ else true

	local description = def.description

	-- ROBLOX TODO Luau: needs return constraint language feature
	if isNillish(description) then
		return ""
	end

	-- ROBLOX TODO? should this be utf8.len?
	local preferMultipleLines = string.len(description :: string) > 70
	local blockString = printBlockString(description :: string, "", preferMultipleLines)
	local prefix = if Boolean.toJSBoolean(indentation) and not firstInBlock
		then "\n" .. indentation
		else indentation

	local replaced: string, _ = string.gsub(blockString, "\n", "\n" .. indentation)
	return prefix .. replaced .. "\n"
end

return {
	printSchema = printSchema,
	printIntrospectionSchema = printIntrospectionSchema,
	printType = printType,
	NULL = NULL, -- ROBLOX deviation: differentiate null and undefined
}
