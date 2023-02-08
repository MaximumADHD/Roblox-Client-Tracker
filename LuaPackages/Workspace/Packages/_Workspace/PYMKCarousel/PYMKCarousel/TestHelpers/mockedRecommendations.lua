local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local RoduxFriends = dependencies.RoduxFriends
local RoduxUsers = dependencies.RoduxUsers
local Recommendation = RoduxFriends.Models.Recommendation
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType
local User = RoduxUsers.Models.User
local Constants = require(PYMKCarousel.Common.Constants)
local RECOMMENDATION_SESSION_ID_KEY = require(PYMKCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY

local getFFlagPYMKCarouselIncomingFriendRequest = require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequest)

local recommendationIds = {
	longName = "1_longName",
	noContext = "2_noContext",
	mutualContextPlural = "3_mutualContextPlural",
	mutualContextSingle = "4_mutualContextSingle",
	mutualContextNone = "5_mutualContextNone",
	frequentContext = "6_frequentContext",
	pendingFriendRequest = "7_pendingFriendRequest",
}

local state = {
	LocalUserId = "123456",
	PYMKCarousel = {
		NetworkStatus = {},
		Users = {
			byUserId = {
				[recommendationIds.longName] = User.mock({
					displayName = "Very Long Display Name",
				}),
				[recommendationIds.noContext] = User.mock(),
				[recommendationIds.mutualContextPlural] = User.mock(),
				[recommendationIds.mutualContextSingle] = User.mock(),
				[recommendationIds.mutualContextNone] = User.mock(),
				[recommendationIds.frequentContext] = User.mock(),
				[recommendationIds.pendingFriendRequest] = User.mock(),
			},
		},
		Friends = {
			recommendations = {
				bySource = {
					[Constants.RECS_SOURCE] = {
						[recommendationIds.longName] = true,
						[recommendationIds.noContext] = true,
						[recommendationIds.mutualContextPlural] = true,
						[recommendationIds.mutualContextSingle] = true,
						[recommendationIds.mutualContextNone] = true,
						[recommendationIds.frequentContext] = true,
						[recommendationIds.pendingFriendRequest] = true,
					},
				},
				byUserId = {
					["123456"] = {
						[recommendationIds.longName] = Recommendation.mock({
							id = recommendationIds.longName,
							rank = 5,
						}),
						[recommendationIds.noContext] = Recommendation.mock({
							id = recommendationIds.noContext,
							contextType = RecommendationContextType.None,
							rank = 6,
						}),
						[recommendationIds.mutualContextPlural] = Recommendation.mock({
							id = recommendationIds.mutualContextPlural,
							contextType = RecommendationContextType.MutualFriends,
							mutualFriendsList = { "111", "222", "333" },
							rank = 10,
						}),
						[recommendationIds.mutualContextSingle] = Recommendation.mock({
							id = recommendationIds.mutualContextSingle,
							contextType = RecommendationContextType.MutualFriends,
							mutualFriendsList = { "111" },
							rank = 12,
						}),
						[recommendationIds.mutualContextNone] = Recommendation.mock({
							id = recommendationIds.mutualContextNone,
							contextType = RecommendationContextType.MutualFriends,
							mutualFriendsList = {},
							rank = 1,
						}),
						[recommendationIds.frequentContext] = Recommendation.mock({
							id = recommendationIds.frequentContext,
							contextType = RecommendationContextType.Frequents,
							mutualFriendsList = {},
							rank = 0,
						}),
						[recommendationIds.pendingFriendRequest] = Recommendation.mock({
							id = recommendationIds.pendingFriendRequest,
							rank = 70,
						}),
					},
				},
			},
			friendshipStatus = {
				[recommendationIds.pendingFriendRequest] = Enum.FriendStatus.FriendRequestSent,
			},
		},
		Analytics = {
			bySessionKey = { [RECOMMENDATION_SESSION_ID_KEY] = "mockedRecommendationSessionId" },
		},
	},
}

if getFFlagPYMKCarouselIncomingFriendRequest() then
	recommendationIds.incomingFriendRequest = "8_incomingFriendRequest"
	state.PYMKCarousel.Users.byUserId[recommendationIds.incomingFriendRequest] = User.mock()
	state.PYMKCarousel.Friends.recommendations.bySource[Constants.RECS_SOURCE][recommendationIds.incomingFriendRequest] =
		true
	state.PYMKCarousel.Friends.recommendations.byUserId["123456"][recommendationIds.incomingFriendRequest] =
		Recommendation.mock({
			id = recommendationIds.incomingFriendRequest,
			rank = 71,
		})
	state.PYMKCarousel.Friends.recommendations.hasIncomingFriendRequest =
		{ [recommendationIds.incomingFriendRequest] = true }
end

return {
	recommendationIds = recommendationIds,
	state = state,
}
