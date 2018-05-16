local PlayerService = game:GetService("Players")

-- gameDetailReferral : sent when a user clicks to navigate to a game detail page.
-- eventContext : (string) a cryptic value to specify where the referral happened. See below...
-- page : (string) the page where the event originated
-- totalItems : (number) the total number of items in the sort
-- placeId : (string) the placeId of the game being referred
-- isAd : (bool) is this a native ad
return function(eventStreamImpl, eventContext, page, totalItems, placeId, isAd)
	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(page) == "string", "Expected page to be a string")
	assert(type(totalItems) == "number", "Expected totalItems to be a number")
	assert(type(placeId) == "number", "Expected placeId to be a number")
	assert(type(isAd) == "boolean", "Expected isAd to be a bool")

	local eventName = "gameDetailReferral"
	local userId = tostring(PlayerService.LocalPlayer.UserId)
	local adValue = isAd and "yes" or "no"

	eventStreamImpl:setRBXEventStream(eventContext, eventName, {
		pg = page,
		tis = totalItems,
		pid = placeId,
		uid = userId,
		ad = adValue,
	})
end

-- possible values for eventContext include :
--     gamesort_SortFilter<1>_TimeFilter<1>_GenreFilter<1>_Position<1>
--     recommendation_Type<1>_Position<1>
--     gamesearch_Position<1>
--     home_SortFilter<1>_Position<1>
--     profile_Position<1>

-- possible values for page include :
--     profile
--     games
--     gamesSeeAll
--     home
--     gameSearch
--     recommendation