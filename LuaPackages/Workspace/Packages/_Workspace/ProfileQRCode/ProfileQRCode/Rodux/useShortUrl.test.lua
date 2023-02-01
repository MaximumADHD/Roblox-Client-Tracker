local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useShortUrl = require(script.Parent.useShortUrl)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local Constants = require(ProfileQRCode.Common.Constants)

local expect = JestGlobals.expect
local it = JestGlobals.it
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

it("SHOULD return nil by default", function()
	local helper = renderHookWithProviders(function()
		return useShortUrl()
	end, {
		store = mockStore(mockState({ [Constants.RODUX_KEY] = {} })),
	})

	expect(helper.result).toBeNil()
end)

it("SHOULD return shortUrl if it exists", function()
	local helper = renderHookWithProviders(function()
		return useShortUrl()
	end, {
		store = mockStore(mockState({
			[Constants.RODUX_KEY] = {
				ShareUrl = {
					shortUrl = "www.bbc.co.uk",
				},
			},
		})),
	})

	expect(helper.result).toBe("www.bbc.co.uk")
end)
