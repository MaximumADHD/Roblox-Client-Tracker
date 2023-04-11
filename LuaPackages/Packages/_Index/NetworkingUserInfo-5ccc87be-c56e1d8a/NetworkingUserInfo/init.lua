--[[
	The RoduxProfile package API.
]]

local networkRequests = script.networkRequests
local createGetUserPremiumMembershipStatus = require(
	networkRequests.createGetUserPremiumMembershipStatus
)
local createGetFollowersCount = require(networkRequests.createGetFollowersCount)
local createGetFollowingsCount = require(networkRequests.createGetFollowingsCount)
local createGetFriendshipStatus = require(networkRequests.createGetFriendshipStatus)
local createGetFollowingExists = require(networkRequests.createGetFollowingExists)
local createFollowUserById = require(networkRequests.createFollowUserById)
local createUnfollowUserById = require(networkRequests.createUnfollowUserById)
local createGetUserFollowers = require(networkRequests.createGetUserFollowers)
local createGetExtendedFriendshipStatus = require(networkRequests.createGetExtendedFriendshipStatus)

local function createRequestThunks(config)
	return {
		GetUserPremiumMembershipStatus = createGetUserPremiumMembershipStatus(config),
		GetFollowingsCount = createGetFollowingsCount(config),
		GetFollowersCount = createGetFollowersCount(config),
		GetFriendshipStatus = createGetFriendshipStatus(config),
		GetFollowingExists = createGetFollowingExists(config),
		FollowUserById = createFollowUserById(config),
		UnfollowUserById = createUnfollowUserById(config),
		GetUserFollowers = createGetUserFollowers(config),
		GetExtendedFriendshipStatus = createGetExtendedFriendshipStatus(config),
	}
end

return {
	config = createRequestThunks,
}
