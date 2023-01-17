local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)

local useContextualInfo = require(script.Parent.useContextualInfo)

describe("useContextualInfo", function()
	it("SHOULD return correct text for local user", function()
		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.yourself,
				previousUsernames = {},
				searchKeyword = "",
			})
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			text = "Feature.PlayerSearchResults.Label.ThisIsYou",
		})
	end)

	it("SHOULD return correct text WHEN searchKeyword matches previous user name", function()
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

		expect(helper.result).toEqual({
			text = "Feature.PlayerSearchResults.Label.AlsoKnownAsAbbreviation" .. " " .. previousUsername,
		})
	end)

	it("SHOULD return correct text WHEN user is friend", function()
		local helper = renderHookWithProviders(function()
			return useContextualInfo({
				userId = mockedUsersInfo.ids.friend,
				previousUsernames = {},
				searchKeyword = "",
			})
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			text = "Feature.PlayerSearchResults.Label.YouAreFriends",
		})
	end)

	it("SHOULD return correct text WHEN user is followee", function()
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
		})
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
