-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Libs.Http.StatusCodes)
local var3 = require(var0.Core.Actions.SetFiatProduct)
local var4 = require(var0.Core.Util.FiatUtil)
local var5 = require(var0.Core.Util.DebugFlags)
return function(arg1, arg2, arg3)
   return function(arg1)
      if arg1.shouldDebugUrls() then
         print("getFiatProduct Response: ", arg1)
      end
      local var0 = arg3(var5, arg1.responseBody)
      arg2:dispatch()
   end
end
