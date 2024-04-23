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
   local var98 = {}
   var98.OnDragMoved = var0.OnDragMoved
   var98.OnDragEnded = var0.OnDragEnded
   local var101 = {}
   local var105 = {}
   var105.BackgroundTransparency = 1
   var105.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var105.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var105.ClipsDescendants = true
   local var122 = {}
   local var126 = {}
   var126.BackgroundColor3 = var0.Stylizer.selectionBox
   local var128 = 0.8
   var126.BackgroundTransparency = var128
   var128 = var1
   local var5 = var128 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var126.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var150 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var126.Size = var5
   var122.Box = var1.createElement("Frame", var126)
   var101.Extents = var1.createElement("Frame", var105, var122)
   return var1.createElement(var4, var98, var101)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var98 = {}
   var98.OnDragMoved = var0.OnDragMoved
   var98.OnDragEnded = var0.OnDragEnded
   local var101 = {}
   local var105 = {}
   var105.BackgroundTransparency = 1
   var105.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var105.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var105.ClipsDescendants = true
   local var122 = {}
   local var126 = {}
   var126.BackgroundColor3 = var0.Stylizer.selectionBox
   local var128 = 0.8
   var126.BackgroundTransparency = var128
   var128 = var1
   local var5 = var128 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var126.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var150 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var126.Size = var5
   var122.Box = var1.createElement("Frame", var126)
   var101.Extents = var1.createElement("Frame", var105, var122)
   return var1.createElement(var4, var98, var101)
end

fun2 = var3.withContext
local var168 = {}
var168.Stylizer = var3.Stylizer
var5 = fun2(var168)(var5)
return var5
