local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local TabRowContainer = require(script.Parent.TabRowContainer)

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
		TabRowContainer = Roact.createElement(TabRowContainer, {
			tabList = {},
			windowWidth = 0,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
