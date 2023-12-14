-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Core.Actions.SetCurrentScreen)
local var3 = require(var0.Core.Actions.UploadResult)
local var4 = require(var0.Core.Util.DebugFlags)
local var5 = require(var0.Core.Util.AssetConfigConstants)
local var6 = require(var0.Core.Networking.Requests.ConfigureSalesRequest)
local function fun0(arg1, arg2)
   local var0 = {}
   var0.name = arg1
   var0.description = arg2
   local var1 = "all"
   var0.genres = {}
   return var0
end

return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
   return function(arg1, arg2)
      local var0 = {}
      var0.name = arg1
      var0.description = arg2
      local var1 = "all"
      var0.genres = {}
      return var0
   end
end
