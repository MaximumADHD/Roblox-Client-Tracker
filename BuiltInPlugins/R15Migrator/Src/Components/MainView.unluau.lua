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
   local var283 = {}
   var283.Layout = Enum.FillDirection.Vertical
   var283.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var283.VerticalAlignment = Enum.VerticalAlignment.Top
   var283.BackgroundTransparency = 1
   local var288 = {}
   local var292 = {}
   var292.LayoutOrder = var0:getNextOrder()
   var288.MainTabs = var2.createElement(var6, var292)
   local var299 = {}
   var299.OnResetPlugin = arg1.props.OnResetPlugin
   var299.LayoutOrder = var0:getNextOrder()
   var288.Footer = var2.createElement(var7, var299)
   return var2.createElement(var3, var283, var288)
end

return var8
