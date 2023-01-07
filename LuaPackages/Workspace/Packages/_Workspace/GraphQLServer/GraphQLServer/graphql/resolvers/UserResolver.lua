-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/resolvers/UserResolver.ts
local exports = {}
local UserConnectorModule = require(script.Parent.Parent.connectors.UserConnector)
local findUserById = UserConnectorModule.findUserById
local findMe = UserConnectorModule.findMe
local resolvers = {
	User = {
		__resolveType = function()
			-- TODO: add logic for handling other User implementation types, e.g. Creator
			return "Player"
		end,
	},
	Query = {
		me = function(_root, _args, context)
			return findMe(context.fetchImpl)
		end,
		user = function(_root, ref0, context)
			local id = ref0.id
			return findUserById(id, context.fetchImpl)
		end,
	},
}
exports.default = resolvers
return exports
