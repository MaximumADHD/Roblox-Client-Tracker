-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/filterSchema.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLEnumType = graphqlModule.GraphQLEnumType
-- ROBLOX deviation END
local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLScalarType = graphqlModule.GraphQLScalarType
-- local GraphQLUnionType = graphqlModule.GraphQLUnionType
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLScalarType = graphqlModule.GraphQLScalarType
type GraphQLUnionType = graphqlModule.GraphQLUnionType
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: fix module import
-- local interfacesJsModule = require(script.Parent["Interfaces.js"])
local interfacesJsModule = require(script.Parent.Interfaces)
-- ROBLOX deviation END
local MapperKind = interfacesJsModule.MapperKind
-- ROBLOX deviation START: import as types instead of locals
-- local FieldFilter = interfacesJsModule.FieldFilter
-- local RootFieldFilter = interfacesJsModule.RootFieldFilter
-- local TypeFilter = interfacesJsModule.TypeFilter
-- local ArgumentFilter = interfacesJsModule.ArgumentFilter
type FieldFilter = interfacesJsModule.FieldFilter
type RootFieldFilter = interfacesJsModule.RootFieldFilter
type TypeFilter = interfacesJsModule.TypeFilter
type ArgumentFilter = interfacesJsModule.ArgumentFilter
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local mapSchema = require(script.Parent["mapSchema.js"]).mapSchema
-- local Constructor = require(script.Parent["types.js"]).Constructor
local mapSchema = require(script.Parent.mapSchema).mapSchema
local typesModule = require(script.Parent.types)
type Constructor<T> = typesModule.Constructor<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
type GraphQLFieldConfigArgumentMap = graphqlModule.GraphQLFieldConfigArgumentMap
type Map<K, V> = LuauPolyfill.Map<K, V>
type Object = LuauPolyfill.Object
-- ROBLOX deviation END

-- ROBLOX deviation START: predefine variables
local filterRootFields
local filterElementFields
-- ROBLOX deviation END
local function filterSchema(ref0: {
	schema: GraphQLSchema,
	rootFieldFilter: RootFieldFilter?,
	typeFilter: TypeFilter?,
	fieldFilter: FieldFilter?,
	objectFieldFilter: FieldFilter?,
	interfaceFieldFilter: FieldFilter?,
	inputObjectFieldFilter: FieldFilter?,
	argumentFilter: ArgumentFilter?,
}): GraphQLSchema
	-- ROBLOX deviation START: wrap in order to cast return
	-- local schema, typeFilter, fieldFilter, rootFieldFilter, objectFieldFilter, interfaceFieldFilter, inputObjectFieldFilter, argumentFilter =
	-- 		ref0.schema, if ref0.typeFilter == nil
	-- 			then function()
	local schema, typeFilter, fieldFilter, rootFieldFilter, objectFieldFilter, interfaceFieldFilter, inputObjectFieldFilter, argumentFilter =
		ref0.schema,
		(
			if ref0.typeFilter == nil
				then function(...)
					-- ROBLOX deviation END
					return true
				end
				-- ROBLOX deviation START: cast return
				-- else ref0.typeFilter, if ref0.fieldFilter == nil then nil else ref0.fieldFilter, if ref0.rootFieldFilter == nil then nil else ref0.rootFieldFilter, if ref0.objectFieldFilter == nil then nil else ref0.objectFieldFilter, if ref0.interfaceFieldFilter == nil then nil else ref0.interfaceFieldFilter, if ref0.inputObjectFieldFilter == nil then nil else ref0.inputObjectFieldFilter, if ref0.argumentFilter == nil then nil else ref0.argumentFilter
				else ref0.typeFilter
		) :: TypeFilter,
		if ref0.fieldFilter == nil then nil else ref0.fieldFilter,
		if ref0.rootFieldFilter == nil then nil else ref0.rootFieldFilter,
		if ref0.objectFieldFilter == nil then nil else ref0.objectFieldFilter,
		if ref0.interfaceFieldFilter == nil then nil else ref0.interfaceFieldFilter,
		if ref0.inputObjectFieldFilter == nil then nil else ref0.inputObjectFieldFilter,
		if ref0.argumentFilter == nil then nil else ref0.argumentFilter
	-- ROBLOX deviation END
	local filteredSchema: GraphQLSchema = mapSchema(schema, {
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.QUERY)] = function(type_)
		[MapperKind.QUERY] = function(type_: GraphQLObjectType)
			-- ROBLOX deviation END
			return filterRootFields(type_, "Query", rootFieldFilter, argumentFilter)
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.MUTATION)] = function(type_)
		[MapperKind.MUTATION] = function(type_: GraphQLObjectType)
			-- ROBLOX deviation END
			return filterRootFields(type_, "Mutation", rootFieldFilter, argumentFilter)
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.SUBSCRIPTION)] = function(type_)
		[MapperKind.SUBSCRIPTION] = function(type_: GraphQLObjectType)
			-- ROBLOX deviation END
			return filterRootFields(type_, "Subscription", rootFieldFilter, argumentFilter)
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.OBJECT_TYPE)] = function(type_)
		[MapperKind.OBJECT_TYPE] = function(type_: GraphQLObjectType)
			-- ROBLOX deviation END
			return if Boolean.toJSBoolean(typeFilter(type_.name, type_))
				then filterElementFields(
					GraphQLObjectType,
					type_,
					Boolean.toJSBoolean(objectFieldFilter) and objectFieldFilter or fieldFilter,
					argumentFilter
				)
				-- ROBLOX deviation START: use Object.None instead of nil
				-- else nil
				else Object.None
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.INTERFACE_TYPE)] = function(type_)
		[MapperKind.INTERFACE_TYPE] = function(type_: GraphQLInterfaceType)
			-- ROBLOX deviation END
			return if Boolean.toJSBoolean(typeFilter(type_.name, type_))
				then filterElementFields(
					GraphQLInterfaceType,
					type_,
					Boolean.toJSBoolean(interfaceFieldFilter) and interfaceFieldFilter or fieldFilter,
					argumentFilter
				)
				-- ROBLOX deviation START: use Object.None instead of nil
				-- else nil
				else Object.None
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.INPUT_OBJECT_TYPE)] = function(type_)
		[MapperKind.INPUT_OBJECT_TYPE] = function(type_: GraphQLInputObjectType)
			-- ROBLOX deviation END
			return if Boolean.toJSBoolean(typeFilter(type_.name, type_))
				then filterElementFields(
					GraphQLInputObjectType,
					type_,
					Boolean.toJSBoolean(inputObjectFieldFilter) and inputObjectFieldFilter or fieldFilter
				)
				-- ROBLOX deviation START: use Object.None instead of nil
				-- else nil
				else Object.None
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.UNION_TYPE)] = function(type_)
		[MapperKind.UNION_TYPE] = function(type_: GraphQLUnionType)
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use Object.None instead of nil
			-- return if Boolean.toJSBoolean(typeFilter(type_.name, type_)) then nil else nil
			return if Boolean.toJSBoolean(typeFilter(type_.name, type_)) then nil else Object.None
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.ENUM_TYPE)] = function(type_)
		[MapperKind.ENUM_TYPE] = function(type_: GraphQLEnumType)
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use Object.None instead of nil
			-- return if Boolean.toJSBoolean(typeFilter(type_.name, type_)) then nil else nil
			return if Boolean.toJSBoolean(typeFilter(type_.name, type_)) then nil else Object.None
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: explicit type
		-- [tostring(MapperKind.SCALAR_TYPE)] = function(type_)
		[MapperKind.SCALAR_TYPE] = function(type_: GraphQLScalarType)
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use Object.None instead of nil
			-- return if Boolean.toJSBoolean(typeFilter(type_.name, type_)) then nil else nil
			return if Boolean.toJSBoolean(typeFilter(type_.name, type_)) then nil else Object.None
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: cast return
		-- })
	} :: Object)
	-- ROBLOX deviation END
	return filteredSchema
end
exports.filterSchema = filterSchema
-- ROBLOX deviation START: predeclared variable
-- local function filterRootFields(
function filterRootFields(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: add back type annotation stripped by js-to-lua
	-- type_,
	type_: GraphQLObjectType,
	-- ROBLOX deviation END
	operation: "Query" | "Mutation" | "Subscription",
	rootFieldFilter: RootFieldFilter?,
	argumentFilter: ArgumentFilter?
): GraphQLObjectType
	if Boolean.toJSBoolean(Boolean.toJSBoolean(rootFieldFilter) and rootFieldFilter or argumentFilter) then
		local config = type_:toConfig()
		-- ROBLOX deviation START: config.fields is a Map
		-- for fieldName in config.fields do
		-- 			local field = config.fields[tostring(fieldName)]
		for _, ref in config.fields :: Map<string, any> do
			local fieldName = table.unpack(ref)
			local field = config.fields:get(fieldName) :: GraphQLFieldConfig<any, any>
			-- ROBLOX deviation END
			if
				-- ROBLOX deviation START: fix condition and handle config.fields being a Map
				-- 				Boolean.toJSBoolean(if Boolean.toJSBoolean(rootFieldFilter)
				-- 					then not Boolean.toJSBoolean(
				-- 						rootFieldFilter(operation, fieldName, config.fields[tostring(fieldName)])
				-- 					)
				-- 					else rootFieldFilter)
				if rootFieldFilter
					then not rootFieldFilter(
						operation,
						fieldName,
						config.fields:get(fieldName) :: GraphQLFieldConfig<any, any>
					)
					else rootFieldFilter
				-- ROBLOX deviation END
			then
				-- ROBLOX deviation START: config.fields is a Map
				-- config.fields[tostring(fieldName)] = nil
				config.fields:delete(fieldName)
				-- ROBLOX deviation END
			elseif Boolean.toJSBoolean(if Boolean.toJSBoolean(argumentFilter) then field.args else argumentFilter) then
				-- ROBLOX deviation START: field.args is a Map
				-- for argName in field.args do
				for _, ref in field.args :: GraphQLFieldConfigArgumentMap do
					local argName = table.unpack(ref)
					-- ROBLOX deviation END
					if
						-- ROBLOX deviation START: fix condition and add explicit type
						-- 						not Boolean.toJSBoolean(
						-- 							argumentFilter(operation, fieldName, argName, field.args[tostring(argName)])
						-- 						)
						not (
							(argumentFilter :: ArgumentFilter)(
								operation,
								fieldName,
								argName,
								(field.args :: GraphQLFieldConfigArgumentMap):get(argName)
							)
						)
						-- ROBLOX deviation END
					then
						-- ROBLOX deviation START: field.args is a Map
						-- field.args[tostring(argName)] = nil
						(field.args :: GraphQLFieldConfigArgumentMap):delete(argName)
						-- ROBLOX deviation END
					end
				end
			end
		end
		return GraphQLObjectType.new(config)
	end
	return type_
end
-- ROBLOX deviation START: predeclared function
-- local function filterElementFields<ElementType>(
function filterElementFields<ElementType>(
	-- ROBLOX deviation END
	ElementConstructor: Constructor<ElementType>,
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLObjectType | GraphQLInterfaceType | GraphQLInputObjectType,
	-- ROBLOX deviation END
	fieldFilter: FieldFilter?,
	argumentFilter: ArgumentFilter?
): ElementType | nil
	if Boolean.toJSBoolean(Boolean.toJSBoolean(fieldFilter) and fieldFilter or argumentFilter) then
		-- ROBLOX deviation START: cast to any
		-- local config = type_:toConfig()
		local config = (type_ :: any):toConfig()
		-- ROBLOX deviation END
		-- ROBLOX deviation START: config.fields is a Map
		-- 		for fieldName in config.fields do
		-- 			local field = config.fields[tostring(fieldName)]
		for _, ref in config.fields do
			local fieldName = table.unpack(ref)
			local field = config.fields:get(fieldName)
			-- ROBLOX deviation END
			if
				Boolean.toJSBoolean(
					-- ROBLOX deviation START: fix condition and handle config.fields being a Map
					-- 					if Boolean.toJSBoolean(fieldFilter)
					-- 						then not Boolean.toJSBoolean(
					-- 							fieldFilter(type_.name, fieldName, config.fields[tostring(fieldName)])
					-- 						)
					-- 						else fieldFilter
					if fieldFilter
						then not fieldFilter(type_.name, fieldName, config.fields:get(fieldName))
						else fieldFilter
					-- ROBLOX deviation END
				)
			then
				-- ROBLOX deviation START: config.fields is a Map
				-- config.fields[tostring(fieldName)] = nil
				config.fields:delete(fieldName)
				-- ROBLOX deviation END
			elseif
				Boolean.toJSBoolean(
					if Boolean.toJSBoolean(argumentFilter)
						then Array.indexOf(Object.keys(field), "args") ~= -1
						else argumentFilter
				)
			then
				-- ROBLOX deviation START: field.args is a Map
				-- for argName in field.args do
				for _, ref in field.args do
					local argName = table.unpack(ref)
					-- ROBLOX deviation END
					if
						not Boolean.toJSBoolean(
							-- ROBLOX deviation START: field.args is a Map & explicit type
							-- argumentFilter(type_.name, fieldName, argName, field.args[tostring(argName)])
							(argumentFilter :: ArgumentFilter)(type_.name, fieldName, argName, field.args:get(argName))
							-- ROBLOX deviation END
						)
					then
						-- ROBLOX deviation START: field.args is a Map
						-- field.args[tostring(argName)] = nil
						field.args:delete(argName)
						-- ROBLOX deviation END
					end
				end
			end
		end
		return ElementConstructor.new(config)
	end
	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
return exports
