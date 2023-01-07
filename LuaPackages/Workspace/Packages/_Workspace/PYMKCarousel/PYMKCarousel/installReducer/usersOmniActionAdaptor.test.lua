local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local usersOmniActionAdaptor = require(script.Parent.usersOmniActionAdaptor)
local mockedAddOmniRecommendationsAction = require(PYMKCarousel.TestHelpers.mockedAddOmniRecommendationsAction)

local config = {
	contentType = "RecommendedFriend",
	treatmentType = "FriendRecommendationCarousel",
}

describe("usersOmniActionAdaptor", function()
	it("SHOULD return table", function()
		jestExpect(usersOmniActionAdaptor(config)).toEqual({
			AddContentMetadata = jestExpect.any("function"),
			AddOmniRecommendations = jestExpect.any("function"),
		})
	end)
end)

describe("usersOmniActionAdaptor.AddOmniRecommendations", function()
	it("SHOULD return empty list if action doesn't have content", function()
		local action = mockedAddOmniRecommendationsAction.withoutContent
		local AddOmniRecommendationsAction = usersOmniActionAdaptor(config).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({})
	end)

	it("SHOULD return emptylist if there is no PYMK recommendations", function()
		local action = mockedAddOmniRecommendationsAction.withoutRecommendedFriends
		local AddOmniRecommendationsAction = usersOmniActionAdaptor(config).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({})
	end)

	it("SHOULD return modified(friends, users) actions if there are PYMK recommendations", function()
		local action = mockedAddOmniRecommendationsAction.withRecommendedFriends
		local expectedUsersActions = {
			{
				type = "UserUpdated",
				payload = {
					id = "RecommendedFriend3",
					username = "userName3",
					displayName = "displayName3",
				},
			},
			{
				type = "UserUpdated",
				payload = {
					id = "RecommendedFriend2",
					username = "userName2",
					displayName = "displayName2",
				},
			},
			{
				type = "UserUpdated",
				payload = {
					id = "RecommendedFriend1",
					username = "userName1",
					displayName = "displayName1",
				},
			},
		}

		local AddOmniRecommendationsAction = usersOmniActionAdaptor(config).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({
			expectedUsersActions[3],
			expectedUsersActions[2],
			expectedUsersActions[1],
		})
	end)

	it("SHOULD return action with id converted to string if there are PYMK recommendations", function()
		local action = mockedAddOmniRecommendationsAction.withoutRecommendedFriends :: any
		local userNumberId = 123456
		table.insert(action.recommendations.Home.sorts, {
			topicId = "topicId",
			topic = "topic",
			treatmentType = "FriendRecommendationCarousel",
			recommendations = {
				[1] = {
					contentId = userNumberId,
					contentType = "RecommendedFriend",
					contentMetadata = {
						rank = 10,
					},
				},
			},
		})

		action.recommendations.Home.metadata.RecommendedFriend = {
			[tostring(userNumberId)] = {
				userId = userNumberId,
				userName = "userName",
				mutualFriendDisplayName = {},
				displayName = "displayName",
			},
		}
		local expectedUsersActions = {
			{
				type = "UserUpdated",
				payload = {
					id = tostring(userNumberId),
					username = "userName",
					displayName = "displayName",
				},
			},
		}

		local AddOmniRecommendationsAction = usersOmniActionAdaptor(config).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({
			expectedUsersActions[1],
		})
	end)

	it("SHOULD return empty list if contentType doesn't match RecommendedFriend", function()
		local action = mockedAddOmniRecommendationsAction.withRecommendedFriends
		local AddOmniRecommendationsAction = usersOmniActionAdaptor({
			contentType = "ItIsNotRecommendedFriend",
			treatmentType = "FriendRecommendationCarousel",
		}).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({})
	end)

	it("SHOULD return empty list if treatmentType doesn't match FriendRecommendationCarousel", function()
		local action = mockedAddOmniRecommendationsAction.withRecommendedFriends
		local AddOmniRecommendationsAction = usersOmniActionAdaptor({
			contentType = "RecommendedFriend",
			treatmentType = "NotFriendRecommendationCarousel",
		}).AddOmniRecommendations(action)
		jestExpect(AddOmniRecommendationsAction).toEqual({})
	end)
end)
