-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DragListener
local var5 = var1.PureComponent:extend("SelectionBox")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var29 = {}
   var29.OnDragMoved = var0.OnDragMoved
   var29.OnDragEnded = var0.OnDragEnded
   local var32 = {}
   local var36 = {}
   var36.BackgroundTransparency = 1
   var36.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var36.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var36.ClipsDescendants = true
   local var53 = {}
   local var57 = {}
   var57.BackgroundColor3 = var0.Stylizer.selectionBox
   local var59 = 0.8
   var57.BackgroundTransparency = var59
   var59 = var1
   local var5 = var59 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var57.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var4 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var57.Size = var5
   var53.Box = var1.createElement("Frame", var57)
   var32.Extents = var1.createElement("Frame", var36, var53)
   return var1.createElement(var4, var29, var32)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var29 = {}
   var29.OnDragMoved = var0.OnDragMoved
   var29.OnDragEnded = var0.OnDragEnded
   local var32 = {}
   local var36 = {}
   var36.BackgroundTransparency = 1
   var36.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var36.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var36.ClipsDescendants = true
   local var53 = {}
   local var57 = {}
   var57.BackgroundColor3 = var0.Stylizer.selectionBox
   local var59 = 0.8
   var57.BackgroundTransparency = var59
   var59 = var1
   local var5 = var59 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var57.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var4 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var57.Size = var5
   var53.Box = var1.createElement("Frame", var57)
   var32.Extents = var1.createElement("Frame", var36, var53)
   return var1.createElement(var4, var29, var32)
end

fun1 = var3.withContext
local var22 = {}
var22.Stylizer = var3.Stylizer
var5 = fun1(var22)(var5)
return var5
