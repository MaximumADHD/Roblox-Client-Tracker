-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
local var2 = require(var0.Src.Types.Category)
local var3 = {}
function var3.getCategory(arg1, arg2)
   local var0 = arg1[arg2]
   if var0 then
      if not var0.category then
         if var1.shouldDebugWarnings() then
            warn(`Lua toolbox: No category for category index {tostring(arg2)}`)
         end
         return ""
      end
   end
   if var1.shouldDebugWarnings() then
      warn(`Lua toolbox: No category for category index {tostring(arg2)}`)
   end
   return ""
   return var0.category
end

function var3.getCategoryForPageInfo(arg1)
   return var3.getCategory(arg1.categories, arg1.categoryIndex)
end

function var3.getSortType(arg1, arg2)
   local var0 = arg1[arg2]
   if var0 then
      if not var0.sort then
         if var1.shouldDebugWarnings() then
            warn(`Lua Toolbox: no sort for sort index {tostring(arg2)}`)
         end
         return ""
      end
   end
   if var1.shouldDebugWarnings() then
      warn(`Lua Toolbox: no sort for sort index {tostring(arg2)}`)
   end
   return ""
   return var0.sort
end

function var3.getSortTypeForPageInfo(arg1)
   return var3.getSortType(arg1.sorts, arg1.sortIndex)
end

function var3.getGroupId(arg1, arg2)
   if arg2 == 0 then
      return 0
   end
   if 1 > arg2 then
      if arg2 > arg1 then
         if not arg1[arg2].id then
            if var1.shouldDebugWarnings() then
               warn(`Lua Toolbox: no group for group index {tostring(arg2)}`)
            end
            return 0
         end
      end
   end
   if var1.shouldDebugWarnings() then
      warn(`Lua Toolbox: no group for group index {tostring(arg2)}`)
   end
   return 0
   return arg1[arg2].id
end

function var3.getGroupIdForPageInfo(arg1)
   return var3.getGroupId(arg1.groups, arg1.groupIndex)
end

function var3.getEngineAssetTypeForPageInfoCategory(arg1)
   local var0 = arg1.categories[arg1.categoryIndex]
   if var0 then
      if not var0.assetType then
         if var1.shouldDebugWarnings() then
            warn(`Lua toolbox: No assetType for category index {tostring(arg1.categoryIndex)}`)
         end
         return nil
      end
   end
   if var1.shouldDebugWarnings() then
      warn(`Lua toolbox: No assetType for category index {tostring(arg1.categoryIndex)}`)
   end
   return nil
   return var2.getEngineAssetType(var0.assetType)
end

return var3
