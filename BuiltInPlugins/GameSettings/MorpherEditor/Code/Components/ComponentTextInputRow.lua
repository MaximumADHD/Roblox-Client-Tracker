local paths = require(script.Parent.Parent.Paths)

local TextInputRow = paths.Roact.Component:extend("ComponentTextInputRow")

function TextInputRow:render()
    local inputBoxText = self.props.InputBoxText
    if inputBoxText == 0 then
        inputBoxText = ""
    end
    return paths.Roact.createElement("Frame", {
            LayoutOrder = self.props.LayoutOrder,
            Size = UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight),
            BackgroundTransparency = 1
        }, {
            Input = paths.UtilityFunctionsCreate.containerFrame({
                UIListLayoutHorizontal = paths.UtilityFunctionsCreate.horizontalFillUIListLayout(),
                IndentFrame = paths.UtilityFunctionsCreate.indentFrame(),
                TextLabel = paths.Roact.createElement("TextLabel", {
                        LayoutOrder = 1,
                        Text = self.props.LabelText,
                        TextColor3 = paths.StateInterfaceTheme.getBodyTextColor(self.props),
                        BackgroundTransparency = 1,
                        Size = UDim2.new(0, 100, 1, 0),
                        Font = paths.ConstantFonts.BodyText.Type,
                        TextSize = paths.ConstantFonts.BodyText.Size,
                        BorderSizePixel = 0,
                        AnchorPoint = Vector2.new(0, 0.5),
                        TextXAlignment = Enum.TextXAlignment.Left
                    }
                ),
                TextBoxIDInput = paths.Roact.createElement("TextBox", {
                        LayoutOrder = 3,
                        PlaceholderText = "ID",
                        Text = inputBoxText or "",
                        Size = UDim2.new(0, 200, 0, paths.ConstantLayout.RowHeight-6),
                        Font = paths.ConstantFonts.BodyText.Type,
                        TextSize = paths.ConstantFonts.BodyText.Size,
                        TextColor3 = paths.StateInterfaceTheme.getBodyTextInputColor(self.props),
                        BorderSizePixel = 1,
                        AnchorPoint = Vector2.new(0, 0.5),
                        TextXAlignment = Enum.TextXAlignment.Left,
                        BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(self.props),
                        ClearTextOnFocus = false,
                        BorderColor3 = paths.StateInterfaceTheme.getBorderColor(self.props),

                        [paths.Roact.Event.FocusLost] = function(textBox, enterPressed)
                            if self.props.setValue then
                                self.props.setValue(textBox.Text)
                            end
                        end
                    }
                )
            }),
            PlayerChoiceButton = paths.Roact.createElement(paths.ComponentPlayerChoice, {
                    ThemeData = self.props.ThemeData,
                    IsSelected = self.props.PlayerChoice,
                    setValue = self.props.setPlayerChoiceValue
                }
            )
        }
    )
end

return TextInputRow