-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Constants)
return function(arg1)
   local var0 = {}
   if 1 < arg1.TagName then
      local var50 = {}
      var50.SortOrder = Enum.SortOrder.LayoutOrder
      var0.UIListLayout = var1.createElement("UIListLayout", var50)
   end
   local var53 = 1
   local var55 = arg1.TagName
   local var56 = 1
   local var58 = arg1.TagName[var53]
   local var62 = {}
   var62.LayoutOrder = var53
   var62.Size = UDim2.new(1, 0, 1 / arg1.TagName, 0)
   var62.Text = var58
   var62.TextScaled = true
   var62.TextSize = 20
   var62.Font = Enum.Font.SourceSansBold
   var62.TextColor3 = var2.White
   var62.BackgroundTransparency = 1
   var62.TextXAlignment = Enum.TextXAlignment.Left
   var62.TextYAlignment = Enum.TextYAlignment.Bottom
   var62.TextStrokeTransparency = 0
   arg1.TagName[var53] = var1.createElement("TextLabel", var62)
   local var85 = {}
   var85.Adornee = arg1.Adornee
   var85.Size = UDim2.new(10, 0, arg1.TagName, 0)
   var85.SizeOffset = Vector2.new(0.5, 0.5)
   var85.ExtentsOffsetWorldSpace = Vector3.new(1, 1, 1)
   local var103 = arg1.AlwaysOnTop
   var85.AlwaysOnTop = var103
   var103 = var0
   return var1.createElement("BillboardGui", var85, var103)
end
