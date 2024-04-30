-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("KeyframeCluster")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.keyframeTheme
   local var2 = var0.Size
   local var3 = var0.ZIndex
   local var4 = UDim2.new(0, var2.Y.Offset - 4, 0, var2.Y.Offset - 4)
   if var0.Primary then
      local var0 = var1.primaryClusterColor or var1.clusterColor
   end
   local var5 = var1.clusterColor
   local var43 = {}
   var43.BackgroundColor3 = var5
   var43.ZIndex = var3
   var43.Position = var0.Position
   var43.AnchorPoint = Vector2.new(0, 0.5)
   var43.BorderSizePixel = 0
   var43.Size = var2
   local var49 = {}
   local var53 = {}
   var53.BackgroundColor3 = var5
   var53.Position = UDim2.new(0, 0, 0.5, 0)
   var53.ZIndex = var3
   var53.Size = var4
   var53.BorderSizePixel = 0
   var53.AnchorPoint = Vector2.new(0.5, 0.5)
   var53.Rotation = 45
   var49.LeftDiamond = var1.createElement("Frame", var53)
   local var70 = {}
   var70.BackgroundColor3 = var5
   var70.Position = UDim2.new(1, 0, 0.5, 0)
   var70.ZIndex = var3
   var70.Size = var4
   var70.BorderSizePixel = 0
   var70.AnchorPoint = Vector2.new(0.5, 0.5)
   var70.Rotation = 45
   var49.RightDiamond = var1.createElement("Frame", var70)
   return var1.createElement("Frame", var43, var49)
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
   local var43 = {}
   var43.BackgroundColor3 = var5
   var43.ZIndex = var3
   var43.Position = var0.Position
   var43.AnchorPoint = Vector2.new(0, 0.5)
   var43.BorderSizePixel = 0
   var43.Size = var2
   local var49 = {}
   local var53 = {}
   var53.BackgroundColor3 = var5
   var53.Position = UDim2.new(0, 0, 0.5, 0)
   var53.ZIndex = var3
   var53.Size = var4
   var53.BorderSizePixel = 0
   var53.AnchorPoint = Vector2.new(0.5, 0.5)
   var53.Rotation = 45
   var49.LeftDiamond = var1.createElement("Frame", var53)
   local var70 = {}
   var70.BackgroundColor3 = var5
   var70.Position = UDim2.new(1, 0, 0.5, 0)
   var70.ZIndex = var3
   var70.Size = var4
   var70.BorderSizePixel = 0
   var70.AnchorPoint = Vector2.new(0.5, 0.5)
   var70.Rotation = 45
   var49.RightDiamond = var1.createElement("Frame", var70)
   return var1.createElement("Frame", var43, var49)
end

fun0 = var2.withContext
local var85 = {}
var85.Stylizer = var2.Stylizer
var3 = fun0(var85)(var3)
return var3
