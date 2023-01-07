local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local RhodiumHelpers = devDependencies.RhodiumHelpers()

local PlayerName = require(script.Parent.PlayerName)

describe("PlayerName", function()
	local DEFAULT_PROPS = {
		name = "Display Name",
		layoutOrder = 1,
		tileSize = 50,
	}

	it("SHOULD mount and unmount", function()
		local PlayerName = createTreeWithProviders(PlayerName, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD render correct text", function()
		local PlayerName = createTreeWithProviders(PlayerName, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(PlayerName, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
				Text = "Display Name",
			})
			jestExpect(TextLabel).never.toBeNil()
		end)
	end)
end)
