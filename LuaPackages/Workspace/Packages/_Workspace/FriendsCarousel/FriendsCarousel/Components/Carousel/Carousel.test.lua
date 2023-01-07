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

local Carousel = require(script.Parent.Carousel)

describe("Carousel", function()
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

	it("SHOULD mount and unmount", function()
		local CarouselComponent = Roact.createElement(Carousel, DEFAULT_PROPS)
		runWhileMounted(CarouselComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)
end)
