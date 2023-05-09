local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local RoduxFriends = dependencies.RoduxFriends
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType
local mockedAddOmniRecommendationsAction = require(PYMKCarousel.TestHelpers.mockedAddOmniRecommendationsAction)
local Constants = require(PYMKCarousel.Common.Constants)
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum

local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource

local friendsOmniActionAdaptor = require(script.Parent.friendsOmniActionAdaptor)

local config = {
	contentType = "RecommendedFriend",
	treatmentType = "FriendRecommendationCarousel",
}

describe("friendsOmniActionAdaptor", function()
	it("SHOULD return table", function()
		jestExpect(friendsOmniActionAdaptor(config)).toEqual({
			AddContentMetadata = jestExpect.any("function"),
			AddOmniRecommendations = jestExpect.any("function"),
		})
	end)
end)

describe("friendsOmniActionAdaptor.AddOmniRecommendations", function()
	it("SHOULD return empty list if action doesn't have content", function()
		local action = mockedAddOmniRecommendationsAction.withoutContent
		local AddOmniRecommendationsAction = friendsOmniActionAdaptor(config).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({})
	end)

	it("SHOULD return emptylist or empty action if there is no PYMK recommendations", function()
		local action = mockedAddOmniRecommendationsAction.withoutRecommendedFriends
		local AddOmniRecommendationsAction = friendsOmniActionAdaptor(config).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({
			{
				type = RoduxFriends.Actions.RecommendationSourceCreated.name,
				payload = {
					recommendationIds = {},
					source = if getFFlagSocialMoveRecsSource()
						then RecommendationSourceEnum.HomepagePYMKCarousel
						else Constants.RECS_SOURCE,
				},
			},
		})
	end)

	it(
		"SHOULD return modified and friends actions and RecommendationSourceCreated if there are PYMK recommendations and parse data correctly",
		function()
			local action = mockedAddOmniRecommendationsAction.withRecommendedFriends
			local expectedFriendsActions = {
				{
					type = "RecommendationCreated",
					payload = {
						baseUserId = "12345678",
						recommendedUser = {
							id = "RecommendedFriend3",
							contextType = RecommendationContextType.Frequents.rawValue(),
							mutualFriendsList = {},
							rank = 8,
							mutualFriendsCount = 0,
							hasIncomingFriendRequest = false,
						},
					},
				},
				{
					type = "RecommendationCreated",
					payload = {
						baseUserId = "12345678",
						recommendedUser = {
							id = "RecommendedFriend2",
							contextType = RecommendationContextType.MutualFriends.rawValue(),
							mutualFriendsList = {},
							rank = 5,
							mutualFriendsCount = 5,
							hasIncomingFriendRequest = true,
						},
					},
				},
				{
					type = "RecommendationCreated",
					payload = {
						baseUserId = "12345678",
						recommendedUser = {
							id = "RecommendedFriend1",
							contextType = RecommendationContextType.Frequents.rawValue(),
							mutualFriendsList = {},
							rank = 10,
							mutualFriendsCount = 0,
							hasIncomingFriendRequest = false,
						},
					},
				},
			}

			local AddOmniRecommendationsAction = friendsOmniActionAdaptor(config).AddOmniRecommendations(action)
			jestExpect(AddOmniRecommendationsAction).toEqual({
				{
					type = RoduxFriends.Actions.RecommendationSourceCreated.name,
					payload = {
						recommendationIds = { "RecommendedFriend3", "RecommendedFriend2", "RecommendedFriend1" },
						source = if getFFlagSocialMoveRecsSource()
							then RecommendationSourceEnum.HomepagePYMKCarousel
							else Constants.RECS_SOURCE,
					},
				} :: any,
				expectedFriendsActions[3],
				expectedFriendsActions[2],
				expectedFriendsActions[1],
			})
		end
	)

	it("SHOULD return empty list or empty action if contentType doesn't match RecommendedFriend", function()
		local action = mockedAddOmniRecommendationsAction.withRecommendedFriends
		local AddOmniRecommendationsAction = friendsOmniActionAdaptor({
			contentType = "ItIsNotRecommendedFriend",
			treatmentType = "FriendRecommendationCarousel",
		}).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({
			{
				type = RoduxFriends.Actions.RecommendationSourceCreated.name,
				payload = {
					recommendationIds = {},
					source = if getFFlagSocialMoveRecsSource()
						then RecommendationSourceEnum.HomepagePYMKCarousel
						else Constants.RECS_SOURCE,
				},
			},
		})
	end)

	it(
		"SHOULD return empty list of add friends actions if treatmentType doesn't match FriendRecommendationCarousel",
		function()
			local action = mockedAddOmniRecommendationsAction.withRecommendedFriends
			local AddOmniRecommendationsAction = friendsOmniActionAdaptor({
				contentType = "RecommendedFriend",
				treatmentType = "NotFriendRecommendationCarousel",
			}).AddOmniRecommendations(action)
			jestExpect(AddOmniRecommendationsAction).toEqual({
				{
					type = RoduxFriends.Actions.RecommendationSourceCreated.name,
					payload = {
						recommendationIds = { "RecommendedFriend3", "RecommendedFriend2", "RecommendedFriend1" },
						source = if getFFlagSocialMoveRecsSource()
							then RecommendationSourceEnum.HomepagePYMKCarousel
							else Constants.RECS_SOURCE,
					},
				},
			})
		end
	)
end)
