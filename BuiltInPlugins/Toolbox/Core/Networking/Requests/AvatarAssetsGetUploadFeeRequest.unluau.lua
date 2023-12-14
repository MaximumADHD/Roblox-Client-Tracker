-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Core.Actions.SetUploadFee)
local var3 = require(var1.Core.Actions.NetworkError)
local var4 = require(var1.Core.Actions.UploadResult)
local var5 = require(var1.Libs.Http.StatusCodes)
local var6 = var1.Core.Util
local var7 = require(var6.AssetConfigConstants)
local var8 = require(var6.SerializeInstances)
local var9 = require(var6.DebugFlags)
local var10 = require(var6.createMultipartFormDataBody)
local function fun0()
   local var0 = {}
   var0.name = ""
   var0.description = ""
   return var0
end

return function(arg1, arg2, arg3)
   return function()
      local var0 = {}
      var0.name = ""
      var0.description = ""
      return var0
   end
end
