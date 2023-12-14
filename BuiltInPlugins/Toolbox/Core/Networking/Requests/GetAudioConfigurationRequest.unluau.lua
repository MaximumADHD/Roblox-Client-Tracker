-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.SetHomeConfiguration)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg2(Enum.AssetType.Audio, arg1.responseBody)
      arg1:dispatch()
   end
end
