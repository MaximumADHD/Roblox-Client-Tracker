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
   local var90 = {}
   var90.AutomaticSize = Enum.AutomaticSize.XY
   var90.Layout = Enum.FillDirection.Horizontal
   var90.LayoutOrder = arg1.LayoutOrder
   var90.Padding = 20
   var90.Spacing = 10
   var90.ref = arg1.PaneRef
   local var100 = var1
   var1.Change.AbsoluteSize = arg1[var100.Change.AbsoluteSize]
   local var104 = {}
   local var108 = {}
   var100 = var0
   var108.LayoutOrder = var100()
   var108.Image = arg1.Image
   var108.Size = arg1.IconSize
   var104.Image = var1.createElement(var3, var108)
   local var116 = {}
   local var117 = Enum.AutomaticSize.XY
   var116.AutomaticSize = var117
   var117 = var0
   var116.LayoutOrder = var117()
   var116.Style = "Bold"
   var116.Text = arg1.Text
   var104.Text = var1.createElement(var5, var116)
   return var1.createElement(var4, var90, var104)
end
