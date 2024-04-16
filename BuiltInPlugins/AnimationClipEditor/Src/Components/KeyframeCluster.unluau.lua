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
   local var184 = {}
   var184.BackgroundColor3 = var5
   var184.ZIndex = var3
   var184.Position = var0.Position
   var184.AnchorPoint = Vector2.new(0, 0.5)
   var184.BorderSizePixel = 0
   var184.Size = var2
   local var190 = {}
   local var194 = {}
   var194.BackgroundColor3 = var5
   var194.Position = UDim2.new(0, 0, 0.5, 0)
   var194.ZIndex = var3
   var194.Size = var4
   var194.BorderSizePixel = 0
   var194.AnchorPoint = Vector2.new(0.5, 0.5)
   var194.Rotation = 45
   var190.LeftDiamond = var1.createElement("Frame", var194)
   local var211 = {}
   var211.BackgroundColor3 = var5
   var211.Position = UDim2.new(1, 0, 0.5, 0)
   var211.ZIndex = var3
   var211.Size = var4
   var211.BorderSizePixel = 0
   var211.AnchorPoint = Vector2.new(0.5, 0.5)
   var211.Rotation = 45
   var190.RightDiamond = var1.createElement("Frame", var211)
   return var1.createElement("Frame", var184, var190)
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
   local var184 = {}
   var184.BackgroundColor3 = var5
   var184.ZIndex = var3
   var184.Position = var0.Position
   var184.AnchorPoint = Vector2.new(0, 0.5)
   var184.BorderSizePixel = 0
   var184.Size = var2
   local var190 = {}
   local var194 = {}
   var194.BackgroundColor3 = var5
   var194.Position = UDim2.new(0, 0, 0.5, 0)
   var194.ZIndex = var3
   var194.Size = var4
   var194.BorderSizePixel = 0
   var194.AnchorPoint = Vector2.new(0.5, 0.5)
   var194.Rotation = 45
   var190.LeftDiamond = var1.createElement("Frame", var194)
   local var211 = {}
   var211.BackgroundColor3 = var5
   var211.Position = UDim2.new(1, 0, 0.5, 0)
   var211.ZIndex = var3
   var211.Size = var4
   var211.BorderSizePixel = 0
   var211.AnchorPoint = Vector2.new(0.5, 0.5)
   var211.Rotation = 45
   var190.RightDiamond = var1.createElement("Frame", var211)
   return var1.createElement("Frame", var184, var190)
end

fun1 = var2.withContext
local var226 = {}
var226.Stylizer = var2.Stylizer
var3 = fun1(var226)(var3)
return var3
