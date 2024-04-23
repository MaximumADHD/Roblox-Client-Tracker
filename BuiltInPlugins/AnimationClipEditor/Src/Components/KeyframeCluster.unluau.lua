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
   local var151 = {}
   var151.BackgroundColor3 = var5
   var151.ZIndex = var3
   var151.Position = var0.Position
   var151.AnchorPoint = Vector2.new(0, 0.5)
   var151.BorderSizePixel = 0
   var151.Size = var2
   local var157 = {}
   local var161 = {}
   var161.BackgroundColor3 = var5
   var161.Position = UDim2.new(0, 0, 0.5, 0)
   var161.ZIndex = var3
   var161.Size = var4
   var161.BorderSizePixel = 0
   var161.AnchorPoint = Vector2.new(0.5, 0.5)
   var161.Rotation = 45
   var157.LeftDiamond = var1.createElement("Frame", var161)
   local var178 = {}
   var178.BackgroundColor3 = var5
   var178.Position = UDim2.new(1, 0, 0.5, 0)
   var178.ZIndex = var3
   var178.Size = var4
   var178.BorderSizePixel = 0
   var178.AnchorPoint = Vector2.new(0.5, 0.5)
   var178.Rotation = 45
   var157.RightDiamond = var1.createElement("Frame", var178)
   return var1.createElement("Frame", var151, var157)
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
   local var151 = {}
   var151.BackgroundColor3 = var5
   var151.ZIndex = var3
   var151.Position = var0.Position
   var151.AnchorPoint = Vector2.new(0, 0.5)
   var151.BorderSizePixel = 0
   var151.Size = var2
   local var157 = {}
   local var161 = {}
   var161.BackgroundColor3 = var5
   var161.Position = UDim2.new(0, 0, 0.5, 0)
   var161.ZIndex = var3
   var161.Size = var4
   var161.BorderSizePixel = 0
   var161.AnchorPoint = Vector2.new(0.5, 0.5)
   var161.Rotation = 45
   var157.LeftDiamond = var1.createElement("Frame", var161)
   local var178 = {}
   var178.BackgroundColor3 = var5
   var178.Position = UDim2.new(1, 0, 0.5, 0)
   var178.ZIndex = var3
   var178.Size = var4
   var178.BorderSizePixel = 0
   var178.AnchorPoint = Vector2.new(0.5, 0.5)
   var178.Rotation = 45
   var157.RightDiamond = var1.createElement("Frame", var178)
   return var1.createElement("Frame", var151, var157)
end

fun1 = var2.withContext
local var193 = {}
var193.Stylizer = var2.Stylizer
var3 = fun1(var193)(var3)
return var3
