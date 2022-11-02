local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local function buildRootValue(mergedResolvers: Object)
	local queries = mergedResolvers.Query or {}
	local mutations = mergedResolvers.Mutation or {}
	local rootValue = Object.assign({}, queries, mutations)
	return rootValue
end

return buildRootValue
