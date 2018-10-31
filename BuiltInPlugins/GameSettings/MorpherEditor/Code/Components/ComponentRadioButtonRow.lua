local paths = require(script.Parent.Parent.Paths)

local function RadioButtonRow(props)
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
            SharedWidgetRadioButton = paths.UtilityFunctionsCreate.radioButton(2, props.IsSelected, props.setValue, paths.StateInterfaceTheme.getBackgroundColor(props)),
            Buffer = paths.Roact.createElement("Frame", {
                    LayoutOrder = 3,
                    Size = UDim2.new(0, 8, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1
                }
            ),
            TextLabel = paths.Roact.createElement("TextButton", {
                    LayoutOrder = 4,
                    Text = props.Text,
                    TextColor3 = paths.StateInterfaceTheme.getBodyTextColor(props),
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -55, 1, 0),
                    Font = paths.ConstantFonts.BodyText.Type,
                    TextSize = paths.ConstantFonts.BodyText.Size,
                    BorderSizePixel = 0,
                    AnchorPoint = Vector2.new(0, 0.5),
                    TextXAlignment = Enum.TextXAlignment.Left,

                    [paths.Roact.Event.MouseButton1Click] = function()
                        if props.setValue then
                            props.setValue(not props.IsSelected)
                        end
                    end
                }
            )         
        }
    )
end

return RadioButtonRow