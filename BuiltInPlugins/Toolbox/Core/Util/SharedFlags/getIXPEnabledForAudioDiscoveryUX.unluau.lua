-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.getIsIXPVariableEnabled)
game:DefineFastFlag("DebugToolboxEnableNewAudioDiscoveryUX", false)
return function(arg1)
   local var17 = game:GetFastFlag("DebugToolboxEnableNewAudioDiscoveryUX")
   if var17 then
      return true
   end
   var17 = arg1
   return var17 and var0(arg1, "MarketplaceAudioDiscoveryUX", "MarketplaceAudioDiscoveryUXEnabled")
end
