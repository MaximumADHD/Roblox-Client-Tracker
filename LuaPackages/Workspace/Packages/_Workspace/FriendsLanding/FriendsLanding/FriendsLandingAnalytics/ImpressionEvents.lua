local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local enumerate = dependencies.enumerate
local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics
local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

return enumerate(script.Name, {
	ContactWarningSeen = "contactWarningSeen",
	ContactImporterBannerSeen = "contactImporterBannerSeen",
	ContactImporterOnAddFriends = "contactImporterOnAddFriends",
	FriendPruningTooltipSeen = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then "friendPruningTooltipSeen"
		else nil,
	FriendPruningNewBadgeSeen = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then "friendPruningNewBadgeSeen"
		else nil,
	ProfileQRCodeBannerSeen = if getFFlagAddFriendsQRCodeAnalytics() then "profileQRCodeBannerSeen" else nil,
})
