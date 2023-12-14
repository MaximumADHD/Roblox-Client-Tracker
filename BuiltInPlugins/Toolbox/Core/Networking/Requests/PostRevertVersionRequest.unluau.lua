-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Networking.Requests.GetVersionsHistoryRequest)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg2(arg3, var3)
      arg1:dispatch()
   end
end
