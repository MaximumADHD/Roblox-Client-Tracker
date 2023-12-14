-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.DragListenerArea)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("TrackListBorder")
local function fun16(arg1)
   local var0 = arg1.props
   local var361 = {}
   var361.Size = UDim2.new(0, 2, 1, 0)
   var361.LayoutOrder = 1
   var361.BackgroundColor3 = var0.Stylizer.borderColor
   var361.BorderSizePixel = 0
   var361.ZIndex = var0.ZIndex
   local var372 = {}
   local var376 = {}
   var376.AnchorPoint = Vector2.new(1, 0)
   var376.Size = UDim2.new(0, 5, 1, 0)
   var376.ZIndex = 2
   var376.Cursor = "SplitEW"
   var376.OnDragMoved = var0.OnDragMoved
   var372.DragArea = var1.createElement(var2, var376)
   return var1.createElement("Frame", var361, var372)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var361 = {}
   var361.Size = UDim2.new(0, 2, 1, 0)
   var361.LayoutOrder = 1
   var361.BackgroundColor3 = var0.Stylizer.borderColor
   var361.BorderSizePixel = 0
   var361.ZIndex = var0.ZIndex
   local var372 = {}
   local var376 = {}
   var376.AnchorPoint = Vector2.new(1, 0)
   var376.Size = UDim2.new(0, 5, 1, 0)
   var376.ZIndex = 2
   var376.Cursor = "SplitEW"
   var376.OnDragMoved = var0.OnDragMoved
   var372.DragArea = var1.createElement(var2, var376)
   return var1.createElement("Frame", var361, var372)
end

fun16 = var3.withContext
local var392 = {}
var392.Stylizer = var3.Stylizer
var4 = fun16(var392)(var4)
return var4
