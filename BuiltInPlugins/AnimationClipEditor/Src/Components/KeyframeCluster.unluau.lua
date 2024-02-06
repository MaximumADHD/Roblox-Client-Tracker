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
   local var170 = {}
   var170.BackgroundColor3 = var5
   var170.ZIndex = var3
   var170.Position = var0.Position
   var170.AnchorPoint = Vector2.new(0, 0.5)
   var170.BorderSizePixel = 0
   var170.Size = var2
   local var176 = {}
   local var180 = {}
   var180.BackgroundColor3 = var5
   var180.Position = UDim2.new(0, 0, 0.5, 0)
   var180.ZIndex = var3
   var180.Size = var4
   var180.BorderSizePixel = 0
   var180.AnchorPoint = Vector2.new(0.5, 0.5)
   var180.Rotation = 45
   var176.LeftDiamond = var1.createElement("Frame", var180)
   local var197 = {}
   var197.BackgroundColor3 = var5
   var197.Position = UDim2.new(1, 0, 0.5, 0)
   var197.ZIndex = var3
   var197.Size = var4
   var197.BorderSizePixel = 0
   var197.AnchorPoint = Vector2.new(0.5, 0.5)
   var197.Rotation = 45
   var176.RightDiamond = var1.createElement("Frame", var197)
   return var1.createElement("Frame", var170, var176)
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
   local var170 = {}
   var170.BackgroundColor3 = var5
   var170.ZIndex = var3
   var170.Position = var0.Position
   var170.AnchorPoint = Vector2.new(0, 0.5)
   var170.BorderSizePixel = 0
   var170.Size = var2
   local var176 = {}
   local var180 = {}
   var180.BackgroundColor3 = var5
   var180.Position = UDim2.new(0, 0, 0.5, 0)
   var180.ZIndex = var3
   var180.Size = var4
   var180.BorderSizePixel = 0
   var180.AnchorPoint = Vector2.new(0.5, 0.5)
   var180.Rotation = 45
   var176.LeftDiamond = var1.createElement("Frame", var180)
   local var197 = {}
   var197.BackgroundColor3 = var5
   var197.Position = UDim2.new(1, 0, 0.5, 0)
   var197.ZIndex = var3
   var197.Size = var4
   var197.BorderSizePixel = 0
   var197.AnchorPoint = Vector2.new(0.5, 0.5)
   var197.Rotation = 45
   var176.RightDiamond = var1.createElement("Frame", var197)
   return var1.createElement("Frame", var170, var176)
end

fun0 = var2.withContext
local var212 = {}
var212.Stylizer = var2.Stylizer
var3 = fun0(var212)(var3)
return var3
