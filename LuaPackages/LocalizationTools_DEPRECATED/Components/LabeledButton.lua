local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local Button = require(script.Parent.Button)

local LabeledButton = Roact.PureComponent:extend("LabeledButton")


function LabeledButton:render()
	return Theming.withTheme(function(theme)
		local textColor = theme.BrightText
		local onClick = self.props.OnClick

		if self.props.Disabled then
			textColor = theme.DimmedText
			onClick = function() end
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, self.props.LabelWidth + self.props.ButtonWidth + self.props.Padding, 0, self.props.Height),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, self.props.Padding),
			}),

			Label = Roact.createElement("TextLabel", {
				Text = self.props.LabelText,
				Size = UDim2.new(0, self.props.LabelWidth, 0, self.props.Height),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = textColor,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
			}),

			Button = Roact.createElement(Button, {
				Text = self.props.ButtonText,
				Size = UDim2.new(0, self.props.ButtonWidth, 0, self.props.Height),
				BackgroundColor3 = theme.MainButton,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				LayoutOrder = 2,
				Disabled = self.props.Disabled,
				TextColor3 = textColor,
				OnClick = onClick,
			})
		})
	end)
end

return LabeledButton
