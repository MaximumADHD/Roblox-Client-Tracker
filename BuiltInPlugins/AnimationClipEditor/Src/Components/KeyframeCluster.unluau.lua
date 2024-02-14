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
   local var149 = {}
   var149.BackgroundColor3 = var5
   var149.ZIndex = var3
   var149.Position = var0.Position
   var149.AnchorPoint = Vector2.new(0, 0.5)
   var149.BorderSizePixel = 0
   var149.Size = var2
   local var155 = {}
   local var159 = {}
   var159.BackgroundColor3 = var5
   var159.Position = UDim2.new(0, 0, 0.5, 0)
   var159.ZIndex = var3
   var159.Size = var4
   var159.BorderSizePixel = 0
   var159.AnchorPoint = Vector2.new(0.5, 0.5)
   var159.Rotation = 45
   var155.LeftDiamond = var1.createElement("Frame", var159)
   local var176 = {}
   var176.BackgroundColor3 = var5
   var176.Position = UDim2.new(1, 0, 0.5, 0)
   var176.ZIndex = var3
   var176.Size = var4
   var176.BorderSizePixel = 0
   var176.AnchorPoint = Vector2.new(0.5, 0.5)
   var176.Rotation = 45
   var155.RightDiamond = var1.createElement("Frame", var176)
   return var1.createElement("Frame", var149, var155)
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
   local var149 = {}
   var149.BackgroundColor3 = var5
   var149.ZIndex = var3
   var149.Position = var0.Position
   var149.AnchorPoint = Vector2.new(0, 0.5)
   var149.BorderSizePixel = 0
   var149.Size = var2
   local var155 = {}
   local var159 = {}
   var159.BackgroundColor3 = var5
   var159.Position = UDim2.new(0, 0, 0.5, 0)
   var159.ZIndex = var3
   var159.Size = var4
   var159.BorderSizePixel = 0
   var159.AnchorPoint = Vector2.new(0.5, 0.5)
   var159.Rotation = 45
   var155.LeftDiamond = var1.createElement("Frame", var159)
   local var176 = {}
   var176.BackgroundColor3 = var5
   var176.Position = UDim2.new(1, 0, 0.5, 0)
   var176.ZIndex = var3
   var176.Size = var4
   var176.BorderSizePixel = 0
   var176.AnchorPoint = Vector2.new(0.5, 0.5)
   var176.Rotation = 45
   var155.RightDiamond = var1.createElement("Frame", var176)
   return var1.createElement("Frame", var149, var155)
end

fun0 = var2.withContext
local var191 = {}
var191.Stylizer = var2.Stylizer
var3 = fun0(var191)(var3)
return var3
