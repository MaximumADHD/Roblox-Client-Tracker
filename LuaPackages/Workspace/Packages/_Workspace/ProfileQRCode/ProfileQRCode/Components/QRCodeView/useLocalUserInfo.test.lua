local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useLocalUserInfo = require(script.Parent.useLocalUserInfo)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local Constants = require(ProfileQRCode.Common.Constants)

it("SHOULD return local user info for given user", function()
	local correctUserInfo = {
		username = "Clement",
		displayName = "Altkey",
	}
	local helper = renderHookWithProviders(function()
		return useLocalUserInfo("5491")
	end, {
		store = mockStore({
			[Constants.RODUX_KEY] = {
				Users = {
					byUserId = {
						["122"] = {},
						["5491"] = correctUserInfo,
					},
				},
			},
		}),
	})

	expect(helper.result).toBe(correctUserInfo)
end)

it("SHOULD return nil if there is no value", function()
	local helper = renderHookWithProviders(function()
		return useLocalUserInfo("5491")
	end, {
		store = mockStore({
			[Constants.RODUX_KEY] = {
				Users = {
					byUserId = {
						["122"] = {},
					},
				},
			},
		}),
	})

	expect(helper.result).toBeNil()
end)

it("SHOULD return nil on empty state", function()
	local helper = renderHookWithProviders(function()
		return useLocalUserInfo("5491")
	end, {
		store = mockStore({}),
	})

	expect(helper.result).toBeNil()
end)
