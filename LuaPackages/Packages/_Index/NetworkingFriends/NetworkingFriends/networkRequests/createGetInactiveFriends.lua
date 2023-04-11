--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking
	return roduxNetworking.GET({ Name = "GetInactiveFriends" }, function(requestBuilder: any, userId: number | string)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("friends"):path("inactive")
	end)
end
