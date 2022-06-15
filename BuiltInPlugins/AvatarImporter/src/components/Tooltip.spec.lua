return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = require(root.Packages.Roact)

	local Tooltip = require(components.Tooltip)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(Tooltip, {
			enabled = true,
			Size = UDim2.new(),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end