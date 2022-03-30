local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)
local HttpService = game:GetService("HttpService")

--[[
	Documentation of endpoint:
	https://followings.roblox.com/docs#!/Users/post_v1_users_userId_universes_universeId

	input:
		userId
		universeId
]]

return function(requestImpl, userId, universeId)
	assert(type(userId) == "string", "FollowingsPostFollow request expects userId to be a string")
	assert(type(universeId) == "string", "FollowingsPostFollow request expects universeId to be a string")

	local url = string.format("%s/v1/users/%s/universes/%s", Url.FOLLOWINGS_URL, userId, universeId)

	-- avoid 403 and 411 errors by passing an empty postBody
	return requestImpl(url, "POST", { postBody = HttpService:JSONEncode({ }) })
end
