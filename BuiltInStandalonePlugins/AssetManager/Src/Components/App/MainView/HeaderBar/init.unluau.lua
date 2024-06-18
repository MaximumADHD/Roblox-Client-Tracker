-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
local var7 = require(var0.Src.Controllers.ExplorerController)
local var8 = require(var0.Src.Controllers.PluginController)
local var9 = require(var0.Src.Hooks.useExplorerState)
local var10 = var1.useState
return function(arg1)
   local var0 = var3.new()
   local var50 = {}
   var50.LayoutOrder = arg1.LayoutOrder
   var50.Layout = Enum.FillDirection.Horizontal
   var1.Tag = "TopBar HeaderBar X-Left X-Row X-Stroke"
   local var56 = {}
   local var60 = {}
   var60.LayoutOrder = var0:getNextOrder()
   var1.Tag = "Header X-Pad X-Left X-Middle"
   local var66 = {}
   local var70 = {}
   var70.Text = var9(var8.use(), var7.use()).Selection.Name
   var1.Tag = "Title X-Fit X-PadS"
   var66.ScopeTitle = var1.createElement(var6, var70)
   var56.ScopeTitleContainer = var1.createElement(var5, var60, var66)
   local var81 = {}
   var81.LayoutOrder = var0:getNextOrder()
   var1.Tag = "Options X-Right X-RowM X-Middle X-PadS"
   var56.Options = var1.createElement(var5, var81, {})
   return var1.createElement(var5, var50, var56)
end
