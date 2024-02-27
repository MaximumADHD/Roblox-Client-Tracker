-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("KeyframeCluster")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.keyframeTheme
   local var2 = var0.Size
   local var3 = var0.ZIndex
   local var4 = UDim2.new(0, var2.Y.Offset - 4, 0, var2.Y.Offset - 4)
   if var0.Primary then
      local var0 = var1.primaryClusterColor or var1.clusterColor
   end
   local var5 = var1.clusterColor
   local var158 = {}
   var158.BackgroundColor3 = var5
   var158.ZIndex = var3
   var158.Position = var0.Position
   var158.AnchorPoint = Vector2.new(0, 0.5)
   var158.BorderSizePixel = 0
   var158.Size = var2
   local var164 = {}
   local var168 = {}
   var168.BackgroundColor3 = var5
   var168.Position = UDim2.new(0, 0, 0.5, 0)
   var168.ZIndex = var3
   var168.Size = var4
   var168.BorderSizePixel = 0
   var168.AnchorPoint = Vector2.new(0.5, 0.5)
   var168.Rotation = 45
   var164.LeftDiamond = var1.createElement("Frame", var168)
   local var185 = {}
   var185.BackgroundColor3 = var5
   var185.Position = UDim2.new(1, 0, 0.5, 0)
   var185.ZIndex = var3
   var185.Size = var4
   var185.BorderSizePixel = 0
   var185.AnchorPoint = Vector2.new(0.5, 0.5)
   var185.Rotation = 45
   var164.RightDiamond = var1.createElement("Frame", var185)
   return var1.createElement("Frame", var158, var164)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.keyframeTheme
   local var2 = var0.Size
   local var3 = var0.ZIndex
   local var4 = UDim2.new(0, var2.Y.Offset - 4, 0, var2.Y.Offset - 4)
   if var0.Primary then
      local var0 = var1.primaryClusterColor or var1.clusterColor
   end
   local var5 = var1.clusterColor
   local var158 = {}
   var158.BackgroundColor3 = var5
   var158.ZIndex = var3
   var158.Position = var0.Position
   var158.AnchorPoint = Vector2.new(0, 0.5)
   var158.BorderSizePixel = 0
   var158.Size = var2
   local var164 = {}
   local var168 = {}
   var168.BackgroundColor3 = var5
   var168.Position = UDim2.new(0, 0, 0.5, 0)
   var168.ZIndex = var3
   var168.Size = var4
   var168.BorderSizePixel = 0
   var168.AnchorPoint = Vector2.new(0.5, 0.5)
   var168.Rotation = 45
   var164.LeftDiamond = var1.createElement("Frame", var168)
   local var185 = {}
   var185.BackgroundColor3 = var5
   var185.Position = UDim2.new(1, 0, 0.5, 0)
   var185.ZIndex = var3
   var185.Size = var4
   var185.BorderSizePixel = 0
   var185.AnchorPoint = Vector2.new(0.5, 0.5)
   var185.Rotation = 45
   var164.RightDiamond = var1.createElement("Frame", var185)
   return var1.createElement("Frame", var158, var164)
end

fun1 = var2.withContext
local var200 = {}
var200.Stylizer = var2.Stylizer
var3 = fun1(var200)(var3)
return var3
