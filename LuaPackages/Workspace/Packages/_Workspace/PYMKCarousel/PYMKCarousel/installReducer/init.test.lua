local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local mockedAddOmniRecommendationsAction = require(PYMKCarousel.TestHelpers.mockedAddOmniRecommendationsAction)
local RoduxFriends = dependencies.RoduxFriends
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType
local Constants = require(PYMKCarousel.Common.Constants)
local llama = dependencies.llama
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum

local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource

local installReducer = require(script.Parent)

local defaultState = {
	Friends = {
		countsByUserId = {},
		byUserId = {},
		requests = {
			receivedCount = 0,
			byUserId = {},
			mutualFriends = {},
			originSourceType = {},
			sentAt = {},
			sourceUniverseIds = {},
		},
		recommendations = {
			byUserId = {},
			bySource = {},
			hasIncomingFriendRequest = {},
		},
		friendshipStatus = {},
		friendsRankByUserId = {},
		contactNamesByUserId = {},
	},
	Users = {
		byUserId = {},
		byUsername = {},
	},
	NetworkStatus = {},
}

local defaultStateWithSessionId = llama.Dictionary.join(defaultState, {
	Analytics = { bySessionKey = { PYMKRecommendationsSessionId = "recommendationSessionId" } },
})
local defaultStateWithoutSessionId = llama.Dictionary.join(defaultState, {
	Analytics = { bySessionKey = {} },
})

local config = {
	contentType = "RecommendedFriend",
	treatmentType = "FriendRecommendationCarousel",
}

local LOCAL_USER_ID = "12345678"

describe("PYMKCarousel reducer", function()
	it("SHOULD return default state if action is not implemented for this reducer", function()
		local newState = installReducer(config)({}, { type = "IDontKnowThisAction" })
		jestExpect(newState).toEqual(defaultStateWithoutSessionId)
	end)

	describe("WHEN AddOmniRecommendations", function()
		it("SHOULD return empty state if config.contentType doesn't match RecommendedFriend", function()
			local wrongConfig = {
				contentType = "ThisIsNotRecommendedFriend",
				treatmentType = "FriendRecommendationCarousel",
			}
			local newState = installReducer(wrongConfig)({}, mockedAddOmniRecommendationsAction.withRecommendedFriends)
			local emptyState = defaultStateWithSessionId
			if getFFlagSocialMoveRecsSource() then
				emptyState.Friends.recommendations.bySource[RecommendationSourceEnum.HomepagePYMKCarousel] = {}
			else
				emptyState.Friends.recommendations.bySource[Constants.RECS_SOURCE] = {}
			end
			jestExpect(newState).toEqual(emptyState)
		end)

		it(
			"SHOULD return state with empty Users and Recommendations if config.treatmentType doesn't match FriendRecommendationCarousel",
			function()
				local wrongConfig = {
					contentType = "RecommendedFriend",
					treatmentType = "NotFriendRecommendationCarousel",
				}
				local newState =
					installReducer(wrongConfig)({}, mockedAddOmniRecommendationsAction.withRecommendedFriends)
				jestExpect(newState.Friends.recommendations.byUserId).toEqual({})
				jestExpect(newState.Users.byUserId).toEqual({})
			end
		)
		it("SHOULD return default state without sessionId if action doesn't have recommended friends", function()
			local newState = installReducer(config)({}, mockedAddOmniRecommendationsAction.withoutRecommendedFriends)
			jestExpect(newState).toEqual(defaultStateWithoutSessionId)
		end)

		it("SHOULD return updated state with sessionId if action have recommended friends", function()
			local newExpectedState = {
				Friends = {
					countsByUserId = {},
					byUserId = {},
					requests = {
						receivedCount = 0,
						byUserId = {},
						originSourceType = {},
						mutualFriends = {},
						sentAt = {},
						sourceUniverseIds = {},
					},
					recommendations = {
						bySource = if getFFlagSocialMoveRecsSource()
							then {
								[RecommendationSourceEnum.HomepagePYMKCarousel] = {
									RecommendedFriend1 = true,
									RecommendedFriend2 = true,
									RecommendedFriend3 = true,
								},
							}
							else {
								[Constants.RECS_SOURCE] = {
									RecommendedFriend1 = true,
									RecommendedFriend2 = true,
									RecommendedFriend3 = true,
								},
							},
						hasIncomingFriendRequest = {
							RecommendedFriend1 = false,
							RecommendedFriend2 = true,
							RecommendedFriend3 = false,
						},
						byUserId = {
							[LOCAL_USER_ID] = {
								RecommendedFriend3 = {
									id = "RecommendedFriend3",
									contextType = RecommendationContextType.Frequents,
									rank = 8,
									mutualFriendsList = {},
									mutualFriendsCount = 0,
								},
								RecommendedFriend2 = {
									id = "RecommendedFriend2",
									contextType = RecommendationContextType.MutualFriends,
									rank = 5,
									mutualFriendsList = {},
									mutualFriendsCount = 5,
								},
								RecommendedFriend1 = {
									id = "RecommendedFriend1",
									contextType = RecommendationContextType.Frequents,
									rank = 10,
									mutualFriendsList = {},
									mutualFriendsCount = 0,
								},
							},
						},
					},
					friendshipStatus = {},
					friendsRankByUserId = {},
					contactNamesByUserId = {},
				},
				Users = {
					byUserId = {
						RecommendedFriend3 = {
							id = "RecommendedFriend3",
							username = "userName3",
							displayName = "displayName3",
						},
						RecommendedFriend2 = {
							id = "RecommendedFriend2",
							username = "userName2",
							displayName = "displayName2",
						},
						RecommendedFriend1 = {
							id = "RecommendedFriend1",
							username = "userName1",
							displayName = "displayName1",
						},
					},
					byUsername = {
						userName2 = "RecommendedFriend2",
						userName1 = "RecommendedFriend1",
						userName3 = "RecommendedFriend3",
					},
				},
				NetworkStatus = {},
				Analytics = {
					bySessionKey = {
						PYMKRecommendationsSessionId = "recommendationSessionId",
					},
				},
			}
			local newState = installReducer(config)({}, mockedAddOmniRecommendationsAction.withRecommendedFriends)
			jestExpect(newState).toEqual(newExpectedState)
		end)
	end)
end)
