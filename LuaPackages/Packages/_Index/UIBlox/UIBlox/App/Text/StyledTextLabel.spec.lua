return function()
	local Text = script.Parent
	local App = Text.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)

	local TestStyle = require(UIBlox.App.Style.Validator.TestStyle)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local StyledTextLabel = require(script.Parent.StyledTextLabel)

	describe("StyledTextLabel", function()
		it("should create and destroy without errors", function()
			local element = mockStyleComponent({
				TextLabel = Roact.createElement(StyledTextLabel, {
					text = "some text",
					fontStyle = TestStyle.Font.Title,
					colorStyle = TestStyle.Theme.TextEmphasis,
				})
			})

			local instance = Roact.mount(element, nil, "StyledTextLabel")
			Roact.unmount(instance)
		end)

		it("should create and destroy with all props without errors", function()
			local element = mockStyleComponent({
				TextLabel = Roact.createElement(StyledTextLabel, {
					text = "Some text",

					textTruncate = Enum.TextTruncate.AtEnd,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Center,

					size = UDim2.fromScale(1, 1),
					maxSize = Vector2.new(1000, 1000),

					fontStyle = TestStyle.Font.Title,
					colorStyle = TestStyle.Theme.TextEmphasis,

					richText = true,
					layoutOrder = 1,
					fluidSizing = true,

					automaticSize = Enum.AutomaticSize.XY,
				})
			})

			local instance = Roact.mount(element, nil, "StyledTextLabel")
			Roact.unmount(instance)
		end)
	end)
end
