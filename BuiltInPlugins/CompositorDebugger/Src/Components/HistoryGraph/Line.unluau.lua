-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("CompositorDebugger").Packages.React)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var16 = var1.X
   if var2.X < var16 then
      var16 = var2
      var2 = var1
      var1 = var16
   end
   local var42 = var2.Y - var1.Y
   local var51 = var0.Width
   local var64 = {}
   var64.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var64.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var42)) + 1, 0, var42)
   var64.AnchorPoint = Vector2.new(0.5, 0.5)
   var64.BackgroundTransparency = var0.Transparency
   var64.BackgroundColor3 = var0.Color
   var64.BorderSizePixel = 0
   var64.BorderColor3 = var0.Color
   var64.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var64.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var64)
end

return var1
