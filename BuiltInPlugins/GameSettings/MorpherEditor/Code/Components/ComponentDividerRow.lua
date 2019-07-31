local paths = require(script.Parent.Parent.Paths)

local function DividerRow(props)
    local layoutOrder = paths.UtilityClassLayoutOrder.new()

    return paths.Roact.createElement("Frame", {
            LayoutOrder = props.LayoutOrder,
            Size = UDim2.new(1, 0, 0, 2),
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
            DividerFrame = paths.Roact.createElement("Frame", {
                    Size = UDim2.new(1, 0, 0, 1),
                    LayoutOrder = layoutOrder:getNextOrder(),
                    BorderSizePixel = 0,
                    BackgroundColor3 = paths.StateInterfaceTheme.getDividerColor(props)
                }
            ),
        }
    )
end

return DividerRow