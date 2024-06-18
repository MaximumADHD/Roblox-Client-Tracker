-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.Pane
local var5 = var3.TreeView
local var6 = require(script.ExplorerRow)
local var7 = require(var0.Src.Controllers.ExplorerController)
local var8 = require(var0.Src.Controllers.PluginController)
local var9 = require(var0.Src.Hooks.useExplorerState)
local var10 = require(script.styles)
local var11 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var9(var8.use(), var7.use())
   local var57 = {}
   var57.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Explorer X-Column"
   local var62 = {}
   local var66 = {}
   var66.LayoutOrder = var11.new():getNextOrder()
   var66.RootItems = var0.Items
   var66.Expansion = var0.Expansion
   function var66.OnExpansionChange(arg1)
   end
   
   var66.RowComponent = var6
   var66.RowHeight = var10:GetAttribute("RowHeight")
   var1.Tag = ""
   var62.TreeView = var1.createElement(var5, var66)
   return var1.createElement(var4, var57, var62)
end
