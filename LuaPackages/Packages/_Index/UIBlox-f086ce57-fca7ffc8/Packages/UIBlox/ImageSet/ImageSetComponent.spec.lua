return function()
	local ImageSetComponent = require(script.Parent.ImageSetComponent)
	local Images = require(script.Parent.Images)
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)

	it("should create and destroy button without errors", function()
		local element = Roact.createElement(ImageSetComponent.Button, {
			Size = UDim2.new(0, 8, 0, 8),
			Image = Images["buttons/buttonStroke"],
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy label without errors", function()
		local element = Roact.createElement(ImageSetComponent.Label, {
			Size = UDim2.new(0, 8, 0, 8),
			Image = Images["buttons/buttonStroke"],
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
