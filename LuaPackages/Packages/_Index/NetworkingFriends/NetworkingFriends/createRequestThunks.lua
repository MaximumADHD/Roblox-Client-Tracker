--!strict
local networkingFriendsTypes = require(script.Parent.networkingFriendsTypes)

local networkRequests: any = script.Parent.networkRequests
local createGetFriendsFromUserId: (any) -> any = require(networkRequests.createGetFriendsFromUserId)
local createFindFriendsFromUserId: (any) -> any = require(networkRequests.createFindFriendsFromUserId);
local createSearchFriendsByQuery: (any) -> any = require(networkRequests.createSearchFriendsByQuery);
local createGetFriendRequestsCount: (any) -> any = require(networkRequests.createGetFriendRequestsCount)
local createUnfriendTargetUserId: (any) -> any = require(networkRequests.createUnfriendTargetUserId)
local createGetFriendRequests: (any) -> any = require(networkRequests.createGetFriendRequests)
local createAcceptFriendRequestFromUserId: (any) -> any = require(networkRequests.createAcceptFriendRequestFromUserId)
local createDeclineFriendRequestFromUserId: (any) -> any = require(networkRequests.createDeclineFriendRequestFromUserId)
local createDeclineAllFriendRequests: (any) -> any = require(networkRequests.createDeclineAllFriendRequests)
local createGetFriendsCountFromUserId: (any) -> any = require(networkRequests.createGetFriendsCountFromUserId)
local createGetInactiveFriends: (any) -> any = require(networkRequests.createGetInactiveFriends)
local createRequestFriendshipFromUserId: (any) -> any = require(networkRequests.createRequestFriendshipFromUserId)
local createRequestFriendshipFromContactId: (config: networkingFriendsTypes.Config) -> any =
	require(networkRequests.createRequestFriendshipFromContactId)
local createGetFollowingExists: (any) -> any = require(networkRequests.createGetFollowingExists)
local createGetUserFollowers: (any) -> any = require(networkRequests.createGetUserFollowers)
local createGetFriendRecommendationsFromUserId: (config: networkingFriendsTypes.Config) -> networkingFriendsTypes.GetFriendRecommendationsFromUserId =
	require(networkRequests.createGetFriendRecommendationsFromUserId)
local createGetFriendshipStatus: (config: networkingFriendsTypes.Config) -> any =
	require(networkRequests.createGetFriendshipStatus)
local createGetExtendedFriendshipStatus: (config: networkingFriendsTypes.Config) -> any =
	require(networkRequests.createGetExtendedFriendshipStatus)
local createAcceptFriendRequestWithToken: (any) -> any = require(networkRequests.createAcceptFriendRequestWithToken)
local createGetFollowersCount: (any) -> any = require(networkRequests.createGetFollowersCount)
local createGetFollowingsCount: (any) -> any = require(networkRequests.createGetFollowingsCount)

return function(config: networkingFriendsTypes.Config): networkingFriendsTypes.RequestThunks
	return {
		GetFriendsFromUserId = createGetFriendsFromUserId(config),
		FindFriendsFromUserId = createFindFriendsFromUserId(config),
		SearchFriendsByQuery = createSearchFriendsByQuery(config),
		GetFriendRequestsCount = createGetFriendRequestsCount(config),
		UnfriendTargetUserId = createUnfriendTargetUserId(config),
		GetFriendRequests = createGetFriendRequests(config),
		AcceptFriendRequestFromUserId = createAcceptFriendRequestFromUserId(config),
		DeclineFriendRequestFromUserId = createDeclineFriendRequestFromUserId(config),
		DeclineAllFriendRequests = createDeclineAllFriendRequests(config),
		GetFriendsCountFromUserId = createGetFriendsCountFromUserId(config),
		GetInactiveFriends = createGetInactiveFriends(config),
		RequestFriendshipFromUserId = createRequestFriendshipFromUserId(config),
		RequestFriendshipFromContactId = createRequestFriendshipFromContactId(config),
		GetFollowingExists = createGetFollowingExists(config),
		GetUserFollowers = createGetUserFollowers(config),
		GetFriendRecommendationsFromUserId = createGetFriendRecommendationsFromUserId(config),
		GetFriendshipStatus = createGetFriendshipStatus(config),
		GetExtendedFriendshipStatus = createGetExtendedFriendshipStatus(config),
		AcceptFriendRequestWithToken = createAcceptFriendRequestWithToken(config),
		GetFollowersCount = createGetFollowersCount(config),
		GetFollowingsCount = createGetFollowingsCount(config),
	}
end
