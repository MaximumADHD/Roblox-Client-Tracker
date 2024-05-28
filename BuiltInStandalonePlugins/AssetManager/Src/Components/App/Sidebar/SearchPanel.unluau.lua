-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.ContextServices.Localization
local var5 = var2.UI
local var6 = var5.Pane
local var7 = var5.SearchBar
return function(arg1)
   local var0 = var3.new()
   local var29 = {}
   var29.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "TopBar X-Center X-Stroke X-Middle X-ColumnM"
   local var34 = {}
   local var38 = {}
   var38.PlaceholderText = var4.use():getText("Search", "Placeholder")
   function var38.OnTextChanged()
   end
   
   var1.Tag = "X-PadS"
   var34.SearchBar = var1.createElement(var7, var38)
   return var1.createElement(var6, var29, var34)
end
