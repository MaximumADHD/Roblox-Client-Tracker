-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/rewire.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
-- ROBLOX deviation START: not needed
-- local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation END
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local GraphQLDirective = graphqlModule.GraphQLDirective
-- ROBLOX deviation START: add type import
type GraphQLDirective = graphqlModule.GraphQLDirective
-- ROBLOX deviation END
local GraphQLEnumType = graphqlModule.GraphQLEnumType
-- ROBLOX deviation START: add type import
type GraphQLEnumType = graphqlModule.GraphQLEnumType
-- ROBLOX deviation END
-- ROBLOX deviation START: import types
-- local GraphQLFieldConfigArgumentMap = graphqlModule.GraphQLFieldConfigArgumentMap
-- local GraphQLFieldConfigMap = graphqlModule.GraphQLFieldConfigMap
-- local GraphQLInputFieldConfigMap = graphqlModule.GraphQLInputFieldConfigMap
type GraphQLFieldConfigArgumentMap = graphqlModule.GraphQLFieldConfigArgumentMap
type GraphQLFieldConfigMap<TSource, TContext> = graphqlModule.GraphQLFieldConfigMap<TSource, TContext>
type GraphQLInputFieldConfigMap = graphqlModule.GraphQLInputFieldConfigMap
-- ROBLOX deviation END
local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- ROBLOX deviation START: add type import
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- ROBLOX deviation END
local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation START: add type import
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation END
local GraphQLList = graphqlModule.GraphQLList
local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation START: add type import
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
-- ROBLOX deviation START: import type
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
-- ROBLOX deviation END
local GraphQLNonNull = graphqlModule.GraphQLNonNull
local GraphQLScalarType = graphqlModule.GraphQLScalarType
-- ROBLOX deviation START: add type import
type GraphQLScalarType = graphqlModule.GraphQLScalarType
-- ROBLOX deviation END
-- ROBLOX deviation START: import type
-- local GraphQLType = graphqlModule.GraphQLType
type GraphQLType = graphqlModule.GraphQLType
-- ROBLOX deviation END
local GraphQLUnionType = graphqlModule.GraphQLUnionType
-- ROBLOX deviation START: add type import
type GraphQLUnionType = graphqlModule.GraphQLUnionType
-- ROBLOX deviation END
local isInterfaceType = graphqlModule.isInterfaceType
local isEnumType = graphqlModule.isEnumType
local isInputObjectType = graphqlModule.isInputObjectType
local isListType = graphqlModule.isListType
local isNamedType = graphqlModule.isNamedType
local isNonNullType = graphqlModule.isNonNullType
local isObjectType = graphqlModule.isObjectType
local isScalarType = graphqlModule.isScalarType
local isUnionType = graphqlModule.isUnionType
local isSpecifiedScalarType = graphqlModule.isSpecifiedScalarType
local isSpecifiedDirective = graphqlModule.isSpecifiedDirective
-- ROBLOX deviation START: fix import
-- local stubJsModule = require(script.Parent["stub.js"])
local stubJsModule = require(script.Parent.stub)
-- ROBLOX deviation END
local getBuiltInForStub = stubJsModule.getBuiltInForStub
local isNamedStub = stubJsModule.isNamedStub
-- ROBLOX deviation START: add additional imports
local Map = LuauPolyfill.Map
local String = LuauPolyfill.String
type Map<K, V> = LuauPolyfill.Map<K, V>
type ReadonlyArray<T> = LuauPolyfill.Array<T>
type Iterable<T> = any
type GraphQLArgumentConfig = graphqlModule.GraphQLArgumentConfig
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
type GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
-- ROBLOX deviation END
local function rewireTypes(
	-- ROBLOX deviation START: use Map instead of Record
	-- originalTypeMap: Record<string, GraphQLNamedType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]>,
	originalTypeMap: Map<string, GraphQLNamedType | nil>,
	-- ROBLOX deviation END
	directives: ReadonlyArray<GraphQLDirective>
	-- ROBLOX deviation START: use Map instead of Record
	-- ): { typeMap: Record<string, GraphQLNamedType>, directives: Array<GraphQLDirective> }
): { typeMap: Map<string, GraphQLNamedType>, directives: Array<GraphQLDirective> }
	-- ROBLOX deviation END
	-- ROBLOX deviation START: add hoisted variables
	local referenceTypeMap: Map<string, GraphQLNamedType>
	local newTypeMap: Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	-- ROBLOX deviation START: add hoist functions and predeclare them, need to pass along referenceTypeMap and newTypeMap
	local rewireDirective
	local rewireArgs
	local rewireNamedType
	local rewireFields
	local rewireInputFields
	local rewireNamedTypes
	local rewireType
	function rewireDirective(directive: GraphQLDirective): GraphQLDirective
		if isSpecifiedDirective(directive) then
			return directive
		end
		local directiveConfig = directive:toConfig()
		directiveConfig.args = rewireArgs(directiveConfig.args)
		return GraphQLDirective.new(directiveConfig)
	end

	function rewireArgs(args: GraphQLFieldConfigArgumentMap): GraphQLFieldConfigArgumentMap
		local rewiredArgs = Map.new()
		for _, ref in args do
			local argName = ref[1]
			-- ROBLOX FIXME Luau: arg is not optional we're iterating on args properties
			local arg = args:get(argName) :: GraphQLArgumentConfig
			local rewiredArgType = rewireType(arg.type)
			if rewiredArgType ~= nil then
				arg.type = rewiredArgType
				rewiredArgs:set(argName, arg)
			end
		end
		return rewiredArgs
	end

	function rewireNamedType<T>(type_: T)
		if isObjectType(type_) then
			-- ROBLOX FIXME Luau: requires cast to any, isObjectType doesn't narrow type
			local config = ((type_ :: any) :: GraphQLObjectType):toConfig()
			local newConfig = Object.assign({}, config, {
				fields = function()
					return rewireFields(config.fields)
				end,
				interfaces = function()
					return rewireNamedTypes(config.interfaces)
				end,
			})
			return GraphQLObjectType.new(newConfig)
		elseif isInterfaceType(type_) then
			local config = ((type_ :: any) :: GraphQLInterfaceType):toConfig()
			local newConfig: any = Object.assign({}, config, {
				fields = function()
					return rewireFields(config.fields)
				end,
			})
			if Array.indexOf(Object.keys(newConfig), "interfaces") ~= -1 then
				newConfig.interfaces = function(_self: any)
					return rewireNamedTypes(
						((config :: unknown) :: { interfaces: Array<GraphQLInterfaceType> }).interfaces
					)
				end
			end
			return GraphQLInterfaceType.new(newConfig)
		elseif isUnionType(type_) then
			local config = ((type_ :: any) :: GraphQLUnionType):toConfig()
			local newConfig = Object.assign({}, config, {
				types = function()
					return rewireNamedTypes(config.types)
				end,
			})
			return GraphQLUnionType.new(newConfig)
		elseif isInputObjectType(type_) then
			local config = ((type_ :: any) :: GraphQLInputObjectType):toConfig()
			local newConfig = Object.assign({}, config, {
				fields = function()
					return rewireInputFields(config.fields)
				end,
			})
			return GraphQLInputObjectType.new(newConfig)
		elseif isEnumType(type_) then
			local enumConfig = ((type_ :: any) :: GraphQLEnumType):toConfig()
			return GraphQLEnumType.new(enumConfig)
		elseif isScalarType(type_) then
			if isSpecifiedScalarType(type_ :: any) then
				return type_ :: any
			end
			local scalarConfig = ((type_ :: any) :: GraphQLScalarType):toConfig()
			-- ROBLOX deviation START: handle self for methods
			local serialize = scalarConfig.serialize
			local parseValue = scalarConfig.parseValue
			local parseLiteral = scalarConfig.parseLiteral

			if serialize then
				scalarConfig.serialize = function(...)
					-- ROBLOX FIXME Luau: already checked it's not nil
					return (serialize :: any)(scalarConfig, ...)
				end
			end
			if parseValue then
				scalarConfig.parseValue = function(...)
					-- ROBLOX FIXME Luau: already checked it's not nil
					return (parseValue :: any)(scalarConfig, ...)
				end
			end
			if parseLiteral then
				scalarConfig.parseLiteral = function(...)
					-- ROBLOX FIXME Luau: already checked it's not nil
					return (parseLiteral :: any)(scalarConfig, ...)
				end
			end
			-- ROBLOX deviation END

			return GraphQLScalarType.new(scalarConfig)
		end
		error(Error.new(("Unexpected schema type: %s"):format(tostring((type_ :: unknown) :: string))))
	end

	function rewireFields(fields: GraphQLFieldConfigMap<any, any>): GraphQLFieldConfigMap<any, any>
		local rewiredFields = Map.new()
		for _, ref in fields do
			local fieldName = ref[1]
			local field = fields:get(fieldName) :: GraphQLFieldConfig<any, any>
			local rewiredFieldType = rewireType(field.type)
			if rewiredFieldType ~= nil and field.args then
				field.type = rewiredFieldType
				field.args = rewireArgs(field.args)
				rewiredFields:set(fieldName, field)
			end
		end
		return rewiredFields
	end

	function rewireInputFields(fields: GraphQLInputFieldConfigMap): GraphQLInputFieldConfigMap
		local rewiredFields = Map.new()
		for _, ref in fields do
			local fieldName = ref[1]
			local field = fields:get(fieldName) :: GraphQLInputFieldConfig
			local rewiredFieldType = rewireType(field.type)
			if rewiredFieldType ~= nil then
				field.type = rewiredFieldType
				rewiredFields:set(fieldName, field)
			end
		end
		return rewiredFields
	end

	function rewireNamedTypes<T>(namedTypes: Iterable<T>): Array<T>
		local rewiredTypes: Array<T> = {}
		for _, namedType in namedTypes do
			local rewiredType = rewireType(namedType)
			if rewiredType ~= nil and rewiredType ~= Object.None then
				table.insert(rewiredTypes, rewiredType)
			end
		end
		return rewiredTypes
	end

	function rewireType<T>(type_: T): T | nil
		if isListType(type_) then
			local rewiredType = rewireType((type_ :: any).ofType)
			return if rewiredType ~= nil and rewiredType ~= Object.None then GraphQLList.new(rewiredType) :: T else nil
		elseif isNonNullType(type_) then
			local rewiredType = rewireType((type_ :: any).ofType)
			return if rewiredType ~= nil and rewiredType ~= Object.None
				then GraphQLNonNull.new(rewiredType) :: T
				else nil
		elseif isNamedType(type_) then
			local rewiredType = referenceTypeMap:get(((type_ :: any) :: GraphQLNamedType).name) :: GraphQLNamedType
			if rewiredType == nil then
				rewiredType = if isNamedStub((type_ :: any) :: GraphQLNamedType)
					then getBuiltInForStub((type_ :: any) :: GraphQLNamedType)
					else rewireNamedType(type_)
				referenceTypeMap:set(((type_ :: any) :: GraphQLNamedType).name, rewiredType)
				newTypeMap:set(
					rewiredType.name,
					referenceTypeMap:get(((type_ :: any) :: GraphQLNamedType).name) :: GraphQLNamedType
				)
			end
			return if rewiredType ~= nil and rewiredType ~= Object.None
				then (newTypeMap:get(rewiredType.name) :: any) :: T
				else nil
		end
		return nil
	end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: use Map and hoist declaration
	-- local referenceTypeMap = Object.create(nil)
	referenceTypeMap = Map.new() :: Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	-- ROBLOX deviation START: originalTypeMap is a Map
	-- for typeName in originalTypeMap do
	for _, ref in originalTypeMap do
		local typeName = ref[1]
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use Map
		-- referenceTypeMap[tostring(typeName)] = originalTypeMap[tostring(typeName)]
		referenceTypeMap:set(typeName, originalTypeMap:get(typeName) :: GraphQLNamedType)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: use Map and hoist declaration
	-- local newTypeMap: Record<string, GraphQLNamedType> = Object.create(nil)
	newTypeMap = Map.new()
	-- ROBLOX deviation END
	-- ROBLOX deviation START: referenceTypeMap is a Map
	-- for typeName in referenceTypeMap do
	for _, ref in referenceTypeMap do
		local typeName = ref[1]
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use Map
		-- local namedType = referenceTypeMap[tostring(typeName)]
		local namedType = referenceTypeMap:get(typeName) :: GraphQLNamedType
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix loose null equality conversion and .startsWith
		-- if
		-- 	Boolean.toJSBoolean(
		-- 		namedType == nil --[[ ROBLOX CHECK: loose equality used upstream ]] or typeName:startsWith("__")
		-- 	)
		-- then
		if namedType == nil or namedType == Object.None or String.startsWith(typeName, "__") then
			-- ROBLOX deviation END
			continue
		end
		local newName = namedType.name
		-- ROBLOX deviation START: fix .startsWith
		-- if Boolean.toJSBoolean(newName:startsWith("__")) then
		if String.startsWith(newName, "__") then
			-- ROBLOX deviation END
			continue
		end
		-- ROBLOX deviation START: use Map
		-- if
		-- 	newTypeMap[tostring(newName)] ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		-- then
		if newTypeMap:get(newName) ~= nil then
			-- ROBLOX deviation END
			console.warn(
				("Duplicate schema type name %s found; keeping the existing one found in the schema"):format(
					tostring(newName)
				)
			)
			continue
		end
		-- ROBLOX deviation START: use Map
		-- newTypeMap[tostring(newName)] = namedType
		newTypeMap:set(newName, namedType)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: newTypeMap is a Map
	-- for typeName in newTypeMap do
	for _, ref in newTypeMap do
		local typeName = ref[1]
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use Map
		-- newTypeMap[tostring(typeName)] = rewireNamedType(newTypeMap[tostring(typeName)])
		newTypeMap:set(typeName, rewireNamedType(newTypeMap:get(typeName)))
		-- ROBLOX deviation END
	end
	local newDirectives = Array.map(directives, function(directive)
		return rewireDirective(directive)
	end) --[[ ROBLOX CHECK: check if 'directives' is an Array ]]
	return { typeMap = newTypeMap, directives = newDirectives }
	-- ROBLOX deviation START: hoisted to the top of the function scope
	-- local function rewireDirective(directive: GraphQLDirective): GraphQLDirective
	-- 	if Boolean.toJSBoolean(isSpecifiedDirective(directive)) then
	-- 		return directive
	-- 	end
	-- 	local directiveConfig = directive:toConfig()
	-- 	directiveConfig.args = rewireArgs(directiveConfig.args)
	-- 	return GraphQLDirective.new(directiveConfig)
	-- end
	-- local function rewireArgs(args: GraphQLFieldConfigArgumentMap): GraphQLFieldConfigArgumentMap
	-- 	local rewiredArgs = {}
	-- 	for argName in args do
	-- 		local arg = args[tostring(argName)]
	-- 		local rewiredArgType = rewireType(arg.type)
	-- 		if
	-- 			rewiredArgType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 		then
	-- 			arg.type = rewiredArgType
	-- 			rewiredArgs[tostring(argName)] = arg
	-- 		end
	-- 	end
	-- 	return rewiredArgs
	-- end
	-- local function rewireNamedType<T>(type_)
	-- 	if Boolean.toJSBoolean(isObjectType(type_)) then
	-- 		local config = (type_ :: GraphQLObjectType):toConfig()
	-- 		local newConfig = Object.assign({}, config, {
	-- 			fields = function()
	-- 				return rewireFields(config.fields)
	-- 			end,
	-- 			interfaces = function()
	-- 				return rewireNamedTypes(config.interfaces)
	-- 			end,
	-- 		})
	-- 		return GraphQLObjectType.new(newConfig)
	-- 	elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
	-- 		local config = (type_ :: GraphQLInterfaceType):toConfig()
	-- 		local newConfig: any = Object.assign({}, config, {
	-- 			fields = function()
	-- 				return rewireFields(config.fields)
	-- 			end,
	-- 		})
	-- 		if Array.indexOf(Object.keys(newConfig), "interfaces") ~= -1 then
	-- 			newConfig.interfaces = function(_self: any)
	-- 				return rewireNamedTypes(
	-- 					((config :: unknown) :: { interfaces: Array<GraphQLInterfaceType> }).interfaces
	-- 				)
	-- 			end
	-- 		end
	-- 		return GraphQLInterfaceType.new(newConfig)
	-- 	elseif Boolean.toJSBoolean(isUnionType(type_)) then
	-- 		local config = (type_ :: GraphQLUnionType):toConfig()
	-- 		local newConfig = Object.assign({}, config, {
	-- 			types = function()
	-- 				return rewireNamedTypes(config.types)
	-- 			end,
	-- 		})
	-- 		return GraphQLUnionType.new(newConfig)
	-- 	elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
	-- 		local config = (type_ :: GraphQLInputObjectType):toConfig()
	-- 		local newConfig = Object.assign({}, config, {
	-- 			fields = function()
	-- 				return rewireInputFields(config.fields)
	-- 			end,
	-- 		})
	-- 		return GraphQLInputObjectType.new(newConfig)
	-- 	elseif Boolean.toJSBoolean(isEnumType(type_)) then
	-- 		local enumConfig = (type_ :: GraphQLEnumType):toConfig()
	-- 		return GraphQLEnumType.new(enumConfig)
	-- 	elseif Boolean.toJSBoolean(isScalarType(type_)) then
	-- 		if Boolean.toJSBoolean(isSpecifiedScalarType(type_)) then
	-- 			return type_
	-- 		end
	-- 		local scalarConfig = (type_ :: GraphQLScalarType):toConfig()
	-- 		return GraphQLScalarType.new(scalarConfig)
	-- 	end
	-- 	error(Error.new(("Unexpected schema type: %s"):format(tostring((type_ :: unknown) :: string))))
	-- end
	-- local function rewireFields(fields: GraphQLFieldConfigMap<any, any>): GraphQLFieldConfigMap<any, any>
	-- 	local rewiredFields = {}
	-- 	for fieldName in fields do
	-- 		local field = fields[tostring(fieldName)]
	-- 		local rewiredFieldType = rewireType(field.type)
	-- 		if
	-- 			Boolean.toJSBoolean(
	-- 				rewiredFieldType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]] and field.args
	-- 			)
	-- 		then
	-- 			field.type = rewiredFieldType
	-- 			field.args = rewireArgs(field.args)
	-- 			rewiredFields[tostring(fieldName)] = field
	-- 		end
	-- 	end
	-- 	return rewiredFields
	-- end
	-- local function rewireInputFields(fields: GraphQLInputFieldConfigMap): GraphQLInputFieldConfigMap
	-- 	local rewiredFields = {}
	-- 	for fieldName in fields do
	-- 		local field = fields[tostring(fieldName)]
	-- 		local rewiredFieldType = rewireType(field.type)
	-- 		if
	-- 			rewiredFieldType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 		then
	-- 			field.type = rewiredFieldType
	-- 			rewiredFields[tostring(fieldName)] = field
	-- 		end
	-- 	end
	-- 	return rewiredFields
	-- end
	-- local function rewireNamedTypes<T>(namedTypes: Iterable<T>): Array<T>
	-- 	local rewiredTypes: Array<T> = {}
	-- 	for _, namedType in namedTypes do
	-- 		local rewiredType = rewireType(namedType)
	-- 		if
	-- 			rewiredType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 		then
	-- 			table.insert(rewiredTypes, rewiredType) --[[ ROBLOX CHECK: check if 'rewiredTypes' is an Array ]]
	-- 		end
	-- 	end
	-- 	return rewiredTypes
	-- end
	-- local function rewireType<T>(
	-- 	type_
	-- ): T | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	-- 	if Boolean.toJSBoolean(isListType(type_)) then
	-- 		local rewiredType = rewireType(type_.ofType)
	-- 		return if rewiredType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 			then GraphQLList.new(rewiredType) :: T
	-- 			else nil
	-- 	elseif Boolean.toJSBoolean(isNonNullType(type_)) then
	-- 		local rewiredType = rewireType(type_.ofType)
	-- 		return if rewiredType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 			then GraphQLNonNull.new(rewiredType) :: T
	-- 			else nil
	-- 	elseif Boolean.toJSBoolean(isNamedType(type_)) then
	-- 		local rewiredType = referenceTypeMap[tostring(type_.name)]
	-- 		if rewiredType == nil then
	-- 			rewiredType = if Boolean.toJSBoolean(isNamedStub(type_))
	-- 				then getBuiltInForStub(type_)
	-- 				else rewireNamedType(type_)
	-- 			referenceTypeMap[tostring(type_.name)] = rewiredType
	-- 			newTypeMap[tostring(rewiredType.name)] = referenceTypeMap[tostring(type_.name)]
	-- 		end
	-- 		return if rewiredType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 			then newTypeMap[tostring(rewiredType.name)] :: T
	-- 			else nil
	-- 	end
	-- 	return nil
	-- end
	-- ROBLOX deviation END
end
exports.rewireTypes = rewireTypes
return exports
