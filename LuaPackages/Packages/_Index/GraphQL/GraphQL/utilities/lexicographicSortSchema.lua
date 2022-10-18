--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/lexicographicSortSchema.js

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>

local inspect = require(srcWorkspace.jsutils.inspect).inspect
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local keyValMap = require(srcWorkspace.jsutils.keyValMap).keyValMap
local naturalCompare = require(srcWorkspace.jsutils.naturalCompare).naturalCompare

local SchemaModule = require(srcWorkspace.type.schema)
local GraphQLSchema = SchemaModule.GraphQLSchema
-- ROBLOX deviation: bring in types separately
type GraphQLSchema = SchemaModule.GraphQLSchema
local directivesImport = require(srcWorkspace.type.directives)
local GraphQLDirective = directivesImport.GraphQLDirective
type GraphQLDirective = directivesImport.GraphQLDirective

local DefinitionModule = require(srcWorkspace.type.definition)
type GraphQLType = DefinitionModule.GraphQLType
type GraphQLList<T> = DefinitionModule.GraphQLList<T>
type GraphQLNonNull<T> = DefinitionModule.GraphQLNonNull<T>
type GraphQLNamedType = DefinitionModule.GraphQLNamedType
type GraphQLFieldConfigMap<T, V> = DefinitionModule.GraphQLFieldConfigMap<T, V>
type GraphQLFieldConfigArgumentMap = DefinitionModule.GraphQLFieldConfigArgumentMap
type GraphQLInputFieldConfigMap = DefinitionModule.GraphQLInputFieldConfigMap
-- ROBLOX deviation START: types added for explicit casting
type GraphQLObjectType = DefinitionModule.GraphQLObjectType
type GraphQLInterfaceType = DefinitionModule.GraphQLInterfaceType
type GraphQLUnionType = DefinitionModule.GraphQLUnionType
type GraphQLEnumType = DefinitionModule.GraphQLEnumType
type GraphQLInputObjectType = DefinitionModule.GraphQLInputObjectType
local _astImport = require(srcWorkspace.language.ast)
type ListTypeNode = _astImport.ListTypeNode
type NamedTypeNode = _astImport.NamedTypeNode
type NonNullTypeNode = _astImport.NonNullTypeNode

-- ROBLOX deviation END

local isIntrospectionType = require(srcWorkspace.type.introspection).isIntrospectionType
local GraphQLList = DefinitionModule.GraphQLList
local GraphQLNonNull = DefinitionModule.GraphQLNonNull
local GraphQLObjectType = DefinitionModule.GraphQLObjectType
local GraphQLInterfaceType = DefinitionModule.GraphQLInterfaceType
local GraphQLUnionType = DefinitionModule.GraphQLUnionType
local GraphQLEnumType = DefinitionModule.GraphQLEnumType
local GraphQLInputObjectType = DefinitionModule.GraphQLInputObjectType
local isListType = DefinitionModule.isListType
local isNonNullType = DefinitionModule.isNonNullType
local isScalarType = DefinitionModule.isScalarType
local isObjectType = DefinitionModule.isObjectType
local isInterfaceType = DefinitionModule.isInterfaceType
local isUnionType = DefinitionModule.isUnionType
local isEnumType = DefinitionModule.isEnumType
local isInputObjectType = DefinitionModule.isInputObjectType

-- ROBLOX deviation: predeclare variables
local sortObjMap, sortByName, sortBy

--[[
 * Sort GraphQLSchema.
 *
 * This function returns a sorted copy of the given GraphQLSchema.
 *]]
local function lexicographicSortSchema(schema: GraphQLSchema): GraphQLSchema
	-- ROBLOX deviation: predeclare functions
	local typeMap: Map<string, GraphQLNamedType>
	local replaceNamedType, replaceMaybeType, sortDirective, sortArgs, sortFields, sortInputFields, sortTypes, sortNamedType

	local schemaConfig = schema:toConfig()

	-- ROBLOX deviation hoist all functions to top of scope
	local function replaceType<T>(type_: T): T
		if isListType(type_) then
			-- $FlowFixMe[incompatible-return]
			-- ROBLOX TODO Luau: need generic constraints
			return GraphQLList.new(replaceType(((type_ :: any) :: GraphQLList<GraphQLType>).ofType))
		elseif isNonNullType(type_) then
			-- $FlowFixMe[incompatible-return]
			-- ROBLOX TODO Luau: need generic constraints
			return GraphQLNonNull.new(
				replaceType(((type_ :: any) :: GraphQLNonNull<GraphQLType>).ofType)
			)
		end

		return replaceNamedType(type_)
	end

	function replaceNamedType<T>(type_: T): T
		-- ROBLOX TODO Luau: cast needed because we don't have generic constraints yet
		-- ROBLOX TODO Luau: this variation gets " Generic supertype escaping scope": return typeMap[((type_ :: any) :: GraphQLNamedType).name]
		return (typeMap[((type_ :: any) :: GraphQLNamedType).name] :: any) :: T
	end

	function replaceMaybeType<T>(maybeType: T?): T?
		return if maybeType then replaceNamedType(maybeType) else nil
	end

	function sortDirective(directive: GraphQLDirective)
		local config = directive:toConfig()

		return GraphQLDirective.new(Object.assign({}, config, {
			locations = sortBy(config.locations, function(x)
				return x
			end),
			args = sortArgs(config.args),
		}))
	end

	function sortArgs(args: GraphQLFieldConfigArgumentMap)
		return sortObjMap(args, function(arg)
			return Object.assign({}, arg, {
				type = replaceType(arg.type),
			})
		end)
	end

	function sortFields(fieldsMap: GraphQLFieldConfigMap<any, any>)
		return sortObjMap(fieldsMap, function(field)
			return Object.assign({}, field, {
				type = replaceType(field.type),
				args = if field.args then sortArgs(field.args) else nil,
			})
		end)
	end

	function sortInputFields(fieldsMap: GraphQLInputFieldConfigMap)
		return sortObjMap(fieldsMap, function(field)
			return Object.assign({}, field, {
				type = replaceType(field.type),
			})
		end)
	end

	function sortTypes<T>(arr: Array<T>): Array<T>
		return Array.map(sortByName(arr), replaceNamedType)
	end

	function sortNamedType(type_: GraphQLNamedType): GraphQLNamedType
		if isScalarType(type_) or isIntrospectionType(type_) then
			return type_
		end
		if isObjectType(type_) then
			-- ROBLOX deviation: explicit cast
			local config = (type_ :: GraphQLObjectType):toConfig()

			return GraphQLObjectType.new(Object.assign({}, config, {
				interfaces = function()
					return sortTypes(config.interfaces)
				end,
				fields = function()
					return sortFields(config.fields)
				end,
			}))
		end
		if isInterfaceType(type_) then
			-- ROBLOX deviation: explicit cast
			local config = (type_ :: GraphQLInterfaceType):toConfig()

			return GraphQLInterfaceType.new(Object.assign({}, config, {
				interfaces = function()
					return sortTypes(config.interfaces)
				end,
				fields = function()
					return sortFields(config.fields)
				end,
			}))
		end
		if isUnionType(type_) then
			-- ROBLOX deviation: explicit cast
			local config = (type_ :: GraphQLUnionType):toConfig()

			return GraphQLUnionType.new(Object.assign({}, config, {
				types = function()
					return sortTypes(config.types)
				end,
			}))
		end
		if isEnumType(type_) then
			-- ROBLOX deviation: explicit cast
			local config = (type_ :: GraphQLEnumType):toConfig()

			return GraphQLEnumType.new(Object.assign({}, config, {
				values = sortObjMap(config.values, function(value)
					return value
				end),
			}))
		end
		-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
		if isInputObjectType(type_) then
			-- ROBLOX deviation: explicit cast
			local config = (type_ :: GraphQLInputObjectType):toConfig()

			return GraphQLInputObjectType.new(Object.assign({}, config, {
				fields = function()
					return sortInputFields(config.fields)
				end,
			}))
		end

		-- istanbul ignore next (Not reachable. All possible types have been considered)
		invariant(false, "Unexpected type: " .. inspect(type_))
		error("Unexpected type: " .. inspect(type_)) -- ROBLOX TODO Luau: should understand throw/noreturn property of invariant
	end

	-- ROBLOX deviation START: function moved down here so that sortNamedType is defined by the time we get here
	typeMap = keyValMap(sortByName(schemaConfig.types), function(type_)
		return type_.name
	end, sortNamedType)
	-- ROBLOX deviation END

	return GraphQLSchema.new(Object.assign({}, schemaConfig, {
		-- ROBLOX deviation: keyValMap returns a Map instead of an object to preserve key order
		types = typeMap:values(),
		directives = Array.map(sortByName(schemaConfig.directives), sortDirective),
		query = replaceMaybeType(schemaConfig.query),
		mutation = replaceMaybeType(schemaConfig.mutation),
		subscription = replaceMaybeType(schemaConfig.subscription),
	}))
end
-- ROBLOX deviation START: using ordered Map instead of ObjMap
function sortObjMap<T, R>(map: Map<string, T>, sortValueFn: (value: T) -> R): Map<string, R>
	local sortedMap = Map.new() :: Map<string, R>
	-- ROBLOX deviation END
	local sortedKeys = sortBy(map:keys(), function(x)
		return x
	end)

	for _, key in ipairs(sortedKeys) do
		sortedMap[key] = sortValueFn(map[key])
	end

	return sortedMap
end

function sortByName<T>(array: Array<T>): Array<T>
	return sortBy(array, function(obj)
		-- ROBLOX TODO Luau: need generics
		return ((obj :: any) :: { name: string }).name
	end)
end

function sortBy<T>(array: Array<T>, mapToKey: (item: T) -> string): Array<T>
	return Array.sort(Array.slice(array), function(obj1, obj2)
		local key1 = mapToKey(obj1)
		local key2 = mapToKey(obj2)
		return naturalCompare(key1, key2)
	end)
end

return {
	lexicographicSortSchema = lexicographicSortSchema,
}
