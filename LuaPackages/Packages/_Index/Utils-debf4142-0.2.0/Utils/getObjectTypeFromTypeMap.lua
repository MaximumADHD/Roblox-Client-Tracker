-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/getObjectTypeFromTypeMap.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation START: not used - using Map instead
-- type RecordRecord<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
-- ROBLOX deviation END
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import types instead
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
local isObjectType = graphqlModule.isObjectType
-- ROBLOX deviation START: import type instead
-- local Maybe = require(script.Parent["types.js"]).Maybe

local typesModule = require(script.Parent.types)
type Maybe<T> = typesModule.Maybe<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type Map<K, T> = LuauPolyfill.Map<K, T>
-- ROBLOX deviation END
local function getObjectTypeFromTypeMap(
	-- ROBLOX deviation START: use Map instead of Record
	-- typeMap: Record<string, GraphQLNamedType>,
	typeMap: Map<string, GraphQLNamedType>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: add explicit type
	-- type_
	type_: Maybe<GraphQLObjectType>
	-- ROBLOX deviation END
): GraphQLObjectType | nil
	-- ROBLOX deviation START: toJSBoolean not needed - removing to get nil assertion
	-- if Boolean.toJSBoolean(type_) then
	if type_ then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: typeMap is a Map
		-- local maybeObjectType = typeMap[tostring(type_.name)]
		local maybeObjectType = typeMap:get(type_.name)
		-- ROBLOX deviation END
		if Boolean.toJSBoolean(isObjectType(maybeObjectType)) then
			-- ROBLOX deviation START: add explicit type cast
			-- return maybeObjectType
			-- ROBLOX FIXME Luau: should narrow type
			return maybeObjectType :: GraphQLObjectType
			-- ROBLOX deviation END
		end
	end
	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
exports.getObjectTypeFromTypeMap = getObjectTypeFromTypeMap
return exports
