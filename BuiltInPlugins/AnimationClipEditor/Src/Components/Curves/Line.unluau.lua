-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Roact)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var297 = var1.X
   if var2.X < var297 then
      var297 = var2
      var2 = var1
      var1 = var297
   end
   local var323 = var2.Y - var1.Y
   local var332 = var0.Width
   local var345 = {}
   var345.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var345.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var323)) + 1, 0, var323)
   var345.AnchorPoint = Vector2.new(0.5, 0.5)
   var345.BackgroundTransparency = var0.Transparency
   var345.BackgroundColor3 = var0.Color
   var345.BorderSizePixel = 0
   var345.BorderColor3 = var0.Color
   var345.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var345.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var345)
end

return var1
