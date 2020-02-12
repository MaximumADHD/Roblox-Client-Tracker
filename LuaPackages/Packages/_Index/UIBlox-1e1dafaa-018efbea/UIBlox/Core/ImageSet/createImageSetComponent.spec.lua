return function()
	local createImageSetComponent = require(script.Parent.createImageSetComponent)
	local ImageSet = script.Parent
	local Core = ImageSet.Parent
	local UIBlox = Core.Parent
	local Images = require(UIBlox.App.ImageSet.Images)
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)

	it("should create and destroy button without errors", function()
		local element = Roact.createElement(createImageSetComponent("ImageButton", 1), {
			Size = UDim2.new(0, 8, 0, 8),
			Image = Images["component_assets/circle_17_stroke_1"],
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy button with slice center", function()
		local element = Roact.createElement(createImageSetComponent("ImageButton", 1), {
			Size = UDim2.new(0, 8, 0, 8),
			Image = Images["component_assets/circle_17_stroke_1"],
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 7, 10, 9),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "ImageSetComponentTest")
		expect(container.ImageSetComponentTest.SliceCenter.Min.X).to.equal(8)
		expect(container.ImageSetComponentTest.SliceCenter.Min.Y).to.equal(7)
		expect(container.ImageSetComponentTest.SliceCenter.Max.X).to.equal(10)
		expect(container.ImageSetComponentTest.SliceCenter.Max.Y).to.equal(9)
		Roact.unmount(instance)
	end)

	it("should create and destroy button with scaled slice center", function()
		local element = Roact.createElement(createImageSetComponent("ImageButton", 2), {
			Size = UDim2.new(0, 8, 0, 8),
			Image = Images["component_assets/circle_17_stroke_1"],
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(11, 12, 14, 17),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "ImageSetComponentTest")
		expect(container.ImageSetComponentTest.SliceCenter.Min.X).to.equal(22)
		expect(container.ImageSetComponentTest.SliceCenter.Min.Y).to.equal(24)
		expect(container.ImageSetComponentTest.SliceCenter.Max.X).to.equal(28)
		expect(container.ImageSetComponentTest.SliceCenter.Max.Y).to.equal(34)
		Roact.unmount(instance)
	end)
end
