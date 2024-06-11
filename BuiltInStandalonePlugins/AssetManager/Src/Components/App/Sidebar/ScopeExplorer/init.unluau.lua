-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.Pane
local var5 = var3.TreeView
local var6 = require(script.ExplorerRow)
local var7 = require(script.styles)
local var8 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var63 = {}
   var63.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Explorer X-Column"
   local var68 = {}
   local var72 = {}
   var72.LayoutOrder = var8.new():getNextOrder()
   var72.Expansion = {}
   var72.RootItems = {}
   function var72.OnExpansionChange(arg1)
   end
   
   var72.RowComponent = var6
   var72.RowHeight = var7:GetAttribute("RowHeight")
   var1.Tag = ""
   var68.TreeView = var1.createElement(var5, var72)
   return var1.createElement(var4, var63, var68)
end
