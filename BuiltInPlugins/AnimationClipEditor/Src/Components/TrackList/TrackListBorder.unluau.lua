-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.DragListenerArea)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("TrackListBorder")
local function fun16(arg1)
   local var0 = arg1.props
   local var339 = {}
   var339.Size = UDim2.new(0, 2, 1, 0)
   var339.LayoutOrder = 1
   var339.BackgroundColor3 = var0.Stylizer.borderColor
   var339.BorderSizePixel = 0
   var339.ZIndex = var0.ZIndex
   local var350 = {}
   local var354 = {}
   var354.AnchorPoint = Vector2.new(1, 0)
   var354.Size = UDim2.new(0, 5, 1, 0)
   var354.ZIndex = 2
   var354.Cursor = "SplitEW"
   var354.OnDragMoved = var0.OnDragMoved
   var350.DragArea = var1.createElement(var2, var354)
   return var1.createElement("Frame", var339, var350)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var339 = {}
   var339.Size = UDim2.new(0, 2, 1, 0)
   var339.LayoutOrder = 1
   var339.BackgroundColor3 = var0.Stylizer.borderColor
   var339.BorderSizePixel = 0
   var339.ZIndex = var0.ZIndex
   local var350 = {}
   local var354 = {}
   var354.AnchorPoint = Vector2.new(1, 0)
   var354.Size = UDim2.new(0, 5, 1, 0)
   var354.ZIndex = 2
   var354.Cursor = "SplitEW"
   var354.OnDragMoved = var0.OnDragMoved
   var350.DragArea = var1.createElement(var2, var354)
   return var1.createElement("Frame", var339, var350)
end

fun16 = var3.withContext
local var370 = {}
var370.Stylizer = var3.Stylizer
var4 = fun16(var370)(var4)
return var4
