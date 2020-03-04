return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local NavigationContainer = require(script.Parent.NavigationContainer)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockManagement, {}, {
			NavigationContainer = Roact.createElement(NavigationContainer)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

end
