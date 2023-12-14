-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Util.PageInfoHelper)
local var2 = require(var0.Core.Util.DebugFlags)
return function()
   return function(arg1)
      local var0 = arg1:getState().pageInfo or {}
      if var2.shouldDebugWarnings() then
         if not var0.searchId then
            warn("no searchId in pageInfo, analytics won\'t be tracked for asset")
         end
      end
      local var1 = {}
      var1.category = "Studio"
      local var28 = var1
      var28 = var0
      var1.currentCategory = var28.getCategoryForPageInfo(var28)
      var1.page = var0.targetPage
      local var32 = var1
      var32 = var0
      var1.sort = var32.getSortTypeForPageInfo(var32)
      var1.searchId = var0.searchId
      var1.searchKeyword = var0.searchTerm
      local var37 = var1
      var37 = var0
      var1.toolboxTab = var37.getCurrentTab(var37)
      var1.isTopKeyword = var0.isTopKeyword
      return var1
   end
end
