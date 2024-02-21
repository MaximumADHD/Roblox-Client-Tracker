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
   local var217 = {}
   var217.AutomaticSize = Enum.AutomaticSize.XY
   var217.Layout = Enum.FillDirection.Horizontal
   var217.LayoutOrder = arg1.LayoutOrder
   var217.Padding = 20
   var217.Spacing = 10
   var217.ref = arg1.PaneRef
   local var227 = var1
   var1.Change.AbsoluteSize = arg1[var227.Change.AbsoluteSize]
   local var231 = {}
   local var235 = {}
   var227 = var0
   var235.LayoutOrder = var227()
   var235.Image = arg1.Image
   var235.Size = arg1.IconSize
   var231.Image = var1.createElement(var3, var235)
   local var243 = {}
   local var244 = Enum.AutomaticSize.XY
   var243.AutomaticSize = var244
   var244 = var0
   var243.LayoutOrder = var244()
   var243.Style = "Bold"
   var243.Text = arg1.Text
   var231.Text = var1.createElement(var5, var243)
   return var1.createElement(var4, var217, var231)
end
