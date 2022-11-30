local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProviders = require(SocialTab.TestHelpers.createInstanceWithProviders)
local isAutomaticSizingEnabled = require(SocialTab.TestHelpers.isAutomaticSizingEnabled)
local findImageSet = require(SocialTab.TestHelpers.findImageSet)
local disableSocialPanelIA = require(SocialTab.TestHelpers.disableSocialPanelIA)

local devDependencies = require(SocialTab.devDependencies)
local ReactRoblox = devDependencies.ReactRoblox
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["withProviders.story"]) :: any

describe("GIVEN mock analytics", function()
	disableSocialPanelIA()

	local analytics

	beforeEach(function()
		analytics = jest.fn().mockName("analytics")
		analytics.pageLoaded = jest.fn()
		analytics.buttonClick = jest.fn()
		analytics.navigate = jest.fn()
	end)

	describe("WHEN mounted", function()
		local screenGui
		local cleanup

		beforeEach(function()
			screenGui, cleanup = createInstanceWithProviders(story, {
				props = {
					analytics = analytics,
					isLuaProfilePageEnabled = true,
				},
			})

			ReactRoblox.act(function()
				wait()
			end)
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD fire pageLoaded", function()
			expect(analytics.pageLoaded).toHaveBeenCalledTimes(1)
		end)

		describe("WHEN ChatTile is clicked", function()
			beforeEach(function()
				if isAutomaticSizingEnabled() then
					local chatTile =
						RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/menu/messages_large"))
					assert(chatTile, "Could not find chatTile")
					RhodiumHelpers.clickInstance(chatTile)
				end
			end)

			it("SHOULD fire buttonClick as Chats", function()
				if isAutomaticSizingEnabled() then
					expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "Chats")
				end
			end)
		end)

		describe("WHEN GroupsTile is clicked", function()
			beforeEach(function()
				if isAutomaticSizingEnabled() then
					local groupsTile =
						RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/menu/groups_large"))
					assert(groupsTile, "Could not find groupsTile")
					RhodiumHelpers.clickInstance(groupsTile)
				end
			end)

			it("SHOULD fire buttonClick as Groups", function()
				if isAutomaticSizingEnabled() then
					expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "Groups")
				end
			end)
		end)

		describe("WHEN ProfileEntry is clicked", function()
			beforeEach(function()
				if isAutomaticSizingEnabled() then
					local profileEntry = RhodiumHelpers.findFirstInstance(screenGui, {
						Name = "profileEntry",
					})
					assert(profileEntry, "Could not find profileEntry")
					RhodiumHelpers.clickInstance(profileEntry)
				end
			end)

			it("SHOULD fire buttonClick as LoggedInUserIdentity", function()
				if isAutomaticSizingEnabled() then
					expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "LoggedInUserIdentity")
				end
			end)
		end)

		describe("WHEN Notification Bell is clicked", function()
			beforeEach(function()
				local notificationBell =
					RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/common/notificationOn"))
				assert(notificationBell, "Could not find notificationBell")
				RhodiumHelpers.clickInstance(notificationBell)
			end)

			it("SHOULD fire buttonClick as Notifications", function()
				expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "Notifications")
			end)
		end)

		describe("WHEN Search Icon is clicked", function()
			beforeEach(function()
				local searchIcon = RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/common/search"))
				assert(searchIcon, "Could not find searchIcon")
				RhodiumHelpers.clickInstance(searchIcon)
			end)

			it("SHOULD fire buttonClick as SearchFriends", function()
				expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "SearchFriends")
			end)
		end)
	end)
end)
