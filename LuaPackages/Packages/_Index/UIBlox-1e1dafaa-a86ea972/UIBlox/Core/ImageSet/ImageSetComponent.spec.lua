return function()
	local ImageSetComponent = require(script.Parent.ImageSetComponent)
	local ImageSet = script.Parent
	local Core = ImageSet.Parent
	local UIBlox = Core.Parent
	local Images = require(UIBlox.App.ImageSet.Images)
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)

	it("should create and destroy button without errors", function()
		local element = Roact.createElement(ImageSetComponent.Button, {
			Size = UDim2.new(1, 0, 1, 0),
			Image = Images["component_assets/circle_17_stroke_1"],
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy label without errors", function()
		local element = Roact.createElement(ImageSetComponent.Label, {
			Size = UDim2.new(1, 0, 1, 0),
			Image = Images["component_assets/circle_17_stroke_1"],
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
