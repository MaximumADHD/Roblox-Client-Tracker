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

local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders

local useRecommendationContextualInfoDisplay = require(script.Parent.useRecommendationContextualInfoDisplay)

describe("useRecommendationContextualInfoDisplay", function()
	it("SHOULD return correct text and icon for one mutual friend", function()
		local recommendation = {
			contextType = RecommendationContextType.MutualFriends,
			mutualFriendsCount = 1,
		}
		local helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toEqual("1 Feature.Friends.Label.SingularMutualFriend")
		expect(helper.result.icon).toEqual(Images["icons/status/player/friend"])
	end)

	it("SHOULD return correct text and icon for multiple mutual friends", function()
		local recommendation = {
			contextType = RecommendationContextType.MutualFriends,
			mutualFriendsCount = 10,
		}
		local helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toEqual("10 feature.friends.label.mutualfriends")
		expect(helper.result.icon).toEqual(Images["icons/status/player/friend"])
	end)

	it("SHOULD return correct text and no icon for frequents", function()
		local recommendation = {
			contextType = RecommendationContextType.Frequents,
			mutualFriendsCount = 10,
		}
		local helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toEqual("Feature.Friends.Label.Frequent")
		expect(helper.result.icon).toBeNil()
	end)

	it("SHOULD return correct text and no icon for incoming friend request", function()
		local recommendation = {
			hasIncomingFriendRequest = true,
		}
		local helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toEqual("Feature.Friends.Label.FriendRequest")
		expect(helper.result.icon).toBeNil()
	end)

	it("SHOULD return incoming friend request even with other contextTypes present", function()
		local recommendation = {
			contextType = RecommendationContextType.Frequents,
			mutualFriendsCount = 10,
			hasIncomingFriendRequest = true,
		}
		local helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toEqual("Feature.Friends.Label.FriendRequest")
		expect(helper.result.icon).toBeNil()

		recommendation = {
			contextType = RecommendationContextType.MutualFriends,
			mutualFriendsCount = 10,
			hasIncomingFriendRequest = true,
		}
		helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toEqual("Feature.Friends.Label.FriendRequest")
		expect(helper.result.icon).toBeNil()
	end)

	it("SHOULD return no text and no icon for empty recommendation", function()
		local recommendation = {}
		local helper = renderHookWithProviders(function()
			return useRecommendationContextualInfoDisplay(recommendation)
		end)
		expect(helper.result.text).toBeNil()
		expect(helper.result.icon).toBeNil()
	end)
end)
