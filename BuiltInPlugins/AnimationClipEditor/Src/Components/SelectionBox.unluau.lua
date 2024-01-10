-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DragListener
local var5 = var1.PureComponent:extend("SelectionBox")
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var59 = {}
   var59.OnDragMoved = var0.OnDragMoved
   var59.OnDragEnded = var0.OnDragEnded
   local var62 = {}
   local var66 = {}
   var66.BackgroundTransparency = 1
   var66.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var66.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var66.ClipsDescendants = true
   local var83 = {}
   local var87 = {}
   var87.BackgroundColor3 = var0.Stylizer.selectionBox
   local var89 = 0.8
   var87.BackgroundTransparency = var89
   var89 = var1
   local var5 = var89 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var87.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var111 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var87.Size = var5
   var83.Box = var1.createElement("Frame", var87)
   var62.Extents = var1.createElement("Frame", var66, var83)
   return var1.createElement(var4, var59, var62)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var59 = {}
   var59.OnDragMoved = var0.OnDragMoved
   var59.OnDragEnded = var0.OnDragEnded
   local var62 = {}
   local var66 = {}
   var66.BackgroundTransparency = 1
   var66.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var66.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var66.ClipsDescendants = true
   local var83 = {}
   local var87 = {}
   var87.BackgroundColor3 = var0.Stylizer.selectionBox
   local var89 = 0.8
   var87.BackgroundTransparency = var89
   var89 = var1
   local var5 = var89 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var87.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var111 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var87.Size = var5
   var83.Box = var1.createElement("Frame", var87)
   var62.Extents = var1.createElement("Frame", var66, var83)
   return var1.createElement(var4, var59, var62)
end

fun2 = var3.withContext
local var129 = {}
var129.Stylizer = var3.Stylizer
var5 = fun2(var129)(var5)
return var5
