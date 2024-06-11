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
   local var123 = {}
   var123.LayoutOrder = arg1.Index
   var123.Position = arg1.Position
   var1.Tag = "Element X-Corner X-Row X-Left X-Middle"
   local var129 = {}
   local var133 = {}
   var133.LayoutOrder = var0:getNextOrder()
   var133.Image = ""
   var1.Tag = "Icon16 X-PadM"
   var129.Thumbnail = var1.createElement(var6, var133)
   local var144 = {}
   var144.LayoutOrder = var0:getNextOrder()
   var144.Text = ""
   var144.TextTruncate = Enum.TextTruncate.AtEnd
   var1.Tag = "Left X-PadS"
   var129.Name = var1.createElement(var5, var144)
   return var1.createElement(var4, var123, var129)
end
