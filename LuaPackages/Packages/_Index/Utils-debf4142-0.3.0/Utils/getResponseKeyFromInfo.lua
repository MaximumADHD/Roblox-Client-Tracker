-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/getResponseKeyFromInfo.ts
local Packages = script.Parent.Parent
local exports = {}
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLResolveInfo = require(Packages.GraphQL).GraphQLResolveInfo
local graphQLModule = require(Packages.GraphQL)
type GraphQLResolveInfo = graphQLModule.GraphQLResolveInfo
-- ROBLOX deviation END
--[[*
 * Get the key under which the result of this resolver will be placed in the response JSON. Basically, just
 * resolves aliases.
 * @param info The info argument to the resolver.
 ]]
local function getResponseKeyFromInfo(info: GraphQLResolveInfo)
	-- ROBLOX deviation START: extra check for info.fieldNodes[1] to exist
	-- 	return if info.fieldNodes[
	-- 			1 --[[ ROBLOX adaptation: added 1 to array index ]]
	-- 		].alias ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 		then info.fieldNodes[
	-- 			1 --[[ ROBLOX adaptation: added 1 to array index ]]
	-- 		].alias.value
	-- 		else info.fieldName
	return if info.fieldNodes[1] and info.fieldNodes[1].alias ~= nil
		then (info.fieldNodes[1].alias :: any).value
		else info.fieldName
	-- ROBLOX deviation END
end
exports.getResponseKeyFromInfo = getResponseKeyFromInfo
return exports
