-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Flags.getFFlagRemoveUseNewSwimlanes)
game:DefineFastFlag("ToolboxCleanupAudioDiscoveryExperiment", false)
return function()
   return game:GetFastFlag("ToolboxCleanupAudioDiscoveryExperiment") and var0()
end
