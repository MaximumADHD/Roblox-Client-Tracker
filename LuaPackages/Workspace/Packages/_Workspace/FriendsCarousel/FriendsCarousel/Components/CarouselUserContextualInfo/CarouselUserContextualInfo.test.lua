local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
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
local TextKeys = require(FriendsCarousel.Common.TextKeys)
local users = require(FriendsCarousel.TestHelpers.mockedUsers)

local CarouselUserContextualInfo = require(script.Parent.CarouselUserContextualInfo)

describe("CarouselUserContextualInfo", function()
	local DEFAULT_PROPS = {
		user = users.friendOnline,
		layoutOrder = 1,
		tileSize = 50,
	}

	it("SHOULD mount and unmount", function()
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD render correct text and icon for Online user", function()
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("component_assets/circle_16"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = TextKeys.PresenceOnline,
			})
			jestExpect(ImageLabel).never.toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)

	it("SHOULD render correct text and no icon for Offline user", function()
		DEFAULT_PROPS.user = users.friendOffline
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ImageLabel",
			})
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = TextKeys.PresenceOffline,
			})
			jestExpect(ImageLabel).toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)

	it("SHOULD render correct text and icon for InGame user", function()
		DEFAULT_PROPS.user = users.friendInGame
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/games_small"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = "last Location very long name name name",
			})
			jestExpect(ImageLabel).never.toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)

	it("SHOULD render correct text and icon for InStudio user", function()
		DEFAULT_PROPS.user = users.friendInStudio
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/logo/studiologo_small"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = "In Studio location",
			})
			jestExpect(ImageLabel).never.toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)

	it("SHOULD render correct text and icon for mutual friends recommendation with multiple mutual friends", function()
		DEFAULT_PROPS.user = users.recommendationMutual
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/status/player/friend"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = "4 " .. TextKeys.MutualFriends,
			})
			jestExpect(ImageLabel).never.toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)

	it("SHOULD render correct text and icon for mutual friends recommendation with only one 1 mutual friend", function()
		DEFAULT_PROPS.user = users.recommendationMutualSingle
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/status/player/friend"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = "1 " .. TextKeys.SingularMutualFriend,
			})
			jestExpect(ImageLabel).never.toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)

	it("SHOULD render empty text for mutual friend recommendation with no mutual friends", function()
		DEFAULT_PROPS.user = users.recommendationMutualNone
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/status/player/friend"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ContextualText",
			})
			jestExpect(ImageLabel).toBeNil()
			jestExpect(TextLabel).never.toBeNil()
			jestExpect(TextLabel.Text).toBe("")
		end)
	end)

	it("SHOULD render correct text and icon for frequent recommendation", function()
		DEFAULT_PROPS.user = users.recommendationFrequent
		local PlayerName = createTreeWithProviders(CarouselUserContextualInfo, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ImageLabel = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/status/player/friend"))
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = TextKeys.PlayedTogether,
			})
			jestExpect(ImageLabel).toBeNil()
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)
end)
