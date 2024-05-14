-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Util.AssetConfigConstants)
local var3 = var0.Core.Actions
local var4 = require(var3.NetworkError)
local var5 = require(var3.SetCurrentScreen)
local var6 = require(var3.UploadResult)
local var7 = require(var0.Core.Util.SharedFlags.getFFlagAssetConfigLinkToCreatorStore)
local var8 = require(var0.Core.Networking.Requests.TrySaveSalesThumbnailAssetMediaRequest)
local var9 = require(var0.Core.Networking.Requests.ConfigureFiatProductRequest)
return function(arg1)
   return function(arg1)
      local var0 = var2(var8)
      var5:dispatch()
      if not arg1() then
         local var0 = var7(var8.networkInterface, var8.assetId, var8.assetTypeEnum, var8.basePrice, var8.description, var8.name, var8.copyOn)
         var5:dispatch()
      end
   end
end
