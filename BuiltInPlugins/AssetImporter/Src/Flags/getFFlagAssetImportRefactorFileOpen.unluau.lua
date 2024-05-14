-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getFFlagAssetImportRefactorReducer)
game:DefineFastFlag("AssetImportRefactorFileOpen", false)
return function()
   return game:GetFastFlag("AssetImportRefactorFileOpen") and var0()
end
