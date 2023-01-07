local PYMKCarousel = script.Parent.Parent
local getFFlagPYMKCarouselFixAnalyticsFields = require(PYMKCarousel.Flags.getFFlagPYMKCarouselFixAnalyticsFields)

return {
	RODUX_KEY = "PYMKCarousel",
	RECS_SOURCE = "PYMKCarousel",
	PYMKCarouselSourceName = if getFFlagPYMKCarouselFixAnalyticsFields() then "" else "PYMKCarousel",
	HomepagePYMKCarouselSourceName = if getFFlagPYMKCarouselFixAnalyticsFields() then "HomepagePYMKCarousel" else "",
	RECOMMENDATION_SESSION_ID_KEY = "PYMKRecommendationsSessionId",

	--* Boolean value returned from BE as a string
	BE_TRUE_VALUE = "True",
	BE_FALSE_VALUE = "False",
}
