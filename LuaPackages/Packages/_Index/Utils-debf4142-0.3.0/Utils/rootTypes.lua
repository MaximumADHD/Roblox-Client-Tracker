-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/rootTypes.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
type Map<T, U> = LuauPolyfill.Map<T, U>
type Set<T> = LuauPolyfill.Set<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local OperationTypeNode = graphqlModule.OperationTypeNode
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLSchema = graphqlModule.GraphQLSchema
type OperationTypeNode = graphqlModule.OperationTypeNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local memoize1 = require(script.Parent["memoize.js"]).memoize1
local memoize1 = require(script.Parent.memoize).memoize1
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: add predefined variables
local getRootTypeMap: (schema: GraphQLSchema) -> Map<OperationTypeNode, GraphQLObjectType>
local getRootTypes
-- ROBLOX deviation END
local function getDefinedRootType(schema: GraphQLSchema, operation: OperationTypeNode): GraphQLObjectType
	local rootTypeMap = getRootTypeMap(schema)
	local rootType = rootTypeMap:get(operation)
	if
		rootType == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		error(Error.new(('Root type for operation "%s" not defined by the given schema.'):format(tostring(operation))))
	end
	-- ROBLOX deviation START: cast type
	-- return rootType
	return rootType :: GraphQLObjectType
	-- ROBLOX deviation END
end
exports.getDefinedRootType = getDefinedRootType
-- ROBLOX deviation START: add helper method
local function setToArray<T>(set: Set<T>): Array<T>
	local arr: Array<T> = {}
	set:forEach(function(value)
		table.insert(arr, value)
	end)
	return arr
end
-- ROBLOX deviation END
local getRootTypeNames = memoize1(function(schema: GraphQLSchema): Set<string>
	local rootTypes = getRootTypes(schema)
	-- ROBLOX deviation START: use setToArray helper instead of Array.spread
	-- return Set.new(Array.map(Array.concat({}, Array.spread(rootTypes)), function(type_)
	return Set.new(Array.map(Array.concat({}, setToArray(rootTypes)), function(type_)
		-- ROBLOX deviation END
		return type_.name
	end))
end)
exports.getRootTypeNames = getRootTypeNames
-- ROBLOX deviation START: predeclared function
-- local getRootTypes = memoize1(function(schema: GraphQLSchema): Set<GraphQLObjectType>
getRootTypes = memoize1(function(schema: GraphQLSchema): Set<GraphQLObjectType>
	-- ROBLOX deviation END
	local rootTypeMap = getRootTypeMap(schema)
	return Set.new(rootTypeMap:values())
end)
exports.getRootTypes = getRootTypes
-- ROBLOX deviation START: predeclared function
-- local getRootTypeMap = memoize1(function(schema: GraphQLSchema): Map<OperationTypeNode, GraphQLObjectType>
getRootTypeMap = memoize1(function(schema: GraphQLSchema): Map<OperationTypeNode, GraphQLObjectType>
	-- ROBLOX deviation END
	local rootTypeMap: Map<OperationTypeNode, GraphQLObjectType> = Map.new()
	local queryType = schema:getQueryType()
	if Boolean.toJSBoolean(queryType) then
		-- ROBLOX deviation START: cast type
		-- rootTypeMap:set("query" :: OperationTypeNode, queryType)
		rootTypeMap:set("query" :: OperationTypeNode, queryType :: GraphQLObjectType)
		-- ROBLOX deviation END
	end
	local mutationType = schema:getMutationType()
	if Boolean.toJSBoolean(mutationType) then
		-- ROBLOX deviation START: cast type
		-- rootTypeMap:set("mutation" :: OperationTypeNode, mutationType)
		rootTypeMap:set("mutation" :: OperationTypeNode, mutationType :: GraphQLObjectType)
		-- ROBLOX deviation END
	end
	local subscriptionType = schema:getSubscriptionType()
	if Boolean.toJSBoolean(subscriptionType) then
		-- ROBLOX deviation START: cast type
		-- rootTypeMap:set("subscription" :: OperationTypeNode, subscriptionType)
		rootTypeMap:set("subscription" :: OperationTypeNode, subscriptionType :: GraphQLObjectType)
		-- ROBLOX deviation END
	end
	return rootTypeMap
end)
exports.getRootTypeMap = getRootTypeMap
return exports
