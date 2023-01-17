local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)
local dependencies = require(SquadWidget.dependencies)

local Rodux = dependencies.Rodux
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local createTreeWithProviders = devDependencies.createTreeWithProviders
local jest = devDependencies.jest
local runWhileMounted = UnitTestHelpers.runWhileMounted
local SquadLobbyPeekView = require(SquadWidget.SquadLobby.Components.SquadLobbyPeekView.SquadLobbyPeekView)

local store = Rodux.Store.new(function()
	return {
		TopBar = {
			statusBarHeight = 20,
		},
	}
end, {}, { Rodux.thunkMiddleware })

it("SHOULD mount and unmount", function()
	local mockFn = jest.fn()
	local element = createTreeWithProviders(SquadLobbyPeekView, {
		props = {
			navigateBack = function()
				mockFn()
			end,
			peekViewProps = {
				mountAsFullView = true,
				mountAnimation = true,
				onPeekViewGoBack = function() end,
			},
			viewWidth = 375,
			viewHeight = 770,
			users = { id = 1111111111, name = "user" },
		},
		store = store,
	})

	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)
