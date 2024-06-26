-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
local var7 = require(script.HeaderOptions)
local var8 = require(var0.Src.Controllers.ExplorerController)
local var9 = require(var0.Src.Controllers.PluginController)
local var10 = require(var0.Src.Hooks.useExplorerState)
return function(arg1)
   local var0 = var3.new()
   local var53 = {}
   var53.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "TopBar HeaderBar X-Left X-Row X-Stroke"
   local var58 = {}
   local var62 = {}
   var62.LayoutOrder = var0:getNextOrder()
   var1.Tag = "HeaderTitle X-Pad X-Left X-Middle"
   local var68 = {}
   local var72 = {}
   var72.Text = var10(var9.use(), var8.use()).Selection.Name
   var1.Tag = "Title X-Fit X-PadS"
   var68.ScopeTitle = var1.createElement(var6, var72)
   var58.ScopeTitleContainer = var1.createElement(var5, var62, var68)
   local var83 = {}
   var83.LayoutOrder = var0:getNextOrder()
   var58.Options = var1.createElement(var7, var83)
   return var1.createElement(var5, var53, var58)
end
