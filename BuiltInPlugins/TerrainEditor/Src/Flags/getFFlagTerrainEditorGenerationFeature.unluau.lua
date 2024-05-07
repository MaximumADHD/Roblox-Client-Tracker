-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
game:DefineFastFlag("TerrainEditorGenerationFeature3", false)
return function()
   return game:GetFastFlag("TerrainEditorGenerationFeature3") and game:GetFastFlag("DevFrameworkFormSubsetting")
end
