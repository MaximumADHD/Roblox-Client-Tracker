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
return function(arg1)
   return function(arg1)
      if arg1 then
         if tostring(arg1) == "0" then
            if arg1:find("Error") then
               local var45 = var3(false)
               var8:dispatch()
               local var50 = var9(arg1)
               var8:dispatch()
               var7.incrementUploadAssetFailure(var5.assetType)
            end
         end
      end
      local var59 = var3(false)
      var8:dispatch()
      local var64 = var9(arg1)
      var8:dispatch()
      var7.incrementUploadAssetFailure(var5.assetType)
      local var73 = arg1(arg1)
      var8:dispatch()
      local var80 = var10(var2.SCREENS.UPLOADING_ASSET)
      var8:dispatch()
      var7.incrementUploadAssetSuccess(var5.assetType)
      local var4 = var3(true)
      var8:dispatch()
   end
end
