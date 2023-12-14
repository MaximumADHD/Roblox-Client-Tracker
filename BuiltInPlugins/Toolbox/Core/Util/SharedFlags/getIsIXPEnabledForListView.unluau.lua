-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox").Core.Util
local var1 = require(var0.getIsIXPVariableEnabled)
local var2 = require(var0.SharedFlags.getFFlagToolboxEnableAssetRows)
game:DefineFastFlag("ToolboxListViewEnabledForAll", false)
return function(arg1)
   local var21 = game:GetFastFlag("ToolboxListViewEnabledForAll")
   if var21 then
      return var2()
   end
   var21 = arg1
   return var21 and var2() and var1(arg1, "MarketplaceModelsListView", "MarketplaceModelsListViewEnabled")
end
