-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getFFlagAssetImportFixErrorOnCorruptedFilesPlugin)
local var1 = require(script.Parent.getFFlagAssetImporterCustomPresets)
game:DefineFastFlag("AssetImportCustomPresetPolish", false)
return function()
   return game:GetFastFlag("AssetImportCustomPresetPolish") and var1() and var0()
end
