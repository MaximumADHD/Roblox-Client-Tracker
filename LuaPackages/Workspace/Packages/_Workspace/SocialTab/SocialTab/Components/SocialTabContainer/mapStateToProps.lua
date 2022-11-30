local SocialTab = script:FindFirstAncestor("SocialTab")
local UserUtils = require(SocialTab.User)
return function(state, props)
	return {
		unreadConversationCount = state.SocialTab.UnreadConversationCount or 0,
		numberOfNotifications = state.NotificationBadgeCounts.TopBarNotificationIcon,
		localUser = UserUtils.mapToUsers(state, props)(state.LocalUserId),
		localUserId = state.LocalUserId or nil,
	}
end
