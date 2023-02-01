local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useLoadingState = require(script.Parent.useLoadingState)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local Constants = require(ProfileQRCode.Common.Constants)
local configuredRoduxNetworking = require(ProfileQRCode.Networking.configuredRoduxNetworking)
local NetworkStatus = configuredRoduxNetworking.Enum.NetworkStatus

it("SHOULD return the current networking status", function()
	local helper = renderHookWithProviders(function()
		return useLoadingState()
	end, {
		store = mockStore({
			[Constants.RODUX_KEY] = {
				NetworkStatus = {
					["https://apis.roblox.com/sharelinks/v1/get-or-create-link"] = NetworkStatus.Done,
				},
			},
		}),
	})

	expect(helper.result).toBe(NetworkStatus.Done)
end)

it("SHOULD return NotStarted by default", function()
	local helper = renderHookWithProviders(function()
		return useLoadingState()
	end, {
		store = mockStore({
			[Constants.RODUX_KEY] = {
				NetworkStatus = {},
			},
		}),
	})

	expect(helper.result).toBe(NetworkStatus.NotStarted)
end)
