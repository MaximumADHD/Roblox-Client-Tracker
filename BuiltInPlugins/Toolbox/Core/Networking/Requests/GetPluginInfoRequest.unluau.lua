-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.SetPluginData)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg2(arg1.responseBody.data[1])
      arg1:dispatch()
   end
end
