local paths = require(script.Parent.Parent.Paths)

local TitleBar = paths.Roact.Component:extend("ComponentTitleBar")

local calculateTextSize = nil

local function getHeadingLabel(self)
	return paths.Roact.createElement("TextLabel", {
			Text = self.props.Text .. (self.props.IsEnabled and "" or " (Unavailable)"),
			TextColor3 = paths.StateInterfaceTheme.getTitleTextColor(self.props),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, paths.UtilityFunctionsCreate.getIndentFrameWidth(), 0.5, 0),
			Size = UDim2.new(0, 200, 1, 0),
			Font = paths.ConstantFonts.TitleText.Type,
			TextSize = paths.ConstantFonts.TitleText.Size,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
		}
	)
end

local function getCustomLabel(self)
	local unavailableXPos = self.props.IsEnabled and 170 or 200

	return paths.Roact.createElement("TextLabel", {
			Text = "Custom",
			TextColor3 = paths.StateInterfaceTheme.getBodyTextColor(self.props),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, unavailableXPos, 0.5, 0),
			Size = UDim2.new(0, 200, 1, 0),
			Font = paths.ConstantFonts.BodyText.Type,
			TextSize = paths.ConstantFonts.BodyText.Size,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
		}
	)
end

local function getPlayerChoiceLabel(self)
	return paths.Roact.createElement("TextLabel", {
			Text = "Player Choice",
			TextColor3 = paths.StateInterfaceTheme.getBodyTextColor(self.props),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0, paths.ConstantLayout.PlayerChoiceHorizontalOffset, 0.5, 0),
			Size = UDim2.new(0, 200, 1, 0),
			Font = paths.ConstantFonts.BodyText.Type,
			TextSize = paths.ConstantFonts.BodyText.Size,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Center,
		}
	)
end

function TitleBar:render()
	local textSize = calculateTextSize(self.props.Text, paths.ConstantFonts.TitleText.Size, paths.ConstantFonts.TitleText.Type)

	local children = {}
	if self.props.IsPlayerChoiceTitleStyle then
		children.PlayerChoiceLabel = paths.Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = paths.StateInterfaceTheme.getRadioButtonTextColor(self.props),
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			Text = "Override Player Choice?",
		})
	end

	return paths.Roact.createElement(paths.StudioWidgetTitledFrame, {
		Title = self.props.Text,
		MaxHeight = textSize.Y,
		LayoutOrder = self.props.LayoutOrder or 1,
		Font = paths.ConstantFonts.TitleText.Type
	}, children)
end

calculateTextSize = function(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

return TitleBar