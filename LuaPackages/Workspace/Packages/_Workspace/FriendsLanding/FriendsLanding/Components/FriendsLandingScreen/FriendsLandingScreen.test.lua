local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it

local FriendsLandingScreen = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingScreen, {})

		cleanup()
	end)
end)
