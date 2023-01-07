local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local jest = devDependencies.jest
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local RhodiumHelpers = devDependencies.RhodiumHelpers()

local UserTileSquare = require(script.Parent)

describe("UserTileSquare", function()
	it("SHOULD mount and unmount with default props", function()
		local UserTileComponent = createTreeWithProviders(UserTileSquare, {
			store = mockStore({}),
		})
		runWhileMounted(UserTileComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD render user avatar, username and conxtextual text", function()
		local UserTileComponent = createTreeWithProviders(UserTileSquare, {
			store = mockStore({}),
			props = {
				contextualText = "contextualText",
			},
		})
		runWhileMounted(UserTileComponent, function(parent)
			local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerAvatar",
			})
			local PlayerName = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerName",
			})
			local ContextualInfo = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ContextualInfo",
			})
			jestExpect(PlayerAvatar).never.toBeNil()
			jestExpect(PlayerName).never.toBeNil()
			jestExpect(ContextualInfo).never.toBeNil()

			jestExpect(PlayerAvatar).toBeAbove(PlayerName)
			jestExpect(PlayerAvatar).toBeAbove(ContextualInfo)
			jestExpect(PlayerName).toBeAbove(ContextualInfo)
		end)
	end)

	it("SHOULD render online indicator when showOnlineIndicator is passed", function()
		local UserTileComponent = createTreeWithProviders(UserTileSquare, {
			store = mockStore({}),
			props = {
				showOnlineIndicator = true,
				contextualText = "contextualText",
			},
		})
		runWhileMounted(UserTileComponent, function(parent)
			local PresenceIcon = RhodiumHelpers.findFirstInstance(parent, findImageSet("component_assets/circle_25"))
			local ContextualInfo = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ContextualInfo",
			})
			jestExpect(PresenceIcon).never.toBeNil()
			jestExpect(ContextualInfo).never.toBeNil()

			jestExpect(PresenceIcon).toBeLeftOf(ContextualInfo)
		end)
	end)

	it("SHOULD call onActivated when clicked", function()
		local onActivatedSpy = jest.fn()
		local UserTileComponent = createTreeWithProviders(UserTileSquare, {
			store = mockStore({}),
			props = {
				onActivated = function(...)
					onActivatedSpy(...)
				end,
			},
		})
		runWhileMounted(UserTileComponent, function(parent)
			local UserTileSquare = RhodiumHelpers.findFirstInstance(parent, {
				Name = "UserTileSquare",
			})
			RhodiumHelpers.clickInstance(UserTileSquare)
			jestExpect(onActivatedSpy).toHaveBeenCalledTimes(1)
		end)
	end)
end)
