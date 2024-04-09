-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("ShowMaterialGeneratorFromElsewhere", false)
return function()
   return game:GetEngineFeature("MaterialPickerBetaEnabled") or game:GetFastFlag("ShowMaterialGeneratorFromElsewhere")
end
