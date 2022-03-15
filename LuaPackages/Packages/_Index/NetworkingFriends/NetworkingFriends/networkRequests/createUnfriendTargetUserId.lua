--!strict
local FRIENDS_URL= require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "UnfriendTargetUserId" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.RequestWithTargetUser)
		return requestBuilder(FRIENDS_URL, {currentUserId = queryArgs.currentUserId}):path("v1"):path("users"):id(queryArgs.targetUserId):path("unfriend"):body({})
	end)
end
