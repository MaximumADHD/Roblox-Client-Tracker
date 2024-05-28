-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.Pane
local var5 = var3.TextLabel
local var6 = var3.Image
local var7 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var7.new()
   local var25 = {}
   var25.LayoutOrder = arg1.Index
   var25.Position = arg1.Position
   var1.Tag = "Element X-Corner X-Row X-Left X-Middle"
   local var31 = {}
   local var35 = {}
   var35.LayoutOrder = var0:getNextOrder()
   var35.Image = ""
   var1.Tag = "Icon16 X-PadM"
   var31.Thumbnail = var1.createElement(var6, var35)
   local var46 = {}
   var46.LayoutOrder = var0:getNextOrder()
   var46.Text = ""
   var46.TextTruncate = Enum.TextTruncate.AtEnd
   var1.Tag = "Left X-PadS"
   var31.Name = var1.createElement(var5, var46)
   return var1.createElement(var4, var25, var31)
end
