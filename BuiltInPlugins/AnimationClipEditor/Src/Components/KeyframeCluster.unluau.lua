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
   local var153 = {}
   var153.BackgroundColor3 = var5
   var153.ZIndex = var3
   var153.Position = var0.Position
   var153.AnchorPoint = Vector2.new(0, 0.5)
   var153.BorderSizePixel = 0
   var153.Size = var2
   local var159 = {}
   local var163 = {}
   var163.BackgroundColor3 = var5
   var163.Position = UDim2.new(0, 0, 0.5, 0)
   var163.ZIndex = var3
   var163.Size = var4
   var163.BorderSizePixel = 0
   var163.AnchorPoint = Vector2.new(0.5, 0.5)
   var163.Rotation = 45
   var159.LeftDiamond = var1.createElement("Frame", var163)
   local var180 = {}
   var180.BackgroundColor3 = var5
   var180.Position = UDim2.new(1, 0, 0.5, 0)
   var180.ZIndex = var3
   var180.Size = var4
   var180.BorderSizePixel = 0
   var180.AnchorPoint = Vector2.new(0.5, 0.5)
   var180.Rotation = 45
   var159.RightDiamond = var1.createElement("Frame", var180)
   return var1.createElement("Frame", var153, var159)
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
   local var153 = {}
   var153.BackgroundColor3 = var5
   var153.ZIndex = var3
   var153.Position = var0.Position
   var153.AnchorPoint = Vector2.new(0, 0.5)
   var153.BorderSizePixel = 0
   var153.Size = var2
   local var159 = {}
   local var163 = {}
   var163.BackgroundColor3 = var5
   var163.Position = UDim2.new(0, 0, 0.5, 0)
   var163.ZIndex = var3
   var163.Size = var4
   var163.BorderSizePixel = 0
   var163.AnchorPoint = Vector2.new(0.5, 0.5)
   var163.Rotation = 45
   var159.LeftDiamond = var1.createElement("Frame", var163)
   local var180 = {}
   var180.BackgroundColor3 = var5
   var180.Position = UDim2.new(1, 0, 0.5, 0)
   var180.ZIndex = var3
   var180.Size = var4
   var180.BorderSizePixel = 0
   var180.AnchorPoint = Vector2.new(0.5, 0.5)
   var180.Rotation = 45
   var159.RightDiamond = var1.createElement("Frame", var180)
   return var1.createElement("Frame", var153, var159)
end

fun0 = var2.withContext
local var195 = {}
var195.Stylizer = var2.Stylizer
var3 = fun0(var195)(var3)
return var3
