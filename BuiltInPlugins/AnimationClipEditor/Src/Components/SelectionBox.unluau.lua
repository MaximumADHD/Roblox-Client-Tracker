-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DragListener
local var5 = var1.PureComponent:extend("SelectionBox")
local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var108 = {}
   var108.OnDragMoved = var0.OnDragMoved
   var108.OnDragEnded = var0.OnDragEnded
   local var111 = {}
   local var115 = {}
   var115.BackgroundTransparency = 1
   var115.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var115.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var115.ClipsDescendants = true
   local var132 = {}
   local var136 = {}
   var136.BackgroundColor3 = var0.Stylizer.selectionBox
   local var138 = 0.8
   var136.BackgroundTransparency = var138
   var138 = var1
   local var5 = var138 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var136.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var160 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var136.Size = var5
   var132.Box = var1.createElement("Frame", var136)
   var111.Extents = var1.createElement("Frame", var115, var132)
   return var1.createElement(var4, var108, var111)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionStart
   local var2 = var0.SelectionEnd
   local var3 = var0.SourceExtents
   local var108 = {}
   var108.OnDragMoved = var0.OnDragMoved
   var108.OnDragEnded = var0.OnDragEnded
   local var111 = {}
   local var115 = {}
   var115.BackgroundTransparency = 1
   var115.Position = UDim2.new(0, var3.Min.X, 0, var3.Min.Y)
   var115.Size = UDim2.new(0, var3.Width, 0, var3.Height)
   var115.ClipsDescendants = true
   local var132 = {}
   local var136 = {}
   var136.BackgroundColor3 = var0.Stylizer.selectionBox
   local var138 = 0.8
   var136.BackgroundTransparency = var138
   var138 = var1
   local var5 = var138 and var1:map(function(arg1)
      return UDim2.new(0, arg1.X - var3.Min.X, 0, arg1.Y - var3.Min.Y)
   end)
   var136.Position = var5
   var5 = var1
   if var5 then
      var5 = var2
      if var5 then
         local var160 = var1
         local var0 = var2
         local var1 = var1.joinBindings({}):map(function(arg1)
            local var0 = arg1[2] - arg1[1]
            return UDim2.new(0, var0.X, 0, var0.Y)
         end)
      end
   end
   var136.Size = var5
   var132.Box = var1.createElement("Frame", var136)
   var111.Extents = var1.createElement("Frame", var115, var132)
   return var1.createElement(var4, var108, var111)
end

fun5 = var3.withContext
local var178 = {}
var178.Stylizer = var3.Stylizer
var5 = fun5(var178)(var5)
return var5
