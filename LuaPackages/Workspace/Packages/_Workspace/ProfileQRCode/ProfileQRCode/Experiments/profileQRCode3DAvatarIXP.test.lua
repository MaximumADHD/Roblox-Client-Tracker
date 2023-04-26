local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local profileQRCode3DAvatarIXP = require(script.Parent.profileQRCode3DAvatarIXP)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local describe = JestGlobals.describe
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local getFStringProfileQRCodeEnable3DAvatarExperimentKey =
	require(ProfileQRCode.Flags.getFStringProfileQRCodeEnable3DAvatarExperimentKey)
local getFStringProfileQRCodeLayer = require(ProfileQRCode.Flags.getFStringProfileQRCodeLayer)

it("SHOULD have expected interface", function()
	expect(profileQRCode3DAvatarIXP).toEqual({
		isExperimentEnabled = expect.any("function"),
		useIsExperimentEnabled = expect.any("function"),
	})
end)

describe("isExperimentEnabled", function()
	it("SHOULD return key from layer if it exists", function()
		expect(profileQRCode3DAvatarIXP.isExperimentEnabled({
			[getFStringProfileQRCodeLayer()] = {
				[getFStringProfileQRCodeEnable3DAvatarExperimentKey()] = true,
			},
		})).toBe(true)
	end)

	it("SHOULD return key from layer if it does not", function()
		expect(profileQRCode3DAvatarIXP.isExperimentEnabled({})).toBeNil()
	end)
end)

describe("useIsExperimentEnabled", function()
	it("SHOULD return true for soothsayers", function()
		local helper = renderHookWithProviders(function()
			return profileQRCode3DAvatarIXP.useIsExperimentEnabled()
		end, {
			store = mockStore({
				IsLocalUserSoothsayer = true,
			}),
		})

		expect(helper.result).toBe(true)
	end)
end)
