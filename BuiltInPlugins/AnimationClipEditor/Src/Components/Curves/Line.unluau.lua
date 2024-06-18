-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Roact)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var196 = var1.X
   if var2.X < var196 then
      var196 = var2
      var2 = var1
      var1 = var196
   end
   local var222 = var2.Y - var1.Y
   local var231 = var0.Width
   local var244 = {}
   var244.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var244.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var222)) + 1, 0, var222)
   var244.AnchorPoint = Vector2.new(0.5, 0.5)
   var244.BackgroundTransparency = var0.Transparency
   var244.BackgroundColor3 = var0.Color
   var244.BorderSizePixel = 0
   var244.BorderColor3 = var0.Color
   var244.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var244.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var244)
end

return var1
