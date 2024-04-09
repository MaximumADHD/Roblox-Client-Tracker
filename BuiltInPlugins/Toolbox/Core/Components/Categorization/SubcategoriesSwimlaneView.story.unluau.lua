-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Types.Category)
local var4 = require(script.Parent.SubcategoriesSwimlaneView)
local var5 = {}
var5.summary = "A grid of Subcategory IconTiles with flexible widths."
function var5.story()
   local var418 = {}
   local var422 = {}
   var422.CategoryName = var3.FREE_MODELS.name
   function var422.OnClickBack()
   end
   
   function var422.OnClickSeeAllAssets()
   end
   
   local var0 = {}
   var0.displayName = "Category"
   var0.children = {}
   var0.childCount = 0
   var0.index = 1
   var0.name = "1"
   var0.path = {}
   local var434 = {}
   var434.assetId = 5657301130
   var434.backgroundColor = "#32a852"
   var0.thumbnail = var434
   local var2 = {}
   var2.displayName = "Vehicle"
   var2.children = {}
   var2.childCount = 0
   var2.index = 2
   var2.name = "2"
   var2.path = {}
   local var444 = {}
   var444.assetId = 5657301130
   var444.backgroundColor = "#32a852"
   var2.thumbnail = var444
   local var4 = {}
   var4.displayName = "3rd"
   var4.children = {}
   var4.childCount = 0
   var4.index = 3
   var4.name = "3"
   var4.path = {}
   local var454 = {}
   var454.assetId = 5657301130
   var454.backgroundColor = "#32a852"
   var4.thumbnail = var454
   local var6 = {}
   var6.displayName = "4"
   var6.children = {}
   var6.childCount = 0
   var6.index = 3
   var6.name = "4"
   var6.path = {}
   local var464 = {}
   var464.assetId = 5657301130
   var464.backgroundColor = "#32a852"
   var6.thumbnail = var464
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
   var422.SubcategoryDict = {}
   var418.SubcategoriesSwimlaneView = var1.createElement(var4, var422)
   return var1.createElement(var2, {}, var418)
end

return var5
