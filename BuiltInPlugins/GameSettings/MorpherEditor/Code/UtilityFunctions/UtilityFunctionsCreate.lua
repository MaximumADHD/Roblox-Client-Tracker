-- singleton

local paths = require(script.Parent.Parent.Paths)

local Create = {}

function Create.noOptFrame()
	return paths.Roact.createElement("Frame", {
	        Size = UDim2.new(0, 0, 0, 0),
	        BorderSizePixel = 0,       
	    }
    )
end

function Create.containerFrame(inputChildren)
    local children = inputChildren or {}
    return paths.Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = paths.ConstantColors.White,
            BackgroundTransparency = 1      
        }, 
        children
    )
end

function Create.verticalFillUIListLayout(thePadding)
	return paths.Roact.createElement("UIListLayout", {
            SortOrder = Enum.SortOrder.LayoutOrder,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            FillDirection = Enum.FillDirection.Vertical, 
            Padding = thePadding
        }
    )
end

function Create.horizontalFillUIListLayout()
    return paths.Roact.createElement("UIListLayout", {
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
    return paths.Roact.createElement("Frame", {
            LayoutOrder = order or 0,
            Size = UDim2.new(0, width, 1, 0),
            BorderSizePixel = 0,
            BackgroundTransparency = 1
        }
    )
end

function Create.radioButton(order, IsSelected, setValueFunc, backgroundColor, isEnabled)
    return paths.Roact.createElement(paths.SharedWidgetRadioButton, {
            LayoutOrder = order,
            IsSelected = IsSelected,
            Size = UDim2.new(0, 10, 0, 10),
            setValue = setValueFunc,
            BackgroundColor3 = backgroundColor,
            IsEnabled = isEnabled
        }
    )
end  

function Create.virticalChildFittedFrame(order, children, numChildPanels)
    return paths.Roact.createElement("Frame", {
            LayoutOrder = order,
            Size = UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight*numChildPanels),
            BorderSizePixel = 0,
            BackgroundTransparency = 1
        }, 
        children
    )
end    

return Create