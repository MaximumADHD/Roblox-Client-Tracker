local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local devDependencies = require(FriendsLanding.devDependencies)
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FriendsLandingFilter = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local navigation = {
			getParam = function(_, _)
				return "0"
			end,
			goBack = jest.fn(),
		}
		local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingFilter, {
			props = {
				navigation = navigation,
			},
		})
		cleanup()
	end)

	it("SHOULD navigate back when closed button is pressed", function()
		local mockNavigation = {
			goBack = jest.fn(),
			getParam = function(_, _)
				return "All"
			end,
		}
		local parent, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingFilter, {
			props = {
				navigation = mockNavigation,
			},
		})
		waitForEvents.act()

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "CloseButton",
		})
		waitForEvents.act()

		expect(button).toEqual(expect.any("Instance"))
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(button)
		end)
		expect(mockNavigation.goBack).toHaveBeenCalledTimes(1)

		cleanup()
	end)

	it("SHOULD call setFilterKeys when apply button is pressed", function()
		local friendsLandingContext = {}
		friendsLandingContext.setFilterKeys = jest.fn()
		friendsLandingContext.screenSize = Vector2.new(2000, 2000)
		friendsLandingContext.filter = filterStates.All
		local mockNavigation = {
			goBack = jest.fn(),
		}

		local parent, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingFilter, {
			props = {
				navigation = mockNavigation,
				filter = filterStates.All,
			},
			context = friendsLandingContext,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Messages.Action.Apply",
		})

		local radioButtonOnline = RhodiumHelpers.findFirstInstance(parent, {
			Name = "smallRadioButtonCellOnline",
		})

		expect(button).toEqual(expect.any("Instance"))

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(radioButtonOnline)
		end)

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(button)
		end)

		expect(friendsLandingContext.setFilterKeys).toHaveBeenCalledTimes(1)
		expect(mockNavigation.goBack).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
