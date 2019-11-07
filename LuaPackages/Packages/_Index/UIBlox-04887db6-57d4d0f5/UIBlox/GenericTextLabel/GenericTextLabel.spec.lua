return function()
	local TextLabelRoot = script.Parent
	local UIBloxRoot = TextLabelRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local GenericTextLabel = require(TextLabelRoot.GenericTextLabel)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local TestStyle = require(UIBloxRoot.Style.Validator.TestStyle)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			provider = Roact.createElement(GenericTextLabel, {
				Text = "Test text",
				Size = UDim2.new(0, 100, 0, 50),
				color = TestStyle.Theme.SystemPrimaryDefault,
				font = TestStyle.Font.Title,
				fluidSizing = true,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept all properties of the TextLabel instance", function()
		local element = mockStyleComponent({
			provider = Roact.createElement(GenericTextLabel, {
				Text = "Test text2",
				Size = UDim2.new(0, 100, 0, 50),
				Position = UDim2.new(.5, 0, .5, 0),
				color = TestStyle.Theme.SystemPrimaryDefault,
				font = TestStyle.Font.Header1,
				TextYAlignment = Enum.TextYAlignment.Bottom,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end