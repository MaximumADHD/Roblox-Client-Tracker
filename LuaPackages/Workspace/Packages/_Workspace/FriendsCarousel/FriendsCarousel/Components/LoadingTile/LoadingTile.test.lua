local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local RhodiumHelpers = devDependencies.RhodiumHelpers()

local LoadingTile = require(script.Parent.LoadingTile)

describe("LoadingTile", function()
	it("SHOULD mount and unmount", function()
		local LoadingTileComponent = createTreeWithProviders(LoadingTile, {})
		runWhileMounted(LoadingTileComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD render PlayerTile pannels ", function()
		local LoadingTileComponent = createTreeWithProviders(LoadingTile, {})

		runWhileMounted(LoadingTileComponent, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local PlayerTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PlayerTile",
			})
			jestExpect(PlayerTile).never.toBeNil()
		end)
	end)
end)
