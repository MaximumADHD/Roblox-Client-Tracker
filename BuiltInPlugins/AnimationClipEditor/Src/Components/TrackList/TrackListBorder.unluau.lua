-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.DragListenerArea)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("TrackListBorder")
local function fun9(arg1)
   local var0 = arg1.props
   local var189 = {}
   var189.Size = UDim2.new(0, 2, 1, 0)
   var189.LayoutOrder = 1
   var189.BackgroundColor3 = var0.Stylizer.borderColor
   var189.BorderSizePixel = 0
   var189.ZIndex = var0.ZIndex
   local var200 = {}
   local var204 = {}
   var204.AnchorPoint = Vector2.new(1, 0)
   var204.Size = UDim2.new(0, 5, 1, 0)
   var204.ZIndex = 2
   var204.Cursor = "SplitEW"
   var204.OnDragMoved = var0.OnDragMoved
   var200.DragArea = var1.createElement(var2, var204)
   return var1.createElement("Frame", var189, var200)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var189 = {}
   var189.Size = UDim2.new(0, 2, 1, 0)
   var189.LayoutOrder = 1
   var189.BackgroundColor3 = var0.Stylizer.borderColor
   var189.BorderSizePixel = 0
   var189.ZIndex = var0.ZIndex
   local var200 = {}
   local var204 = {}
   var204.AnchorPoint = Vector2.new(1, 0)
   var204.Size = UDim2.new(0, 5, 1, 0)
   var204.ZIndex = 2
   var204.Cursor = "SplitEW"
   var204.OnDragMoved = var0.OnDragMoved
   var200.DragArea = var1.createElement(var2, var204)
   return var1.createElement("Frame", var189, var200)
end

fun9 = var3.withContext
local var220 = {}
var220.Stylizer = var3.Stylizer
var4 = fun9(var220)(var4)
return var4
