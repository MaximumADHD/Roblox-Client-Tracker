-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent
local var1 = require(var0.getFFlagAssetImportRefactorFileOpen)
local var2 = require(var0.getFFlagAssetImportRefactorPresetDropdown)
local var3 = require(var0.getFFlagAssetImportRefactorReducer)
game:DefineFastFlag("AssetImportEnableMultipleFiles_DEV", false)
return function()
   return game:GetFastFlag("AssetImportEnableMultipleFiles_DEV") and var1() and var2() and var3()
end
