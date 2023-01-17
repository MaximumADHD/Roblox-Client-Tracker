local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)

local useRelationshipSelector = require(script.Parent.useRelationshipSelector)

describe("useRelationshipSelector", function()
	it("SHOULD return isMyself = true for localUserId", function()
		local helper = renderHookWithProviders(function()
			return useRelationshipSelector(mockedUsersInfo.ids.yourself)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			isMyself = true,
			status = nil,
			following = false,
		})
	end)

	it("SHOULD return following = true for followingUserId", function()
		local helper = renderHookWithProviders(function()
			return useRelationshipSelector(mockedUsersInfo.ids.following)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			isMyself = false,
			status = nil,
			following = true,
		})
	end)

	it("SHOULD return status = Friend for friendStatusId", function()
		local helper = renderHookWithProviders(function()
			return useRelationshipSelector(mockedUsersInfo.ids.friend)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			isMyself = false,
			status = Enum.FriendStatus.Friend,
			following = false,
		})
	end)

	it("SHOULD return correct object for nonExistingId", function()
		local helper = renderHookWithProviders(function()
			return useRelationshipSelector(mockedUsersInfo.ids.random)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			isMyself = false,
			status = nil,
			following = false,
		})
	end)
end)
