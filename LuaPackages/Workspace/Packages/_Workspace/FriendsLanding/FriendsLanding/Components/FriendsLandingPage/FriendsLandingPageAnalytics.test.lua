local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local EnumScreens = require(FriendsLanding.EnumScreens)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)
local isAutomaticSizingEnabled = require(FriendsLanding.TestHelpers.isAutomaticSizingEnabled)

local devDependencies = require(FriendsLanding.devDependencies)
local findImageSet = devDependencies.findImageSet
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local ReactRoblox = devDependencies.ReactRoblox

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local USER_DISPLAY_NAME = "rowan"
local EXPERIENCE_NAME = "super fun"

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["withResult.story"]) :: any
local inactiveStory = require((script :: any).Parent["inactiveFilter.story"]) :: any

describe("GIVEN mock analytics", function()
	local analytics, navigateToLuaAppPages
	local mountAndClick, cleanup

	beforeEach(function()
		analytics = {
			navigate = jest.fn(),
			buttonClick = jest.fn(),
			pageLoadingTimeReport = jest.fn(),
			pageMountingTimeReport = jest.fn(),
		}
		navigateToLuaAppPages = {
			[EnumScreens.GameDetailsPeekView] = jest.fn(),
			[EnumScreens.ViewUserProfile] = jest.fn(),
		}
	end)

	afterEach(function()
		if cleanup then
			cleanup()
		end
	end)

	describe("WHEN mounted with friends", function()
		beforeEach(function()
			mountAndClick = function(props, buttonName)
				local parent
				if getFFlagFriendsLandingInactiveFriendsEnabled() then
					parent, cleanup = createInstanceWithProviders(mockLocale)(story, { props = props })
				else
					parent, cleanup = createInstanceWithProps(mockLocale)(story, props)
				end

				local button = nil
				waitUntil(function()
					button = RhodiumHelpers.findFirstInstance(parent, {
						Text = buttonName,
					})

					return button ~= nil
				end)

				assert(button, "Could not find " .. buttonName)

				-- DefaultMetricsGridView may be very small at first, leaving the buttons offscreen:
				-- they exist but are not clickable.  Let Roact finish what ever it's doing before
				-- proceeding, then the button will be onscreen.
				ReactRoblox.act(function()
					wait()
				end)
				RhodiumHelpers.clickInstance(button)
			end
		end)

		it("SHOULD fire PlayerProfile navigation event if FriendTile is clicked", function()
			mountAndClick({
				analytics = analytics,
				navigateToLuaAppPages = navigateToLuaAppPages,
			}, USER_DISPLAY_NAME)

			expect(analytics.navigate).toHaveBeenCalledTimes(1)
			expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.ViewUserProfile)
		end)

		it("SHOULD fire button clicked event", function()
			mountAndClick({
				analytics = analytics,
				navigateToLuaAppPages = navigateToLuaAppPages,
			}, USER_DISPLAY_NAME)

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.PlayerTile, {
				friendId = "123",
				position = 1,
				page = "playerProfile",
				subpage = "peekView",
			})
		end)

		it("SHOULD fire ViewUserProfile when relevancy info is clicked", function()
			mountAndClick({
				analytics = analytics,
				navigateToLuaAppPages = navigateToLuaAppPages,
			}, EXPERIENCE_NAME)

			expect(analytics.navigate).toHaveBeenCalledTimes(1)
			expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.ViewUserProfile)
		end)

		it("SHOULD ViewUserProfile if luaProfilePage is enabled", function()
			mountAndClick({
				analytics = analytics,
				navigateToLuaAppPages = navigateToLuaAppPages,
			}, EXPERIENCE_NAME)

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.ViewUserProfile)
		end)

		it("SHOULD fire FriendFilterPill event when the filter pill is clicked", function()
			if isAutomaticSizingEnabled() then
				mountAndClick({
					analytics = analytics,
					navigateToLuaAppPages = navigateToLuaAppPages,
				}, "Feature.Friends.Label.All (2)")

				expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
				expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.FriendFilterPill)
			end
		end)
	end)

	if getFFlagFriendsLandingInactiveFriendsEnabled() then
		describe("WHEN mounted with inactive filter state", function()
			beforeEach(function()
				mountAndClick = function(props)
					local parent
					parent, cleanup = createInstanceWithProviders(mockLocale)(inactiveStory, { props = props })

					local button = nil
					waitUntil(function()
						button =
							RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendRemove"))
						return button ~= nil
					end)

					assert(button, 'Could not find icon with path "icons/actions/friends/friendRemove"')

					-- DefaultMetricsGridView may be very small at first, leaving the buttons offscreen:
					-- they exist but are not clickable.  Let Roact finish what ever it's doing before
					-- proceeding, then the button will be onscreen.
					ReactRoblox.act(function()
						wait()
					end)
					RhodiumHelpers.clickInstance(button)
				end
			end)

			it("SHOULD fire unfriend event if button is clicked", function()
				mountAndClick({
					analytics = analytics,
					navigateToLuaAppPages = navigateToLuaAppPages,
				})

				expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
				expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.FriendTileUnfriendButton, {
					friendCount = "2",
					inactiveFriendCount = "2",
					presence = "PresenceType.InGame",
					unfriendUserId = "456",
				})
			end)
		end)
	end
end)
