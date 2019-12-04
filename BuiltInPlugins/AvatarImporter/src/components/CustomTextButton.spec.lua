return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = require(root.lib.Roact)

	local CustomTextButton = require(components.CustomTextButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CustomTextButton, {
			isMain = false,
			layoutOrder = 0,
			labelText = "",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end