local paths = require(script.Parent.Parent.Paths)

local function ButtonRow(props)
    local ExtraIndentWidth = 30
    local enabled = props.IsEnabled

    return paths.Roact.createElement("Frame", {
            LayoutOrder = props.LayoutOrder,
            Size = UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight),
            BorderSizePixel = 0,
            BackgroundTransparency = 1
        }, {
            UIListLayoutHorizontal = paths.Roact.createElement("UIListLayout", {
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    HorizontalAlignment = Enum.HorizontalAlignment.Left,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    FillDirection = Enum.FillDirection.Horizontal
                }
            ),
            IndentFrame = paths.UtilityFunctionsCreate.indentFrame(),
            IndentFrame = paths.UtilityFunctionsCreate.horizontalPaddingFrame(1, ExtraIndentWidth),

            paths.Roact.createElement("Frame", {
                LayoutOrder = 2,
                Size = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1
            }, {
                SharedWidgetButtonDefault = paths.Roact.createElement(paths.SharedWidgetButton, {
                        PressedTextColor = paths.StateInterfaceTheme.getButtonPressedTextColor(props),
                        HoveredTextColor = paths.StateInterfaceTheme.getButtonHoveredTextColor(props),
                        DefaultTextColor = paths.StateInterfaceTheme.getButtonTextColor(props),

                        PressedImageColor = paths.StateInterfaceTheme.getButtonPressedImageColor(props),
                        HoveredImageColor = paths.StateInterfaceTheme.getButtonHoveredImageColor(props),
                        DefaultImageColor = paths.StateInterfaceTheme.getButtonImageColor(props),

                        DisabledImageColor = paths.StateInterfaceTheme.getButtonImageColor(props),
                        DisabledTextColor = paths.StateInterfaceTheme.getButtonTextColor(props),

                        Disabled = not enabled,

                        Size = UDim2.new(0.5, 0, 1, 0),
                        Text = props.Text,
                        onClick = function()
                            if nil ~= props.onClick then
                                props.onClick()
                            end
                        end
                    }
                )
            })
        }
    )
end

return ButtonRow