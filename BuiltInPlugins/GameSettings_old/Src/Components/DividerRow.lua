local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local StateInterfaceTheme = require(Plugin.Src.Util.StateInterfaceTheme)
local UtilityClassLayoutOrder = require(Plugin.Src.Util.UtilityClassLayoutOrder)

local function DividerRow(props)
    local layoutOrder = UtilityClassLayoutOrder.new()

    return Roact.createElement("Frame", {
            LayoutOrder = props.LayoutOrder,
            Size = UDim2.new(1, 0, 0, 2),
            BorderSizePixel = 0,
            BackgroundTransparency = 1
        }, {
            UIListLayoutHorizontal = Roact.createElement("UIListLayout", {
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    HorizontalAlignment = Enum.HorizontalAlignment.Left,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    FillDirection = Enum.FillDirection.Horizontal
                }
            ),
            DividerFrame = Roact.createElement("Frame", {
                    Size = UDim2.new(1, 0, 0, 1),
                    LayoutOrder = layoutOrder:getNextOrder(),
                    BorderSizePixel = 0,
                    BackgroundColor3 = StateInterfaceTheme.getDividerColor(props)
                }
            ),
        }
    )
end

return DividerRow