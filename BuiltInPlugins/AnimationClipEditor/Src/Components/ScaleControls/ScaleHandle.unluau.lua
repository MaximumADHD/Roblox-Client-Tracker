-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.DragListenerArea)
local var4 = var1.PureComponent:extend("ScaleHandle")
local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var341 = {}
   var341.BackgroundTransparency = 1
   var341.Size = var0.Size
   var341.Position = var0.Position
   var341.ZIndex = var1
   local var343 = {}
   local var347 = {}
   var347.Cursor = "SizeEW"
   var347.OnDragBegan = var0.OnScaleHandleDragStart
   var347.OnDragMoved = var0.OnScaleHandleDragMoved
   var347.OnDragEnded = var0.OnScaleHandleDragEnd
   var343.DragListenerArea = var1.createElement(var3, var347)
   local var353 = {}
   var353.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var353.BorderSizePixel = 0
   var353.Size = UDim2.new(0, 2, 1, 0)
   var353.Position = UDim2.new(0.5, 0, 0, 0)
   var353.AnchorPoint = Vector2.new(0.5, 0)
   var353.ZIndex = var1
   var343.Bar = var1.createElement("Frame", var353)
   return var1.createElement("Frame", var341, var343)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ZIndex
   local var341 = {}
   var341.BackgroundTransparency = 1
   var341.Size = var0.Size
   var341.Position = var0.Position
   var341.ZIndex = var1
   local var343 = {}
   local var347 = {}
   var347.Cursor = "SizeEW"
   var347.OnDragBegan = var0.OnScaleHandleDragStart
   var347.OnDragMoved = var0.OnScaleHandleDragMoved
   var347.OnDragEnded = var0.OnScaleHandleDragEnd
   var343.DragListenerArea = var1.createElement(var3, var347)
   local var353 = {}
   var353.BackgroundColor3 = var0.Stylizer.scaleControlsTheme.mainColor
   var353.BorderSizePixel = 0
   var353.Size = UDim2.new(0, 2, 1, 0)
   var353.Position = UDim2.new(0.5, 0, 0, 0)
   var353.AnchorPoint = Vector2.new(0.5, 0)
   var353.ZIndex = var1
   var343.Bar = var1.createElement("Frame", var353)
   return var1.createElement("Frame", var341, var343)
end

fun3 = var2.withContext
local var375 = {}
var375.Stylizer = var2.Stylizer
var4 = fun3(var375)(var4)
return var4
