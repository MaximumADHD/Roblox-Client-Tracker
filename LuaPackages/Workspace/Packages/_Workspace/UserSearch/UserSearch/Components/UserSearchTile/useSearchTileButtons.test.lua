local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)

local useSearchTileButtons = require(script.Parent.useSearchTileButtons)

local mockedLuaAppNetworkingRequests = {
	requestFriendship = function(_args) end,
	acceptFriendRequest = function(_args) end,
}

describe("Correct buttons", function()
	it("SHOULD not return buttons for localUserId", function()
		local helper = renderHookWithProviders(function()
			return useSearchTileButtons({
				userId = mockedUsersInfo.ids.yourself,
				index = 1,
			}, mockedLuaAppNetworkingRequests)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toBeNil()
	end)

	it("SHOULD not return buttons for user with FriendStatus.Friend", function()
		local helper = renderHookWithProviders(function()
			return useSearchTileButtons({
				userId = mockedUsersInfo.ids.friend,
				index = 1,
			}, mockedLuaAppNetworkingRequests)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toBeNil()
	end)

	it("SHOULD return correct buttons for user with FriendStatus.FriendRequestReceived", function()
		local helper = renderHookWithProviders(function()
			return useSearchTileButtons({
				userId = mockedUsersInfo.ids.incomingFriendship,
				index = 1,
			}, mockedLuaAppNetworkingRequests)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			{
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				isDisabled = false,
				onActivated = expect.any("function"),
			},
		})
	end)

	it("SHOULD return correct buttons for user with FriendStatus.FriendRequestSent", function()
		local helper = renderHookWithProviders(function()
			return useSearchTileButtons({
				userId = mockedUsersInfo.ids.outgoingFriendship,
				index = 1,
			}, mockedLuaAppNetworkingRequests)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			{
				icon = Images["icons/actions/friends/friendpending"],
				isSecondary = false,
				isDisabled = true,
			},
		})
	end)

	it("SHOULD return correct buttons for user with nil status", function()
		local helper = renderHookWithProviders(function()
			return useSearchTileButtons({
				userId = mockedUsersInfo.ids.random,
				index = 1,
			}, mockedLuaAppNetworkingRequests)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			{
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				isDisabled = false,
				onActivated = expect.any("function"),
			},
		})
	end)

	it("SHOULD return correct buttons for user with FriendStatus.NotFriend", function()
		local helper = renderHookWithProviders(function()
			return useSearchTileButtons({
				userId = mockedUsersInfo.ids.notFriend,
				index = 1,
			}, mockedLuaAppNetworkingRequests)
		end, {
			state = mockedUsersInfo.state,
		})

		expect(helper.result).toEqual({
			{
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				isDisabled = false,
				onActivated = expect.any("function"),
			},
		})
	end)
end)

describe("onActivated", function()
	describe("FriendStatus.FriendRequestReceived", function()
		it("SHOULD call mocked acceptFriendRequest", function()
			local acceptFriendRequestSpy = jest.fn()
			mockedLuaAppNetworkingRequests.acceptFriendRequest = function(_args)
				acceptFriendRequestSpy()
			end

			local helper = renderHookWithProviders(function()
				return useSearchTileButtons({
					userId = mockedUsersInfo.ids.incomingFriendship,
					index = 1,
				}, mockedLuaAppNetworkingRequests)
			end, {
				state = mockedUsersInfo.state,
			})
			local button = helper.result[1]

			button.onActivated()
			expect(acceptFriendRequestSpy).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("FriendStatus.NotFriend or no status", function()
		it("SHOULD call mocked requestFriendship", function()
			local requestFriendshipSpy = jest.fn()
			mockedLuaAppNetworkingRequests.requestFriendship = function(_args)
				requestFriendshipSpy()
			end

			local helper = renderHookWithProviders(function()
				return useSearchTileButtons({
					userId = mockedUsersInfo.ids.notFriend,
					index = 1,
				}, mockedLuaAppNetworkingRequests)
			end, {
				state = mockedUsersInfo.state,
			})
			local button = helper.result[1]

			button.onActivated()
			expect(requestFriendshipSpy).toHaveBeenCalledTimes(1)
		end)
	end)
end)
