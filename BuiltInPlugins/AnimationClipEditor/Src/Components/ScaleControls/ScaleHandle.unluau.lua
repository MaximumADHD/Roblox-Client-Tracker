-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.DragListenerArea)
local var4 = var1.PureComponent:extend("ScaleHandle")
local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var518 = {}
   var518.BackgroundTransparency = 1
   var518.Size = var0.Size
   var518.Position = var0.Position
   var518.ZIndex = var1
   local var520 = {}
   local var524 = {}
   var524.Cursor = "SizeEW"
   var524.OnDragBegan = var0.OnScaleHandleDragStart
   var524.OnDragMoved = var0.OnScaleHandleDragMoved
   var524.OnDragEnded = var0.OnScaleHandleDragEnd
   var520.DragListenerArea = var1.createElement(var3, var524)
   local var530 = {}
   var530.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var530.BorderSizePixel = 0
   var530.Size = UDim2.new(0, 2, 1, 0)
   var530.Position = UDim2.new(0.5, 0, 0, 0)
   var530.AnchorPoint = Vector2.new(0.5, 0)
   var530.ZIndex = var1
   var520.Bar = var1.createElement("Frame", var530)
   return var1.createElement("Frame", var518, var520)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var518 = {}
   var518.BackgroundTransparency = 1
   var518.Size = var0.Size
   var518.Position = var0.Position
   var518.ZIndex = var1
   local var520 = {}
   local var524 = {}
   var524.Cursor = "SizeEW"
   var524.OnDragBegan = var0.OnScaleHandleDragStart
   var524.OnDragMoved = var0.OnScaleHandleDragMoved
   var524.OnDragEnded = var0.OnScaleHandleDragEnd
   var520.DragListenerArea = var1.createElement(var3, var524)
   local var530 = {}
   var530.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var530.BorderSizePixel = 0
   var530.Size = UDim2.new(0, 2, 1, 0)
   var530.Position = UDim2.new(0.5, 0, 0, 0)
   var530.AnchorPoint = Vector2.new(0.5, 0)
   var530.ZIndex = var1
   var520.Bar = var1.createElement("Frame", var530)
   return var1.createElement("Frame", var518, var520)
end

fun3 = var2.withContext
local var552 = {}
var552.Stylizer = var2.Stylizer
var4 = fun3(var552)(var4)
return var4
