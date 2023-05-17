local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLibraries = dependencies.SocialLibraries

local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local RECOMMENDATION_SESSION_ID_KEY = require(FriendsCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)
local getFriendsList = require(script.Parent.getFriendsList)
local getRecommendationsList = require(script.Parent.getRecommendationsList)
local getCarouselList = require(script.Parent.getCarouselList)
local getCarouselFetchingStatus = require(script.Parent.getCarouselFetchingStatus)
local showRecommendations = require(FriendsCarousel.Utils.showRecommendations)
local NetworkStatus = dependencies.RoduxNetworking.Enum.NetworkStatus
local getSessionIdByKey = dependencies.RoduxAnalytics.Selectors.getSessionIdByKey

local mapStateToProps = function(state, props)
	local localUserId = tostring(state.LocalUserId)
	local friendsList = getFriendsList(state, RODUX_KEY, props)
	local recommendationsList = if props.showRecommendations
		then getRecommendationsList(state, RODUX_KEY, props)
		else {}
	local friendsAndRecList = getCarouselList(friendsList, recommendationsList)

	local friendCount = getDeepValue(state, string.format("%s.Friends.countsByUserId.%s", RODUX_KEY, localUserId)) or 0
	local friendRequestCount = getDeepValue(state, string.format("%s.Friends.requests.receivedCount", RODUX_KEY)) or 0
	local fetchingStatus = getCarouselFetchingStatus(state, localUserId, showRecommendations(friendCount))

	friendsAndRecList = friendsAndRecList or {}
	if fetchingStatus ~= NetworkStatus.Done then
		table.insert(friendsAndRecList, { isLoading = true })
	end

	local recommendationCount = recommendationsList and #recommendationsList or 0

	local recommendationSessionId = getSessionIdByKey(state)(RECOMMENDATION_SESSION_ID_KEY)

	return {
		localUserId = localUserId :: string,
		friendsAndRecList = friendsAndRecList :: LocalTypes.CarouselList,
		friendCount = friendCount :: number,
		recommendationCount = recommendationCount :: number,
		friendRequestCount = friendRequestCount :: number,
		fetchingStatus = fetchingStatus :: Enum,
		recommendationSessionId = recommendationSessionId,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
