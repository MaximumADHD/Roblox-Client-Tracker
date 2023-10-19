-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/mapSchema.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLDirective = graphqlModule.GraphQLDirective
type GraphQLDirective = graphqlModule.GraphQLDirective
-- ROBLOX deviation END
local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation START: add import as type
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
-- ROBLOX deviation END
local GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation START: add import as type
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLType = graphqlModule.GraphQLType
type GraphQLType = graphqlModule.GraphQLType
-- ROBLOX deviation END
local isInterfaceType = graphqlModule.isInterfaceType
local isEnumType = graphqlModule.isEnumType
local isObjectType = graphqlModule.isObjectType
local isScalarType = graphqlModule.isScalarType
local isUnionType = graphqlModule.isUnionType
local isInputObjectType = graphqlModule.isInputObjectType
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLFieldConfig = graphqlModule.GraphQLFieldConfig
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
-- ROBLOX deviation END
local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- ROBLOX deviation START: add import as type
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- ROBLOX deviation END
local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation START: add import as type
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
-- local GraphQLObjectTypeConfig = graphqlModule.GraphQLObjectTypeConfig
-- local GraphQLInterfaceTypeConfig = graphqlModule.GraphQLInterfaceTypeConfig
-- local GraphQLInputObjectTypeConfig = graphqlModule.GraphQLInputObjectTypeConfig
type GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
type GraphQLObjectTypeConfig<TSource, TContext> = graphqlModule.GraphQLObjectTypeConfig<TSource, TContext>
type GraphQLInterfaceTypeConfig<TSource, TContext> = graphqlModule.GraphQLInterfaceTypeConfig<TSource, TContext>
type GraphQLInputObjectTypeConfig = graphqlModule.GraphQLInputObjectTypeConfig
-- ROBLOX deviation END
local isLeafType = graphqlModule.isLeafType
local isListType = graphqlModule.isListType
local isNonNullType = graphqlModule.isNonNullType
local isNamedType = graphqlModule.isNamedType
local GraphQLList = graphqlModule.GraphQLList
local GraphQLNonNull = graphqlModule.GraphQLNonNull
local GraphQLEnumType = graphqlModule.GraphQLEnumType
-- ROBLOX deviation START: add import as type
type GraphQLEnumType = graphqlModule.GraphQLEnumType
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
-- local FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type instead of local
-- local EnumValueDefinitionNode = graphqlModule.EnumValueDefinitionNode
type EnumValueDefinitionNode = graphqlModule.EnumValueDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local getObjectTypeFromTypeMap = require(script.Parent["getObjectTypeFromTypeMap.js"]).getObjectTypeFromTypeMap
-- local interfacesJsModule = require(script.Parent["Interfaces.js"])
local getObjectTypeFromTypeMap = require(script.Parent.getObjectTypeFromTypeMap).getObjectTypeFromTypeMap
local interfacesJsModule = require(script.Parent.Interfaces)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local SchemaMapper = interfacesJsModule.SchemaMapper
type SchemaMapper = interfacesJsModule.SchemaMapper
-- ROBLOX deviation END
local MapperKind = interfacesJsModule.MapperKind
-- ROBLOX deviation START: add import as type
type MapperKind = interfacesJsModule.MapperKind
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local NamedTypeMapper = interfacesJsModule.NamedTypeMapper
-- local DirectiveMapper = interfacesJsModule.DirectiveMapper
-- local GenericFieldMapper = interfacesJsModule.GenericFieldMapper
-- local IDefaultValueIteratorFn = interfacesJsModule.IDefaultValueIteratorFn
-- local ArgumentMapper = interfacesJsModule.ArgumentMapper
-- local EnumValueMapper = interfacesJsModule.EnumValueMapper
-- local SchemaFieldMapperTypes = interfacesJsModule.SchemaFieldMapperTypes
type NamedTypeMapper = interfacesJsModule.NamedTypeMapper
type DirectiveMapper = interfacesJsModule.DirectiveMapper
type GenericFieldMapper<F> = interfacesJsModule.GenericFieldMapper<F>
type IDefaultValueIteratorFn = interfacesJsModule.IDefaultValueIteratorFn
type ArgumentMapper = interfacesJsModule.ArgumentMapper
type EnumValueMapper = interfacesJsModule.EnumValueMapper
type SchemaFieldMapperTypes = interfacesJsModule.SchemaFieldMapperTypes
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local rewireTypes = require(script.Parent["rewire.js"]).rewireTypes
-- local transformInputValueJsModule = require(script.Parent["transformInputValue.js"])
local rewireTypes = require(script.Parent.rewire).rewireTypes
local transformInputValueJsModule = require(script.Parent.transformInputValue)
-- ROBLOX deviation END
local serializeInputValue = transformInputValueJsModule.serializeInputValue
local parseInputValue = transformInputValueJsModule.parseInputValue
-- ROBLOX deviation START: add additional imports
type GraphQLEnumValueConfig = graphqlModule.GraphQLEnumValueConfig
type GraphQLInputObjectTypeNormalizedConfig = Object
type GraphQLArgumentConfig = graphqlModule.GraphQLArgumentConfig
local Map = LuauPolyfill.Map
type Object = LuauPolyfill.Object
type ReadonlyArray<T> = Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
local String = LuauPolyfill.String
-- ROBLOX deviation END
-- ROBLOX deviation START: add predeclared variables
local mapTypes: (
	originalTypeMap: Map<string, GraphQLNamedType>,
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper,
	testFn: ((originalType: GraphQLNamedType) -> boolean)?
) -> Map<string, GraphQLNamedType>
local mapArguments: (
	originalTypeMap: Map<string, GraphQLNamedType>,
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
) -> Map<string, GraphQLNamedType>
local mapFields: (
	originalTypeMap: Map<string, GraphQLNamedType>,
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
) -> Map<string, GraphQLNamedType>
local mapDefaultValues: (
	originalTypeMap: Map<string, GraphQLNamedType>,
	schema: GraphQLSchema,
	fn: IDefaultValueIteratorFn
) -> Map<string, GraphQLNamedType>
local mapEnumValues: (
	originalTypeMap: Map<string, GraphQLNamedType>,
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
) -> Map<string, GraphQLNamedType>
local getEnumValueMapper: (schemaMapper: SchemaMapper) -> EnumValueMapper | nil
local getDirectiveMapper: (schemaMapper: SchemaMapper) -> DirectiveMapper | nil
local mapDirectives: (
	originalDirectives: ReadonlyArray<GraphQLDirective>,
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
) -> Array<GraphQLDirective>
local getFieldMapper: <F>(schema: GraphQLSchema, schemaMapper: SchemaMapper, typeName: string) -> GenericFieldMapper<F> | nil
local getTypeMapper: (schema: GraphQLSchema, schemaMapper: SchemaMapper, typeName: string) -> NamedTypeMapper | nil
local getArgumentMapper: (schemaMapper: SchemaMapper) -> ArgumentMapper | nil
local getNewType: <T>(newTypeMap: Map<string, GraphQLNamedType>, type_: T) -> T | nil
local correctASTNodes: (type_: GraphQLNamedType) -> GraphQLNamedType
-- ROBLOX deviation END
local function mapSchema(schema: GraphQLSchema, schemaMapper_: SchemaMapper?): GraphQLSchema
	local schemaMapper: SchemaMapper = if schemaMapper_ ~= nil then schemaMapper_ else {}
	local newTypeMap = mapArguments(
		mapFields(
			mapTypes(
				mapDefaultValues(
					mapEnumValues(
						mapTypes(
							mapDefaultValues(schema:getTypeMap(), schema, serializeInputValue),
							schema,
							schemaMapper,
							function(type_)
								return isLeafType(type_)
							end
						),
						schema,
						schemaMapper
					),
					schema,
					parseInputValue
				),
				schema,
				schemaMapper,
				function(type_)
					return not Boolean.toJSBoolean(isLeafType(type_))
				end
			),
			schema,
			schemaMapper
		),
		schema,
		schemaMapper
	)
	local originalDirectives = schema:getDirectives()
	local newDirectives = mapDirectives(originalDirectives, schema, schemaMapper)
	-- ROBLOX deviation START: simplify
	-- 	local typeMap, directives
	-- 	do
	-- 		local ref = rewireTypes(newTypeMap, newDirectives)
	-- 		typeMap, directives = ref.typeMap, ref.directives
	-- 	end
	local ref = rewireTypes(newTypeMap :: any, newDirectives)
	local typeMap, directives = ref.typeMap, ref.directives
	-- ROBLOX deviation END
	return GraphQLSchema.new(Object.assign({}, schema:toConfig(), {
		-- ROBLOX deviation START: add fallback to Object.None
		-- 		query = getObjectTypeFromTypeMap(typeMap, getObjectTypeFromTypeMap(newTypeMap, schema:getQueryType())),
		-- 		mutation = getObjectTypeFromTypeMap(typeMap, getObjectTypeFromTypeMap(newTypeMap, schema:getMutationType())),
		query = getObjectTypeFromTypeMap(typeMap, getObjectTypeFromTypeMap(newTypeMap, schema:getQueryType()))
			or Object.None,
		mutation = getObjectTypeFromTypeMap(typeMap, getObjectTypeFromTypeMap(newTypeMap, schema:getMutationType()))
			or Object.None,
		-- ROBLOX deviation END
		subscription = getObjectTypeFromTypeMap(
			typeMap,
			getObjectTypeFromTypeMap(newTypeMap, schema:getSubscriptionType())
			-- ROBLOX deviation START: cast type & add fallback to Object.None
			-- 		),
			-- 		types = Object.values(typeMap),
			-- 		directives = directives,
		) or Object.None,
		types = typeMap:values() or Object.None,
		directives = directives or Object.None,
		-- ROBLOX deviation END
	}))
end
exports.mapSchema = mapSchema
-- ROBLOX deviation START: predeclared function
-- local function mapTypes(
function mapTypes(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: change type to Map
	-- originalTypeMap: Record<string, GraphQLNamedType>,
	originalTypeMap: Map<string, GraphQLNamedType>,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper,
	testFn_: ((originalType: GraphQLNamedType) -> boolean)?
	-- ROBLOX deviation START: change type to Map
	-- ): Record<string, GraphQLNamedType>
): Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	local testFn: (originalType: GraphQLNamedType) -> boolean = if testFn_ ~= nil
		then testFn_
		else function()
			return true
		end
	-- ROBLOX deviation START: use actual Map & properly use String:startsWith
	-- local newTypeMap = {}
	-- 	for typeName in originalTypeMap do
	-- 		if not Boolean.toJSBoolean(typeName:startsWith("__")) then
	-- 			local originalType = originalTypeMap[tostring(typeName)]
	-- 			if
	-- 				originalType == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	-- 				or not Boolean.toJSBoolean(testFn(originalType))
	-- 			then
	-- 				newTypeMap[tostring(typeName)] = originalType
	local newTypeMap = Map.new()
	for _, ref in originalTypeMap do
		local typeName = table.unpack(ref)
		if not String.startsWith(typeName, "__") then
			local originalType = originalTypeMap:get(typeName)
			if (originalType == nil or originalType == Object.None) or not testFn(originalType) then
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			local typeMapper = getTypeMapper(schema, schemaMapper, typeName)
			if
				typeMapper == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				-- ROBLOX deviation START: add check for Object.None
				or typeMapper == Object.None
				-- ROBLOX deviation END
			then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = originalType
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			-- ROBLOX deviation START: cast to any (already checked value is not nil)
			-- local maybeNewType = typeMapper(originalType, schema)
			local maybeNewType = (typeMapper :: any)(originalType, schema)
			-- ROBLOX deviation END
			if maybeNewType == nil then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = originalType
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			-- ROBLOX deviation START: newTypeMap is a Map
			-- newTypeMap[tostring(typeName)] = maybeNewType
			newTypeMap:set(typeName, maybeNewType)
			-- ROBLOX deviation END
		end
	end
	return newTypeMap
end
-- ROBLOX deviation START: predeclared function
-- local function mapEnumValues(
function mapEnumValues(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: change type to Map
	-- originalTypeMap: Record<string, GraphQLNamedType>,
	originalTypeMap: Map<string, GraphQLNamedType>,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
	-- ROBLOX deviation START: change type to Map
	-- ): Record<string, GraphQLNamedType>
): Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	local enumValueMapper = getEnumValueMapper(schemaMapper)
	if not Boolean.toJSBoolean(enumValueMapper) then
		return originalTypeMap
	end
	-- ROBLOX deviation START: wrap with parentheses in order to cast return type
	-- return mapTypes(originalTypeMap, schema, {
	return mapTypes(
		originalTypeMap,
		schema,
		(
				{
					-- ROBLOX deviation END
					[tostring(MapperKind.ENUM_TYPE)] = function(type_)
						local config = type_:toConfig()
						local originalEnumValueConfigMap = config.values
						-- ROBLOX deviation START: use actual Map and cast to any (already checked value is not nil)
						-- local newEnumValueConfigMap = {}
						-- 						for externalValue in originalEnumValueConfigMap do
						-- 							local originalEnumValueConfig = originalEnumValueConfigMap[tostring(externalValue)]
						-- 							local mappedEnumValue =
						-- 								enumValueMapper(originalEnumValueConfig, type_.name, schema, externalValue)
						local newEnumValueConfigMap = Map.new()
						for _, ref in originalEnumValueConfigMap do
							local externalValue = table.unpack(ref)
							local originalEnumValueConfig = originalEnumValueConfigMap:get(externalValue)
							-- ROBLOX FIXME Luau: already checked value is not nil
							local mappedEnumValue = (enumValueMapper :: any)(
								originalEnumValueConfig,
								type_.name,
								schema,
								externalValue
							)
							-- ROBLOX deviation END
							if mappedEnumValue == nil then
								-- ROBLOX deviation START: newEnumValueConfigMap is a Map
								-- newEnumValueConfigMap[tostring(externalValue)] = originalEnumValueConfig
								newEnumValueConfigMap:set(externalValue, originalEnumValueConfig)
								-- ROBLOX deviation END
							elseif Boolean.toJSBoolean(Array.isArray(mappedEnumValue)) then
								local newExternalValue, newEnumValueConfig = table.unpack(mappedEnumValue, 1, 2)
								-- ROBLOX deviation START: newEnumValueConfigMap is a Map
								-- newEnumValueConfigMap[tostring(newExternalValue)] = if newEnumValueConfig == nil
								-- 									then originalEnumValueConfig
								-- 									else newEnumValueConfig
								-- 							elseif mappedEnumValue ~= nil then
								-- 								newEnumValueConfigMap[tostring(externalValue)] = mappedEnumValue
								newEnumValueConfigMap:set(
									newExternalValue,
									if newEnumValueConfig == nil then originalEnumValueConfig else newEnumValueConfig
								)
							elseif mappedEnumValue ~= Object.None then
								newEnumValueConfigMap:set(externalValue, mappedEnumValue)
								-- ROBLOX deviation END
							end
						end
						return correctASTNodes(
							GraphQLEnumType.new(Object.assign({}, config, { values = newEnumValueConfigMap }))
							-- ROBLOX deviation START: output type depends arguments, adding explicit cast
							-- )
						) :: GraphQLEnumType
						-- ROBLOX deviation END
					end,
					-- ROBLOX deviation START: cast returns
					-- }, function(type_)
				} :: any
			) :: SchemaMapper,
		function(type_)
			-- ROBLOX deviation END
			return isEnumType(type_)
		end
	)
end
-- ROBLOX deviation START: predeclared function
-- local function mapDefaultValues(
function mapDefaultValues(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: use Map instead of Record
	-- originalTypeMap: Record<string, GraphQLNamedType>,
	originalTypeMap: Map<string, GraphQLNamedType>,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	fn: IDefaultValueIteratorFn
	-- ROBLOX deviation START: use Map instead of Record
	-- ): Record<string, GraphQLNamedType>
): Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	-- ROBLOX deviation START: wrap with parentheses in order to cast return type
	-- local newTypeMap = mapArguments(originalTypeMap, schema, {
	local newTypeMap = mapArguments(
		originalTypeMap,
		schema,
		(
				{
					-- ROBLOX deviation END
					-- ROBLOX deviation START: cast to any
					-- [tostring(MapperKind.ARGUMENT)] = function(argumentConfig)
					[MapperKind.ARGUMENT] = function(argumentConfig: GraphQLArgumentConfig): any?
						-- ROBLOX deviation END
						if argumentConfig.defaultValue == nil then
							return argumentConfig
						end
						local maybeNewType = getNewType(originalTypeMap, argumentConfig.type)
						if
							maybeNewType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
						then
							return Object.assign(
								{},
								argumentConfig,
								{ defaultValue = fn(maybeNewType, argumentConfig.defaultValue) }
							)
						end
						-- ROBLOX deviation START: add explicit return
						return nil
						-- ROBLOX deviation END
					end,
					-- ROBLOX deviation START: cast returns
					-- })
				} :: any
			) :: SchemaMapper
	)
	-- ROBLOX deviation END
	-- ROBLOX deviation START: wrap with parentheses in order to cast return type
	-- return mapFields(newTypeMap, schema, {
	return mapFields(
		newTypeMap,
		schema,
		(
				{
					-- ROBLOX deviation END
					-- ROBLOX deviation START: loosen return type
					-- [tostring(MapperKind.INPUT_OBJECT_FIELD)] = function(inputFieldConfig)
					[MapperKind.INPUT_OBJECT_FIELD] = function(inputFieldConfig: GraphQLInputFieldConfig): any?
						-- ROBLOX deviation END
						if inputFieldConfig.defaultValue == nil then
							return inputFieldConfig
						end
						local maybeNewType = getNewType(newTypeMap, inputFieldConfig.type)
						if
							maybeNewType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
						then
							return Object.assign(
								{},
								inputFieldConfig,
								{ defaultValue = fn(maybeNewType, inputFieldConfig.defaultValue) }
							)
						end
						-- ROBLOX deviation START: add explicit return
						return nil
						-- ROBLOX deviation END
					end,
					-- ROBLOX deviation START: cast returns
					-- })
				} :: any
			) :: SchemaMapper
	)
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: use Map instead of Record
-- local function getNewType<T>(
-- 	newTypeMap: Record<string, GraphQLNamedType>,
-- 	type_
-- ): T | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
function getNewType<T>(newTypeMap: Map<string, GraphQLNamedType>, type_: T): T | nil
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(isListType(type_)) then
		-- ROBLOX deviation START: cast type
		-- local newType = getNewType(newTypeMap, type_.ofType)
		local newType = getNewType(newTypeMap, (type_ :: GraphQLType).ofType)
		-- ROBLOX deviation END
		return if newType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then GraphQLList.new(newType) :: T
			else nil
	elseif Boolean.toJSBoolean(isNonNullType(type_)) then
		-- ROBLOX deviation START: cast type
		-- local newType = getNewType(newTypeMap, type_.ofType)
		local newType = getNewType(newTypeMap, (type_ :: GraphQLType).ofType)
		-- ROBLOX deviation END
		return if newType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then GraphQLNonNull.new(newType) :: T
			else nil
	elseif Boolean.toJSBoolean(isNamedType(type_)) then
		-- ROBLOX deviation START: newTypeMap is a Map
		-- local newType = newTypeMap[tostring(type_.name)]
		local newType = newTypeMap:get((type_ :: GraphQLType).name)
		-- ROBLOX deviation END
		return if newType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			-- ROBLOX deviation START: cast to any
			-- then newType :: T
			then (newType :: any) :: T
			-- ROBLOX deviation END
			else nil
	end
	return nil
end
-- ROBLOX deviation START: predeclared function
-- local function mapFields(
function mapFields(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: use Map instead of Record
	-- originalTypeMap: Record<string, GraphQLNamedType>,
	originalTypeMap: Map<string, GraphQLNamedType>,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
	-- ROBLOX deviation START: use Map instead of Record
	-- ): Record<string, GraphQLNamedType>
): Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	-- ROBLOX deviation START: newTypeMap is a Map
	-- 	local newTypeMap = {}
	-- 	for typeName in originalTypeMap do
	local newTypeMap = Map.new()
	for _, ref in originalTypeMap do
		local typeName = table.unpack(ref)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix startsWith usage
		-- if not Boolean.toJSBoolean(typeName:startsWith("__")) then
		if not String.startsWith(typeName, "__") then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: originalTypeMap is a Map
			-- local originalType = originalTypeMap[tostring(typeName)]
			local originalType = originalTypeMap:get(typeName) :: GraphQLNamedType
			-- ROBLOX deviation END
			if
				not Boolean.toJSBoolean(isObjectType(originalType))
				and not Boolean.toJSBoolean(isInterfaceType(originalType))
				and not Boolean.toJSBoolean(isInputObjectType(originalType))
			then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = originalType
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			local fieldMapper = getFieldMapper(schema, schemaMapper, typeName)
			if
				fieldMapper == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				-- ROBLOX deviation START: add check for Object.None
				or fieldMapper == Object.None
				-- ROBLOX deviation END
			then
				-- ROBLOX deviation START: new
				-- newTypeMap[tostring(typeName)] = originalType
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			-- ROBLOX deviation START: cast to any
			-- local config = originalType:toConfig()
			local config = (originalType :: any):toConfig()
			-- ROBLOX deviation END
			local originalFieldConfigMap = config.fields
			-- ROBLOX deviation START: newFieldConfigMap is a Map
			-- local newFieldConfigMap = {}
			-- 			for fieldName in originalFieldConfigMap do
			local newFieldConfigMap = Map.new()
			for _, ref in originalFieldConfigMap do
				local fieldName = table.unpack(ref)
				-- ROBLOX deviation END
				-- ROBLOX deviation START: originalFieldConfigMap is a Map
				-- local originalFieldConfig = originalFieldConfigMap[tostring(fieldName)]
				local originalFieldConfig = originalFieldConfigMap:get(fieldName)
				-- ROBLOX deviation END
				-- ROBLOX deviation START: cast to any (already checked it's not nil)
				-- local mappedField = fieldMapper(originalFieldConfig, fieldName, typeName, schema)
				local mappedField = (fieldMapper :: any)(originalFieldConfig, fieldName, typeName, schema)
				-- ROBLOX deviation END
				if mappedField == nil then
					-- ROBLOX deviation START: newFieldConfigMap is a Map
					-- newFieldConfigMap[tostring(fieldName)] = originalFieldConfig
					newFieldConfigMap:set(fieldName, originalFieldConfig)
					-- ROBLOX deviation END
				elseif Boolean.toJSBoolean(Array.isArray(mappedField)) then
					local newFieldName, newFieldConfig = table.unpack(mappedField, 1, 2)
					if
						newFieldConfig.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
						-- ROBLOX deviation START: add check for Object.None
						and newFieldConfig.astNode ~= Object.None
						-- ROBLOX deviation END
					then
						-- ROBLOX deviation START: cast types
						-- newFieldConfig.astNode = Object.assign({}, newFieldConfig.astNode, {
						(newFieldConfig :: Object).astNode = Object.assign({}, (newFieldConfig :: Object).astNode, {
							-- ROBLOX deviation END
							name = Object.assign({}, newFieldConfig.astNode.name, { value = newFieldName }),
						})
					end
					-- ROBLOX deviation START: newFieldConfigMap is a Map
					-- 					newFieldConfigMap[tostring(newFieldName)] = if newFieldConfig == nil
					-- 						then originalFieldConfig
					-- 						else newFieldConfig
					newFieldConfigMap:set(
						newFieldName,
						if newFieldConfig == nil then originalFieldConfig else newFieldConfig
					)
				-- ROBLOX deviation END
				-- ROBLOX deviation START: check for Object.None instead of nil
				-- elseif mappedField ~= nil then
				elseif mappedField ~= Object.None then
					-- ROBLOX deviation END
					-- ROBLOX deviation START: newFieldConfigMap is a Map
					-- newFieldConfigMap[tostring(fieldName)] = mappedField
					newFieldConfigMap:set(fieldName, mappedField)
					-- ROBLOX deviation END
				end
			end
			if Boolean.toJSBoolean(isObjectType(originalType)) then
				-- ROBLOX deviation START: newTypeMap is a Map & set explicit casts
				-- 				newTypeMap[tostring(typeName)] = correctASTNodes(
				newTypeMap:set(
					typeName,
					correctASTNodes(
						-- ROBLOX deviation END
						GraphQLObjectType.new(
							Object.assign(
								{},
								config :: GraphQLObjectTypeConfig<any, any>,
								{ fields = newFieldConfigMap }
							)
						)
						-- ROBLOX deviation START: add explicit cast
					) :: GraphQLObjectType
					-- ROBLOX deviation END
				)
			elseif Boolean.toJSBoolean(isInterfaceType(originalType)) then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = correctASTNodes(
				newTypeMap:set(
					typeName,
					correctASTNodes(
						-- ROBLOX deviation END
						GraphQLInterfaceType.new(
							Object.assign(
								{},
								config :: GraphQLInterfaceTypeConfig<any, any>,
								{ fields = newFieldConfigMap }
							)
						)
						-- ROBLOX deviation START: add explicit cast
					) :: GraphQLInterfaceType
					-- ROBLOX deviation END
				)
			else
				-- ROBLOX deviation START: newTypeMap is a Map & set explicit casts
				-- 				newTypeMap[tostring(typeName)] = correctASTNodes(
				newTypeMap:set(
					typeName,
					correctASTNodes(
						-- ROBLOX deviation END
						GraphQLInputObjectType.new(
							Object.assign({}, config :: GraphQLInputObjectTypeConfig, { fields = newFieldConfigMap })
						)
						-- ROBLOX deviation START: add explicit cast
					) :: GraphQLInputObjectType
					-- ROBLOX deviation END
				)
			end
		end
	end
	return newTypeMap
end
-- ROBLOX deviation START: predeclared function
-- local function mapArguments(
function mapArguments(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: use Map instead of Record
	-- originalTypeMap: Record<string, GraphQLNamedType>,
	originalTypeMap: Map<string, GraphQLNamedType>,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
	-- ROBLOX deviation START: use Map instead of Record
	-- ): Record<string, GraphQLNamedType>
): Map<string, GraphQLNamedType>
	-- ROBLOX deviation END
	-- ROBLOX deviation START: newTypeMap is a Map
	-- 	local newTypeMap = {}
	-- 	for typeName in originalTypeMap do
	local newTypeMap = Map.new()
	for _, ref in originalTypeMap do
		local typeName = table.unpack(ref)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix startsWith usage
		-- if not Boolean.toJSBoolean(typeName:startsWith("__")) then
		if not String.startsWith(typeName, "__") then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: originalTypeMap is a Map
			-- local originalType = originalTypeMap[tostring(typeName)]
			local originalType = originalTypeMap:get(typeName) :: GraphQLNamedType
			-- ROBLOX deviation END
			if
				not Boolean.toJSBoolean(isObjectType(originalType))
				and not Boolean.toJSBoolean(isInterfaceType(originalType))
			then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = originalType
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			local argumentMapper = getArgumentMapper(schemaMapper)
			if
				argumentMapper == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				-- ROBLOX deviation START: add check for Object.None
				or argumentMapper == Object.None
				-- ROBLOX deviation END
			then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = originalType
				newTypeMap:set(typeName, originalType)
				-- ROBLOX deviation END
				continue
			end
			-- ROBLOX deviation START: cannot call union of functions - cast to any
			-- local config = originalType:toConfig()
			local config = (originalType :: any):toConfig()
			-- ROBLOX deviation END
			local originalFieldConfigMap = config.fields
			-- ROBLOX deviation START: newFieldConfigMap is a Map
			-- local newFieldConfigMap = {}
			local newFieldConfigMap = Map.new()
			-- ROBLOX deviation END
			-- ROBLOX deviation START: originalFieldConfigMap is a Map
			-- 			for fieldName in originalFieldConfigMap do
			-- 				local originalFieldConfig = originalFieldConfigMap[tostring(fieldName)]
			for _, ref in originalFieldConfigMap do
				local fieldName = table.unpack(ref)
				local originalFieldConfig = originalFieldConfigMap:get(fieldName)
				-- ROBLOX deviation END
				local originalArgumentConfigMap = originalFieldConfig.args
				if
					originalArgumentConfigMap == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
					-- ROBLOX deviation START: add check for Object.None
					or originalArgumentConfigMap == Object.None
					-- ROBLOX deviation END
				then
					-- ROBLOX deviation START: newFieldConfigMap is a Map
					-- newFieldConfigMap[tostring(fieldName)] = originalFieldConfig
					newFieldConfigMap:set(fieldName, originalFieldConfig)
					-- ROBLOX deviation END
					continue
				end
				-- ROBLOX deviation START: originalArgumentConfigMap is a Map
				-- local argumentNames = Object.keys(originalArgumentConfigMap)
				local argumentNames = originalArgumentConfigMap:keys()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: fix array length check
				-- if not Boolean.toJSBoolean(argumentNames.length) then
				if not (#argumentNames > 0) then
					-- ROBLOX deviation END
					-- ROBLOX deviation START: newFieldConfigMap is a Map
					-- newFieldConfigMap[tostring(fieldName)] = originalFieldConfig
					newFieldConfigMap:set(fieldName, originalFieldConfig)
					-- ROBLOX deviation END
					continue
				end
				-- ROBLOX deviation START: newArgumentConfigMap is a Map
				-- local newArgumentConfigMap = {}
				local newArgumentConfigMap = Map.new()
				-- ROBLOX deviation END
				for _, argumentName in argumentNames do
					-- ROBLOX deviation START: originalArgumentConfigMap is a Map
					-- local originalArgumentConfig = originalArgumentConfigMap[tostring(argumentName)]
					local originalArgumentConfig = originalArgumentConfigMap:get(argumentName)
					-- ROBLOX deviation END
					-- ROBLOX deviation START: already checked argumentMapper is not nil - cast to any
					-- local mappedArgument = argumentMapper(originalArgumentConfig, fieldName, typeName, schema)
					local mappedArgument = (argumentMapper :: any)(originalArgumentConfig, fieldName, typeName, schema)
					-- ROBLOX deviation END
					if mappedArgument == nil then
						-- ROBLOX deviation START: newArgumentConfigMap is a Map
						-- newArgumentConfigMap[tostring(argumentName)] = originalArgumentConfig
						newArgumentConfigMap:set(argumentName, originalArgumentConfig)
						-- ROBLOX deviation END
					elseif Boolean.toJSBoolean(Array.isArray(mappedArgument)) then
						local newArgumentName, newArgumentConfig = table.unpack(mappedArgument, 1, 2)
						-- ROBLOX deviation START: newArgumentConfigMap is a Map
						-- newArgumentConfigMap[tostring(newArgumentName)] = newArgumentConfig
						newArgumentConfigMap:set(newArgumentName, newArgumentConfig)
						-- ROBLOX deviation END
						-- ROBLOX deviation START: check for Object.None instead of nil
						-- elseif mappedArgument ~= nil then
					elseif mappedArgument ~= Object.None then
						-- ROBLOX deviation END
						-- ROBLOX deviation START: newArgumentConfigMap is a Map
						-- newArgumentConfigMap[tostring(argumentName)] = mappedArgument
						newArgumentConfigMap:set(argumentName, mappedArgument)
						-- ROBLOX deviation END
					end
				end
				-- ROBLOX deviation START: newFieldConfigMap is a Map
				-- newFieldConfigMap[tostring(fieldName)] = Object.assign(
				newFieldConfigMap:set(
					fieldName,
					Object.assign(
						-- ROBLOX deviation END
						{},
						originalFieldConfig,
						{ args = newArgumentConfigMap }
						-- ROBLOX deviation START: add closing bracket
					)
					-- ROBLOX deviation END
				)
			end
			if Boolean.toJSBoolean(isObjectType(originalType)) then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- 				newTypeMap[tostring(typeName)] = GraphQLObjectType.new(
				newTypeMap:set(
					typeName,
					GraphQLObjectType.new(
						-- ROBLOX deviation END
						Object.assign(
							{},
							(config :: unknown) :: GraphQLObjectTypeConfig<any, any>,
							{ fields = newFieldConfigMap }
						)
					)
					-- ROBLOX deviation START: add closing bracket
				)
			-- ROBLOX deviation END
			elseif Boolean.toJSBoolean(isInterfaceType(originalType)) then
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = GraphQLInterfaceType.new(
				newTypeMap:set(
					typeName,
					GraphQLInterfaceType.new(
						-- ROBLOX deviation END
						Object.assign(
							{},
							(config :: unknown) :: GraphQLInterfaceTypeConfig<any, any>,
							{ fields = newFieldConfigMap }
						)
					)
					-- ROBLOX deviation START: add closing bracket
				)
				-- ROBLOX deviation END
			else
				-- ROBLOX deviation START: newTypeMap is a Map
				-- newTypeMap[tostring(typeName)] = GraphQLInputObjectType.new(
				newTypeMap:set(
					typeName,
					GraphQLInputObjectType.new(
						-- ROBLOX deviation END
						Object.assign(
							{},
							(config :: unknown) :: GraphQLInputObjectTypeConfig,
							{ fields = newFieldConfigMap }
						)
					)
					-- ROBLOX deviation START: add closing bracket
				)
				-- ROBLOX deviation END
			end
		end
	end
	return newTypeMap
end
-- ROBLOX deviation START: predeclared function
-- local function mapDirectives(
function mapDirectives(
	-- ROBLOX deviation END
	originalDirectives: ReadonlyArray<GraphQLDirective>,
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper
): Array<GraphQLDirective>
	local directiveMapper = getDirectiveMapper(schemaMapper)
	if
		directiveMapper == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		-- ROBLOX deviation START: add check for Object.None
		or directiveMapper == Object.None
		-- ROBLOX deviation END
	then
		return Array.slice(originalDirectives) --[[ ROBLOX CHECK: check if 'originalDirectives' is an Array ]]
	end
	local newDirectives: Array<GraphQLDirective> = {}
	for _, directive in originalDirectives do
		-- ROBLOX deviation START: already checked directiveMapper is not nil - cast to any
		-- local mappedDirective = directiveMapper(directive, schema)
		local mappedDirective = (directiveMapper :: any)(directive, schema)
		-- ROBLOX deviation END
		if mappedDirective == nil then
			table.insert(newDirectives, directive) --[[ ROBLOX CHECK: check if 'newDirectives' is an Array ]]
		-- ROBLOX deviation START: check for Object.None instead of nil
		-- elseif mappedDirective ~= nil then
		elseif mappedDirective ~= Object.None then
			-- ROBLOX deviation END
			table.insert(newDirectives, mappedDirective) --[[ ROBLOX CHECK: check if 'newDirectives' is an Array ]]
		end
	end
	return newDirectives
end
local function getTypeSpecifiers(schema: GraphQLSchema, typeName: string): Array<MapperKind>
	local type_ = schema:getType(typeName)
	-- ROBLOX deviation START: explicit cast
	-- local specifiers = { MapperKind.TYPE }
	local specifiers = { MapperKind.TYPE } :: Array<MapperKind>
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(isObjectType(type_)) then
		-- ROBLOX deviation START: fix Array.concat implementation
		-- Array.concat(specifiers, { MapperKind.COMPOSITE_TYPE, MapperKind.OBJECT_TYPE }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
		specifiers = Array.concat(specifiers, { MapperKind.COMPOSITE_TYPE, MapperKind.OBJECT_TYPE })
		-- ROBLOX deviation END
		-- ROBLOX deviation START: explicit type
		-- if typeName == (if typeof(schema:getQueryType()) == "table" then schema:getQueryType().name else nil) then
		if
			typeName
			== (
				if typeof(schema:getQueryType()) == "table"
					then (schema:getQueryType() :: GraphQLObjectType).name
					else nil
			)
		then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix Array.concat implementation
			-- Array.concat(specifiers, { MapperKind.ROOT_OBJECT, MapperKind.QUERY }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
			specifiers = Array.concat(specifiers, { MapperKind.ROOT_OBJECT, MapperKind.QUERY })
			-- ROBLOX deviation END
		elseif
			-- ROBLOX deviation START: explicit type
			-- typeName == (if typeof(schema:getMutationType()) == "table" then schema:getMutationType().name else nil)
			typeName
			== (
				if typeof(schema:getMutationType()) == "table"
					then (schema:getMutationType() :: GraphQLObjectType).name
					else nil
			)
			-- ROBLOX deviation END
		then
			-- ROBLOX deviation START: fix Array.concat implementation
			-- Array.concat(specifiers, { MapperKind.ROOT_OBJECT, MapperKind.MUTATION }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
			specifiers = Array.concat(specifiers, { MapperKind.ROOT_OBJECT, MapperKind.MUTATION })
			-- ROBLOX deviation END
		elseif
			typeName
			-- ROBLOX deviation START: explicit type
			-- == (if typeof(schema:getSubscriptionType()) == "table" then schema:getSubscriptionType().name else nil)
			== (
				if typeof(schema:getSubscriptionType()) == "table"
					then (schema:getSubscriptionType() :: GraphQLObjectType).name
					else nil
			)
			-- ROBLOX deviation END
		then
			-- ROBLOX deviation START: fix Array.concat implementation
			-- Array.concat(specifiers, { MapperKind.ROOT_OBJECT, MapperKind.SUBSCRIPTION }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
			specifiers = Array.concat(specifiers, { MapperKind.ROOT_OBJECT, MapperKind.SUBSCRIPTION })
			-- ROBLOX deviation END
		end
	elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
		table.insert(specifiers, MapperKind.INPUT_OBJECT_TYPE) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
	elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
		-- ROBLOX deviation START: fix Array.concat implementation
		-- Array.concat(specifiers, { MapperKind.COMPOSITE_TYPE, MapperKind.ABSTRACT_TYPE, MapperKind.INTERFACE_TYPE }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
		specifiers =
			Array.concat(specifiers, { MapperKind.COMPOSITE_TYPE, MapperKind.ABSTRACT_TYPE, MapperKind.INTERFACE_TYPE })
		-- ROBLOX deviation END
	elseif Boolean.toJSBoolean(isUnionType(type_)) then
		-- ROBLOX deviation START: fix Array.concat implementation
		-- Array.concat(specifiers, { MapperKind.COMPOSITE_TYPE, MapperKind.ABSTRACT_TYPE, MapperKind.UNION_TYPE }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
		specifiers =
			Array.concat(specifiers, { MapperKind.COMPOSITE_TYPE, MapperKind.ABSTRACT_TYPE, MapperKind.UNION_TYPE })
		-- ROBLOX deviation END
	elseif Boolean.toJSBoolean(isEnumType(type_)) then
		table.insert(specifiers, MapperKind.ENUM_TYPE) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
	elseif Boolean.toJSBoolean(isScalarType(type_)) then
		table.insert(specifiers, MapperKind.SCALAR_TYPE) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
	end
	return specifiers
end
-- ROBLOX deviation START: predeclared function
-- local function getTypeMapper(
function getTypeMapper(
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper,
	typeName: string
): NamedTypeMapper | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	local specifiers = getTypeSpecifiers(schema, typeName)
	local typeMapper: NamedTypeMapper | nil
	-- ROBLOX deviation START: do not use Array.spread
	-- local stack = Array.concat({}, Array.spread(specifiers))
	local stack = Array.concat({}, specifiers)
	-- ROBLOX deviation END
	while
		not Boolean.toJSBoolean(typeMapper)
		-- ROBLOX deviation START: fix Array.length implementation
		-- and stack.length > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
		and #stack > 0
		-- ROBLOX deviation END
	do
		-- It is safe to use the ! operator here as we check the length.
		local next_ = table.remove(stack) --[[ ROBLOX CHECK: check if 'stack' is an Array ]] :: any
		typeMapper = schemaMapper[tostring(next_)] :: NamedTypeMapper
	end
	return if typeMapper ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then typeMapper
		else nil
end
local function getFieldSpecifiers(schema: GraphQLSchema, typeName: string): SchemaFieldMapperTypes
	local type_ = schema:getType(typeName)
	-- ROBLOX deviation START: cast to any
	-- local specifiers: SchemaFieldMapperTypes = { MapperKind.FIELD }
	local specifiers: SchemaFieldMapperTypes = ({ MapperKind.FIELD } :: any) :: SchemaFieldMapperTypes
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(isObjectType(type_)) then
		-- ROBLOX deviation START: fix Array implementation & cast type
		-- Array.concat(specifiers, { MapperKind.COMPOSITE_FIELD, MapperKind.OBJECT_FIELD }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
		specifiers = (
			Array.concat(specifiers, { MapperKind.COMPOSITE_FIELD, MapperKind.OBJECT_FIELD }) :: any
		) :: SchemaFieldMapperTypes
		-- ROBLOX deviation END
		-- ROBLOX deviation START: explicit type
		-- if typeName == (if typeof(schema:getQueryType()) == "table" then schema:getQueryType().name else nil) then
		if
			typeName
			== (
				if typeof(schema:getQueryType()) == "table"
					then (schema:getQueryType() :: GraphQLObjectType).name
					else nil
			)
		then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix Array implementation & cast type
			-- Array.concat(specifiers, { MapperKind.ROOT_FIELD, MapperKind.QUERY_ROOT_FIELD }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
			specifiers = (
				Array.concat(specifiers, { MapperKind.ROOT_FIELD, MapperKind.QUERY_ROOT_FIELD }) :: any
			) :: SchemaFieldMapperTypes
			-- ROBLOX deviation END
		elseif
			-- ROBLOX deviation START: explicit type
			-- typeName == (if typeof(schema:getMutationType()) == "table" then schema:getMutationType().name else nil)
			typeName
			== (
				if typeof(schema:getMutationType()) == "table"
					then (schema:getMutationType() :: GraphQLObjectType).name
					else nil
			)
			-- ROBLOX deviation END
		then
			-- ROBLOX deviation START: fix Array implementation & cast type
			-- Array.concat(specifiers, { MapperKind.ROOT_FIELD, MapperKind.MUTATION_ROOT_FIELD }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
			specifiers = (
				Array.concat(specifiers, { MapperKind.ROOT_FIELD, MapperKind.MUTATION_ROOT_FIELD }) :: any
			) :: SchemaFieldMapperTypes
			-- ROBLOX deviation END
		elseif
			typeName
			-- ROBLOX deviation START: explicit type
			-- == (if typeof(schema:getSubscriptionType()) == "table" then schema:getSubscriptionType().name else nil)
			== (
				if typeof(schema:getSubscriptionType()) == "table"
					then (schema:getSubscriptionType() :: GraphQLObjectType).name
					else nil
			)
			-- ROBLOX deviation END
		then
			-- ROBLOX deviation START: fix Array implementation & cast type
			-- Array.concat(specifiers, { MapperKind.ROOT_FIELD, MapperKind.SUBSCRIPTION_ROOT_FIELD }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
			specifiers = (
				Array.concat(specifiers, { MapperKind.ROOT_FIELD, MapperKind.SUBSCRIPTION_ROOT_FIELD }) :: any
			) :: SchemaFieldMapperTypes
			-- ROBLOX deviation END
		end
	elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
		-- ROBLOX deviation START: fix Array implementation & cast type
		-- Array.concat(specifiers, { MapperKind.COMPOSITE_FIELD, MapperKind.INTERFACE_FIELD }) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
		specifiers = (
			Array.concat(specifiers, { MapperKind.COMPOSITE_FIELD, MapperKind.INTERFACE_FIELD }) :: any
		) :: SchemaFieldMapperTypes
		-- ROBLOX deviation END
	elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
		table.insert(specifiers, MapperKind.INPUT_OBJECT_FIELD) --[[ ROBLOX CHECK: check if 'specifiers' is an Array ]]
	end
	return specifiers
end
-- ROBLOX deviation START: predeclared function
-- local function getFieldMapper<F>(
function getFieldMapper<F>(
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	schemaMapper: SchemaMapper,
	typeName: string
): GenericFieldMapper<F> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	local specifiers = getFieldSpecifiers(schema, typeName)
	local fieldMapper: GenericFieldMapper<F> | nil
	-- ROBLOX deviation START: do not use Array.spread
	-- local stack = Array.concat({}, Array.spread(specifiers))
	local stack = Array.concat({}, table.unpack(specifiers))
	-- ROBLOX deviation END
	while
		not Boolean.toJSBoolean(fieldMapper)
		-- ROBLOX deviation START: fix Array length check
		-- and stack.length > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
		and #stack > 0
		-- ROBLOX deviation END
	do
		-- It is safe to use the ! operator here as we check the length.
		local next_ = table.remove(stack) --[[ ROBLOX CHECK: check if 'stack' is an Array ]] :: any -- TODO: fix this as unknown cast
		fieldMapper = (schemaMapper[tostring(next_)] :: unknown) :: GenericFieldMapper<F>
	end
	return if fieldMapper ~= nil then fieldMapper else nil
end
-- ROBLOX deviation START: predeclared function
-- local function getArgumentMapper(
function getArgumentMapper(
	-- ROBLOX deviation END
	schemaMapper: SchemaMapper
): ArgumentMapper | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	local argumentMapper = schemaMapper[tostring(MapperKind.ARGUMENT)]
	return if argumentMapper ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then argumentMapper
		else nil
end
-- ROBLOX deviation START: predeclared function
-- local function getDirectiveMapper(
function getDirectiveMapper(
	-- ROBLOX deviation END
	schemaMapper: SchemaMapper
): DirectiveMapper | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	local directiveMapper = schemaMapper[tostring(MapperKind.DIRECTIVE)]
	return if directiveMapper ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then directiveMapper
		else nil
end
-- ROBLOX deviation START: predeclared function
-- local function getEnumValueMapper(
function getEnumValueMapper(
	-- ROBLOX deviation END
	schemaMapper: SchemaMapper
): EnumValueMapper | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	local enumValueMapper = schemaMapper[tostring(MapperKind.ENUM_VALUE)]
	return if enumValueMapper ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then enumValueMapper
		else nil
end
-- ROBLOX deviation START: fix function declaration
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function correctASTNodes(type: GraphQLObjectType): GraphQLObjectType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function correctASTNodes(type: GraphQLInterfaceType): GraphQLInterfaceType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function correctASTNodes(type: GraphQLInputObjectType): GraphQLInputObjectType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function correctASTNodes(type: GraphQLEnumType): GraphQLEnumType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- local function correctASTNodes(type_): GraphQLNamedType
export type correctASTNodes =
	((type: GraphQLObjectType) -> GraphQLObjectType)
	| ((type: GraphQLInterfaceType) -> GraphQLInterfaceType)
	| ((type: GraphQLInputObjectType) -> GraphQLInputObjectType)
	| ((type: GraphQLEnumType) -> GraphQLEnumType)
function correctASTNodes(type_: GraphQLNamedType): GraphQLNamedType
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(isObjectType(type_)) then
		local config = (type_ :: GraphQLObjectType):toConfig()
		if
			config.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			local fields: Array<FieldDefinitionNode> = {}
			-- ROBLOX deviation START: config.fields is a Map
			-- for fieldName in config.fields do
			for _, ref in config.fields :: Map<string, any> do
				local fieldName = table.unpack(ref)
				-- ROBLOX deviation END
				-- ROBLOX deviation START: config.fields is a Map + cast type
				-- local fieldConfig = config.fields[tostring(fieldName)]
				local fieldConfig = config.fields:get(fieldName) :: GraphQLFieldConfig<any, any>
				-- ROBLOX deviation END
				if
					fieldConfig.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				then
					-- ROBLOX deviation START: cast type
					-- table.insert(fields, fieldConfig.astNode) --[[ ROBLOX CHECK: check if 'fields' is an Array ]]
					table.insert(fields, fieldConfig.astNode :: FieldDefinitionNode)
					-- ROBLOX deviation END
				end
			end
			config.astNode = Object.assign({}, config.astNode, { kind = Kind.OBJECT_TYPE_DEFINITION, fields = fields })
		end
		if
			config.extensionASTNodes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			config.extensionASTNodes = Array.map(config.extensionASTNodes, function(node)
				return Object.assign({}, node, { kind = Kind.OBJECT_TYPE_EXTENSION, fields = Object.None })
			end) --[[ ROBLOX CHECK: check if 'config.extensionASTNodes' is an Array ]]
		end
		return GraphQLObjectType.new(config)
	elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
		local config = (type_ :: GraphQLInterfaceType):toConfig()
		if
			config.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			local fields: Array<FieldDefinitionNode> = {}
			-- ROBLOX deviation START: config.fields is a Map
			-- 			for fieldName in config.fields do
			-- 				local fieldConfig = config.fields[tostring(fieldName)]
			for _, ref in config.fields :: Map<string, any> do
				local fieldName = table.unpack(ref)
				local fieldConfig = config.fields:get(fieldName)
				-- ROBLOX deviation END
				if
					fieldConfig.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				then
					table.insert(fields, fieldConfig.astNode) --[[ ROBLOX CHECK: check if 'fields' is an Array ]]
				end
			end
			config.astNode = Object.assign(
				{},
				config.astNode,
				{ kind = Kind.INTERFACE_TYPE_DEFINITION, fields = fields }
			)
		end
		if
			config.extensionASTNodes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			config.extensionASTNodes = Array.map(config.extensionASTNodes, function(node)
				return Object.assign({}, node, { kind = Kind.INTERFACE_TYPE_EXTENSION, fields = Object.None })
			end) --[[ ROBLOX CHECK: check if 'config.extensionASTNodes' is an Array ]]
		end
		return GraphQLInterfaceType.new(config)
	elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
		-- ROBLOX deviation START: specify type
		-- local config = (type_ :: GraphQLInputObjectType):toConfig()
		local config: GraphQLInputObjectTypeNormalizedConfig = (type_ :: GraphQLInputObjectType):toConfig()
		-- ROBLOX deviation END
		if
			config.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			local fields: Array<InputValueDefinitionNode> = {}
			-- ROBLOX deviation START: config.fields is a Map
			-- for fieldName in config.fields do
			-- 				local fieldConfig = config.fields[tostring(fieldName)]
			for _, ref in config.fields :: Map<any, any> do
				local fieldName = table.unpack(ref)
				local fieldConfig = config.fields:get(fieldName) :: GraphQLInputFieldConfig
				-- ROBLOX deviation END
				if
					fieldConfig.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				then
					table.insert(fields, fieldConfig.astNode) --[[ ROBLOX CHECK: check if 'fields' is an Array ]]
				end
			end
			config.astNode = Object.assign(
				{},
				config.astNode,
				{ kind = Kind.INPUT_OBJECT_TYPE_DEFINITION, fields = fields }
			)
		end
		if
			config.extensionASTNodes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			config.extensionASTNodes = Array.map(config.extensionASTNodes, function(node)
				return Object.assign({}, node, { kind = Kind.INPUT_OBJECT_TYPE_EXTENSION, fields = Object.None })
			end) --[[ ROBLOX CHECK: check if 'config.extensionASTNodes' is an Array ]]
		end
		return GraphQLInputObjectType.new(config)
	elseif Boolean.toJSBoolean(isEnumType(type_)) then
		local config = (type_ :: GraphQLEnumType):toConfig()
		if
			config.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			local values: Array<EnumValueDefinitionNode> = {}
			-- ROBLOX deviation START: config.values is a Map
			-- for enumKey in config.values do
			-- 				local enumValueConfig = config.values[tostring(enumKey)]
			for _, ref in config.values do
				local enumKey = table.unpack(ref)
				local enumValueConfig = config.values:get(enumKey) :: GraphQLEnumValueConfig
				-- ROBLOX deviation END
				if
					enumValueConfig.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				then
					-- ROBLOX deviation START: cast type
					-- table.insert(values, enumValueConfig.astNode) --[[ ROBLOX CHECK: check if 'values' is an Array ]]
					table.insert(values, enumValueConfig.astNode :: EnumValueDefinitionNode)
					-- ROBLOX deviation END
				end
			end
			config.astNode = Object.assign({}, config.astNode, { values = values })
		end
		if
			config.extensionASTNodes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			config.extensionASTNodes = Array.map(config.extensionASTNodes, function(node)
				return Object.assign({}, node, { values = Object.None })
			end) --[[ ROBLOX CHECK: check if 'config.extensionASTNodes' is an Array ]]
		end
		return GraphQLEnumType.new(config)
	else
		return type_
	end
end
exports.correctASTNodes = correctASTNodes
return exports
