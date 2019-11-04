return function()
	local ButtonRoot = script.Parent
	local CoreRoot = ButtonRoot.Parent
local UIBloxRoot = CoreRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local ControllableButton = require(ButtonRoot.ControllableButton)

	it("should create and destroy without errors", function()
		local controllableButton = Roact.createElement(ControllableButton, {
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