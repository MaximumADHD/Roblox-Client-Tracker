local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent

local FormFactor = require(Packages.FormFactor)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local mockStore = UnitTestHelpers.mockStore
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders

local useIsWideMode = require(script.Parent.useIsWideMode)

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
