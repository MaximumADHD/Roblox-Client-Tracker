local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)
local ProfileInsightsMocks = require(UserSearch.TestHelpers.ProfileInsightsMocks)

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local Enums = SocialLuaAnalytics.Analytics.Enums
local ContextualInfoTypes = Enums.ContextualInfoTypes

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local useContextualInfo = require(script.Parent.useContextualInfo)

local ICON_FRIEND = Images["icons/status/player/friend"]
local ICON_FOLLOWING = Images["icons/status/player/following"]

local PROFILE_INSIGHT_FREQUENTS = ProfileInsightsMocks.mockProfileInsight("123")
local PROFILE_INSIGHT_MUTUAL_FRIENDS = ProfileInsightsMocks.mockProfileInsightWithMutualFriends("123")

describe("useContextualInfo", function()
	it("SHOULD return correct info for local user", function()
		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.yourself,
				previousUsernames = {},
				searchKeyword = "",
			})
		end, {
			state = mockedUsersInfo.state,
		})
		expect(helper.result).toEqual(
			{ text = "Feature.PlayerSearchResults.Label.ThisIsYou" },
			ContextualInfoTypes.IsMyself.rawValue()
		)
	end)

	it("SHOULD return correct info WHEN searchKeyword matches previous user name", function()
		local previousUsername = "testUser"
		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.friend,
				previousUsernames = { "randomName", "testTests", previousUsername },
				searchKeyword = previousUsername,
			})
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual(
			{ text = "Feature.PlayerSearchResults.Label.Previously" .. " @" .. previousUsername },
			ContextualInfoTypes.PreviousUsername.rawValue()
		)
	end)

	it("SHOULD return correct info WHEN user is friend", function()
		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.friend,
				previousUsernames = {},
				searchKeyword = "",
			})
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual(
			{ text = "Feature.PlayerSearchResults.Label.YouAreFriends", icon = ICON_FRIEND },
			ContextualInfoTypes.Friend.rawValue()
		)
	end)

	it("SHOULD return correct info WHEN user is followee", function()
		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.following,
				previousUsernames = {},
				searchKeyword = "",
			})
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			text = "Feature.PlayerSearchResults.Label.YouAreFollowing",
			icon = ICON_FOLLOWING,
		}, ContextualInfoTypes.Following.rawValue())
	end)

	describe("With profileInsight", function()
		it("SHOULD return correct info WHEN user is has mutual friends", function()
			local helper = renderHookWithProviders(function()
				return useContextualInfo({
					userId = mockedUsersInfo.ids.mutualFriends,
					previousUsernames = {},
					searchKeyword = "",
					profileInsight = PROFILE_INSIGHT_MUTUAL_FRIENDS,
				})
			end, {
				state = mockedUsersInfo.state,
			})

			expect(helper.result).toEqual(
				{ text = "1 Feature.Friends.Label.SingularMutualFriend", icon = ICON_FRIEND },
				ContextualInfoTypes.MutualFriends.rawValue()
			)
		end)

		it("SHOULD return correct info WHEN user has played together", function()
			local helper = renderHookWithProviders(function()
				return useContextualInfo({
					userId = mockedUsersInfo.ids.frequents,
					previousUsernames = {},
					searchKeyword = "",
					profileInsight = PROFILE_INSIGHT_FREQUENTS,
				})
			end, {
				state = mockedUsersInfo.state,
			})

			expect(helper.result).toEqual(
				{ text = "Feature.Friends.Label.Frequent" },
				ContextualInfoTypes.Frequents.rawValue()
			)
		end)
	end)

	it("SHOULD return nothing when user doesn't match any conditions", function()
		local previousUsername = "testUser"

		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.random,
				previousUsernames = { "randomName", "testTests" },
				searchKeyword = previousUsername,
			})
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toBeNil()
	end)
end)
