local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local OmniTypes = require(PYMKCarousel.Common.OmniTypes)
local transformOmniRecommendationsToActions = require(script.Parent.transformOmniRecommendationsToActions)
local RECOMMENDATION_SESSION_ID_KEY = require(PYMKCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY
local convertActions = dependencies.convertActions
local RoduxAnalytics = dependencies.RoduxAnalytics

local reducer = RoduxAnalytics.installReducer()

local addSessionIdAction = function(
	recommendationsSort: OmniTypes.RecommendationsSort?,
	_recommendationsMetadata: OmniTypes.RecommendationsMetadata?
)
	local recommendationSessionId
	if
		recommendationsSort
		and recommendationsSort.recommendations
		and #recommendationsSort.recommendations > 0
		and recommendationsSort.recommendations[1]
		and recommendationsSort.recommendations[1].contentMetadata
	then
		local contentMetadata = recommendationsSort.recommendations[1].contentMetadata
		recommendationSessionId = if contentMetadata then contentMetadata.recommendationRequestId else nil
	end

	return RoduxAnalytics.Actions.SessionIdUpdated({
		sessionKey = RECOMMENDATION_SESSION_ID_KEY,
		sessionId = recommendationSessionId,
	})
end

local RoduxAnalyticsAdaptor = function(config: OmniTypes.Config): any
	return {
		AddOmniRecommendations = function(action: OmniTypes.AddOmniRecommendations)
			return transformOmniRecommendationsToActions(action.recommendations or {}, config, nil, addSessionIdAction)
		end,
	}
end

return function(config)
	return convertActions(reducer, RoduxAnalyticsAdaptor(config), {})
end
