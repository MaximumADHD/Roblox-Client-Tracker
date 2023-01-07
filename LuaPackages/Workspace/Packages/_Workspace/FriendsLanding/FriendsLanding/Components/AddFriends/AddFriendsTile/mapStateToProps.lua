local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

return function(state, props)
	local originSourceType = getDeepValue(state, "FriendsLanding.RequestsFromOriginSourceType") or {}
	local userId = props.user.id

	return {
		friendStatus = state.FriendStatuses[userId],
		localUserId = state.LocalUserId,
		screenSize = state.ScreenSize,
		originSourceType = originSourceType[userId],
	}
end
