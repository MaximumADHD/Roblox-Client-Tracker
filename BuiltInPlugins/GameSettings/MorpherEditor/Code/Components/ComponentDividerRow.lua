local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local function DividerRow(props)
    local layoutOrder = paths.UtilityClassLayoutOrder.new()

    return paths.Roact.createElement("Frame", {
            LayoutOrder = props.LayoutOrder,
            Size = fastFlags.isMorphingPanelWidgetsStandardizationOn() and UDim2.new(1, 0, 0, 2) or UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight),
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
                    Size = fastFlags.isMorphingPanelWidgetsStandardizationOn() and UDim2.new(1, 0, 0, 1) or UDim2.new(1, -paths.UtilityFunctionsCreate.getIndentFrameWidth(), 0, 1),
                    LayoutOrder = layoutOrder:getNextOrder(),
                    BorderSizePixel = 0,
                    BackgroundColor3 = paths.StateInterfaceTheme.getDividerColor(props) 
                }
            ),
        }
    )
end

return DividerRow