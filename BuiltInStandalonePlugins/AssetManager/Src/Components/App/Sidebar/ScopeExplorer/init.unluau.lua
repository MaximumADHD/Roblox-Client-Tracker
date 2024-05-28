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
   local var32 = {}
   var32.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Explorer X-Column"
   local var37 = {}
   local var41 = {}
   var41.LayoutOrder = var8.new():getNextOrder()
   var41.Expansion = {}
   var41.RootItems = {}
   function var41.OnExpansionChange(arg1)
   end
   
   var41.RowComponent = var6
   var41.RowHeight = var7:GetAttribute("RowHeight")
   var1.Tag = ""
   var37.TreeView = var1.createElement(var5, var41)
   return var1.createElement(var4, var32, var37)
end
