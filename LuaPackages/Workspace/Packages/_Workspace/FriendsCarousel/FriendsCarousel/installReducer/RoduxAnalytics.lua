local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local convertActions = dependencies.convertActions
local NetworkingFriends = dependencies.NetworkingFriends
local RoduxAnalytics = dependencies.RoduxAnalytics
local RECOMMENDATION_SESSION_ID_KEY = require(FriendsCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY

local reducer = RoduxAnalytics.installReducer()

return convertActions(reducer, {
	[NetworkingFriends.GetFriendRecommendationsFromUserId.Succeeded.name] = function(action)
		local recommendationSessionId = action.responseBody.recommendationRequestId

		local SessionIdUpdatedAction = RoduxAnalytics.Actions.SessionIdUpdated({
			sessionKey = RECOMMENDATION_SESSION_ID_KEY,
			sessionId = recommendationSessionId,
		})

		return { SessionIdUpdatedAction }
	end,
}, {})
