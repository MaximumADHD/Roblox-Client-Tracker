-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/addTypes.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
-- addTypes uses toConfig to create a new schema with a new or replaced
-- type or directive. Rewiring is employed so that the replaced type can be
-- reconnected with the existing types.
--
-- Rewiring is employed even for new types or directives as a convenience, so
-- that type references within the new type or directive do not have to be to
-- the identical objects within the original schema.
--
-- In fact, the type references could even be stub types with entirely different
-- fields, as long as the type references share the same name as the desired
-- type within the original schema's type map.
--
-- This makes it easy to perform simple schema operations (e.g. adding a new
-- type with a fiew fields removed from an existing type) that could normally be
-- performed by using toConfig directly, but is blocked if any intervening
-- more advanced schema operations have caused the types to be recreated via
-- rewiring.
--
-- Type recreation happens, for example, with every use of mapSchema, as the
-- types are always rewired. If fields are selected and removed using
-- mapSchema, adding those fields to a new type can no longer be simply done
-- by toConfig, as the types are not the identical JavaScript objects, and
-- schema creation will fail with errors referencing multiple types with the
-- same names.
--
-- enhanceSchema can fill this gap by adding an additional round of rewiring.
--
local graphqlModule = require(Packages.GraphQL)
local GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation START: add import as type
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
-- local GraphQLDirective = graphqlModule.GraphQLDirective
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLDirective = graphqlModule.GraphQLDirective
-- ROBLOX deviation END
local isNamedType = graphqlModule.isNamedType
local isDirective = graphqlModule.isDirective
-- ROBLOX deviation START: fix imports
-- local getObjectTypeFromTypeMap =
-- 	require(script.Parent["getObjectTypeFromTypeMap.js"]).getObjectTypeFromTypeMap
-- local rewireTypes = require(script.Parent["rewire.js"]).rewireTypes
local getObjectTypeFromTypeMap = require(script.Parent.getObjectTypeFromTypeMap).getObjectTypeFromTypeMap
local rewireTypes = require(script.Parent.rewire).rewireTypes
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local Map = LuauPolyfill.Map
type Map<K, V> = LuauPolyfill.Map<K, V>
type Object = LuauPolyfill.Object
-- ROBLOX deviation END
local function addTypes(
	schema: GraphQLSchema,
	newTypesOrDirectives: Array<GraphQLNamedType | GraphQLDirective>
): GraphQLSchema
	local config = schema:toConfig()
	-- ROBLOX deviation START: use a Map instead
	-- 	local originalTypeMap: Record<string, GraphQLNamedType> = {}
	-- 	for _, type_ in config.types do
	-- 		originalTypeMap[tostring(type_.name)] = type_
	local originalTypeMap: Map<string, GraphQLNamedType> = Map.new()
	for _, type_ in config.types :: Array<GraphQLNamedType> do
		originalTypeMap:set(type_.name, type_)
		-- ROBLOX deviation END
	end
	local originalDirectiveMap: Record<string, GraphQLDirective> = {}
	-- ROBLOX deviation START: cast type
	-- for _, directive in config.directives do
	for _, directive in config.directives :: Array<GraphQLDirective> do
		-- ROBLOX deviation END
		originalDirectiveMap[tostring(directive.name)] = directive
	end
	for _, newTypeOrDirective in newTypesOrDirectives do
		if Boolean.toJSBoolean(isNamedType(newTypeOrDirective)) then
			-- ROBLOX deviation START: use Map.set and cast type
			-- originalTypeMap[tostring(newTypeOrDirective.name)] = newTypeOrDirective
			originalTypeMap:set(newTypeOrDirective.name, newTypeOrDirective :: GraphQLNamedType)
			-- ROBLOX deviation END
		elseif Boolean.toJSBoolean(isDirective(newTypeOrDirective)) then
			-- ROBLOX deviation START: cast type
			-- originalDirectiveMap[tostring(newTypeOrDirective.name)] = newTypeOrDirective
			originalDirectiveMap[newTypeOrDirective.name] = newTypeOrDirective :: GraphQLDirective
			-- ROBLOX deviation END
		end
	end
	-- ROBLOX deviation START: type Map could not be converted to Map, loosen some type
	-- 	local typeMap, directives
	-- 	do
	-- 		local ref = rewireTypes(originalTypeMap, Object.values(originalDirectiveMap))
	-- 		typeMap, directives = ref.typeMap, ref.directives
	-- 	end
	local ref = rewireTypes(originalTypeMap :: Map<any, any>, Object.values(originalDirectiveMap) :: Array<any>)
	local typeMap, directives = ref.typeMap, ref.directives
	-- ROBLOX deviation END
	return GraphQLSchema.new(Object.assign({}, config, {
		query = getObjectTypeFromTypeMap(typeMap, schema:getQueryType()),
		mutation = getObjectTypeFromTypeMap(typeMap, schema:getMutationType()),
		subscription = getObjectTypeFromTypeMap(typeMap, schema:getSubscriptionType()),
		-- ROBLOX deviation START: use Map.values
		-- types = Object.values(typeMap),
		types = typeMap:values(),
		-- ROBLOX deviation END
		directives = directives,
	}))
end
exports.addTypes = addTypes
return exports
