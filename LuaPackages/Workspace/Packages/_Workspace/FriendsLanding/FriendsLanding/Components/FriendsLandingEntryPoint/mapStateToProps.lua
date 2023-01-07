local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

return function(state)
	local friends = getDeepValue(state, string.format("FriendsLanding.Friends.byUserId.%s", state.LocalUserId))

	return {
		localUserId = state.LocalUserId,
		screenSize = state.ScreenSize,
		friendRequestCount = getDeepValue(state, "FriendsLanding.Friends.requests.receivedCount") or 0,
		totalFriendCount = friends and #friends or 0,
	}
end
