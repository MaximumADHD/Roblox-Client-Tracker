local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type RequestWithTargetUser = NetworkingFriendsTypes.RequestWithTargetUser

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "AcceptFriendRequestFromUserId" }, function(requestBuilder: any, params: RequestWithTargetUser)
		return requestBuilder(FRIENDS_URL, { currentUserId = params.currentUserId }):path("v1"):path("users"):id(params.targetUserId):path("accept-friend-request"):body({})
	end)
end
