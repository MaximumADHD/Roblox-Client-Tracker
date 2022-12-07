-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/resolvers/PlayerResolver.ts
local exports = {}
local findAvatarHeadshotById = require(script.Parent.Parent.connectors.PlayerConnector).findAvatarHeadshotById
local generatedTypes = require(script.Parent.Parent.generatedTypes)
type User = generatedTypes.User

local resolvers = {
	Player = {
		avatarHeadshot = function(user: User, _args, context, _info)
			local fetchImpl = context.fetchImpl
			return findAvatarHeadshotById(user.id, fetchImpl)
		end,
	},
}
exports.default = resolvers
return exports
