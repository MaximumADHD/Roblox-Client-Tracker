-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
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
   local var282 = {}
   var282.Layout = Enum.FillDirection.Vertical
   var282.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var282.VerticalAlignment = Enum.VerticalAlignment.Top
   var282.BackgroundTransparency = 1
   local var287 = {}
   local var291 = {}
   var291.LayoutOrder = var0:getNextOrder()
   var287.MainTabs = var2.createElement(var6, var291)
   local var298 = {}
   var298.OnResetPlugin = arg1.props.OnResetPlugin
   var298.LayoutOrder = var0:getNextOrder()
   var287.Footer = var2.createElement(var7, var298)
   return var2.createElement(var3, var282, var287)
end

return var8
