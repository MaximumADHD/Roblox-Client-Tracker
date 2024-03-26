-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Flags.getFFlagTerrainEditorRemoveSchema)
game:DefineFastFlag("TerrainEditorGenerationFeature", false)
return function()
   return game:GetFastFlag("TerrainEditorGenerationFeature") and game:GetFastFlag("DevFrameworkFormSubsetting") and var0() and game:GetFastFlag("EnableNoiseClass")
end
