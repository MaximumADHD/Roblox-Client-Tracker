-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Util.getUserId)
local var3 = require(var0.Core.Actions.NetworkError)
local var4 = require(var0.Core.Actions.SetRobuxBalance)
return function(arg1)
   return function(arg1)
      local var0 = arg1(tonumber(arg1.responseBody.robux))
      var2:dispatch()
   end
end
