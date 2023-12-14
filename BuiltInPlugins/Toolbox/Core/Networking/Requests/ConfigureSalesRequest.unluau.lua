-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.AssetConfigConstants)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.UploadResult)
local var4 = require(var0.Core.Util.DebugFlags)
local var5 = require(var0.Core.Networking.Requests.ConfigureItemTagsRequest)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
   return function(arg1)
      local var0 = arg1(arg2, arg7, arg8, var4)
      var5:dispatch()
   end
end
