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
   local var247 = {}
   var247.AutomaticSize = Enum.AutomaticSize.XY
   var247.Layout = Enum.FillDirection.Horizontal
   var247.LayoutOrder = arg1.LayoutOrder
   var247.Padding = 20
   var247.Spacing = 10
   var247.ref = arg1.PaneRef
   local var257 = var1
   var1.Change.AbsoluteSize = arg1[var257.Change.AbsoluteSize]
   local var261 = {}
   local var265 = {}
   var257 = var0
   var265.LayoutOrder = var257()
   var265.Image = arg1.Image
   var265.Size = arg1.IconSize
   var261.Image = var1.createElement(var3, var265)
   local var273 = {}
   local var274 = Enum.AutomaticSize.XY
   var273.AutomaticSize = var274
   var274 = var0
   var273.LayoutOrder = var274()
   var273.Style = "Bold"
   var273.Text = arg1.Text
   var261.Text = var1.createElement(var5, var273)
   return var1.createElement(var4, var247, var261)
end
