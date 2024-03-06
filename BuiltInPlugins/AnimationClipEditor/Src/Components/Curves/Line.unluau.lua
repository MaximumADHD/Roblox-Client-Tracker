-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Roact)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var273 = var1.X
   if var2.X < var273 then
      var273 = var2
      var2 = var1
      var1 = var273
   end
   local var299 = var2.Y - var1.Y
   local var308 = var0.Width
   local var321 = {}
   var321.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var321.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var299)) + 1, 0, var299)
   var321.AnchorPoint = Vector2.new(0.5, 0.5)
   var321.BackgroundTransparency = var0.Transparency
   var321.BackgroundColor3 = var0.Color
   var321.BorderSizePixel = 0
   var321.BorderColor3 = var0.Color
   var321.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var321.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var321)
end

return var1
