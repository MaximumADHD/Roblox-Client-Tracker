-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Pane
local var4 = var2.TextLabel
return function(arg1)
   local var19 = {}
   var19.Size = UDim2.new(1, 0, 0, 16)
   var19.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var19.AutomaticSize = Enum.AutomaticSize.Y
   var19.Layout = Enum.FillDirection.Vertical
   var19.VerticalAlignment = Enum.VerticalAlignment.Top
   var19.LayoutOrder = arg1.LayoutOrder
   var19.Spacing = 8
   local var32 = {}
   local var36 = {}
   var36.Text = arg1.Text
   var36.TextXAlignment = Enum.TextXAlignment.Left
   var36.LayoutOrder = 1
   var36.AutomaticSize = Enum.AutomaticSize.Y
   var36.Size = UDim2.new(1, 0, 0, 0)
   var32.TextBox = var1.createElement(var4, var36)
   local var51 = {}
   var51.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var51.VerticalAlignment = Enum.VerticalAlignment.Top
   var51.AutomaticSize = Enum.AutomaticSize.Y
   var51.Layout = Enum.FillDirection.Vertical
   var51.LayoutOrder = 2
   var51.Spacing = 8
   var32.Content = var1.createElement(var3, var51, arg1.GroupEntries)
   return var1.createElement(var3, var19, var32)
end
