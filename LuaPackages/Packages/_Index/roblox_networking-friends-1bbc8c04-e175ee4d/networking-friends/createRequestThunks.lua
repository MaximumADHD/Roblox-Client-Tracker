local networkRequests = script.Parent.networkRequests
local createGetFriendsFromUserId = require(networkRequests.createGetFriendsFromUserId)
local createGetFriendRequestsCount = require(networkRequests.createGetFriendRequestsCount)
local createUnfriendTargetUserId = require(networkRequests.createUnfriendTargetUserId)
local createGetFriendRequests = require(networkRequests.createGetFriendRequests)
local createAcceptFriendRequestFromUserId = require(networkRequests.createAcceptFriendRequestFromUserId)
local createDeclineFriendRequestFromUserId = require(networkRequests.createDeclineFriendRequestFromUserId)
local createDeclineAllFriendRequests = require(networkRequests.createDeclineAllFriendRequests)
local createGetFriendsCountFromUserId = require(networkRequests.createGetFriendsCountFromUserId)
local createRequestFriendshipFromUserId = require(networkRequests.createRequestFriendshipFromUserId)

return function(config)
	return {
		GetFriendsFromUserId = createGetFriendsFromUserId(config),
		GetFriendRequestsCount = createGetFriendRequestsCount(config),
		UnfriendTargetUserId = createUnfriendTargetUserId(config),
		GetFriendRequests = createGetFriendRequests(config),
		AcceptFriendRequestFromUserId = createAcceptFriendRequestFromUserId(config),
		DeclineFriendRequestFromUserId = createDeclineFriendRequestFromUserId(config),
		DeclineAllFriendRequests = createDeclineAllFriendRequests(config),
		GetFriendsCountFromUserId = createGetFriendsCountFromUserId(config),
		RequestFriendshipFromUserId = createRequestFriendshipFromUserId(config),
	}
end
