-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("KeyframeCluster")
local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.keyframeTheme
   local var2 = var0.Size
   local var3 = var0.ZIndex
   local var4 = UDim2.new(0, var2.Y.Offset - 4, 0, var2.Y.Offset - 4)
   if var0.Primary then
      local var0 = var1.primaryClusterColor or var1.clusterColor
   end
   local var5 = var1.clusterColor
   local var433 = {}
   var433.BackgroundColor3 = var5
   var433.ZIndex = var3
   var433.Position = var0.Position
   var433.AnchorPoint = Vector2.new(0, 0.5)
   var433.BorderSizePixel = 0
   var433.Size = var2
   local var439 = {}
   local var443 = {}
   var443.BackgroundColor3 = var5
   var443.Position = UDim2.new(0, 0, 0.5, 0)
   var443.ZIndex = var3
   var443.Size = var4
   var443.BorderSizePixel = 0
   var443.AnchorPoint = Vector2.new(0.5, 0.5)
   var443.Rotation = 45
   var439.LeftDiamond = var1.createElement("Frame", var443)
   local var460 = {}
   var460.BackgroundColor3 = var5
   var460.Position = UDim2.new(1, 0, 0.5, 0)
   var460.ZIndex = var3
   var460.Size = var4
   var460.BorderSizePixel = 0
   var460.AnchorPoint = Vector2.new(0.5, 0.5)
   var460.Rotation = 45
   var439.RightDiamond = var1.createElement("Frame", var460)
   return var1.createElement("Frame", var433, var439)
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
   local var433 = {}
   var433.BackgroundColor3 = var5
   var433.ZIndex = var3
   var433.Position = var0.Position
   var433.AnchorPoint = Vector2.new(0, 0.5)
   var433.BorderSizePixel = 0
   var433.Size = var2
   local var439 = {}
   local var443 = {}
   var443.BackgroundColor3 = var5
   var443.Position = UDim2.new(0, 0, 0.5, 0)
   var443.ZIndex = var3
   var443.Size = var4
   var443.BorderSizePixel = 0
   var443.AnchorPoint = Vector2.new(0.5, 0.5)
   var443.Rotation = 45
   var439.LeftDiamond = var1.createElement("Frame", var443)
   local var460 = {}
   var460.BackgroundColor3 = var5
   var460.Position = UDim2.new(1, 0, 0.5, 0)
   var460.ZIndex = var3
   var460.Size = var4
   var460.BorderSizePixel = 0
   var460.AnchorPoint = Vector2.new(0.5, 0.5)
   var460.Rotation = 45
   var439.RightDiamond = var1.createElement("Frame", var460)
   return var1.createElement("Frame", var433, var439)
end

fun7 = var2.withContext
local var475 = {}
var475.Stylizer = var2.Stylizer
var3 = fun7(var475)(var3)
return var3
