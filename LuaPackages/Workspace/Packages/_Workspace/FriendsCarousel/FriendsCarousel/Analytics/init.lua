local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

local Context = require(script.FriendsCarouselAnalyticsContext)
local setupFireEvent = require(script.setupFireEvent)
local useAnalytics = require(script.useAnalytics)

return {
	setupFireEvent = setupFireEvent,
	Context = Context,
	connect = ContextUtils.getConnect(Context),
	with = ContextUtils.getWith(Context),
	EventNames = require(script.EventNames),
	useAnalytics = useAnalytics,
}
