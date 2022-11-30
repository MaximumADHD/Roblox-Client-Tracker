local SocialTab = script:FindFirstAncestor("SocialTab")
local isAutomaticSizingEnabled = require(SocialTab.TestHelpers.isAutomaticSizingEnabled)
local disableSocialPanelIA = require(SocialTab.TestHelpers.disableSocialPanelIA)
local findImageSet = require(SocialTab.TestHelpers.findImageSet)
local EnumScreens = require(SocialTab.EnumScreens)

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local devDependencies = require(SocialTab.devDependencies)
local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["withProviders.story"]) :: any

local style = {
	Theme = dependencies.AppStyle.LightTheme,
	Font = dependencies.AppStyle.Gotham,
}

describe("GIVEN mock navigation functions", function()
	disableSocialPanelIA()

	local navigation
	local navigateToLuaAppPages

	beforeEach(function()
		navigation = jest.fn().mockName("navigation")
		navigation.navigate = jest.fn()
		navigateToLuaAppPages = {
			[EnumScreens.Groups] = jest.fn().mockName("spec-navigateDownToGroups"),
			[EnumScreens.AddFriends] = jest.fn().mockName("spec-navigateDownToAddFriends"),
			[EnumScreens.Notifications] = jest.fn().mockName("spec-navigateDownToNotifications"),
			[EnumScreens.ViewUserProfile] = jest.fn().mockName("spec-navigateDownToViewUserProfile"),
		}
	end)

	describe("WHEN mounted", function()
		local screenGui

		beforeEach(function()
			local tree = Roact.createElement(UIBlox.Style.Provider, {
				style = style,
			}, {
				story = Roact.createElement(story, {
					navigation = navigation,
					navigateToLuaAppPages = navigateToLuaAppPages,
				}),
			})

			screenGui = Instance.new("ScreenGui")
			screenGui.Parent = game:GetService("CoreGui")
			Roact.mount(UnitTestHelpers.mockLocale(tree), screenGui)

			Roact.act(function()
				wait()
			end)
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

			it("SHOULD navigate to EnumScreen.RoactChat", function()
				if isAutomaticSizingEnabled() then
					expect(navigation.navigate).toHaveBeenCalledWith("RoactChat")
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

			it("SHOULD call navigateDownToGroups once", function()
				if isAutomaticSizingEnabled() then
					expect(navigateToLuaAppPages[EnumScreens.Groups]).toHaveBeenCalledTimes(1)
				end
			end)
		end)

		describe("WHEN topBar-searchForFriends is clicked", function()
			beforeEach(function()
				local topBarSearch = RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/common/search"))
				assert(topBarSearch, "Could not find topBarSearch")
				RhodiumHelpers.clickInstance(topBarSearch)
			end)

			it("SHOULD call navigateDownToAddFriends once", function()
				expect(navigateToLuaAppPages[EnumScreens.AddFriends]).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("WHEN topBar-notifications is clicked", function()
			beforeEach(function()
				local topBarNotifications =
					RhodiumHelpers.findFirstInstance(screenGui, findImageSet("icons/common/notificationOn"))
				assert(topBarNotifications, "Could not find topBarNotifications")
				RhodiumHelpers.clickInstance(topBarNotifications)
			end)

			it("SHOULD call navigateDownToNotifications once", function()
				expect(navigateToLuaAppPages[EnumScreens.Notifications]).toHaveBeenCalledTimes(1)
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

			it("SHOULD call navigateDownToViewUserProfile once", function()
				if isAutomaticSizingEnabled() then
					expect(navigateToLuaAppPages[EnumScreens.ViewUserProfile]).toHaveBeenCalledTimes(1)
				end
			end)
		end)
	end)
end)
