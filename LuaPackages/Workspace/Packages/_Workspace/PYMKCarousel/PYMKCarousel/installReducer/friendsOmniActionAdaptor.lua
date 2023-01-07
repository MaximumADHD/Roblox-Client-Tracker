local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local Players = dependencies.Players
local llama = dependencies.llama

local transformOmniRecommendationsToActions = require(script.Parent.transformOmniRecommendationsToActions)
local OmniTypes = require(PYMKCarousel.Common.OmniTypes)
local Constants = require(PYMKCarousel.Common.Constants)
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType

local getFFlagPYMKCarouselIncomingFriendshipReducer =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendshipReducer)
local getFFlagPYMKCarouselFixAnalyticsFields = require(PYMKCarousel.Flags.getFFlagPYMKCarouselFixAnalyticsFields)

local isContextTypeDefined = function(contextType: string?)
	local contextTypeEnum = RecommendationContextType.fromRawValue(contextType)
	return contextTypeEnum and contextTypeEnum ~= RecommendationContextType.None
end

local newRecommendationFromOmni =
	function(recommendation: OmniTypes.FriendRecommendation, index: number, metadata: OmniTypes.RecommendationMetadata)
		local contextType = if isContextTypeDefined(recommendation.contextType)
			then recommendation.contextType
			else metadata.contextType

		local mutualFriendsCount
		if getFFlagPYMKCarouselFixAnalyticsFields() then
			mutualFriendsCount = metadata.mutualFriendsCount and tonumber(metadata.mutualFriendsCount) or 0
			if contextType == RecommendationContextType.MutualFriends.rawValue() and mutualFriendsCount == 0 then
				contextType = RecommendationContextType.None.rawValue()
			end
		end

		return {
			id = tostring(recommendation.userId),
			contextType = contextType,
			mutualFriendsList = recommendation.mutualFriendDisplayName,
			rank = if metadata.rank then tonumber(metadata.rank) else index,
			mutualFriendsCount = if getFFlagPYMKCarouselFixAnalyticsFields()
				then mutualFriendsCount
				else metadata.mutualFriendsCount and tonumber(metadata.mutualFriendsCount) or 0,
			hasIncomingFriendRequest = if getFFlagPYMKCarouselIncomingFriendshipReducer()
				then metadata.hasPendingFriendRequest == Constants.BE_TRUE_VALUE
				else nil,
		}
	end

local recommendationToFriendsAction =
	function(recommendation: OmniTypes.FriendRecommendation, index: number, metadata: OmniTypes.RecommendationMetadata)
		local localPlayer = Players.LocalPlayer
		assert(localPlayer, "LocalPlayer must be non-nil")
		local localUserId = tostring(localPlayer.UserId)

		return RoduxFriends.Actions.RecommendationCreated({
			baseUserId = localUserId,
			recommendedUser = newRecommendationFromOmni(recommendation, index, metadata),
		})
	end

local recommendationsToSourceAction = function(
	_recommendationsSort: OmniTypes.RecommendationsSort?,
	recommendationsMetadata: OmniTypes.RecommendationsMetadata?
)
	local recommendationIds = llama.Dictionary.keys(recommendationsMetadata or {})

	return RoduxFriends.Actions.RecommendationSourceCreated({
		source = Constants.RECS_SOURCE,
		recommendationIds = recommendationIds,
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
				recommendationToFriendsAction,
				recommendationsToSourceAction
			)
		end,
	}
end
