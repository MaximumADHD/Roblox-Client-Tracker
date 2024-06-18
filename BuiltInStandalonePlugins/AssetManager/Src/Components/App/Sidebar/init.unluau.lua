-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Pane
local var4 = require(script.ScopeExplorer)
local var5 = require(script.SearchPanel)
local var6 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var6.new()
   local var31 = {}
   var31.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Contrast X-Border X-Top X-Column"
   local var36 = {}
   local var40 = {}
   var40.LayoutOrder = var0:getNextOrder()
   var36.SearchPanel = var1.createElement(var5, var40)
   local var47 = {}
   var47.LayoutOrder = var0:getNextOrder()
   var36.ScopeExplorer = var1.createElement(var4, var47)
   return var1.createElement(var3, var31, var36)
end
