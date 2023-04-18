local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local ImpressionEvents = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)
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

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

describe("GIVEN mock analytics", function()
	local analytics

	beforeEach(function()
		analytics = {
			buttonClick = jest.fn(),
			impressionEvent = if getFFlagFriendsLandingInactiveFriendsEnabled() then jest.fn() else nil,
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

	if getFFlagFriendsLandingInactiveFriendsEnabled() then
		it("SHOULD fire FriendPruningNewBadgeSeen impression event on load", function()
			local mockFriendCount = 5
			local mockInactiveFriendCount = 3

			local mockNavigation = Mock.MagicMock.new({ Name = "navigation" })
			mockNavigation.getParam = function(param)
				if param == "friendCount" then
					return mockFriendCount
				elseif param == "inactiveFriendCount" then
					return mockInactiveFriendCount
				else
					return 0
				end
			end

			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingFilter, {
				props = {
					navigation = mockNavigation,
				},
				analytics = analytics,
			})
			waitForEvents.act()

			expect(analytics.impressionEvent).toHaveBeenCalledTimes(1)
			expect(analytics.impressionEvent).toHaveBeenCalledWith(analytics, ImpressionEvents.FriendPruningNewBadgeSeen, {
				friendCount = tostring(mockFriendCount),
				inactiveFriendCount = tostring(mockInactiveFriendCount),
			})

			cleanup()
		end)
	end
end)
