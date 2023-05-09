local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY = require(FriendsLanding.Common.Constants).RODUX_KEY

local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)

return function(state, props)
	local originSourceType = getDeepValue(state, "FriendsLanding.RequestsFromOriginSourceType") or {}
	local userId = props.user.id
	local hasIncomingFriendRequest = if getFFlagAddFriendsPYMKExperimentEnabled()
		then getDeepValue(
			state,
			string.format("%s.Friends.recommendations.hasIncomingFriendRequest.%s", RODUX_KEY, userId)
		) or false
		else nil

	local friendStatus = if getFFlagAddFriendsPYMKExperimentEnabled()
		then getDeepValue(state, string.format("FriendsLanding.Friends.friendshipStatus.%s", userId)) or nil
		else nil
	return {
		friendStatus = if getFFlagAddFriendsPYMKExperimentEnabled() then friendStatus else state.FriendStatuses[userId],
		localUserId = state.LocalUserId,
		screenSize = state.ScreenSize,
		originSourceType = originSourceType[userId],
		hasIncomingFriendRequest = if getFFlagAddFriendsPYMKExperimentEnabled() then hasIncomingFriendRequest else nil,
	}
end
