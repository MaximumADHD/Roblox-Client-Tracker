local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local graphql = require(Packages.GraphQL)
local LuauPolyfill = require(Packages.LuauPolyfill)
type Object = LuauPolyfill.Object
type GraphQLTypeResolver<T, V> = graphql.GraphQLTypeResolver<T, V>
type GraphQLAbstractType = graphql.GraphQLAbstractType

local function buildTypeResolver(mergedResolvers: Object): GraphQLTypeResolver<any, any>
	return function(source, context, resolveInfo, abstractType: GraphQLAbstractType)
		local typeDef = mergedResolvers[abstractType.name]
		if type(typeDef) == "table" and type(typeDef.__resolveType) == "function" then
			return typeDef.__resolveType(source, context, resolveInfo, abstractType)
		end
		return abstractType.name
	end
end

return buildTypeResolver
