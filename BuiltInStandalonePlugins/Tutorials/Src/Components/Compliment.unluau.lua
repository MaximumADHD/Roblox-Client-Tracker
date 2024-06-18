-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Image
local var4 = var2.Pane
local var5 = var2.TextLabel
local var6 = require(var0.Src.Util.counter)
return function(arg1)
   local var0 = var6()
   local var63 = {}
   var63.AutomaticSize = Enum.AutomaticSize.XY
   var63.Layout = Enum.FillDirection.Horizontal
   var63.LayoutOrder = arg1.LayoutOrder
   var63.Padding = 20
   var63.Spacing = 10
   var63.ref = arg1.PaneRef
   local var73 = var1
   var1.Change.AbsoluteSize = arg1[var73.Change.AbsoluteSize]
   local var77 = {}
   local var81 = {}
   var73 = var0
   var81.LayoutOrder = var73()
   var81.Image = arg1.Image
   var81.Size = arg1.IconSize
   var77.Image = var1.createElement(var3, var81)
   local var89 = {}
   local var90 = Enum.AutomaticSize.XY
   var89.AutomaticSize = var90
   var90 = var0
   var89.LayoutOrder = var90()
   var89.Style = "Bold"
   var89.Text = arg1.Text
   var77.Text = var1.createElement(var5, var89)
   return var1.createElement(var4, var63, var77)
end
