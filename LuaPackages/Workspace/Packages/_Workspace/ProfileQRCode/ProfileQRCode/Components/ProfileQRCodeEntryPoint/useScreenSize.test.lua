local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useScreenSize = require(script.Parent.useScreenSize)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

it("SHOULD return local user id", function()
	local screenSize = Vector2.new(1, 1)
	local helper = renderHookWithProviders(function()
		return useScreenSize()
	end, {
		store = mockStore({
			ScreenSize = screenSize,
		}),
	})

	expect(helper.result).toBe(screenSize)
end)
