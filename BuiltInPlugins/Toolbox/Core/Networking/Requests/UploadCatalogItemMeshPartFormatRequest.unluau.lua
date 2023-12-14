-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Core.Actions.UploadResult)
local var3 = var0.Core.Util
local var4 = require(var3.DebugFlags)
local var5 = require(var3.AssetConfigConstants)
local var6 = require(var3.SerializeInstances)
local var7 = require(var3.convertSpecialMeshAccessory)
local var8 = require(var0.Core.Networking.Requests.ConfigureItemTagsRequest)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
   return function(arg1)
      local var0 = arg1(arg2, arg7, {}, var4)
      var8:dispatch()
   end
end
