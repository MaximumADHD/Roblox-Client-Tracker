local TextService = game:GetService("TextService")

local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local LinkText = Roact.PureComponent:extend("LinkText")

function LinkText:render()
	local props = self.props
	local text = props.Text
	local layoutOrder = props.LayoutOrder
	local onActivated = props.OnActivated

	return Theming.withTheme(function(theme)
		local textExtents = TextService:GetTextSize(
			text,
			theme.LinkTextTextSize,
			theme.LinkTextFont,
			Vector2.new())
		local textDimensions = UDim2.fromOffset(textExtents.X, textExtents.Y)
		local textColor = theme.LinkText

		return Roact.createElement("TextButton", {
			Size = textDimensions,
			Text = text,
			TextColor3 = textColor,
			Font = theme.LinkTextFont,
			TextSize = theme.LinkTextTextSize,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,

			[Roact.Event.Activated] = onActivated,
		}, {
			Underline = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = textColor,
				BorderSizePixel = 0,
			})
		})
	end)
end

return LinkText