local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local function addMockResolvers(resolvers: Object, mockResolvers: Object)
	local updatedResolvers = Object.assign({}, resolvers, mockResolvers)
	local Query = Object.assign({}, resolvers.Query or {}, mockResolvers.Query or {})
	local Mutation = Object.assign({}, resolvers.Mutation or {}, mockResolvers.Mutation or {})

	Object.assign(updatedResolvers, {
		Query = Query,
		Mutation = Mutation,
	})

	return updatedResolvers
end

return addMockResolvers
