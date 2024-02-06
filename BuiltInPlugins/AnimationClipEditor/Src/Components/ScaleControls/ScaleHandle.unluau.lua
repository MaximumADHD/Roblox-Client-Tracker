-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.DragListenerArea)
local var4 = var1.PureComponent:extend("ScaleHandle")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var35 = {}
   var35.BackgroundTransparency = 1
   var35.Size = var0.Size
   var35.Position = var0.Position
   var35.ZIndex = var1
   local var37 = {}
   local var41 = {}
   var41.Cursor = "SizeEW"
   var41.OnDragBegan = var0.OnScaleHandleDragStart
   var41.OnDragMoved = var0.OnScaleHandleDragMoved
   var41.OnDragEnded = var0.OnScaleHandleDragEnd
   var37.DragListenerArea = var1.createElement(var3, var41)
   local var47 = {}
   var47.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var47.BorderSizePixel = 0
   var47.Size = UDim2.new(0, 2, 1, 0)
   var47.Position = UDim2.new(0.5, 0, 0, 0)
   var47.AnchorPoint = Vector2.new(0.5, 0)
   var47.ZIndex = var1
   var37.Bar = var1.createElement("Frame", var47)
   return var1.createElement("Frame", var35, var37)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var35 = {}
   var35.BackgroundTransparency = 1
   var35.Size = var0.Size
   var35.Position = var0.Position
   var35.ZIndex = var1
   local var37 = {}
   local var41 = {}
   var41.Cursor = "SizeEW"
   var41.OnDragBegan = var0.OnScaleHandleDragStart
   var41.OnDragMoved = var0.OnScaleHandleDragMoved
   var41.OnDragEnded = var0.OnScaleHandleDragEnd
   var37.DragListenerArea = var1.createElement(var3, var41)
   local var47 = {}
   var47.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var47.BorderSizePixel = 0
   var47.Size = UDim2.new(0, 2, 1, 0)
   var47.Position = UDim2.new(0.5, 0, 0, 0)
   var47.AnchorPoint = Vector2.new(0.5, 0)
   var47.ZIndex = var1
   var37.Bar = var1.createElement("Frame", var47)
   return var1.createElement("Frame", var35, var37)
end

fun0 = var2.withContext
local var69 = {}
var69.Stylizer = var2.Stylizer
var4 = fun0(var69)(var4)
return var4
