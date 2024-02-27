-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Pane
local var4 = var2.TextLabel
return function(arg1)
   local var67 = {}
   var67.Size = UDim2.new(1, 0, 0, 16)
   var67.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var67.AutomaticSize = Enum.AutomaticSize.Y
   var67.Layout = Enum.FillDirection.Vertical
   var67.VerticalAlignment = Enum.VerticalAlignment.Top
   var67.LayoutOrder = arg1.LayoutOrder
   var67.Spacing = 8
   local var80 = {}
   local var84 = {}
   var84.Text = arg1.Text
   var84.TextXAlignment = Enum.TextXAlignment.Left
   var84.LayoutOrder = 1
   var84.AutomaticSize = Enum.AutomaticSize.Y
   var84.Size = UDim2.new(1, 0, 0, 0)
   var80.TextBox = var1.createElement(var4, var84)
   local var99 = {}
   var99.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var99.VerticalAlignment = Enum.VerticalAlignment.Top
   var99.AutomaticSize = Enum.AutomaticSize.Y
   var99.Layout = Enum.FillDirection.Vertical
   var99.LayoutOrder = 2
   var99.Spacing = 8
   var80.Content = var1.createElement(var3, var99, arg1.GroupEntries)
   return var1.createElement(var3, var67, var80)
end
