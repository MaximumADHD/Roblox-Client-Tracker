local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local NetworkingFriends = dependencies.NetworkingFriends

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local Constants = require(FriendsCarousel.Common.Constants)
local GetFriendRecommendationsFromUserIdActionName = NetworkingFriends.GetFriendRecommendationsFromUserId.Succeeded.name

local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum
local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource

local friendsRecommendationsBySouceAdaptor = require(script.Parent.friendsRecommendationsBySouceAdaptor)

it("SHOULD return table with one action", function()
	jestExpect(friendsRecommendationsBySouceAdaptor()).toEqual({
		[GetFriendRecommendationsFromUserIdActionName] = jestExpect.any("function"),
	})
end)

it("SHOULD return expected structure", function()
	local actionAdaptor = friendsRecommendationsBySouceAdaptor()[GetFriendRecommendationsFromUserIdActionName]
	local newActions = actionAdaptor({
		type = GetFriendRecommendationsFromUserIdActionName,
		responseBody = {
			data = {
				{ id = 1 },
				{ id = 2 },
				{ id = 3 },
			},
		},
	})

	jestExpect(newActions).toEqual({
		{
			type = GetFriendRecommendationsFromUserIdActionName,
			responseBody = {
				data = {
					{ id = 1 },
					{ id = 2 },
					{ id = 3 },
				},
			},
		},
		{
			type = RoduxFriends.Actions.RecommendationSourceCreated.name,
			payload = {
				source = if getFFlagSocialMoveRecsSource()
					then RecommendationSourceEnum.HomepageFriendsCarousel
					else Constants.RECS_SOURCE,
				recommendationIds = { 1, 2, 3 },
			},
		} :: any,
	})
end)
