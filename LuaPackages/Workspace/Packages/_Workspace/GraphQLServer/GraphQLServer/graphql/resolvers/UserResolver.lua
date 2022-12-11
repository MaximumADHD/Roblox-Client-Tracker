-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/resolvers/UserResolver.ts
local exports = {}
local UserConnectorModule = require(script.Parent.Parent.connectors.UserConnector)
local findUserById = UserConnectorModule.findUserById
local findMe = UserConnectorModule.findMe
local resolvers = {
	User = {
		__resolveType = function(_user, _context, _info)
			-- TODO: add logic for handling other User implementation types, e.g. Creator
			return "Player"
		end,
	},
	Query = {
		me = function()
			return findMe()
		end,
		user = function(_doc, ref0)
			local id = ref0.id
			return findUserById(id)
		end,
	},
}
exports.default = resolvers
return exports
