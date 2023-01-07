local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local RoduxUsers = dependencies.RoduxUsers
local transformOmniRecommendationsToActions = require(script.Parent.transformOmniRecommendationsToActions)
local OmniTypes = require(PYMKCarousel.Common.OmniTypes)

local recommendationToUsersAction = function(recommendation: OmniTypes.FriendRecommendation)
	return RoduxUsers.Actions.UserUpdated({
		id = tostring(recommendation.userId),
		username = recommendation.userName,
		displayName = recommendation.displayName,
	})
end

return function(config: OmniTypes.Config)
	return {
		AddContentMetadata = function(action)
			--* Used to load more data for content type - it's not implemeted for PYMK yet
			--* ApiFetchOmniRecommendationsMetadata fetch
			return { action }
		end,
		AddOmniRecommendations = function(action: OmniTypes.AddOmniRecommendations)
			return transformOmniRecommendationsToActions(
				action.recommendations or {},
				config,
				recommendationToUsersAction
			)
		end,
	}
end
