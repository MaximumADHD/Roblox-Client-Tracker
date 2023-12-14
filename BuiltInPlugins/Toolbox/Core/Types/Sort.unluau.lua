-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Core.Types.Category)
local var1 = {}
local var2 = {}
var2.name = "Relevance"
var2.sort = "Relevance"
local var3 = {}
var3.name = "MostTaken"
var3.sort = "MostTaken"
local var4 = {}
var4.name = "Favorites"
var4.sort = "Favorites"
local var5 = {}
var5.name = "Updated"
var5.sort = "Updated"
local var6 = {}
var6.name = "Ratings"
var6.sort = "Ratings"
var1.SORT_OPTIONS = { {}, {}, {} }
function var1.canSort(arg1, arg2)
   if arg1 == "" then
      local var29 = var0
      var29 = arg2
      local var0 = var29.categoryIsFreeAsset(var29)
   end
   return false
end

function var1.getDefaultSortForCategory(arg1)
   local var33 = var0
   var33 = arg1
   if var33.categoryIsPackage(var33) then
      return 4
   end
   return 1
end

function var1.getDefaultSortNameForCategory(arg1)
   local var41 = var1
   var41 = arg1
   return var1.SORT_OPTIONS[var41.getDefaultSortForCategory(var41)]
end

function var1.getDefaultSortForGroups(arg1)
   return var1.getDefaultSortForCategory(arg1.categoryName)
end

return var1
