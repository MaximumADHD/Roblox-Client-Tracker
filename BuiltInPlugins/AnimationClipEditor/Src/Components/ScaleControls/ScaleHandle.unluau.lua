-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.DragListenerArea)
local var4 = var1.PureComponent:extend("ScaleHandle")
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var118 = {}
   var118.BackgroundTransparency = 1
   var118.Size = var0.Size
   var118.Position = var0.Position
   var118.ZIndex = var1
   local var120 = {}
   local var124 = {}
   var124.Cursor = "SizeEW"
   var124.OnDragBegan = var0.OnScaleHandleDragStart
   var124.OnDragMoved = var0.OnScaleHandleDragMoved
   var124.OnDragEnded = var0.OnScaleHandleDragEnd
   var120.DragListenerArea = var1.createElement(var3, var124)
   local var130 = {}
   var130.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var130.BorderSizePixel = 0
   var130.Size = UDim2.new(0, 2, 1, 0)
   var130.Position = UDim2.new(0.5, 0, 0, 0)
   var130.AnchorPoint = Vector2.new(0.5, 0)
   var130.ZIndex = var1
   var120.Bar = var1.createElement("Frame", var130)
   return var1.createElement("Frame", var118, var120)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var118 = {}
   var118.BackgroundTransparency = 1
   var118.Size = var0.Size
   var118.Position = var0.Position
   var118.ZIndex = var1
   local var120 = {}
   local var124 = {}
   var124.Cursor = "SizeEW"
   var124.OnDragBegan = var0.OnScaleHandleDragStart
   var124.OnDragMoved = var0.OnScaleHandleDragMoved
   var124.OnDragEnded = var0.OnScaleHandleDragEnd
   var120.DragListenerArea = var1.createElement(var3, var124)
   local var130 = {}
   var130.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var130.BorderSizePixel = 0
   var130.Size = UDim2.new(0, 2, 1, 0)
   var130.Position = UDim2.new(0.5, 0, 0, 0)
   var130.AnchorPoint = Vector2.new(0.5, 0)
   var130.ZIndex = var1
   var120.Bar = var1.createElement("Frame", var130)
   return var1.createElement("Frame", var118, var120)
end

fun2 = var2.withContext
local var152 = {}
var152.Stylizer = var2.Stylizer
var4 = fun2(var152)(var4)
return var4
