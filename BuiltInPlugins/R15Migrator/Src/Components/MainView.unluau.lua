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
   local var285 = {}
   var285.Layout = Enum.FillDirection.Vertical
   var285.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var285.VerticalAlignment = Enum.VerticalAlignment.Top
   var285.BackgroundTransparency = 1
   local var290 = {}
   local var294 = {}
   var294.LayoutOrder = var0:getNextOrder()
   var290.MainTabs = var2.createElement(var6, var294)
   local var301 = {}
   var301.OnResetPlugin = arg1.props.OnResetPlugin
   var301.LayoutOrder = var0:getNextOrder()
   var290.Footer = var2.createElement(var7, var301)
   return var2.createElement(var3, var285, var290)
end

return var8
