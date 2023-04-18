--!nonstrict

local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local dependencies = require(FriendsCarousel.dependencies)
local llama = dependencies.llama
local baseTestStates = devDependencies.baseTestStates

local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local RECS_SOURCE = require(FriendsCarousel.Common.Constants).RECS_SOURCE

local addFriendsCarouselRecommendationIdsToState =
	require(FriendsCarousel.TestHelpers.addFriendsCarouselRecommendationIdsToState)

local getRecommendationsList = require(script.Parent.getRecommendationsList)

it("SHOULD return empty list if user has >= 7 friends", function()
	local state = baseTestStates.manyFriendsAndRecommendations
	addFriendsCarouselRecommendationIdsToState(state)

	local recommendationsList = getRecommendationsList(state, RODUX_KEY)
	jestExpect(recommendationsList).toEqual({})
end)

it("SHOULD return correct list if user has < 7 friends", function()
	local state = baseTestStates.friendsAndRecommendations
	addFriendsCarouselRecommendationIdsToState(state)

	local localUserId = state.LocalUserId

	local optionalFields = {
		isFriendWithUser = false,
		hasPendingFriendRequest = false,
		canSendFriendRequest = true,
	}

	local recommendationsList = getRecommendationsList(state, RODUX_KEY)
	jestExpect(recommendationsList[1]).toEqual(
		llama.Dictionary.join(
			state[RODUX_KEY].Users.byUserId["recom2"],
			state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom2"],
			optionalFields
		)
	)
	jestExpect(recommendationsList[2]).toEqual(
		llama.Dictionary.join(
			state[RODUX_KEY].Users.byUserId["recom1"],
			state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom1"],
			optionalFields
		)
	)
	jestExpect(recommendationsList[3]).toEqual(
		llama.Dictionary.join(
			state[RODUX_KEY].Users.byUserId["recom4"],
			state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom4"],
			{
				isFriendWithUser = false,
				hasPendingFriendRequest = true,
				canSendFriendRequest = false,
			}
		)
	)
	jestExpect(recommendationsList[4]).toEqual(
		llama.Dictionary.join(
			state[RODUX_KEY].Users.byUserId["recom3"],
			state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom3"],
			{
				isFriendWithUser = false,
				hasPendingFriendRequest = false,
				canSendFriendRequest = false,
			}
		)
	)
end)

it("SHOULD return empty list if user has < 7 friends and no recommendations", function()
	local state = baseTestStates.smallNumbersOfFriends
	state[RODUX_KEY].Friends.recommendations = {}
	addFriendsCarouselRecommendationIdsToState(state)

	local recommendationsList = getRecommendationsList(state, RODUX_KEY)
	jestExpect(recommendationsList).toEqual({})
end)

it("SHOULD return only recommendations with ids in FriendsCarousel Source", function()
	local state = baseTestStates.friendsAndRecommendations
	state[RODUX_KEY].Friends.recommendations.bySource = {
		[RECS_SOURCE] = { recom1 = true, recom4 = true },
	}
	local localUserId = state.LocalUserId

	local recommendationsList = getRecommendationsList(state, RODUX_KEY)

	jestExpect(#recommendationsList).toEqual(2)
	jestExpect(recommendationsList[1]).toEqual(
		llama.Dictionary.join(
			state[RODUX_KEY].Users.byUserId["recom1"],
			state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom1"],
			{
				isFriendWithUser = false,
				hasPendingFriendRequest = false,
				canSendFriendRequest = true,
			}
		)
	)
	jestExpect(recommendationsList[2]).toEqual(
		llama.Dictionary.join(
			state[RODUX_KEY].Users.byUserId["recom4"],
			state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom4"],
			{
				isFriendWithUser = false,
				hasPendingFriendRequest = true,
				canSendFriendRequest = false,
			}
		)
	)
end)
