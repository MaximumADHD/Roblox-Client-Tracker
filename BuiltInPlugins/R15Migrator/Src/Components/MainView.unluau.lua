-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.UI.Pane
local var4 = var1.Util.LayoutOrderIterator
local var5 = require(var0.Src.Components.MainTabsView)
local var6 = var2.PureComponent:extend("MainView")
function var6.render(arg1)
   local var155 = {}
   var155.Layout = Enum.FillDirection.Vertical
   var155.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var155.VerticalAlignment = Enum.VerticalAlignment.Top
   var155.BackgroundTransparency = 1
   local var160 = {}
   local var164 = {}
   var164.OnResetPlugin = arg1.props.OnResetPlugin
   var164.LayoutOrder = var4.new():getNextOrder()
   var160.MainTabs = var2.createElement(var5, var164)
   return var2.createElement(var3, var155, var160)
end

return var6
