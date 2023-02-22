local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local enumerate = dependencies.enumerate
local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics

return enumerate(script.Name, {
	ContactWarningSeen = "contactWarningSeen",
	ContactImporterBannerSeen = "contactImporterBannerSeen",
	ContactImporterOnAddFriends = "contactImporterOnAddFriends",
	ProfileQRCodeBannerSeen = if getFFlagAddFriendsQRCodeAnalytics() then "profileQRCodeBannerSeen" else nil,
})
