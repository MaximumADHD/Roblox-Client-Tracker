local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY = require(FriendsLanding.Common.Constants).RODUX_KEY

local getFFlagAddFriendsRecommendationsEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsRecommendationsEnabled)

return function(state, props)
	local originSourceType = getDeepValue(state, "FriendsLanding.RequestsFromOriginSourceType") or {}
	local userId = props.user.id
	local hasIncomingFriendRequest = if getFFlagAddFriendsRecommendationsEnabled()
		then getDeepValue(
			state,
			string.format("%s.Friends.recommendations.hasIncomingFriendRequest.%s", RODUX_KEY, userId)
		) or false
		else nil

	return {
		friendStatus = state.FriendStatuses[userId],
		localUserId = state.LocalUserId,
		screenSize = state.ScreenSize,
		originSourceType = originSourceType[userId],
		hasIncomingFriendRequest = if getFFlagAddFriendsRecommendationsEnabled() then hasIncomingFriendRequest else nil,
	}
end
