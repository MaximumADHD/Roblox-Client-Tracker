-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/fields.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import type
-- local GraphQLFieldConfigMap = graphqlModule.GraphQLFieldConfigMap
type GraphQLFieldConfigMap<TSource, TContext> = graphqlModule.GraphQLFieldConfigMap<TSource, TContext>
-- ROBLOX deviation END
local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation START: import type
-- local GraphQLFieldConfig = graphqlModule.GraphQLFieldConfig
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local MapperKind = require(script.Parent["Interfaces.js"]).MapperKind
-- local mapSchemaJsModule = require(script.Parent["mapSchema.js"])
local MapperKind = require(script.Parent.Interfaces).MapperKind
local mapSchemaJsModule = require(script.Parent.mapSchema)
-- ROBLOX deviation END
local mapSchema = mapSchemaJsModule.mapSchema
local correctASTNodes = mapSchemaJsModule.correctASTNodes
-- ROBLOX deviation START: fix import
-- local addTypes = require(script.Parent["addTypes.js"]).addTypes
local addTypes = require(script.Parent.addTypes).addTypes
-- ROBLOX deviation END
-- ROBLOX deviation START: additional imports
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
local function appendObjectFields(
	schema: GraphQLSchema,
	typeName: string,
	additionalFields: GraphQLFieldConfigMap<any, any>
): GraphQLSchema
	if
		schema:getType(typeName) == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return addTypes(schema, { GraphQLObjectType.new({ name = typeName, fields = additionalFields }) })
	end
	return mapSchema(schema, {
		-- ROBLOX deviation START: need explicit return type
		-- [tostring(MapperKind.OBJECT_TYPE)] = function(type_)
		[MapperKind.OBJECT_TYPE] = function(type_): GraphQLObjectType | nil
			-- ROBLOX deviation END
			if type_.name == typeName then
				local config = type_:toConfig()
				local originalFieldConfigMap = config.fields
				-- ROBLOX deviation START: use Map
				-- local newFieldConfigMap = {}
				local newFieldConfigMap = Map.new()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: originalFieldConfigMap is a Map
				-- for fieldName in originalFieldConfigMap do
				for _, ref in originalFieldConfigMap do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: using Map
					-- newFieldConfigMap[tostring(fieldName)] = originalFieldConfigMap[tostring(fieldName)]
					newFieldConfigMap:set(fieldName, originalFieldConfigMap:get(fieldName))
					-- ROBLOX deviation END
				end
				-- ROBLOX deviation START: additionalFields is a Map
				-- for fieldName in additionalFields do
				for _, ref in additionalFields do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: using Map
					-- newFieldConfigMap[tostring(fieldName)] = additionalFields[tostring(fieldName)]
					newFieldConfigMap:set(fieldName, additionalFields:get(fieldName))
					-- ROBLOX deviation END
				end
				-- ROBLOX deviation START: need cast
				-- return correctASTNodes(GraphQLObjectType.new(Object.assign({}, config, { fields = newFieldConfigMap })))
				return correctASTNodes(
					GraphQLObjectType.new(Object.assign({}, config, { fields = newFieldConfigMap }))
				) :: GraphQLObjectType
				-- ROBLOX deviation END
			end
			-- ROBLOX deviation START: add explicit return
			return nil
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: need cast
		-- })
	} :: Object --[[ SchemaMapper ]])
	-- ROBLOX deviation END
end
exports.appendObjectFields = appendObjectFields
local function removeObjectFields(
	schema: GraphQLSchema,
	typeName: string,
	testFn: (fieldName: string, field: GraphQLFieldConfig<any, any>) -> boolean
): Array<GraphQLSchema | GraphQLFieldConfigMap<any, any>>
	-- ROBLOX deviation START: use Map
	-- local removedFields = {}
	local removedFields = Map.new()
	-- ROBLOX deviation END
	local newSchema = mapSchema(schema, {
		-- ROBLOX deviation START: need explicit return type
		-- [tostring(MapperKind.OBJECT_TYPE)] = function(type_)
		[MapperKind.OBJECT_TYPE] = function(type_): GraphQLObjectType | nil
			-- ROBLOX deviation END
			if type_.name == typeName then
				local config = type_:toConfig()
				local originalFieldConfigMap = config.fields
				-- ROBLOX deviation START: useMap
				-- local newFieldConfigMap = {}
				local newFieldConfigMap = Map.new()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: originalFieldConfigMap is a Map
				-- for fieldName in originalFieldConfigMap do
				for _, ref in originalFieldConfigMap do
					local fieldName = table.unpack(ref)
					-- ROBLOX deviation END
					-- ROBLOX deviation START: using Map
					-- local originalFieldConfig = originalFieldConfigMap[tostring(fieldName)]
					local originalFieldConfig = originalFieldConfigMap:get(fieldName)
					-- ROBLOX deviation END
					if Boolean.toJSBoolean(testFn(fieldName, originalFieldConfig)) then
						-- ROBLOX deviation START: using Map
						-- removedFields[tostring(fieldName)] = originalFieldConfig
						removedFields:set(fieldName, originalFieldConfig)
						-- ROBLOX deviation END
					else
						-- ROBLOX deviation START: using Map
						-- newFieldConfigMap[tostring(fieldName)] = originalFieldConfig
						newFieldConfigMap:set(fieldName, originalFieldConfig)
						-- ROBLOX deviation END
					end
				end
				-- ROBLOX deviation START: need cast
				-- return correctASTNodes(GraphQLObjectType.new(Object.assign({}, config, { fields = newFieldConfigMap })))
				return correctASTNodes(
					GraphQLObjectType.new(Object.assign({}, config, { fields = newFieldConfigMap }))
				) :: GraphQLObjectType
				-- ROBLOX deviation END
			end
			-- ROBLOX deviation START: add explicit return
			return nil
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: need cast
		-- })
	} :: Object --[[ SchemaMapper ]])
	-- ROBLOX deviation END
	return { newSchema, removedFields }
end
exports.removeObjectFields = removeObjectFields
local function selectObjectFields(
	schema: GraphQLSchema,
	typeName: string,
	testFn: (fieldName: string, field: GraphQLFieldConfig<any, any>) -> boolean
): GraphQLFieldConfigMap<any, any>
	-- ROBLOX deviation START: use Map
	-- local selectedFields = {}
	local selectedFields = Map.new()
	-- ROBLOX deviation END
	mapSchema(schema, {
		[tostring(MapperKind.OBJECT_TYPE)] = function(type_)
			if type_.name == typeName then
				local config = type_:toConfig()
				local originalFieldConfigMap = config.fields
				-- ROBLOX deviation START: originalFieldConfigMap is a Map
				-- for fieldName in originalFieldConfigMap do
				for _, ref in originalFieldConfigMap do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: using Map
					-- local originalFieldConfig = originalFieldConfigMap[tostring(fieldName)]
					local originalFieldConfig = originalFieldConfigMap:get(fieldName)
					-- ROBLOX deviation END
					if Boolean.toJSBoolean(testFn(fieldName, originalFieldConfig)) then
						-- ROBLOX deviation START: using Map
						-- selectedFields[tostring(fieldName)] = originalFieldConfig
						selectedFields:set(fieldName, originalFieldConfig)
						-- ROBLOX deviation END
					end
				end
			end
			return nil
		end,
		-- ROBLOX deviation START: need cast
		-- })
	} :: Object --[[ SchemaMapper ]])
	-- ROBLOX deviation END
	return selectedFields
end
exports.selectObjectFields = selectObjectFields
local function modifyObjectFields(
	schema: GraphQLSchema,
	typeName: string,
	testFn: (fieldName: string, field: GraphQLFieldConfig<any, any>) -> boolean,
	newFields: GraphQLFieldConfigMap<any, any>
): Array<GraphQLSchema | GraphQLFieldConfigMap<any, any>>
	-- ROBLOX deviation START: use Map
	-- local removedFields = {}
	local removedFields = Map.new()
	-- ROBLOX deviation END
	local newSchema = mapSchema(schema, {
		-- ROBLOX deviation START: need explicit return type
		-- [tostring(MapperKind.OBJECT_TYPE)] = function(type_)
		[MapperKind.OBJECT_TYPE] = function(type_): GraphQLObjectType | nil
			-- ROBLOX deviation END
			if type_.name == typeName then
				local config = type_:toConfig()
				local originalFieldConfigMap = config.fields
				-- ROBLOX deviation START: use Map
				-- local newFieldConfigMap = {}
				local newFieldConfigMap = Map.new()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: originalFieldConfigMap is a Map
				-- for fieldName in originalFieldConfigMap do
				for _, ref in originalFieldConfigMap do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: using Map
					-- local originalFieldConfig = originalFieldConfigMap[tostring(fieldName)]
					local originalFieldConfig = originalFieldConfigMap:get(fieldName)
					-- ROBLOX deviation END
					if Boolean.toJSBoolean(testFn(fieldName, originalFieldConfig)) then
						-- ROBLOX deviation START: using Map
						-- removedFields[tostring(fieldName)] = originalFieldConfig
						removedFields:set(fieldName, originalFieldConfig)
						-- ROBLOX deviation END
					else
						-- ROBLOX deviation START: using Map
						-- newFieldConfigMap[tostring(fieldName)] = originalFieldConfig
						newFieldConfigMap:set(fieldName, originalFieldConfig)
						-- ROBLOX deviation END
					end
				end
				-- ROBLOX deviation START: newFields is a Map
				-- for fieldName in newFields do
				for _, ref in newFields do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: use Map
					-- local fieldConfig = newFields[tostring(fieldName)]
					-- newFieldConfigMap[tostring(fieldName)] = fieldConfig
					local fieldConfig = newFields:get(fieldName)
					newFieldConfigMap:set(fieldName, fieldConfig)
					-- ROBLOX deviation END
				end
				-- ROBLOX deviation START: need cast
				-- return correctASTNodes(GraphQLObjectType.new(Object.assign({}, config, { fields = newFieldConfigMap })))
				return correctASTNodes(
					GraphQLObjectType.new(Object.assign({}, config, { fields = newFieldConfigMap }))
				) :: GraphQLObjectType
				-- ROBLOX deviation END
			end
			-- ROBLOX deviation START: add explicit return
			return nil
			-- ROBLOX deviation END
		end,
		-- ROBLOX deviation START: need cast
		-- })
	} :: Object --[[ SchemaMapper ]])
	-- ROBLOX deviation END
	return { newSchema, removedFields }
end
exports.modifyObjectFields = modifyObjectFields
return exports
