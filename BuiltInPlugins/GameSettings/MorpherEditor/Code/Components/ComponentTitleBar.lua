local paths = require(script.Parent.Parent.Paths)

local TitleBar = paths.Roact.Component:extend("ComponentTitleBar")

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
    return paths.Roact.createElement("Frame", {
            LayoutOrder = self.props.LayoutOrder or 0,
            Size = UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight),
            BackgroundTransparency = 1,
        }, {
            Heading = getHeadingLabel(self),
            Custom = self.props.IsPlayerChoiceTitleStyle and getCustomLabel(self) or nil,
            PlayerChoice = self.props.IsPlayerChoiceTitleStyle and getPlayerChoiceLabel(self) or nil
        }
    )
end

return TitleBar