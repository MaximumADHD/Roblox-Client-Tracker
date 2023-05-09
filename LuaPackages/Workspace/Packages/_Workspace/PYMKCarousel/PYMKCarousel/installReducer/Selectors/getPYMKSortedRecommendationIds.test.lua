local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local mockedRecommendations = require(PYMKCarousel.TestHelpers.mockedRecommendations)
local Constants = require(PYMKCarousel.Common.Constants)
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum

local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource
local getPYMKSortedRecommendationIds = require(script.Parent.getPYMKSortedRecommendationIds)

local RECS_SOURCE = if getFFlagSocialMoveRecsSource()
	then RecommendationSourceEnum.HomepagePYMKCarousel
	else Constants.RECS_SOURCE

it("SHOULD return empty list if there is no recommendations", function()
	local state = mockedRecommendations.state
	local localUserId = state.LocalUserId
	local oldStateRecommendations = state.PYMKCarousel.Friends.recommendations
	state.PYMKCarousel.Friends.recommendations = { byUserId = {}, bySource = {} } :: any

	jestExpect(getPYMKSortedRecommendationIds(localUserId)(state)).toEqual({})

	state.PYMKCarousel.Friends.recommendations = oldStateRecommendations
end)

it("SHOULD return empty list if there is no PYMK recommendations", function()
	local state = mockedRecommendations.state
	local localUserId = state.LocalUserId

	local oldStateRecommendations = state.PYMKCarousel.Friends.recommendations.bySource[RECS_SOURCE]
	state.PYMKCarousel.Friends.recommendations.bySource[RECS_SOURCE] = {}

	jestExpect(getPYMKSortedRecommendationIds(localUserId)(state)).toEqual({})

	state.PYMKCarousel.Friends.recommendations.bySource[RECS_SOURCE] = oldStateRecommendations
end)

it("SHOULD return sorted by rank list of PYMK recommendations only", function()
	local state = mockedRecommendations.state
	local localUserId = state.LocalUserId
	local oldStateRecommendations = state.PYMKCarousel.Friends.recommendations.bySource[RECS_SOURCE]

	local recommendationIds = mockedRecommendations.recommendationIds
	state.PYMKCarousel.Friends.recommendations.bySource[RECS_SOURCE] = {
		[recommendationIds.mutualContextPlural] = true,
		[recommendationIds.noContext] = true,
		[recommendationIds.mutualContextSingle] = true,
	}

	jestExpect(getPYMKSortedRecommendationIds(localUserId)(state)).toEqual({
		{
			id = recommendationIds.noContext,
			absolutePosition = 1,
			recommendationContextType = RecommendationContextType.None,
			recommendationRank = 6,
		},
		{
			id = recommendationIds.mutualContextPlural,
			absolutePosition = 2,
			recommendationContextType = RecommendationContextType.MutualFriends,
			recommendationRank = 10,
		},
		{
			id = recommendationIds.mutualContextSingle,
			absolutePosition = 3,
			recommendationContextType = RecommendationContextType.MutualFriends,
			recommendationRank = 12,
		},
	})

	state.PYMKCarousel.Friends.recommendations.bySource[RECS_SOURCE] = oldStateRecommendations
end)
