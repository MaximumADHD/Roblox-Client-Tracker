-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/merge-resolvers.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation START: add additional import
local String = LuauPolyfill.String
-- ROBLOX deviation END
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation START: add additional type
type FIX_ANALYZE = any
-- ROBLOX deviation END
local exports = {}
-- ROBLOX deviation START: fix import
-- local graphqlToolsUtilsModule = require(Packages["@graphql-tools"].utils)
local graphqlToolsUtilsModule = require(Packages.Utils)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type
-- local IResolvers = graphqlToolsUtilsModule.IResolvers
-- local Maybe = graphqlToolsUtilsModule.Maybe
type IResolvers<TSource = any, TContext = any, TArgs = { [string]: any }, TReturn = any> =
	graphqlToolsUtilsModule.IResolvers<TSource, TContext, TArgs, TReturn>
type Maybe<T> = graphqlToolsUtilsModule.Maybe<T>
-- ROBLOX deviation END
local mergeDeep = graphqlToolsUtilsModule.mergeDeep
--[[*
 * Additional options for merging resolvers
 ]]
export type MergeResolversOptions = { exclusions: Array<string>? }
--[[*
 * Deep merges multiple resolver definition objects into a single definition.
 * @param resolversDefinitions Resolver definitions to be merged
 * @param options Additional options
 *
 * ```js
 * const { mergeResolvers } = require('@graphql-tools/merge');
 * const clientResolver = require('./clientResolver');
 * const productResolver = require('./productResolver');
 *
 * const resolvers = mergeResolvers([
 *  clientResolver,
 *  productResolver,
 * ]);
 * ```
 *
 * If you don't want to manually create the array of resolver objects, you can
 * also use this function along with loadFiles:
 *
 * ```js
 * const path = require('path');
 * const { mergeResolvers } = require('@graphql-tools/merge');
 * const { loadFilesSync } = require('@graphql-tools/load-files');
 *
 * const resolversArray = loadFilesSync(path.join(__dirname, './resolvers'));
 *
 * const resolvers = mergeResolvers(resolversArray)
 * ```
 ]]
local function mergeResolvers<TSource, TContext>(
	resolversDefinitions: Maybe<IResolvers<TSource, TContext>> | Maybe<Array<Maybe<IResolvers<TSource, TContext>>>>,
	options: MergeResolversOptions?
): IResolvers<TSource, TContext>
	if
		-- ROBLOX deviation START: fix .length
		-- Boolean.toJSBoolean(not Boolean.toJSBoolean(resolversDefinitions) or (function()
		-- 	local ref = Array.isArray(resolversDefinitions)
		-- 	return if Boolean.toJSBoolean(ref) then resolversDefinitions.length == 0 else ref
		-- end)())
		not Boolean.toJSBoolean(resolversDefinitions)
		-- ROBLOX FIXME Luau: should narrow options.exclusions type
		or (Array.isArray(resolversDefinitions) and #(resolversDefinitions :: IResolvers<TSource, TContext>) == 0)
		-- ROBLOX deviation END
	then
		return {}
	end
	if not Boolean.toJSBoolean(Array.isArray(resolversDefinitions)) then
		-- ROBLOX deviation START: explicit cast
		-- return resolversDefinitions
		return resolversDefinitions :: IResolvers<TSource, TContext>
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: explicit cast, fix .length
	-- if resolversDefinitions.length == 1 then
	if #(resolversDefinitions :: IResolvers<TSource, TContext>) == 1 then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: explicit cast
		-- return Boolean.toJSBoolean(resolversDefinitions[
		-- 	1 --[[ ROBLOX adaptation: added 1 to array index ]]
		-- ]) and resolversDefinitions[1] or {}
		return if Boolean.toJSBoolean((resolversDefinitions :: Array<any>)[1])
			then (resolversDefinitions :: Array<any>)[1]
			else {}
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: cast, replace Array.new
	-- local resolvers = Array.new()
	local resolvers = {} :: Array<IResolvers<TSource, TContext>>
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit cast
	-- for _, resolversDefinition in resolversDefinitions do
	for _, resolversDefinition in resolversDefinitions :: IResolvers<TSource, TContext> do
		if Boolean.toJSBoolean(Array.isArray(resolversDefinition)) then
			-- ROBLOX deviation START: cast
			-- resolversDefinition = mergeResolvers(resolversDefinition)
			resolversDefinition = mergeResolvers(resolversDefinition :: FIX_ANALYZE) :: FIX_ANALYZE
			-- ROBLOX deviation END
		end
		if Boolean.toJSBoolean(typeof(resolversDefinition) == "table" and resolversDefinition) then
			-- ROBLOX deviation START: cast
			-- table.insert(resolvers, resolversDefinition) --[[ ROBLOX CHECK: check if 'resolvers' is an Array ]]
			table.insert(resolvers, resolversDefinition :: FIX_ANALYZE)
			-- ROBLOX deviation END
		end
	end
	-- ROBLOX deviation START: cast
	-- local result = mergeDeep(resolvers, true)
	local result = mergeDeep(resolvers, true) :: { [string]: any }
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(if typeof(options) == "table" then options.exclusions else nil) then
		-- ROBLOX deviation START: explicit cast
		-- for _, exclusion in options.exclusions do
		for _, exclusion in ((options :: MergeResolversOptions).exclusions) :: Array<string> do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use String.split
			-- local typeName, fieldName = table.unpack(exclusion:split("."), 1, 2)
			local typeName, fieldName = table.unpack(String.split(exclusion, "."), 1, 2)
			-- ROBLOX deviation END
			-- ROBLOX deviation START: remove to string(makes a difference)
			-- if not Boolean.toJSBoolean(fieldName) or fieldName == "*" then
			-- 	result[tostring(typeName)] = nil
			-- elseif Boolean.toJSBoolean(result[tostring(typeName)]) then
			-- 	result[tostring(typeName)][tostring(fieldName)] = nil
			-- end
			if not Boolean.toJSBoolean(fieldName) or fieldName == "*" then
				result[typeName] = nil
			elseif Boolean.toJSBoolean(result[typeName]) then
				result[typeName][fieldName] = nil
			end
			-- ROBLOX deviation END
		end
	end
	return result
end
exports.mergeResolvers = mergeResolvers

return exports
