local FriendsCarousel = script.Parent.Parent
local getFFlagFriendsCarouselFixAnalyticsFields =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselFixAnalyticsFields)

return {
	RODUX_KEY = "FriendsCarousel",
	RECS_SOURCE = "FriendsCarousel",
	RECOMMENDATION_SESSION_ID_KEY = "friendRecommendationsSessionId",
	HomepageFriendsCarouselSourceName = if getFFlagFriendsCarouselFixAnalyticsFields()
		then "HomepageFriendsCarousel"
		else "",
}
