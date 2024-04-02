-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Core.Util
local var2 = require(var1.DebugFlags)
local var3 = require(var1.getIsIXPVariableEnabled)
local var4 = require(var0.Core.Flags.getFFlagQualityFiltersInToolboxSearch)
return function(arg1)
   if var4() then
      local var20 = var2
      if var20.shouldDebugWarnings() then
         if not arg1 then
            warn("ixp was undefined for FFlagQualityFiltersInToolboxSearch")
            return false
         end
      end
      var20 = arg1
      return var3(var20, "AssetQualityFilter", "AssetQualityFilterEnabled")
   end
   return false
end
