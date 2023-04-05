local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local FormFactor = require(Packages.FormFactor)
local useIsWideMode = require(script.Parent.useIsWideMode)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

it("SHOULD return true if form factor is wide", function()
	local helper = renderHookWithProviders(function()
		return useIsWideMode()
	end, {
		store = mockStore({
			FormFactor = FormFactor.Enums.FormFactor.WIDE,
		}),
	})

	expect(helper.result).toBe(true)
end)

it("SHOULD return false it is not wide", function()
	local helper = renderHookWithProviders(function()
		return useIsWideMode()
	end, {
		store = mockStore({
			FormFactor = "Another",
		}),
	})

	expect(helper.result).toBe(false)
end)

it("SHOULD return false on empty state", function()
	local helper = renderHookWithProviders(function()
		return useIsWideMode()
	end, {
		store = mockStore({}),
	})

	expect(helper.result).toBe(false)
end)
