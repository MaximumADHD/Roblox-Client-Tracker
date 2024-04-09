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
   local var220 = {}
   var220.BackgroundColor3 = var5
   var220.ZIndex = var3
   var220.Position = var0.Position
   var220.AnchorPoint = Vector2.new(0, 0.5)
   var220.BorderSizePixel = 0
   var220.Size = var2
   local var226 = {}
   local var230 = {}
   var230.BackgroundColor3 = var5
   var230.Position = UDim2.new(0, 0, 0.5, 0)
   var230.ZIndex = var3
   var230.Size = var4
   var230.BorderSizePixel = 0
   var230.AnchorPoint = Vector2.new(0.5, 0.5)
   var230.Rotation = 45
   var226.LeftDiamond = var1.createElement("Frame", var230)
   local var247 = {}
   var247.BackgroundColor3 = var5
   var247.Position = UDim2.new(1, 0, 0.5, 0)
   var247.ZIndex = var3
   var247.Size = var4
   var247.BorderSizePixel = 0
   var247.AnchorPoint = Vector2.new(0.5, 0.5)
   var247.Rotation = 45
   var226.RightDiamond = var1.createElement("Frame", var247)
   return var1.createElement("Frame", var220, var226)
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
   local var220 = {}
   var220.BackgroundColor3 = var5
   var220.ZIndex = var3
   var220.Position = var0.Position
   var220.AnchorPoint = Vector2.new(0, 0.5)
   var220.BorderSizePixel = 0
   var220.Size = var2
   local var226 = {}
   local var230 = {}
   var230.BackgroundColor3 = var5
   var230.Position = UDim2.new(0, 0, 0.5, 0)
   var230.ZIndex = var3
   var230.Size = var4
   var230.BorderSizePixel = 0
   var230.AnchorPoint = Vector2.new(0.5, 0.5)
   var230.Rotation = 45
   var226.LeftDiamond = var1.createElement("Frame", var230)
   local var247 = {}
   var247.BackgroundColor3 = var5
   var247.Position = UDim2.new(1, 0, 0.5, 0)
   var247.ZIndex = var3
   var247.Size = var4
   var247.BorderSizePixel = 0
   var247.AnchorPoint = Vector2.new(0.5, 0.5)
   var247.Rotation = 45
   var226.RightDiamond = var1.createElement("Frame", var247)
   return var1.createElement("Frame", var220, var226)
end

fun1 = var2.withContext
local var262 = {}
var262.Stylizer = var2.Stylizer
var3 = fun1(var262)(var3)
return var3
