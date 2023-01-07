local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)
local dependencies = require(SquadWidget.dependencies)

local Rodux = dependencies.Rodux
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local createTreeWithProviders = devDependencies.createTreeWithProviders
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local jest = devDependencies.jest
local runWhileMounted = UnitTestHelpers.runWhileMounted
local SquadLobbyPeekViewTopBar =
	require(SquadWidget.SquadLobby.Components.SquadLobbyPeekViewTopBar.SquadLobbyPeekViewTopBar)

local store = Rodux.Store.new(function()
	return {
		TopBar = {
			statusBarHeight = 20,
		},
	}
end, {}, { Rodux.thunkMiddleware })

it("SHOULD mount and unmount", function()
	local mockFn = jest.fn()
	local element = createTreeWithProviders(SquadLobbyPeekViewTopBar, {
		props = {
			navigateBack = function()
				mockFn()
			end,
		},
		store = store,
	})

	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD fire when clicked", function()
	local mockFn = jest.fn()
	local element = createTreeWithProviders(SquadLobbyPeekViewTopBar, {
		props = {
			navigateBack = function()
				mockFn()
			end,
		},
		store = store,
	})

	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)

		local closeButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "LeftNavigationButton",
		})

		RhodiumHelpers.clickInstance(closeButton)
		jestExpect(closeButton).toEqual(jestExpect.any("Instance"))
		jestExpect(mockFn).toHaveBeenCalled()
	end)
end)
