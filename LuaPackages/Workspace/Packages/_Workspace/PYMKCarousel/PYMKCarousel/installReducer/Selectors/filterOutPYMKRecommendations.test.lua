local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local mockedRecommendations = require(PYMKCarousel.TestHelpers.mockedRecommendations)
local RoduxFriends = dependencies.RoduxFriends
local Constants = require(PYMKCarousel.Common.Constants)

local filterOutPYMKRecommendations = require(script.Parent.filterOutPYMKRecommendations)

it("SHOULD return empty list if there is no recommendations", function()
	local state = mockedRecommendations.state
	local localUserId = state.LocalUserId
	local oldStateRecommendations = state.PYMKCarousel.Friends.recommendations

	state.PYMKCarousel.Friends.recommendations = { bySource = {}, byUserId = {} } :: any
	local recommendations = RoduxFriends.Selectors.getSortedByRankRecommendations(state, localUserId)

	jestExpect(filterOutPYMKRecommendations(recommendations)(state)).toEqual({})

	state.PYMKCarousel.Friends.recommendations = oldStateRecommendations
end)

it("SHOULD return empty list if there is no PYMK recommendations", function()
	local state = mockedRecommendations.state
	local localUserId = state.LocalUserId
	local oldStateRecommendations = state.PYMKCarousel.Friends.recommendations

	state.PYMKCarousel.Friends.recommendations.bySource = {}
	local recommendations = RoduxFriends.Selectors.getSortedByRankRecommendations(state, localUserId)

	jestExpect(filterOutPYMKRecommendations(recommendations)(state)).toEqual({})

	state.PYMKCarousel.Friends.recommendations = oldStateRecommendations
end)

it("SHOULD return list of PYMK recommendations only", function()
	local state = mockedRecommendations.state
	local localUserId = state.LocalUserId
	local oldStateRecommendations = state.PYMKCarousel.Friends.recommendations

	local recommendationIds = mockedRecommendations.recommendationIds
	state.PYMKCarousel.Friends.recommendations.bySource[Constants.RECS_SOURCE] = {
		[recommendationIds.mutualContextPlural] = true,
		[recommendationIds.noContext] = true,
		[recommendationIds.mutualContextSingle] = true,
	}

	local recommendations = RoduxFriends.Selectors.getSortedByRankRecommendations(state, localUserId)
	local recommendationsDict = state.PYMKCarousel.Friends.recommendations.byUserId[localUserId]

	jestExpect(filterOutPYMKRecommendations(recommendations)(state)).toEqual({
		recommendationsDict[recommendationIds.noContext],
		recommendationsDict[recommendationIds.mutualContextPlural],
		recommendationsDict[recommendationIds.mutualContextSingle],
	})

	state.PYMKCarousel.Friends.recommendations = oldStateRecommendations
end)
