--!strict
--[[
	ValidateFriendRequestNickname API
	Query path: /v1/my/friends/validate-nickname
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "ValidateFriendRequestNickname" },
		function(requestBuilder: any, queryArgs: { currentUserId: number | string, senderNickname: string })
			return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId })
				:path("v1")
				:path("my")
				:path("friends")
				:path("validate-nickname")
				:body({
					senderNickname = queryArgs.senderNickname,
				})
		end
	)
end
