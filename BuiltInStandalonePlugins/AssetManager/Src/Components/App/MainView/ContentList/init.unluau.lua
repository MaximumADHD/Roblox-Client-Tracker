-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.Pane
local var5 = var3.List
local var6 = require(script.HeaderRow)
local var7 = require(script.ItemRow)
local var8 = require(var0.Src.Controllers.ItemsController)
local var9 = require(var0.Src.Hooks.useItems)
local var10 = require(var0.Src.Types)
local var11 = require(script.styles)
local var12 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var12.new()
   local var56 = {}
   var56.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "MainContents ContentList X-FitY X-Top X-Column X-Center"
   local var61 = {}
   local var65 = {}
   var65.LayoutOrder = var0:getNextOrder()
   var61.HeaderRow = var1.createElement(var6, var65)
   local var72 = {}
   var72.LayoutOrder = var0:getNextOrder()
   function var72.GetRowProps(arg1, arg2, arg3, arg4)
      local var0 = {}
      var0.Key = arg2
      var0.Position = arg3
      var0.AssetInfo = arg1
      var0.Size = arg4
      return var0
   end
   
   var72.Rows = var9(var8.use())
   var72.RowComponent = var7
   var72.RowHeight = var11:GetAttribute("RowHeight")
   var72.ScrollingDirection = Enum.ScrollingDirection.XY
   var1.Tag = "ItemList"
   var61.View = var1.createElement(var5, var72)
   return var1.createElement(var4, var56, var61)
end
