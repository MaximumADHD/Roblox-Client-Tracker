-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Util.AssetConfigConstants)
local var3 = var0.Core.Actions
local var4 = require(var3.NetworkError)
local var5 = require(var3.SetCurrentScreen)
local var6 = require(var3.UploadResult)
local var7 = require(var3.SetAssetId)
local var8 = require(var0.Core.Util.SerializeInstances)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var45 = var2(var7.SCREENS.UPLOADING_ASSET)
      var5:dispatch()
      local var50 = var6(arg1.responseBody)
      var5:dispatch()
      local var2 = var1(true)
      var5:dispatch()
   end
end
