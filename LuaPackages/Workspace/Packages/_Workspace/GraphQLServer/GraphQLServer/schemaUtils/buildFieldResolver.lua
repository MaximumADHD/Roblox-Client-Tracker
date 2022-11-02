local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local graphql = require(Packages.GraphQL)
local LuauPolyfill = require(Packages.LuauPolyfill)
type Object = LuauPolyfill.Object
type GraphQLFieldResolver<TSource, TContext, TArgs> = graphql.GraphQLFieldResolver<TSource, TContext, TArgs>

local function getFieldResolver(info, resolvers): GraphQLFieldResolver<any, any, any>
	if
		not info
		or not info.parentType
		or not info.fieldName
		or type(info.parentType.name) ~= "string"
		or type(resolvers[info.parentType.name]) ~= "table"
		or type(resolvers[info.parentType.name][info.fieldName]) ~= "function"
	then
		return graphql.defaultFieldResolver
	end

	return resolvers[info.parentType.name][info.fieldName]
end

local function buildFieldResolver(mergedResolvers: Object): GraphQLFieldResolver<any, any, any>
	return function(obj, args, context, info)
		local resolver = getFieldResolver(info, mergedResolvers)
		return resolver(obj, args, context, info)
	end
end

return buildFieldResolver
