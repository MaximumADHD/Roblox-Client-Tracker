-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Core.Actions.UploadResult)
local var3 = require(var0.Core.Util.DebugFlags)
local var4 = require(var0.Packages.Framework).Util.Promise
return function(arg1, arg2, arg3, arg4)
   return function()
      local var0 = var3(true)
      var2:dispatch()
   end
end
