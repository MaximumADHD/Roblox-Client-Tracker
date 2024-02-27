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
   local var207 = {}
   var207.AutomaticSize = Enum.AutomaticSize.XY
   var207.Layout = Enum.FillDirection.Horizontal
   var207.LayoutOrder = arg1.LayoutOrder
   var207.Padding = 20
   var207.Spacing = 10
   var207.ref = arg1.PaneRef
   local var217 = var1
   var1.Change.AbsoluteSize = arg1[var217.Change.AbsoluteSize]
   local var221 = {}
   local var225 = {}
   var217 = var0
   var225.LayoutOrder = var217()
   var225.Image = arg1.Image
   var225.Size = arg1.IconSize
   var221.Image = var1.createElement(var3, var225)
   local var233 = {}
   local var234 = Enum.AutomaticSize.XY
   var233.AutomaticSize = var234
   var234 = var0
   var233.LayoutOrder = var234()
   var233.Style = "Bold"
   var233.Text = arg1.Text
   var221.Text = var1.createElement(var5, var233)
   return var1.createElement(var4, var207, var221)
end
