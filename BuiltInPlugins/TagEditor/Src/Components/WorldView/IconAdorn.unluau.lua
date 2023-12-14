-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.Icon)
return function(arg1)
   local var0 = {}
   if 1 < arg1.Icon then
      local var22 = {}
      var22.FillDirection = Enum.FillDirection.Horizontal
      var22.Padding = UDim.new(0.125, 0)
      var0.UIListLayout = var1.createElement("UIListLayout", var22)
   end
   local var29 = 1
   local var31 = arg1.Icon
   local var32 = 1
   local var38 = {}
   var38.Name = arg1.Icon[var29]
   var38.Size = UDim2.new(1 / arg1.Icon, 0, 1, 0)
   var38.Style = "WorldView"
   var38.TextScaled = true
   var0[1] = var1.createElement(var2, var38)
   local var54 = {}
   var54.Adornee = arg1.Adornee
   var54.Size = UDim2.new(arg1.Icon, 0, 1, 0)
   var54.SizeOffset = Vector2.new(0.5, 0.5)
   var54.ExtentsOffsetWorldSpace = Vector3.new(1, 1, 1)
   local var72 = arg1.AlwaysOnTop
   var54.AlwaysOnTop = var72
   var72 = var0
   return var1.createElement("BillboardGui", var54, var72)
end
