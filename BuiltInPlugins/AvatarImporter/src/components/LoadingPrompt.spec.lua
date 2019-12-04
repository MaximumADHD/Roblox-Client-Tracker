return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = require(root.lib.Roact)

	local LoadingPrompt = require(components.LoadingPrompt)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LoadingPrompt, {})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end