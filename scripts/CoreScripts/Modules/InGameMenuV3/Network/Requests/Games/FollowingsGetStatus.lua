local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
	Documentation of endpoint:
	https://followings.roblox.com/docs#!/Users/get_v1_users_userId_universes_universeId_status

	input:
		userId
		universeId
	output:
		{
			"UniverseId": 0,
			"UserId": 0,
			"CanFollow": true,
			"IsFollowing": true,
			"FollowingCountByType": 0,
			"FollowingLimitByType": 0
		}
]]

return function(requestImpl, userId, universeId)
	assert(type(userId) == "string", "FollowingsGetStatus request expects userId to be a string")
	assert(type(universeId) == "string", "FollowingsGetStatus request expects universeId to be a string")

	local url = string.format("%s/v1/users/%s/universes/%s/status", Url.FOLLOWINGS_URL, userId, universeId)
	print(url)
	return requestImpl(url, "GET")
end
