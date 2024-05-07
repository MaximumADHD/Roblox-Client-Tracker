-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Types.Category)
local var4 = require(script.Parent.SubcategoriesSwimlaneView)
local var5 = {}
var5.summary = "A grid of Subcategory IconTiles with flexible widths."
function var5.story()
   local var413 = {}
   local var417 = {}
   var417.CategoryName = var3.FREE_MODELS.name
   function var417.OnClickBack()
   end
   
   function var417.OnClickSeeAllAssets()
   end
   
   local var0 = {}
   var0.displayName = "Category"
   var0.children = {}
   var0.childCount = 0
   var0.index = 1
   var0.name = "1"
   var0.path = {}
   local var429 = {}
   var429.assetId = 5657301130
   var429.backgroundColor = "#32a852"
   var0.thumbnail = var429
   local var2 = {}
   var2.displayName = "Vehicle"
   var2.children = {}
   var2.childCount = 0
   var2.index = 2
   var2.name = "2"
   var2.path = {}
   local var439 = {}
   var439.assetId = 5657301130
   var439.backgroundColor = "#32a852"
   var2.thumbnail = var439
   local var4 = {}
   var4.displayName = "3rd"
   var4.children = {}
   var4.childCount = 0
   var4.index = 3
   var4.name = "3"
   var4.path = {}
   local var449 = {}
   var449.assetId = 5657301130
   var449.backgroundColor = "#32a852"
   var4.thumbnail = var449
   local var6 = {}
   var6.displayName = "4"
   var6.children = {}
   var6.childCount = 0
   var6.index = 3
   var6.name = "4"
   var6.path = {}
   local var459 = {}
   var459.assetId = 5657301130
   var459.backgroundColor = "#32a852"
   var6.thumbnail = var459
   local var8 = {}
   var8.displayName = "5"
   var8.children = {}
   var8.childCount = 0
   var8.name = "5"
   var8.index = 3
   var8.path = {}
   local var9 = {}
   var9.assetId = 5657301130
   var9.backgroundColor = "#32a852"
   var8.thumbnail = var9
   var417.SubcategoryDict = {}
   var413.SubcategoriesSwimlaneView = var1.createElement(var4, var417)
   return var1.createElement(var2, {}, var413)
end

return var5
