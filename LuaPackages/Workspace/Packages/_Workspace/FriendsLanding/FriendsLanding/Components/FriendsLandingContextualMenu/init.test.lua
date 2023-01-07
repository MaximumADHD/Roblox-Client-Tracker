local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local FriendsLandingContextualMenu = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local navigation = {
			getParam = function(_, _)
				return "0"
			end,
			goBack = jest.fn(),
		}
		local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingContextualMenu, {
			props = {
				navigation = navigation,
			},
		})

		cleanup()
	end)
end)
