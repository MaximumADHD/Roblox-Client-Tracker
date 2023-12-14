-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.DragListenerArea)
local var4 = var1.PureComponent:extend("ScaleHandle")
local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var337 = {}
   var337.BackgroundTransparency = 1
   var337.Size = var0.Size
   var337.Position = var0.Position
   var337.ZIndex = var1
   local var339 = {}
   local var343 = {}
   var343.Cursor = "SizeEW"
   var343.OnDragBegan = var0.OnScaleHandleDragStart
   var343.OnDragMoved = var0.OnScaleHandleDragMoved
   var343.OnDragEnded = var0.OnScaleHandleDragEnd
   var339.DragListenerArea = var1.createElement(var3, var343)
   local var349 = {}
   var349.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var349.BorderSizePixel = 0
   var349.Size = UDim2.new(0, 2, 1, 0)
   var349.Position = UDim2.new(0.5, 0, 0, 0)
   var349.AnchorPoint = Vector2.new(0.5, 0)
   var349.ZIndex = var1
   var339.Bar = var1.createElement("Frame", var349)
   return var1.createElement("Frame", var337, var339)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var337 = {}
   var337.BackgroundTransparency = 1
   var337.Size = var0.Size
   var337.Position = var0.Position
   var337.ZIndex = var1
   local var339 = {}
   local var343 = {}
   var343.Cursor = "SizeEW"
   var343.OnDragBegan = var0.OnScaleHandleDragStart
   var343.OnDragMoved = var0.OnScaleHandleDragMoved
   var343.OnDragEnded = var0.OnScaleHandleDragEnd
   var339.DragListenerArea = var1.createElement(var3, var343)
   local var349 = {}
   var349.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var349.BorderSizePixel = 0
   var349.Size = UDim2.new(0, 2, 1, 0)
   var349.Position = UDim2.new(0.5, 0, 0, 0)
   var349.AnchorPoint = Vector2.new(0.5, 0)
   var349.ZIndex = var1
   var339.Bar = var1.createElement("Frame", var349)
   return var1.createElement("Frame", var337, var339)
end

fun3 = var2.withContext
local var371 = {}
var371.Stylizer = var2.Stylizer
var4 = fun3(var371)(var4)
return var4
