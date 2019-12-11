local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local IconButton = require(script.Parent.IconButton)

local LabeledImageButton = Roact.PureComponent:extend("LabeledImageButton")

function LabeledImageButton:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local labelText = props.LabelText
	local buttonText = props.ButtonText
	local buttonImage = props.ButtonImage
	local activated = props.Activated
	local onActivated = props.OnActivated

	return Theming.withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 50),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}),

			Label = Roact.createElement("TextLabel", {
				Text = labelText,
				Size = UDim2.new(0, 250, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = theme.BrightText,
				TextWrapped = true,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),

			ButtonGroup = Roact.createElement(IconButton, {
				ButtonText = buttonText,
				ButtonImage = buttonImage,
				Activated = activated,
				OnActivated = onActivated,
				LayoutOrder = 2,
			})
		})
	end)
end

return LabeledImageButton
