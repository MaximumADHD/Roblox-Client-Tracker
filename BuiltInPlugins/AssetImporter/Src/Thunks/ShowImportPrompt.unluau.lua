-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("AssetImportService")
local var1 = script:FindFirstAncestor("AssetImporter")
local var2 = var1.Src.Actions
local var3 = require(var2.ResetState)
local var4 = require(var2.SetAssetImportSession)
local var5 = require(var2.SetFilename)
local var6 = require(var2.SetImportTree)
local var7 = require(var2.SetSelectedImportItem)
local var8 = var1.Src.Thunks
local var9 = require(var8.CreateQueuedSession)
local var10 = require(var8.LoadManagedGroups)
local var11 = require(var8.ShowImportPreview)
local var12 = require(var8.UpdateChecked)
local var13 = require(var8.UpdatePreviewInstance)
local var14 = require(var1.Src.Flags.getFFlagAssetImportEnableMultipleFiles)
local var15 = require(var1.Src.Flags.getFFlagAssetImportUseUploadId)
return function(arg1)
   return function(arg1, arg2)
      var0(true, var14)
   end
end
