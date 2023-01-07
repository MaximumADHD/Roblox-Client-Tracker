local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = devDependencies.jest

local transformOmniRecommendationsToActions = require(script.Parent.transformOmniRecommendationsToActions)
local mockedAddOmniRecommendationsAction = require(PYMKCarousel.TestHelpers.mockedAddOmniRecommendationsAction)

local config = {
	contentType = "RecommendedFriend",
	treatmentType = "FriendRecommendationCarousel",
}

local mockedAction = function(recommendation, index, metadata)
	return {
		type = "MockedAction",
		recommendation = recommendation,
		id = index,
		metadata = metadata,
	}
end

describe("transformOmniRecommendationsToActions", function()
	it("SHOULD return empty list if omnirecs are empty", function()
		local newActions = transformOmniRecommendationsToActions({}, config, mockedAction)
		jestExpect(newActions).toEqual({})
	end)

	it("SHOULD return empty list if there is no PYMK recommendations", function()
		local recommendations = mockedAddOmniRecommendationsAction.withoutRecommendedFriends.recommendations
		local newActions = transformOmniRecommendationsToActions(recommendations, config, mockedAction)
		jestExpect(newActions).toEqual({})
	end)

	it("SHOULD return empty list if contentType doesn't match RecommendedFriend", function()
		local wrongConfig = {
			contentType = "NotRecommendedFriend",
			treatmentType = "FriendRecommendationCarousel",
		}
		local recommendations = mockedAddOmniRecommendationsAction.withRecommendedFriends.recommendations
		local newActions = transformOmniRecommendationsToActions(recommendations, wrongConfig, mockedAction)
		jestExpect(newActions).toEqual({})
	end)

	it("SHOULD return empty list if treatmentType doesn't match FriendRecommendationCarousel", function()
		local wrongConfig = {
			contentType = "RecommendedFriend",
			treatmentType = "NotFriendRecommendationCarousel",
		}
		local recommendations = mockedAddOmniRecommendationsAction.withRecommendedFriends.recommendations
		local newActions = transformOmniRecommendationsToActions(recommendations, wrongConfig, mockedAction)
		jestExpect(newActions).toEqual({})
	end)

	it("SHOULD call action with recommendation, index and metadata", function()
		local recommendations = mockedAddOmniRecommendationsAction.withRecommendedFriends.recommendations
		local recommendedFriendOmniMetadata = mockedAddOmniRecommendationsAction.recommendedFriendMetadata
		local recommendedFriendSort = mockedAddOmniRecommendationsAction.recommendedFriendSort.recommendations

		local actionSpy = jest.fn()
		local action = function(...)
			actionSpy(...)
			return {}
		end

		transformOmniRecommendationsToActions(recommendations, config, action)
		jestExpect(actionSpy).toHaveBeenCalledWith(
			recommendedFriendOmniMetadata.RecommendedFriend1,
			1,
			recommendedFriendSort[1].contentMetadata
		)
		jestExpect(actionSpy).toHaveBeenCalledWith(
			recommendedFriendOmniMetadata.RecommendedFriend2,
			2,
			recommendedFriendSort[2].contentMetadata
		)
		jestExpect(actionSpy).toHaveBeenCalledWith(
			recommendedFriendOmniMetadata.RecommendedFriend3,
			3,
			recommendedFriendSort[3].contentMetadata
		)
	end)

	it("SHOULD return modified actions if there are PYMK recommendations", function()
		local recommendations = mockedAddOmniRecommendationsAction.withRecommendedFriends.recommendations
		local recommendedFriendMetadata = mockedAddOmniRecommendationsAction.recommendedFriendMetadata
		local recommendedFriendSort = mockedAddOmniRecommendationsAction.recommendedFriendSort.recommendations

		local expectedFriendsActions = {
			{
				type = "MockedAction",
				id = 1,
				recommendation = recommendedFriendMetadata.RecommendedFriend1,
				metadata = recommendedFriendSort[1].contentMetadata,
			},
			{
				type = "MockedAction",
				id = 2,
				recommendation = recommendedFriendMetadata.RecommendedFriend2,
				metadata = recommendedFriendSort[2].contentMetadata,
			},
			{
				type = "MockedAction",
				id = 3,
				recommendation = recommendedFriendMetadata.RecommendedFriend3,
				metadata = recommendedFriendSort[3].contentMetadata,
			},
		}

		local newActions = transformOmniRecommendationsToActions(recommendations, config, mockedAction)
		jestExpect(newActions).toEqual(expectedFriendsActions)
	end)
end)
