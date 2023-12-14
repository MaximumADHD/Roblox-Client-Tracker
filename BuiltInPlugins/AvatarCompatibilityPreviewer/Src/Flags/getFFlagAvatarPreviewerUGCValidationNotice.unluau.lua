-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("AvatarPreviewerUGCValidationNotice", false)
game:DefineFastFlag("DevFrameworkAlert", false)
game:DefineFastFlag("MoveToolboxCodeToUGCValidation", false)
game:DefineFastFlag("UGCValidationFixBundlesMetadataFetch", false)
return function()
   return game:GetFastFlag("AvatarPreviewerUGCValidationNotice") and game:GetFastFlag("DevFrameworkAlert") and game:GetFastFlag("MoveToolboxCodeToUGCValidation") and game:GetFastFlag("UGCValidationFixBundlesMetadataFetch")
end
