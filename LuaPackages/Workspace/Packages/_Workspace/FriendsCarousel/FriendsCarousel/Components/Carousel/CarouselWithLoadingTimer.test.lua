local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local Roact = dependencies.Roact
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local CarouselWithLoadingTimer = require(script.Parent.CarouselWithLoadingTimer)

describe("CarouselWithLoadingTimer", function()
	local TestElement = Roact.Component:extend("TestElement")

	function TestElement:render()
		return Roact.createElement("Frame")
	end

	local DEFAULT_PROPS = {
		carousel = TestElement,
		carouselProps = {
			LayoutOrder = 0,
			formFactor = "compact",
			sideMargin = 0,
		},
		friendsAndRecList = {},
		friendCount = 0,
		friendRequestCount = 0,
		fetchingStatus = "Done",
		onFindFriendsTileActivated = function() end,
		onUserTileActivated = function() end,
		showToast = function() end,
		userSeen = function() end,
	}

	local LOCAL_USER_ID = "123"

	local state = {
		LocalUserId = LOCAL_USER_ID,
		[RODUX_KEY] = {
			NetworkStatus = {},
			Friends = {
				byUserId = {},
				countsByUserId = {},
			},
			Users = {},
			Presence = {},
		},
	}

	it("SHOULD mount and unmount", function()
		local Component = createTreeWithProviders(CarouselWithLoadingTimer, {
			store = mockStore(state),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(Component, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)
end)
