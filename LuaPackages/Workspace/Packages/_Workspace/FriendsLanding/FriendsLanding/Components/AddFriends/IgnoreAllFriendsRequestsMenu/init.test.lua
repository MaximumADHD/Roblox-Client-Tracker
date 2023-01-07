local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local IgnoreAllFriendsRequestsMenu = require(script.Parent)

describe("IgnoreAllFriendsRequestsMenu", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(IgnoreAllFriendsRequestsMenu, {
			open = true,
			onIgnoreAll = function() end,
		})

		cleanup()
	end)

	it("SHOULD fire the onIgnoreAll callback when the Ignore All menu item is tapped", function()
		local activatedMock = jest.fn()

		local parent, cleanup = createInstanceWithProps(mockLocale)(IgnoreAllFriendsRequestsMenu, {
			open = true,
			onIgnoreAll = function()
				activatedMock()
			end,
		})

		local item = RhodiumHelpers.findFirstInstance(parent, {
			Name = "cell 1",
		})

		RhodiumHelpers.clickInstance(item)

		expect(activatedMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
