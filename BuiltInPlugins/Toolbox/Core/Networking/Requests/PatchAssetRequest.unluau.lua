-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Util.AssetConfigConstants)
local var3 = var0.Core.Actions
local var4 = require(var3.NetworkError)
local var5 = require(var3.SetCurrentScreen)
local var6 = require(var3.UploadResult)
local var7 = require(var0.Core.Networking.Requests.TrySaveSalesThumbnailAssetMediaRequest)
local var8 = require(var0.Core.Networking.Requests.ConfigureFiatProductRequest)
local var9 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAssetConfigUseMFS)
return function(arg1)
   return function(arg1)
      local var0 = var2(var7)
      var5:dispatch()
      if arg1() then
         local var0 = var9(var7.networkInterface, var7.assetId, var7.assetTypeEnum, var7.basePrice, var7.description, var7.name, var7.copyOn)
         var5:dispatch()
      end
   end
end
