local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local Mock = devDependencies.Mock
local ReactRoblox = devDependencies.ReactRoblox
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FriendsLandingFilter = require(script.Parent)

describe("GIVEN mock analytics", function()
	local analytics

	beforeEach(function()
		analytics = {
			buttonClick = jest.fn(),
		}
	end)

	it("SHOULD fire FriendFilterApply buttonClick event if Apply button is clicked", function()
		local mockNavigation = Mock.MagicMock.new({ Name = "navigation" })

		local parent, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingFilter, {
			props = {
				navigation = mockNavigation,
			},
			analytics = analytics,
		})
		waitForEvents.act()

		local apply = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Messages.Action.Apply",
		})

		local radioButtonOnline = RhodiumHelpers.findFirstInstance(parent, {
			Name = "smallRadioButtonCellOnline",
		})
		waitForEvents.act()

		expect(apply).toEqual(expect.any("Instance"))
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(radioButtonOnline)
		end)

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(apply)
		end)

		expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
		expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.FriendFilterApply, {
			filter = "Online",
		})

		cleanup()
	end)
end)
