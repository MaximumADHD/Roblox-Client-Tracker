local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local MainViewMicroProfiler = require(script.Parent.MainViewMicroProfiler)

it("should create and destroy without errors", function()
	local store = Store.new(function()
		return {
			MainView = {
				currTabIndex = 0,
			},
			MicroProfiler = {
				lastFileOutputLocation = "",
				recentDumpPaths = {},
			},
		}
	end)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		MainViewMicroProfiler = Roact.createElement(MainViewMicroProfiler, {
			size = UDim2.new(),
			tabList = {},
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
