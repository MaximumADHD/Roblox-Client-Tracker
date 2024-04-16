-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Roact)
local var1 = var0.PureComponent:extend("Line")
function var1.render(arg1)
   local var0 = arg1.props
   local var1 = var0.A
   local var2 = var0.B
   local var516 = var1.X
   if var2.X < var516 then
      var516 = var2
      var2 = var1
      var1 = var516
   end
   local var542 = var2.Y - var1.Y
   local var551 = var0.Width
   local var564 = {}
   var564.Position = UDim2.new(0, (var1.X + var2.X) / 2, 0, (var1.Y + var2.Y) / 2)
   var564.Size = UDim2.new(0, math.sqrt((var2.X - var1.X) * (var2.X - var1.X) + (var2.Y - var1.Y) * (var542)) + 1, 0, var542)
   var564.AnchorPoint = Vector2.new(0.5, 0.5)
   var564.BackgroundTransparency = var0.Transparency
   var564.BackgroundColor3 = var0.Color
   var564.BorderSizePixel = 0
   var564.BorderColor3 = var0.Color
   var564.Rotation = math.deg(math.atan2(var2.Y - var1.Y, var2.X - var1.X))
   var564.ZIndex = var0.ZIndex
   return var0.createElement("Frame", var564)
end

return var1
