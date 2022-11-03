-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/724408c899/models/User.ts
local exports = {}
local UserConnectorModule = require(script.Parent.Parent.connectors.UserConnector)
local findUserById = UserConnectorModule.findUserById
local findMe = UserConnectorModule.findMe
local UserModel = {
	findUserById = function(self, id: string)
		return findUserById(id)
	end,
	findMe = function(self)
		return findMe()
	end,
}
exports.default = UserModel
return exports
