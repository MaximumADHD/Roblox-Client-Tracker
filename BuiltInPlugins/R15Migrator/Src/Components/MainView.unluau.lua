-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.UI.Pane
local var4 = var1.Util.LayoutOrderIterator
local var5 = require(var0.Src.Components.MainTabsView)
local var6 = var2.PureComponent:extend("MainView")
function var6.render(arg1)
   local var135 = {}
   var135.Layout = Enum.FillDirection.Vertical
   var135.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var135.VerticalAlignment = Enum.VerticalAlignment.Top
   var135.BackgroundTransparency = 1
   local var140 = {}
   local var144 = {}
   var144.OnResetPlugin = arg1.props.OnResetPlugin
   var144.LayoutOrder = var4.new():getNextOrder()
   var140.MainTabs = var2.createElement(var5, var144)
   return var2.createElement(var3, var135, var140)
end

return var6
