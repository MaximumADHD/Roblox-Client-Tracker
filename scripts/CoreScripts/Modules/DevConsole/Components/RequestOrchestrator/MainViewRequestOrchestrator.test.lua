local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainViewRequestOrchestrator = require(script.Parent.MainViewRequestOrchestrator)

it("should create and destroy without errors", function()
	local store = Store.new(function()
		return {
			MainView = {
				currTabIndex = 0,
			},
		}
	end)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		MainViewRequestOrchestrator = Roact.createElement(MainViewRequestOrchestrator, {
			size = UDim2.new(0, 400, 0, 400),
			formFactor = Constants.FormFactor.Large,
			tabList = {},
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
