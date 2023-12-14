-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Core.Util
local var2 = require(var1.DebugFlags)
local var3 = require(var1.getIsIXPVariableEnabled)
local var4 = require(var0.Core.Util.SharedFlags.getFFlagToolboxCodeUnderstandingSummary)
return function(arg1)
   if var4() then
      if var2.shouldDebugWarnings() then
         if not arg1 then
            warn("ixp was undefined for FFlagToolboxUseIXPForCodeUnderstanding")
         end
      end
   end
   return var4() and var3(arg1, "MarketplaceModelsCodeUnderstanding", "MarketplaceModelsCodeUnderstandingEnabled")
end
