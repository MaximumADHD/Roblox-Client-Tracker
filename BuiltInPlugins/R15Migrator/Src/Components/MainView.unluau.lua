-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.UI.Pane
local var4 = var1.Util.LayoutOrderIterator
local var5 = var0.Src.Components
local var6 = require(var5.MainTabsView)
local var7 = require(var5.MainFooter)
local var8 = var2.PureComponent:extend("MainView")
function var8.render(arg1)
   local var0 = var4.new()
   local var241 = {}
   var241.Layout = Enum.FillDirection.Vertical
   var241.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var241.VerticalAlignment = Enum.VerticalAlignment.Top
   var241.BackgroundTransparency = 1
   local var246 = {}
   local var250 = {}
   var250.LayoutOrder = var0:getNextOrder()
   var246.MainTabs = var2.createElement(var6, var250)
   local var257 = {}
   var257.LayoutOrder = var0:getNextOrder()
   var246.Footer = var2.createElement(var7, var257)
   return var2.createElement(var3, var241, var246)
end

return var8
