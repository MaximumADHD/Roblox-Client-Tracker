-- Generated with Unluau (https://github.com/valencefun/unluau)
game:defineFastFlag("MaterialPickerUIChanges", false)
return function()
   return game:GetEngineFeature("MaterialPickerBetaEnabled") or game:GetFastFlag("MaterialPickerUIChanges")
end
