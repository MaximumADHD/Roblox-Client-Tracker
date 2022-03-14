local networkRequests = script.Parent.networkRequests
local createGetFriendsFromUserId = require(networkRequests.createGetFriendsFromUserId)
local createGetFriendRequestsCount = require(networkRequests.createGetFriendRequestsCount)
local createUnfriendTargetUserId = require(networkRequests.createUnfriendTargetUserId)

return function(config)
	return {
		GetFriendsFromUserId = createGetFriendsFromUserId(config),
		GetFriendRequestsCount = createGetFriendRequestsCount(config),
		UnfriendTargetUserId = createUnfriendTargetUserId(config),
	}
end
