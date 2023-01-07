local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local EnumScreens = require(FriendsLanding.EnumScreens)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local getFFlagAddFriendsMissingContext = require(FriendsLanding.Flags.getFFlagAddFriendsMissingContext)

local HeaderBarRightView = require(script.Parent)

describe("GIVEN mock analytics", function()
	local analytics, navigation, mountAndClick
	local parent, cleanup

	beforeEach(function()
		analytics = {
			buttonClick = jest.fn(),
			navigate = jest.fn(),
		}
		navigation = {
			navigate = jest.fn(),
			state = {
				routeName = EnumScreens.FriendsLanding,
			},
		}

		mountAndClick = function(props, buttonName, config: { context: any }?)
			parent, cleanup = createInstanceWithProviders(mockLocale)(HeaderBarRightView, {
				context = if config ~= nil then config.context else nil,
				analytics = analytics,
				props = props,
			})

			local button = nil
			waitUntil(function()
				button = RhodiumHelpers.findFirstInstance(parent, {
					Name = buttonName,
				})

				return button ~= nil
			end)

			assert(button, "Could not find " .. buttonName)
			RhodiumHelpers.clickInstance(button)
		end
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD fire when AddFriendsIcon is clicked", function()
		mountAndClick({
			navigation = navigation,
		}, "AddFriendsIcon")

		expect(analytics.navigate).toHaveBeenCalledTimes(1)
		expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.AddFriends)
	end)

	it("SHOULD fire AddFriends buttonClick event when AddFriendsIcon is clicked and user has friends", function()
		mountAndClick(
			{
				navigation = navigation,
			},
			"AddFriendsIcon",
			{
				context = {
					totalFriendCount = 1,
				},
			}
		)

		expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
		expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.AddFriends)
	end)

	it("SHOULD fire AddFriendsNoFriends event when AddFriendsIcon is clicked and use has no friends", function()
		mountAndClick(
			{
				navigation = navigation,
			},
			"AddFriendsIcon",
			{
				context = {
					totalFriendCount = 0,
				},
			}
		)

		expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
		expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.AddFriendsNoFriends)
	end)

	it("SHOULD fire buttonClick event when SearchIcon is clicked", function()
		mountAndClick({
			navigation = navigation,
		}, "SearchFriendsIcon")

		expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
		expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.FriendSearch)
	end)

	if getFFlagAddFriendsMissingContext() then
		it("SHOULD fire buttonClick event with right context when SearchIcon is clicked from AddFriends", function()
			mountAndClick({
				navigation = {
					navigate = jest.fn(),
					state = {
						routeName = EnumScreens.AddFriends,
					},
				},
			}, "SearchFriendsIcon")

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.FriendSearch, {
				contextOverride = "friendRequestsPage",
			})
		end)
	end
end)
