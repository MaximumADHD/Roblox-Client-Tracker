--!strict
--[[
	RequestFriendshipFromContactId API
	Query path: /v1/contacts/{contactId}/request-friendship
]]

local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

type FriendshipRequestWithContactId = { currentUserId: string, contactId: string }

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "RequestFriendshipFromContactId" },
		function(requestBuilder: any, queryArgs: FriendshipRequestWithContactId)
			return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId })
				:path("v1")
				:path("contacts")
				:id(queryArgs.contactId)
				:path("request-friendship")
				:body({})
		end
	)
end
