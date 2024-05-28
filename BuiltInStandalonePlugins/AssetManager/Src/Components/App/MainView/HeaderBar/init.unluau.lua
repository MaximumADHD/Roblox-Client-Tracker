-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
local var7 = var1.useState
return function(arg1)
   local var0 = var3.new()
   local var25 = {}
   var25.LayoutOrder = arg1.LayoutOrder
   var25.Layout = Enum.FillDirection.Horizontal
   var1.Tag = "TopBar HeaderBar X-Left X-Row X-Stroke"
   local var31 = {}
   local var35 = {}
   var35.LayoutOrder = var0:getNextOrder()
   var1.Tag = "Header X-Pad X-Left X-Middle"
   local var41 = {}
   local var45 = {}
   var45.Text = ""
   var1.Tag = "Title X-Fit X-PadS"
   var41.ScopeTitle = var1.createElement(var6, var45)
   var31.ScopeTitleContainer = var1.createElement(var5, var35, var41)
   local var55 = {}
   var55.LayoutOrder = var0:getNextOrder()
   var1.Tag = "Options X-Right X-RowM X-Middle X-PadS"
   var31.Options = var1.createElement(var5, var55, {})
   return var1.createElement(var5, var25, var31)
end
