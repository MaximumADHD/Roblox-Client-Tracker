local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local jest = devDependencies.jest
local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted

local FindFriendsTile = require(script.Parent)

describe("FindFriendsTile", function()
	local state = {}

	it("should create and destroy without errors for UIVariant", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("should fire onActivated if pressed for UIVariant", function()
		local onActivated = jest.fn()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function()
					onActivated()
				end,
			},
		})
		runWhileMounted(element, function(parent)
			local findFriendsTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendsTileCircular",
			})
			RhodiumHelpers.clickInstance(findFriendsTile)
			jestExpect(onActivated).toHaveBeenCalled()
		end)
	end)

	it("should call onDidMount if passed", function()
		local onDidMountSpy = jest.fn()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
				onDidMount = function()
					onDidMountSpy()
				end,
			},
		})
		runWhileMounted(element, function()
			jestExpect(onDidMountSpy).toHaveBeenCalledTimes(1)
		end)
	end)

	it("SHOULD show the right icon", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
			},
		})
		runWhileMounted(element, function(parent)
			local imageLabelWithLegacyIcon =
				RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/friends_large"))

			jestExpect(imageLabelWithLegacyIcon).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD have the right text", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
				isContactImporterEnabled = false,
			},
		})
		runWhileMounted(element, function(parent)
			local textLabel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendsLabel",
			})

			jestExpect(textLabel).never.toBeNil()
			jestExpect(textLabel.Text).toBe("Feature.Chat.Label.AddFriends")
		end)
	end)
end)
