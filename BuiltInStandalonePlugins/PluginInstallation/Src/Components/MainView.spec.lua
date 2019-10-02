local MainView = require(script.Parent.MainView)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

return function()
	it("should construct and destroy without errors", function()
		local element = Roact.createElement(MockServiceWrapper, {}, {
			MainView = Roact.createElement(MainView)
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct and destroy without errors with a pluginId", function()
		local element = Roact.createElement(MockServiceWrapper, {
			storeState = {
				PluginInfo = {
					pluginId = "123456"
				},
			}
		}, {
			MainView = Roact.createElement(MainView)
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end