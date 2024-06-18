-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.UI.Pane
local var5 = require(script.HeaderBar)
return function(arg1)
   local var27 = {}
   var27.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Main X-Border X-Top X-Column"
   local var32 = {}
   local var36 = {}
   var36.LayoutOrder = var3.new():getNextOrder()
   var32.HeaderBar = var1.createElement(var5, var36)
   local var43 = {}
   var43.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "MainContents X-FitY X-Top X-Column X-Center"
   var32.Contents = var1.createElement(var4, var43)
   return var1.createElement(var4, var27, var32)
end
