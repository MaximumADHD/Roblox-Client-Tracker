-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("EnableAudioEqualizerEditor", false)
game:DefineFastFlag("LoadAudioEqualizerEditorInAssetDM", false)
local var0 = {}
function var0.getFFlagEnableAudioEqualizerEditor()
   return game:GetFastFlag("EnableAudioEqualizerEditor")
end

function var0.getFFlagLoadAudioEqualizerEditorInAssetDM()
   return game:GetFastFlag("LoadAudioEqualizerEditorInAssetDM")
end

return var0
