-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Roact)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var965 = var1.X
   if var2.X < var965 then
      var965 = var2
      var2 = var1
      var1 = var965
   end
   local var991 = var2.Y - var1.Y
   local var1000 = var0.Width
   local var1013 = {}
   var1013.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var1013.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var991)) + 1, 0, var991)
   var1013.AnchorPoint = Vector2.new(0.5, 0.5)
   var1013.BackgroundTransparency = var0.Transparency
   var1013.BackgroundColor3 = var0.Color
   var1013.BorderSizePixel = 0
   var1013.BorderColor3 = var0.Color
   var1013.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var1013.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var1013)
end

return var1
