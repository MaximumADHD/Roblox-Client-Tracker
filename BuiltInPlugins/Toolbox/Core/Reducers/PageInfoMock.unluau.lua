-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Types.Sort).SORT_OPTIONS
local var2 = require(var0.Core.Types.Category).MARKETPLACE
return function(arg1, arg2)
   local var0 = {}
   var0.categories = var2
   var0.category = var2[1].category
   var0.categoryName = var2[1].name
   var0.searchTerm = ""
   var0.sorts = var1
   var0.sortIndex = 1
   var0.sortType = var1[1].sort
   var0.groups = {}
   var0.groupIndex = 0
   var0.groupId = 0
   var0.targetPage = 1
   var0.curentPage = 0
   var0.selectedBackgroundIndex = 1
   var0.hoveredBackgroundIndex = 0
   return var0
end
