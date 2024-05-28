-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI.Pane
local var5 = require(script.ScopeExplorer)
local var6 = require(script.SearchPanel)
local var7 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var3.use()
   local var1 = var7.new()
   local var36 = {}
   var36.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Contrast X-Border X-Top X-Column"
   local var41 = {}
   local var45 = {}
   var45.LayoutOrder = var1:getNextOrder()
   var41.SearchPanel = var1.createElement(var6, var45)
   local var52 = {}
   var52.LayoutOrder = var1:getNextOrder()
   var41.ScopeExplorer = var1.createElement(var5, var52)
   return var1.createElement(var4, var36, var41)
end
