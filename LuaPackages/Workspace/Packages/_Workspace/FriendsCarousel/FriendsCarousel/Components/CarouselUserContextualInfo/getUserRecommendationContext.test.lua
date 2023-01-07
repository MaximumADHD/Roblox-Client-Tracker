local getUserRecommendationContext = require(script.Parent.getUserRecommendationContext)

local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local TextKeys = require(FriendsCarousel.Common.TextKeys)

local mock1MutualFriendsRecommendation = {
	id = "2326285850",
	username = "username",
	displayName = "recommendationMutual displayName",
	mutualFriendsList = { "1" },
	rank = 1,
	contextType = RecommendationContextType.MutualFriends,
	isFriendWithUser = false,
	hasPendingFriendRequest = false,
	canSendFriendRequest = true,
}

local mock4MutualFriendsRecommendation = {
	id = "2326285850",
	username = "username",
	displayName = "recommendationMutual displayName",
	mutualFriendsList = { "1", "2", "3", "4" },
	rank = 1,
	contextType = RecommendationContextType.MutualFriends,
	isFriendWithUser = false,
	hasPendingFriendRequest = false,
	canSendFriendRequest = true,
}

local mock0MutualFriendsRecommendation = {
	id = "2326285850",
	username = "username",
	displayName = "recommendationMutual displayName",
	mutualFriendsList = {},
	rank = 1,
	contextType = RecommendationContextType.MutualFriends,
	isFriendWithUser = false,
	hasPendingFriendRequest = false,
	canSendFriendRequest = true,
}

local mockUnknownRecommendation = {
	id = "2326285850",
	username = "username",
	displayName = "recommendationMutual displayName",
	mutualFriendsList = {},
	rank = 1,
	contextType = RecommendationContextType.None,
	isFriendWithUser = false,
	hasPendingFriendRequest = false,
	canSendFriendRequest = true,
}

local mockUnknownRecommendationWithoutMutualList = {
	id = "2326285850",
	username = "username",
	displayName = "recommendationMutual displayName",
	rank = 1,
	contextType = RecommendationContextType.None,
	isFriendWithUser = false,
	hasPendingFriendRequest = false,
	canSendFriendRequest = true,
}

local mockFrequentRecommendation = {
	id = "2326285850",
	username = "username",
	displayName = "recommendationMutual displayName",
	mutualFriendsList = {},
	rank = 1,
	contextType = RecommendationContextType.Frequents,
	isFriendWithUser = false,
	hasPendingFriendRequest = false,
	canSendFriendRequest = true,
}

describe("WHEN getUserRecommendationContext called with 4 mutual friends and MutualFriends contextType", function()
	it("SHOULD return correct icon and label", function()
		local icon, label = getUserRecommendationContext(mock4MutualFriendsRecommendation)
		jestExpect(icon).toEqual({
			path = "icons/status/player/friend",
		})
		jestExpect(label).toEqual({
			textKey = TextKeys.MutualFriends,
			formatter = jestExpect.any("function"),
		})
	end)

	it("SHOULD have a formatter whichs add count", function()
		local _, label = getUserRecommendationContext(mock4MutualFriendsRecommendation)
		if label.formatter then
			jestExpect(label.formatter("string")).toBe("4 string")
		else
			assert(false, "formatter missing")
		end
	end)
end)

describe("WHEN getUserRecommendationContext called with 1 mutual friend and MutualFriends contextType", function()
	it("SHOULD return correct icon and label", function()
		local icon, label = getUserRecommendationContext(mock1MutualFriendsRecommendation)
		jestExpect(icon).toEqual({
			path = "icons/status/player/friend",
		})
		jestExpect(label).toEqual({
			textKey = TextKeys.SingularMutualFriend,
			formatter = jestExpect.any("function"),
		})
	end)

	it("SHOULD have a formatter whichs add count", function()
		local _, label = getUserRecommendationContext(mock1MutualFriendsRecommendation)
		if label.formatter then
			jestExpect(label.formatter("string")).toBe("1 string")
		else
			assert(false, "formatter missing")
		end
	end)
end)

describe("WHEN getUserRecommendationContext called with 0 mutual friends and MutualFriends contextType", function()
	it("SHOULD return empty icon and label", function()
		local icon, label = getUserRecommendationContext(mock0MutualFriendsRecommendation)
		jestExpect(icon).toBeNil()
		jestExpect(label).toEqual({
			text = "",
		})
	end)
end)

describe("WHEN getUserRecommendationContext called with Frequents contextType", function()
	it("SHOULD return empty icon and correct label", function()
		local icon, label = getUserRecommendationContext(mockFrequentRecommendation)
		jestExpect(icon).toBeNil()
		jestExpect(label).toEqual({
			textKey = TextKeys.PlayedTogether,
		})
	end)
end)

describe("WHEN getUserRecommendationContext called with no type", function()
	it("SHOULD return empty icon and label", function()
		local icon, label = getUserRecommendationContext(mockUnknownRecommendation)
		jestExpect(icon).toBeNil()
		jestExpect(label).toEqual({
			text = "",
		})
	end)
end)

describe("WHEN getUserRecommendationContext called without mutualFriendsList and contextType", function()
	it("SHOULD return empty icon and label", function()
		local icon, label = getUserRecommendationContext(mockUnknownRecommendationWithoutMutualList)
		jestExpect(icon).toBeNil()
		jestExpect(label).toEqual({
			text = "",
		})
	end)
end)
