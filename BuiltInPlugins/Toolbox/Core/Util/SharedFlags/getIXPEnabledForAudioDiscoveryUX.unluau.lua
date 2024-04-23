-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Util.getIsIXPVariableEnabled)
local var2 = require(var0.Core.Flags.getFFlagToolboxCleanupAudioDiscoveryExperiment)
game:DefineFastFlag("DebugToolboxEnableNewAudioDiscoveryUX", false)
return function(arg1)
   local var20 = var2()
   var20 = `{script.Name}is marked for removal`
   assert(var20, var20)
   local var31 = game:GetFastFlag("DebugToolboxEnableNewAudioDiscoveryUX")
   if var31 then
      return true
   end
   var31 = arg1
   return var31 and var1(arg1, "MarketplaceAudioDiscoveryUX", "MarketplaceAudioDiscoveryUXEnabled")
end
