-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.UI.Pane
local var5 = require(script.HeaderBar)
return function(arg1)
   local var260 = {}
   var260.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Main X-Border X-Top X-Column"
   local var265 = {}
   local var269 = {}
   var269.LayoutOrder = var3.new():getNextOrder()
   var265.HeaderBar = var1.createElement(var5, var269)
   local var276 = {}
   var276.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "MainContents X-FitY X-Top X-Column X-Center"
   var265.Contents = var1.createElement(var4, var276)
   return var1.createElement(var4, var260, var265)
end
