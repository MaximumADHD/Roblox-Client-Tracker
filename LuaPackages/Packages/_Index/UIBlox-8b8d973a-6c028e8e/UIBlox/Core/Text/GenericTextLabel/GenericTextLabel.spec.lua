return function()
	local GenericTextLabelRoot = script.Parent
	local Text = GenericTextLabelRoot.Parent
	local App = Text.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local GenericTextLabel = require(GenericTextLabelRoot.GenericTextLabel)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local TestStyle = require(UIBlox.App.Style.Validator.TestStyle)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			provider = Roact.createElement(GenericTextLabel, {
				Text = "Test text",
				Size = UDim2.new(0, 100, 0, 50),
				colorStyle = TestStyle.Theme.SystemPrimaryDefault,
				fontStyle = TestStyle.Font.Title,
				fluidSizing = true,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and be able to auto size itself if not size is given", function()
		local element = mockStyleComponent({
			provider = Roact.createElement(GenericTextLabel, {
				Text = "Test text",
				colorStyle = TestStyle.Theme.SystemPrimaryDefault,
				fontStyle = TestStyle.Font.Title,
				fluidSizing = true,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and be able to respect the max size", function()
		local element = mockStyleComponent({
			provider = Roact.createElement(GenericTextLabel, {
				Text = "Test text",
				maxSize = Vector2.new(200, 40),
				colorStyle = TestStyle.Theme.SystemPrimaryDefault,
				fontStyle = TestStyle.Font.Title,
				fluidSizing = true,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept all properties of the TextLabel instance", function()
		local element = mockStyleComponent({
			provider = Roact.createElement(GenericTextLabel, {
				Text = "Test text",
				Size = UDim2.new(0, 100, 0, 50),
				Position = UDim2.new(.5, 0, .5, 0),
				colorStyle = TestStyle.Theme.SystemPrimaryDefault,
				fontStyle = TestStyle.Font.Header1,
				TextYAlignment = Enum.TextYAlignment.Bottom,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end