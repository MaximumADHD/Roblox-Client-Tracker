-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.UI.Pane
local var4 = var1.Util.LayoutOrderIterator
local var5 = require(var0.Src.Components.MainTabsView)
local var6 = var2.PureComponent:extend("MainView")
function var6.render(arg1)
   local var148 = {}
   var148.Layout = Enum.FillDirection.Vertical
   var148.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var148.VerticalAlignment = Enum.VerticalAlignment.Top
   var148.BackgroundTransparency = 1
   local var153 = {}
   local var157 = {}
   var157.OnResetPlugin = arg1.props.OnResetPlugin
   var157.LayoutOrder = var4.new():getNextOrder()
   var153.MainTabs = var2.createElement(var5, var157)
   return var2.createElement(var3, var148, var153)
end

return var6
