return function()
	local ImageTextLabelRoot = script.Parent
	local Text = ImageTextLabelRoot.Parent
	local App = Text.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local ImageTextLabel = require(ImageTextLabelRoot.ImageTextLabel)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local TestStyle = require(UIBlox.App.Style.Validator.TestStyle)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			Roact.createElement(ImageTextLabel, {
				imageProps = {
					Size = UDim2.new(0, 50, 0, 50),
				},
				genericTextLabelProps = {
					Text = "Text",
					TextSize = 15,
					colorStyle = TestStyle.Theme.SystemPrimaryDefault,
					fontStyle = TestStyle.Font.Title,
				},
				padding = 4,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should handle not having an image", function()
		local element = mockStyleComponent({
			Roact.createElement(ImageTextLabel, {
				genericTextLabelProps = {
					Text = "Text",
					TextSize = 15,
					colorStyle = TestStyle.Theme.SystemPrimaryDefault,
					fontStyle = TestStyle.Font.Title,
				},
				padding = 4,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept all properties", function()
		local element = mockStyleComponent({
			Roact.createElement(ImageTextLabel, {
				imageProps = {
					Size = UDim2.new(0, 50, 0, 50),
				},
				genericTextLabelProps = {
					Text = "Text",
					TextSize = 15,
					colorStyle = TestStyle.Theme.SystemPrimaryDefault,
					fontStyle = TestStyle.Font.Title,
				},
				frameProps = {
					BackgroundTransparency = 1,
				},
				padding = 4,
				maxSize = Vector2.new(100, 100),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end