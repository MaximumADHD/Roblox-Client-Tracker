-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.DragListenerArea)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("TrackListBorder")
local function fun16(arg1)
   local var0 = arg1.props
   local var387 = {}
   var387.Size = UDim2.new(0, 2, 1, 0)
   var387.LayoutOrder = 1
   var387.BackgroundColor3 = var0.Stylizer.borderColor
   var387.BorderSizePixel = 0
   var387.ZIndex = var0.ZIndex
   local var398 = {}
   local var402 = {}
   var402.AnchorPoint = Vector2.new(1, 0)
   var402.Size = UDim2.new(0, 5, 1, 0)
   var402.ZIndex = 2
   var402.Cursor = "SplitEW"
   var402.OnDragMoved = var0.OnDragMoved
   var398.DragArea = var1.createElement(var2, var402)
   return var1.createElement("Frame", var387, var398)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var387 = {}
   var387.Size = UDim2.new(0, 2, 1, 0)
   var387.LayoutOrder = 1
   var387.BackgroundColor3 = var0.Stylizer.borderColor
   var387.BorderSizePixel = 0
   var387.ZIndex = var0.ZIndex
   local var398 = {}
   local var402 = {}
   var402.AnchorPoint = Vector2.new(1, 0)
   var402.Size = UDim2.new(0, 5, 1, 0)
   var402.ZIndex = 2
   var402.Cursor = "SplitEW"
   var402.OnDragMoved = var0.OnDragMoved
   var398.DragArea = var1.createElement(var2, var402)
   return var1.createElement("Frame", var387, var398)
end

fun16 = var3.withContext
local var418 = {}
var418.Stylizer = var3.Stylizer
var4 = fun16(var418)(var4)
return var4
