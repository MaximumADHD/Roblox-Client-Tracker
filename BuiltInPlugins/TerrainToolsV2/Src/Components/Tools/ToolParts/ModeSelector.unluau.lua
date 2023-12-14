-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.SingleSelectButtonGroup)
local var3 = require(var0.Src.Util.Constants)
return function(arg1)
   local var330 = {}
   var330.LayoutOrder = arg1.LayoutOrder
   var330.Size = UDim2.new(1, 0, 0, 22)
   var330.BackgroundTransparency = 1
   local var339 = {}
   local var343 = {}
   var343.PaddingLeft = UDim.new(0, (var3.MIN_WIDGET_SIZE.X - 208) / 2)
   var339.UIPadding = var1.createElement("UIPadding", var343)
   local var356 = {}
   var356.LayoutOrder = 1
   var356.Size = UDim2.new(0, 208, 0, 22)
   var356.Selected = arg1.Selected
   var356.Select = arg1.Select
   var356.Options = arg1.Options
   var339.Toggle = var1.createElement(var2, var356)
   return var1.createElement("Frame", var330, var339)
end
