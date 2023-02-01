local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useGetProfileShareUrl = require(script.Parent.useGetProfileShareUrl)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

local SHORT_LINK_URL = "www.bbc.co.uk"
local LINK_ID = "123456"

local createOrGetProfileShareUrlMock
beforeEach(function()
	createOrGetProfileShareUrlMock = jest.fn()
	createOrGetProfileShareUrl.Mock.reply(function()
		createOrGetProfileShareUrlMock()
		return {
			responseBody = {
				shortUrl = SHORT_LINK_URL,
				linkId = LINK_ID,
			},
		}
	end)
end)

afterEach(function()
	createOrGetProfileShareUrl.Mock.clear()
end)

it("SHOULD provide function to call endpoint", function()
	local helper = renderHookWithProviders(function()
		return useGetProfileShareUrl()
	end, {
		store = mockStore(mockState()),
	})

	helper.result()

	expect(createOrGetProfileShareUrlMock).toHaveBeenCalledTimes(1)
end)
