-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getFFlagAssetImporterCustomPresets)
game:DefineFastFlag("AssetImportEnableMultipleFiles_DEV", false)
return function()
   return game:GetFastFlag("AssetImportEnableMultipleFiles_DEV") and var0()
end
