-- Generated with Unluau (https://github.com/valencefun/unluau)
if require(script:FindFirstAncestor("AssetImporter").Src.Testing.isFTF)() then
   return nil
end
game:DefineFastFlag("ChooseAnimationForRestPose", true)
game:DefineFastFlag("HideAnimationSettingForGltf", true)
game:DefineFastFlag("ImporterOpensAvatarPreviewerBetaCheck", true)
game:DefineFastFlag("AssetImportUseUploadId", true)
game:DefineFastFlag("KeepZeroInfluenceBones", true)
return nil
