return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local NavigatableView = require(script.Parent.NavigatableView)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockManagement, {}, {
			NavigatableView = Roact.createElement(NavigatableView)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

end
