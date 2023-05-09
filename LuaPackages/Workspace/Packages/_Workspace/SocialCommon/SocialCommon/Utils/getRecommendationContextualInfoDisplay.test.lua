local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({ keyPath = "SocialCommon.Friends" })
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local getRecommendationContextualInfoDisplay = require(script.Parent.getRecommendationContextualInfoDisplay)

local MOCK_LOCALIZED = {
	mutualFriends = "Mutual Friends",
	singularMutualFriend = "mutual friend",
	frequents = "Played together",
	friendRequests = "Friend request",
}

describe("getRecommendationContextualInfoDisplay", function()
	it("SHOULD return correct text and icon for one mutual friend", function()
		local recommendation = {
			contextType = RecommendationContextType.MutualFriends,
			mutualFriendsCount = 1,
		}
		local contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toEqual("1 mutual friend")
		expect(contextualInfoDisplay.icon).toEqual(Images["icons/status/player/friend"])
	end)

	it("SHOULD return correct text and icon for multiple mutual friends", function()
		local recommendation = {
			contextType = RecommendationContextType.MutualFriends,
			mutualFriendsCount = 10,
		}
		local contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toEqual("10 mutual friends")
		expect(contextualInfoDisplay.icon).toEqual(Images["icons/status/player/friend"])
	end)

	it("SHOULD return correct text and no icon for frequents", function()
		local recommendation = {
			contextType = RecommendationContextType.Frequents,
			mutualFriendsCount = 10,
		}
		local contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toEqual("Played together")
		expect(contextualInfoDisplay.icon).toBeNil()
	end)

	it("SHOULD return correct text and no icon for incoming friend request", function()
		local recommendation = {
			hasIncomingFriendRequest = true,
		}
		local contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toEqual("Friend request")
		expect(contextualInfoDisplay.icon).toBeNil()
	end)

	it("SHOULD return incoming friend request even with other contextTypes present", function()
		local recommendation = {
			contextType = RecommendationContextType.Frequents,
			mutualFriendsCount = 10,
			hasIncomingFriendRequest = true,
		}

		local contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toEqual("Friend request")
		expect(contextualInfoDisplay.icon).toBeNil()

		recommendation = {
			contextType = RecommendationContextType.MutualFriends,
			mutualFriendsCount = 10,
			hasIncomingFriendRequest = true,
		}
		contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toEqual("Friend request")
		expect(contextualInfoDisplay.icon).toBeNil()
	end)

	it("SHOULD return no text and no icon for empty Recommendation", function()
		local recommendation = {}
		local contextualInfoDisplay =
			getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = MOCK_LOCALIZED })
		expect(contextualInfoDisplay.text).toBeNil()
		expect(contextualInfoDisplay.icon).toBeNil()
	end)
end)
