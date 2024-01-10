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
   local var154 = {}
   var154.BackgroundColor3 = var5
   var154.ZIndex = var3
   var154.Position = var0.Position
   var154.AnchorPoint = Vector2.new(0, 0.5)
   var154.BorderSizePixel = 0
   var154.Size = var2
   local var160 = {}
   local var164 = {}
   var164.BackgroundColor3 = var5
   var164.Position = UDim2.new(0, 0, 0.5, 0)
   var164.ZIndex = var3
   var164.Size = var4
   var164.BorderSizePixel = 0
   var164.AnchorPoint = Vector2.new(0.5, 0.5)
   var164.Rotation = 45
   var160.LeftDiamond = var1.createElement("Frame", var164)
   local var181 = {}
   var181.BackgroundColor3 = var5
   var181.Position = UDim2.new(1, 0, 0.5, 0)
   var181.ZIndex = var3
   var181.Size = var4
   var181.BorderSizePixel = 0
   var181.AnchorPoint = Vector2.new(0.5, 0.5)
   var181.Rotation = 45
   var160.RightDiamond = var1.createElement("Frame", var181)
   return var1.createElement("Frame", var154, var160)
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
   local var154 = {}
   var154.BackgroundColor3 = var5
   var154.ZIndex = var3
   var154.Position = var0.Position
   var154.AnchorPoint = Vector2.new(0, 0.5)
   var154.BorderSizePixel = 0
   var154.Size = var2
   local var160 = {}
   local var164 = {}
   var164.BackgroundColor3 = var5
   var164.Position = UDim2.new(0, 0, 0.5, 0)
   var164.ZIndex = var3
   var164.Size = var4
   var164.BorderSizePixel = 0
   var164.AnchorPoint = Vector2.new(0.5, 0.5)
   var164.Rotation = 45
   var160.LeftDiamond = var1.createElement("Frame", var164)
   local var181 = {}
   var181.BackgroundColor3 = var5
   var181.Position = UDim2.new(1, 0, 0.5, 0)
   var181.ZIndex = var3
   var181.Size = var4
   var181.BorderSizePixel = 0
   var181.AnchorPoint = Vector2.new(0.5, 0.5)
   var181.Rotation = 45
   var160.RightDiamond = var1.createElement("Frame", var181)
   return var1.createElement("Frame", var154, var160)
end

fun0 = var2.withContext
local var196 = {}
var196.Stylizer = var2.Stylizer
var3 = fun0(var196)(var3)
return var3
