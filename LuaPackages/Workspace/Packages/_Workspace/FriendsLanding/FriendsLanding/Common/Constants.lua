local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local getFFlagSocialAddGameJoinSource = dependencies.getFFlagSocialAddGameJoinSource

return {
	TOOLTIP_GAME_ENGINE_FEATURE = "UniversalAppContactImporterTooltipStorageKey",
	TOOLTIP_APP_STORAGE_KEY = "ContactImporterTooltipSeen",
	RODUX_KEY = "FriendsLanding",
	FriendsLandingPageSourceName = if getFFlagSocialAddGameJoinSource() then "FriendsLanding" else nil,
}
