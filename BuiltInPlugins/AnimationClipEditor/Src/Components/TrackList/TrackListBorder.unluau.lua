-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.DragListenerArea)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("TrackListBorder")
local function fun0(arg1)
   local var0 = arg1.props
   local var29 = {}
   var29.Size = UDim2.new(0, 2, 1, 0)
   var29.LayoutOrder = 1
   var29.BackgroundColor3 = var0.Stylizer.borderColor
   var29.BorderSizePixel = 0
   var29.ZIndex = var0.ZIndex
   local var40 = {}
   local var44 = {}
   var44.AnchorPoint = Vector2.new(1, 0)
   var44.Size = UDim2.new(0, 5, 1, 0)
   var44.ZIndex = 2
   var44.Cursor = "SplitEW"
   var44.OnDragMoved = var0.OnDragMoved
   var40.DragArea = var1.createElement(var2, var44)
   return var1.createElement("Frame", var29, var40)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var29 = {}
   var29.Size = UDim2.new(0, 2, 1, 0)
   var29.LayoutOrder = 1
   var29.BackgroundColor3 = var0.Stylizer.borderColor
   var29.BorderSizePixel = 0
   var29.ZIndex = var0.ZIndex
   local var40 = {}
   local var44 = {}
   var44.AnchorPoint = Vector2.new(1, 0)
   var44.Size = UDim2.new(0, 5, 1, 0)
   var44.ZIndex = 2
   var44.Cursor = "SplitEW"
   var44.OnDragMoved = var0.OnDragMoved
   var40.DragArea = var1.createElement(var2, var44)
   return var1.createElement("Frame", var29, var40)
end

fun0 = var3.withContext
local var60 = {}
var60.Stylizer = var3.Stylizer
var4 = fun0(var60)(var4)
return var4
