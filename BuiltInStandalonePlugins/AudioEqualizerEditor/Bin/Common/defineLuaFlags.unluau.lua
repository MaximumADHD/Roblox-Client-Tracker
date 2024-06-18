-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("EnableAudioEqualizerEditor", false)
game:DefineFastInt("AudioEqualizerEditorAnalyzerResolution", 100)
game:DefineFastFlag("LoadAudioEqualizerEditorInAssetDM", false)
game:DefineFastFlag("Path2DControlPointAtomicClass4", false)
game:DefineFastFlag("Path2DEnabled15", false)
game:DefineFastInt("Path2DMaxControlPointLimit", 50)
local var0 = {}
function var0.getFFlagEnableAudioEqualizerEditor()
   return game:GetFastFlag("EnableAudioEqualizerEditor")
end

function var0.getFIntAudioEqualizerEditorAnalyzerResolution()
   return game:GetFastInt("AudioEqualizerEditorAnalyzerResolution")
end

function var0.getFFlagLoadAudioEqualizerEditorInAssetDM()
   return game:GetFastFlag("LoadAudioEqualizerEditorInAssetDM")
end

function var0.getFFlagPath2DEnabled()
   return game:GetFastFlag("Path2DControlPointAtomicClass4") and game:GetFastFlag("Path2DEnabled15")
end

function var0.getFIntPath2DMaxControlPointLimit()
   return game:GetFastInt("Path2DMaxControlPointLimit")
end

return var0
