-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Parent.Packages.Roact)
local var1 = Color3.fromRGB(227, 227, 227)
local var2 = var0.PureComponent:extend("SelectableImageButton")
function var2.init(arg1)
   function arg1.selectItem()
      arg1.props.SelectItem(arg1.props.Item)
   end
   
end

function var2.render(arg1)
   local var0 = arg1.props
   local var779 = var0.SelectedTransparency
   local var783 = {}
   var783.LayoutOrder = var0.LayoutOrder
   var783.Size = var0.Size or UDim2.new(0, 32, 0, 32)
   var783.BackgroundColor3 = var0.BackgroundColor3
   if var0.IsSelected then
      local var0 = var784 or 1
   end
   var783.BackgroundTransparency = 1
   var783.BorderColor3 = var1
   var783.Image = var0.Image
   var0.Event.Activated = arg1.selectItem
   return var0.createElement("ImageButton", var783)
end

return var2
