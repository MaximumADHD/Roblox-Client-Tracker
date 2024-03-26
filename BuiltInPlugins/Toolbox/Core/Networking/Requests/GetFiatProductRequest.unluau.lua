-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Libs.Http.StatusCodes)
local var3 = require(var0.Core.Actions.SetFiatProduct)
local var4 = require(var0.Core.Util.FiatUtil)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg2(arg3, arg1.responseBody)
      arg1:dispatch()
   end
end
