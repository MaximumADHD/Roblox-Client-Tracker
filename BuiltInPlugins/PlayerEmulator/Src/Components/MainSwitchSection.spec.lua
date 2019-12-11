local Plugin = script.Parent.Parent.Parent
local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local MainSwitchSection = require(Plugin.Src.Components.MainSwitchSection)

return function()
	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			MainSwitchSection = Roact.createElement(MainSwitchSection)
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when enabled", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = { mainSwitchEnabled = true },
		}, {
			MainSwitchSection = Roact.createElement(MainSwitchSection)
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when disabled", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = { mainSwitchEnabled = false },
		}, {
			MainSwitchSection = Roact.createElement(MainSwitchSection)
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end