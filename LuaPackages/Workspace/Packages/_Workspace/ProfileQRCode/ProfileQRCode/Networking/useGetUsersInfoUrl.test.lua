local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local configureRoduxUsers = require(script.Parent.configureRoduxUsers)
local useGetUsersInfoUrl = require(script.Parent.useGetUsersInfoUrl)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

local getUserV2FromUserId
beforeEach(function()
	getUserV2FromUserId = jest.fn()
	configureRoduxUsers.GetUserV2FromUserId.Mock.reply(function()
		getUserV2FromUserId()
		return {
			responseBody = {},
		}
	end)
end)

afterEach(function()
	configureRoduxUsers.GetUserV2FromUserId.Mock.clear()
end)

it("SHOULD provide function to call endpoint", function()
	local helper = renderHookWithProviders(function()
		return useGetUsersInfoUrl()
	end, {
		store = mockStore(mockState()),
	})

	helper.result()

	expect(getUserV2FromUserId).toHaveBeenCalledTimes(1)
end)
