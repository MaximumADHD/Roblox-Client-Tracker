-- singleton

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ConstantColors = require(Plugin.Src.Util.ConstantColors)
local ConstantLayout = require(Plugin.Src.Util.ConstantLayout)

local Create = {}

function Create.noOptFrame()
	return Roact.createElement("Frame", {
	        Size = UDim2.new(0, 0, 0, 0),
	        BorderSizePixel = 0,
	    }
    )
end

function Create.containerFrame(inputChildren)
    local children = inputChildren or {}
    return Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = ConstantColors.White,
            BackgroundTransparency = 1
        },
        children
    )
end

function Create.verticalFillUIListLayout(thePadding)
	return Roact.createElement("UIListLayout", {
            SortOrder = Enum.SortOrder.LayoutOrder,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            FillDirection = Enum.FillDirection.Vertical,
            Padding = thePadding
        }
    )
end

function Create.horizontalFillUIListLayout()
    return Roact.createElement("UIListLayout", {
            SortOrder = Enum.SortOrder.LayoutOrder,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            FillDirection = Enum.FillDirection.Horizontal
        }
    )
end

function Create.getIndentFrameWidth()
    return 11;
end

function Create.indentFrame(layoutOrder)
    return Create.horizontalPaddingFrame(layoutOrder, Create.getIndentFrameWidth())
end

function Create.horizontalPaddingFrame(order, width)
    return Roact.createElement("Frame", {
            LayoutOrder = order or 0,
            Size = UDim2.new(0, width, 1, 0),
            BorderSizePixel = 0,
            BackgroundTransparency = 1
        }
    )
end

function Create.virticalChildFittedFrame(order, children, numChildPanels)
    return Roact.createElement("Frame", {
            LayoutOrder = order,
            Size = UDim2.new(1, 0, 0, ConstantLayout.RowHeight*numChildPanels),
            BorderSizePixel = 0,
            BackgroundTransparency = 1
        },
        children
    )
end

return Create