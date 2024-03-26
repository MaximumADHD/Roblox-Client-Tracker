-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Util
local var2 = require(var1.DebugFlags)
local var3 = require(var1.AssetConfigConstants)
local var4 = require(var1.SerializeInstances)
local var5 = require(var1.Analytics.Analytics)
local var6 = var0.Core.Actions
local var7 = require(var6.NetworkError)
local var8 = require(var6.SetCurrentScreen)
local var9 = require(var6.UploadResult)
local var10 = require(var6.SetAssetId)
local var11 = require(var0.Core.Flags.getFFlagToolboxAnimationAPIMigration)
return function(arg1)
   return function(arg1)
      if var8() then
         local var46 = var11(arg1.assetId)
         var3:dispatch()
         local var53 = var10(var5.SCREENS.UPLOADING_ASSET)
         var3:dispatch()
         arg1.incrementUploadAssetSuccess(var9.assetType)
         local var2 = var7(true)
         var3:dispatch()
      end
      if arg1 then
         if tostring(arg1) == "0" then
            if arg1:find("Error") then
               local var73 = var7(false)
               var3:dispatch()
               local var78 = var2(arg1)
               var3:dispatch()
               arg1.incrementUploadAssetFailure(var9.assetType)
            end
         end
      end
      local var87 = var7(false)
      var3:dispatch()
      local var92 = var2(arg1)
      var3:dispatch()
      arg1.incrementUploadAssetFailure(var9.assetType)
      local var101 = var11(arg1)
      var3:dispatch()
      local var108 = var10(var5.SCREENS.UPLOADING_ASSET)
      var3:dispatch()
      arg1.incrementUploadAssetSuccess(var9.assetType)
      local var4 = var7(true)
      var3:dispatch()
   end
end
