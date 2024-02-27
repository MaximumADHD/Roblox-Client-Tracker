-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Roact)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var275 = var1.X
   if var2.X < var275 then
      var275 = var2
      var2 = var1
      var1 = var275
   end
   local var301 = var2.Y - var1.Y
   local var310 = var0.Width
   local var323 = {}
   var323.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var323.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var301)) + 1, 0, var301)
   var323.AnchorPoint = Vector2.new(0.5, 0.5)
   var323.BackgroundTransparency = var0.Transparency
   var323.BackgroundColor3 = var0.Color
   var323.BorderSizePixel = 0
   var323.BorderColor3 = var0.Color
   var323.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var323.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var323)
end

return var1
