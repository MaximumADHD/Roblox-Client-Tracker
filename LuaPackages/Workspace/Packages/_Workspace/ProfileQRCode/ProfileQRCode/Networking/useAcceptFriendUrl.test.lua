local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest

local configureRoduxFriends = require(script.Parent.configureRoduxFriends)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

local useAcceptFriendUrl = require(script.Parent.useAcceptFriendUrl)

local acceptFriendRequestFromUserId
beforeEach(function()
	acceptFriendRequestFromUserId = jest.fn()
	configureRoduxFriends.AcceptFriendRequestFromUserId.Mock.reply(function()
		acceptFriendRequestFromUserId()
		return {
			responseBody = {},
		}
	end)
end)

afterEach(function()
	configureRoduxFriends.AcceptFriendRequestFromUserId.Mock.clear()
end)

it("SHOULD provide function to call endpoint", function()
	local helper = renderHookWithProviders(function()
		return useAcceptFriendUrl()
	end, {
		store = mockStore(mockState()),
	})

	helper.result()

	expect(acceptFriendRequestFromUserId).toHaveBeenCalledTimes(1)
end)
