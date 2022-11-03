-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/@graphql-tools/links@8.3.12/packages/merge/src/merge-resolvers.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
export type IResolvers<TSource, TContext> = Object
type Maybe<T> = T | nil
local mergeDeep = require(script.Parent.mergeDeep)

export type MergeResolversOptions = { exclusions: Array<string>? }

local function mergeResolvers<TSource, TContext>(
	resolversDefinitions: Maybe<IResolvers<TSource, TContext>> | Maybe<Array<Maybe<IResolvers<TSource, TContext>>>>,
	options: MergeResolversOptions?
): IResolvers<TSource, TContext>
	if not resolversDefinitions or (Array.isArray(resolversDefinitions) and #resolversDefinitions == 0) then
		return {}
	end

	if not Array.isArray(resolversDefinitions) then
		return resolversDefinitions :: IResolvers<TSource, TContext>
	end

	local resolversDefinitionsArray = resolversDefinitions :: Array<IResolvers<TSource, TContext>>

	if #resolversDefinitionsArray == 1 then
		return resolversDefinitionsArray[1] or {}
	end
	local resolvers: Array<IResolvers<TSource, TContext>> = {}

	for _, resolversDefinition in resolversDefinitionsArray do
		if Array.isArray(resolversDefinition) then
			resolversDefinition = mergeResolvers(resolversDefinition)
		end
		if type(resolversDefinition) == "table" and resolversDefinition then
			table.insert(resolvers, resolversDefinition)
		end
	end
	local result = mergeDeep(resolvers, true)
	if options and options.exclusions then
		for _, exclusion in options.exclusions do
			local typeName, fieldName = table.unpack(exclusion:split("."), 1, 2)
			if not fieldName or fieldName == "*" then
				result[tostring(typeName)] = nil
			elseif Boolean.toJSBoolean(result[tostring(typeName)]) then
				result[tostring(typeName)][tostring(fieldName)] = nil
			end
		end
	end
	return result
end

return mergeResolvers
