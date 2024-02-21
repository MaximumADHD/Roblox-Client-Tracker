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
   local var162 = {}
   var162.BackgroundColor3 = var5
   var162.ZIndex = var3
   var162.Position = var0.Position
   var162.AnchorPoint = Vector2.new(0, 0.5)
   var162.BorderSizePixel = 0
   var162.Size = var2
   local var168 = {}
   local var172 = {}
   var172.BackgroundColor3 = var5
   var172.Position = UDim2.new(0, 0, 0.5, 0)
   var172.ZIndex = var3
   var172.Size = var4
   var172.BorderSizePixel = 0
   var172.AnchorPoint = Vector2.new(0.5, 0.5)
   var172.Rotation = 45
   var168.LeftDiamond = var1.createElement("Frame", var172)
   local var189 = {}
   var189.BackgroundColor3 = var5
   var189.Position = UDim2.new(1, 0, 0.5, 0)
   var189.ZIndex = var3
   var189.Size = var4
   var189.BorderSizePixel = 0
   var189.AnchorPoint = Vector2.new(0.5, 0.5)
   var189.Rotation = 45
   var168.RightDiamond = var1.createElement("Frame", var189)
   return var1.createElement("Frame", var162, var168)
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
   local var162 = {}
   var162.BackgroundColor3 = var5
   var162.ZIndex = var3
   var162.Position = var0.Position
   var162.AnchorPoint = Vector2.new(0, 0.5)
   var162.BorderSizePixel = 0
   var162.Size = var2
   local var168 = {}
   local var172 = {}
   var172.BackgroundColor3 = var5
   var172.Position = UDim2.new(0, 0, 0.5, 0)
   var172.ZIndex = var3
   var172.Size = var4
   var172.BorderSizePixel = 0
   var172.AnchorPoint = Vector2.new(0.5, 0.5)
   var172.Rotation = 45
   var168.LeftDiamond = var1.createElement("Frame", var172)
   local var189 = {}
   var189.BackgroundColor3 = var5
   var189.Position = UDim2.new(1, 0, 0.5, 0)
   var189.ZIndex = var3
   var189.Size = var4
   var189.BorderSizePixel = 0
   var189.AnchorPoint = Vector2.new(0.5, 0.5)
   var189.Rotation = 45
   var168.RightDiamond = var1.createElement("Frame", var189)
   return var1.createElement("Frame", var162, var168)
end

fun1 = var2.withContext
local var204 = {}
var204.Stylizer = var2.Stylizer
var3 = fun1(var204)(var3)
return var3
