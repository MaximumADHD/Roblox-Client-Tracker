local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
-- FIXME: APPFDN-1925
local LoadingCarouselStory = (
	require((FriendsCarousel :: any).Stories:FindFirstChild("LoadingCarousel.story")).stories.LoadingCarousel
) :: any

describe("LoadingCarouselStory", function()
	it("SHOULD mount and unmount", function()
		local LoadingCarouselComponent = createTreeWithProviders(LoadingCarouselStory, {})
		runWhileMounted(LoadingCarouselComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD render list of 5 Tiles ", function()
		local LoadingCarouselComponent = createTreeWithProviders(LoadingCarouselStory, {
			props = {
				screenSize = Vector2.new(450, 200),
			},
		})
		runWhileMounted(LoadingCarouselComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local ListLayout = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ListLayout",
			})
			jestExpect(ListLayout).never.toBeNil()

			local ListOfElements = ListLayout.Parent
			local listLength = #ListOfElements:GetChildren() - 1

			jestExpect(listLength).toBe(5)
		end)
	end)
end)
