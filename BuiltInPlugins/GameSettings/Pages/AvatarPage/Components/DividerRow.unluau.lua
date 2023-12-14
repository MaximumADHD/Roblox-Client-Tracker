-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).Util.LayoutOrderIterator
local var3 = require(script.Parent.Parent.Util.StateInterfaceTheme)
return function(arg1)
   local var29 = {}
   var29.LayoutOrder = arg1.LayoutOrder
   var29.Size = UDim2.new(1, 0, 0, 2)
   var29.BorderSizePixel = 0
   var29.BackgroundTransparency = 1
   local var39 = {}
   local var43 = {}
   var43.SortOrder = Enum.SortOrder.LayoutOrder
   var43.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var43.VerticalAlignment = Enum.VerticalAlignment.Center
   var43.FillDirection = Enum.FillDirection.Horizontal
   var39.UIListLayoutHorizontal = var1.createElement("UIListLayout", var43)
   local var52 = {}
   var52.Size = UDim2.new(1, 0, 0, 1)
   var52.LayoutOrder = var2.new():getNextOrder()
   var52.BorderSizePixel = 0
   local var62 = var3
   var62 = arg1
   var52.BackgroundColor3 = var62.getDividerColor(var62)
   var39.DividerFrame = var1.createElement("Frame", var52)
   return var1.createElement("Frame", var29, var39)
end
