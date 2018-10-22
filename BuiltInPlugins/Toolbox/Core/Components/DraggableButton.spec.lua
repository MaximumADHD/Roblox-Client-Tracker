return function()
	local Plugin = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DraggableButton = require(Plugin.Core.Components.DraggableButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DraggableButton)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
