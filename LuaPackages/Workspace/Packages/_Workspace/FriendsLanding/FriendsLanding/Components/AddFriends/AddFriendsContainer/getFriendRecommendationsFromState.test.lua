local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum

local RODUX_KEY = require(FriendsLanding.Common.Constants).RODUX_KEY
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local addFriendRecommendationsToState = require(FriendsLanding.TestHelpers.addFriendRecommendationsToState)

local getFriendRecommendationsFromState = require(script.Parent.getFriendRecommendationsFromState)
local baseTestStates = getBaseTestStates()

describe("getFriendRecommendationsFromState", function()
	local checkRecommendationsExist = function(mockedStateType)
		it("SHOULD return ranked list for user with" .. mockedStateType, function()
			local state = baseTestStates[mockedStateType]
			local localUserId = state.LocalUserId

			addFriendRecommendationsToState(state)
			local recommendationsList = getFriendRecommendationsFromState(state)
			local optionalFields = {
				isRecommendation = true,
			}

			expect(recommendationsList[1]).toEqual(
				llama.Dictionary.join(
					state[RODUX_KEY].Users.byUserId["recom2"],
					state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom2"],
					optionalFields
				)
			)
			expect(recommendationsList[2]).toEqual(
				llama.Dictionary.join(
					state[RODUX_KEY].Users.byUserId["recom1"],
					state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom1"],
					optionalFields
				)
			)
			expect(recommendationsList[3]).toEqual(
				llama.Dictionary.join(
					state[RODUX_KEY].Users.byUserId["recom4"],
					state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom4"],
					optionalFields
				)
			)
			expect(recommendationsList[4]).toEqual(
				llama.Dictionary.join(
					state[RODUX_KEY].Users.byUserId["recom3"],
					state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom3"],
					optionalFields
				)
			)
		end)
	end

	-- Should return right recommendations for all states in baseTestStates that have recommendations
	checkRecommendationsExist("manyFriendsAndRecommendations")
	checkRecommendationsExist("friendsAndRecommendations")

	it("SHOULD return empty list if user has no recommendations", function()
		local state = baseTestStates.smallNumbersOfFriends
		state[RODUX_KEY].Friends.recommendations = {}
		addFriendRecommendationsToState(state)
		local recommendationsList = getFriendRecommendationsFromState(state)
		expect(recommendationsList).toEqual({})
	end)

	it("SHOULD return only recommendations with ids in addUniversalFriends source", function()
		local state = baseTestStates.friendsAndRecommendations
		state[RODUX_KEY].Friends.recommendations.bySource = {
			[RecommendationSourceEnum.AddFriendsPage] = { recom1 = true, recom4 = true },
		}
		local localUserId = state.LocalUserId

		local recommendationsList = getFriendRecommendationsFromState(state)

		expect(#recommendationsList).toEqual(2)
		expect(recommendationsList[1]).toEqual(
			llama.Dictionary.join(
				state[RODUX_KEY].Users.byUserId["recom1"],
				state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom1"],
				{
					isRecommendation = true,
				}
			)
		)
		expect(recommendationsList[2]).toEqual(
			llama.Dictionary.join(
				state[RODUX_KEY].Users.byUserId["recom4"],
				state[RODUX_KEY].Friends.recommendations.byUserId[localUserId]["recom4"],
				{
					isRecommendation = true,
				}
			)
		)
	end)
end)
