local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local function SliderRow(props)
    local textLabelWidth = fastFlags.isSliderLayoutFixFlagOn() and paths.ConstantLayout.TextLabelIdentifierWidth or 71
    local inputBoxWidth = fastFlags.isSliderLayoutFixFlagOn() and paths.ConstantLayout.InputWidgetWidth or 158

    return paths.Roact.createElement("Frame", {
            LayoutOrder = props.LayoutOrder,
            Size = UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight),
            BackgroundTransparency = 1,
            BackgroundColor3 = paths.ConstantColors.White
        }, {
            UIListLayoutHorizontal = paths.UtilityFunctionsCreate.horizontalFillUIListLayout(),
            IndentFrame = paths.UtilityFunctionsCreate.indentFrame(),
            TextLabel = paths.Roact.createElement("TextLabel", {
                    LayoutOrder = 1,
                    Text = props.Text,
                    TextColor3 = paths.StateInterfaceTheme.getBodyTextColor(props),
                    BackgroundTransparency = 1,
                    Size = UDim2.new(0, textLabelWidth, 1, 0),
                    Font = paths.ConstantFonts.BodyText.Type,
                    TextSize = paths.ConstantFonts.BodyText.Size,
                    AnchorPoint = Vector2.new(0, 0.5),
                    TextXAlignment = Enum.TextXAlignment.Left
                }
            ),
            SharedWidgetSlider = paths.Roact.createElement(paths.SharedWidgetSliderRanged, {
                    TextColor = paths.StateInterfaceTheme.getBodyTextColor(props),
                    LayoutOrder = 2,
                    Pressed = props.Pressed,
                    Width = inputBoxWidth,

                    CaretLowerRangeValue = props.SliderCaretLowerRangeValue,
                    CaretUpperRangeValue = props.SliderCaretUpperRangeValue,

                    CaretLowerRangeText = props.SliderCaretLowerRangeText,
                    CaretUpperRangeText = props.SliderCaretUpperRangeText,

                    Enabled = props.Enabled,
                    Min = props.SliderMin,
                    Max = props.SliderMax,
                    SnapIncrement = props.SliderSnapIncrement,
                    setLowerRangeValue = props.setLowerRangeValue,
                    setUpperRangeValue = props.setUpperRangeValue,
                }
            )
        }
    )
end

return SliderRow