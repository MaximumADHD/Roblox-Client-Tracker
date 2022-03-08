local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local FrameworkUtil = require(Plugin.Packages.Framework).Util
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)

local function DividerRow(props)
    local layoutOrder = LayoutOrderIterator.new()

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
