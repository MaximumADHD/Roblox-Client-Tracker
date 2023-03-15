local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

local ButtonClickEvents = require(script.ButtonClickEvents)
local ImpressionEvents = require(script.ImpressionEvents)
local Context = require(script.AnalyticsContext)

local getFFlagAddFriendsFullSearchbarAnalytics = dependencies.getFFlagAddFriendsFullSearchbarAnalytics

return {
	Class = require(script.FriendsLandingAnalytics),
	Context = Context,
	connect = ContextUtils.getConnect(Context),
	with = ContextUtils.getWith(Context),
	ButtonClickEvents = ButtonClickEvents,
	AddFriendsPageLoadAnalytics = require(script.AddFriendsPageLoadAnalytics),
	AddFriendsSearchbarPressedEvent = if getFFlagAddFriendsFullSearchbarAnalytics()
		then require(script.AddFriendsSearchbarPressedEvent)
		else nil,
	ImpressionEvents = ImpressionEvents,
	PlayerSearchEvent = require(script.PlayerSearchEvent),
}
