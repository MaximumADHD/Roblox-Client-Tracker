local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useShareLinkId = require(script.Parent.useShareLinkId)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local Constants = require(ProfileQRCode.Common.Constants)

local expect = JestGlobals.expect
local it = JestGlobals.it
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

it("SHOULD return nil by default", function()
	local helper = renderHookWithProviders(function()
		return useShareLinkId()
	end, {
		store = mockStore(mockState({ [Constants.RODUX_KEY] = {} })),
	})

	expect(helper.result).toBeNil()
end)

it("SHOULD return id if it exists", function()
	local helper = renderHookWithProviders(function()
		return useShareLinkId()
	end, {
		store = mockStore(mockState({
			[Constants.RODUX_KEY] = {
				ShareUrl = {
					linkId = "123456",
				},
			},
		})),
	})

	expect(helper.result).toBe("123456")
end)
