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
   local var27 = {}
   var27.AutomaticSize = Enum.AutomaticSize.XY
   var27.Layout = Enum.FillDirection.Horizontal
   var27.LayoutOrder = arg1.LayoutOrder
   var27.Padding = 20
   var27.Spacing = 10
   var27.ref = arg1.PaneRef
   local var37 = var1
   var1.Change.AbsoluteSize = arg1[var37.Change.AbsoluteSize]
   local var41 = {}
   local var45 = {}
   var37 = var0
   var45.LayoutOrder = var37()
   var45.Image = arg1.Image
   var45.Size = arg1.IconSize
   var41.Image = var1.createElement(var3, var45)
   local var53 = {}
   local var54 = Enum.AutomaticSize.XY
   var53.AutomaticSize = var54
   var54 = var0
   var53.LayoutOrder = var54()
   var53.Style = "Bold"
   var53.Text = arg1.Text
   var41.Text = var1.createElement(var5, var53)
   return var1.createElement(var4, var27, var41)
end
