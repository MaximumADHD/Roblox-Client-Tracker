local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local Checkbox = require(script.Parent.Checkbox)

local LabeledCheckbox = Roact.PureComponent:extend("LabeledCheckbox")

function LabeledCheckbox:render()
	return Theming.withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = self.props.Size,
			LayoutOrder = self.props.LayoutOrder,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 5),
			}),

			Label = Roact.createElement("TextLabel", {
				Text = self.props.LabelText,
				TextXAlignment = "Left",
				TextYAlignment = "Center",
				TextColor3 = theme.BrightText,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 75, 0, 30),
				LayoutOrder = 1,
			}),

			Checkbox = Roact.createElement(Checkbox, {
				LayoutOrder = 2,
				Checked = self.props.Checked,
				OnClicked = self.props.OnClicked,
			}),
		})
	end)
end

return LabeledCheckbox
