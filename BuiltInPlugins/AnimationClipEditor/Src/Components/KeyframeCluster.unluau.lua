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
   local var39 = {}
   var39.BackgroundColor3 = var5
   var39.ZIndex = var3
   var39.Position = var0.Position
   var39.AnchorPoint = Vector2.new(0, 0.5)
   var39.BorderSizePixel = 0
   var39.Size = var2
   local var45 = {}
   local var49 = {}
   var49.BackgroundColor3 = var5
   var49.Position = UDim2.new(0, 0, 0.5, 0)
   var49.ZIndex = var3
   var49.Size = var4
   var49.BorderSizePixel = 0
   var49.AnchorPoint = Vector2.new(0.5, 0.5)
   var49.Rotation = 45
   var45.LeftDiamond = var1.createElement("Frame", var49)
   local var66 = {}
   var66.BackgroundColor3 = var5
   var66.Position = UDim2.new(1, 0, 0.5, 0)
   var66.ZIndex = var3
   var66.Size = var4
   var66.BorderSizePixel = 0
   var66.AnchorPoint = Vector2.new(0.5, 0.5)
   var66.Rotation = 45
   var45.RightDiamond = var1.createElement("Frame", var66)
   return var1.createElement("Frame", var39, var45)
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
   local var39 = {}
   var39.BackgroundColor3 = var5
   var39.ZIndex = var3
   var39.Position = var0.Position
   var39.AnchorPoint = Vector2.new(0, 0.5)
   var39.BorderSizePixel = 0
   var39.Size = var2
   local var45 = {}
   local var49 = {}
   var49.BackgroundColor3 = var5
   var49.Position = UDim2.new(0, 0, 0.5, 0)
   var49.ZIndex = var3
   var49.Size = var4
   var49.BorderSizePixel = 0
   var49.AnchorPoint = Vector2.new(0.5, 0.5)
   var49.Rotation = 45
   var45.LeftDiamond = var1.createElement("Frame", var49)
   local var66 = {}
   var66.BackgroundColor3 = var5
   var66.Position = UDim2.new(1, 0, 0.5, 0)
   var66.ZIndex = var3
   var66.Size = var4
   var66.BorderSizePixel = 0
   var66.AnchorPoint = Vector2.new(0.5, 0.5)
   var66.Rotation = 45
   var45.RightDiamond = var1.createElement("Frame", var66)
   return var1.createElement("Frame", var39, var45)
end

fun0 = var2.withContext
local var81 = {}
var81.Stylizer = var2.Stylizer
var3 = fun0(var81)(var3)
return var3
