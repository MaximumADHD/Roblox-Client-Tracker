local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local DataProvider = require(script.Parent.DataProvider)
local DevConsoleWindow = require(script.Parent.DevConsoleWindow)

it("should create and destroy without errors", function()
	local store = Store.new(function()
		return {
			DisplayOptions = {
				isVisible = 0,
				platform = 0,
				isMinimized = false,
				size = UDim2.new(1, 0, 1, 0),
			},
			MainView = {
				currTabIndex = 0,
				isDeveloperView = true,
			},
			TopBarLiveUpdate = {
				LogWarningCount = 0,
				LogErrorCount = 0,
			},
			LogData = {
				clientData = {},
				clientDataFiltered = {},
				clientSearchTerm = "",
				clientTypeFilters = {},

				serverData = {},
				serverDataFiltered = {},
				serverSearchTerm = "",
				serverTypeFilters = {},
			},
		}
	end)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		DataProvider = Roact.createElement(DataProvider, {}, {
			DevConsoleWindow = Roact.createElement(DevConsoleWindow),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
