return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local MainViewHeader = require(Plugin.Core.Components.MainView.MainViewHeader)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			MainViewHeader = Roact.createElement(MainViewHeader),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
