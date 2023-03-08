local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local UserUtils = require(SocialTab.User)
local SocialLibraries = dependencies.SocialLibraries
local SelfViewProfileDiscoverabilityUpsellIXP = dependencies.SelfViewProfileDiscoverabilityUpsellIXP
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

return function(state, props)
	local showModalParams = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
		then getDeepValue(state, "SocialTab.ShowContactImporterParams") or {}
		else nil

	return {
		unreadConversationCount = state.SocialTab.UnreadConversationCount or 0,
		numberOfNotifications = state.NotificationBadgeCounts.TopBarNotificationIcon,
		localUser = UserUtils.mapToUsers(state, props)(state.LocalUserId),
		localUserId = state.LocalUserId or nil,
		isPhoneVerified = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
			then showModalParams.isPhoneVerified
			else nil,
		isDiscoverabilityUnset = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
			then showModalParams.isDiscoverabilityUnset
			else nil,
	}
end
