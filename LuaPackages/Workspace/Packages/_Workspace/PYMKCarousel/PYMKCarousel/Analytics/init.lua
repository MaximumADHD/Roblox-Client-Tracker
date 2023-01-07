local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

local Context = require(script.PYMKCarouselAnalyticsContext)
local setupFireEvent = require(script.setupFireEvent)
local useAnalytics = require(script.useAnalytics)
local useUserSeenEvent = require(script.useUserSeenEvent)

return {
	setupFireEvent = setupFireEvent,
	Context = Context,
	connect = ContextUtils.getConnect(Context),
	with = ContextUtils.getWith(Context),
	EventNames = require(script.EventNames),
	useAnalytics = useAnalytics,
	useUserSeenEvent = useUserSeenEvent,
}
