return function()
	local Control = script.Parent
	local Core = Control.Parent
	local UIBlox = Core.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local Interactable = require(Control.Interactable)

	it("should create and destroy without errors", function()
		local controllableButton = Roact.createElement(Interactable, {
			onStateChanged = function() end,
			Size = UDim2.new(1, 1, 1, -1),
			Position = UDim2.new(1, -1, 1, 1),
			AnchorPoint = Vector2.new(0.1, 0.1),
			LayoutOrder = 1,
			BackgroundTransparency = 0.5,
			ImageColor3 = Color3.fromRGB(25, 25, 25),
			ImageTransparency = 0.5,
			BorderSizePixel = 2,
			AutoButtonColor = true,
		})
		local instance = Roact.mount(controllableButton)
		Roact.unmount(instance)
	end)
end
