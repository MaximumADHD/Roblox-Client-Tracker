local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local DataProvider = require(script.Parent.Parent.DataProvider)
local MainViewDataStores = require(script.Parent.MainViewDataStores)

it("should create and destroy without errors", function()
	local store = Store.new(function()
		return {
			MainView = {
				currTabIndex = 0,
				isDeveloperView = true,
			},
			DataStoresData = {
				storesSearchTerm = "",
			},
		}
	end)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		DataProvider = Roact.createElement(DataProvider, {}, {
			MainViewDataStores = Roact.createElement(MainViewDataStores, {
				size = UDim2.new(),
				tabList = {},
			}),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
