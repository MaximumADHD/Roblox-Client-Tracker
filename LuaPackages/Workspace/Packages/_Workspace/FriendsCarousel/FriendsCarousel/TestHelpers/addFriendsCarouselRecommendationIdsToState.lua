local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local Constants = require(FriendsCarousel.Common.Constants)
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum
local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource

local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local RECS_SOURCE = if getFFlagSocialMoveRecsSource()
	then RecommendationSourceEnum.HomepageFriendsCarousel
	else Constants.RECS_SOURCE
local addFriendsCarouselRecommendationIdsToState = function(state)
	local recommendationsDict = getDeepValue(
		state,
		string.format("%s.Friends.recommendations.byUserId.%s", RODUX_KEY, "test")
	) or {}

	local FriendsCarouselRecommndationIds = {}
	for id, _ in pairs(recommendationsDict) do
		FriendsCarouselRecommndationIds[id] = true
	end

	state[RODUX_KEY].Friends.recommendations.bySource = {
		[RECS_SOURCE] = FriendsCarouselRecommndationIds,
	}
end

return addFriendsCarouselRecommendationIdsToState
