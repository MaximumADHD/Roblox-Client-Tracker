local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local useLocalUserId = require(script.Parent.useLocalUserId)
local renderHookWithProviders = require(ProfileQRCode.TestHelpers.renderHookWithProviders)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)

it("SHOULD return local user id", function()
	local helper = renderHookWithProviders(function()
		return useLocalUserId()
	end, {
		store = mockStore({
			LocalUserId = "1234",
		}),
	})

	expect(helper.result).toBe("1234")
end)
