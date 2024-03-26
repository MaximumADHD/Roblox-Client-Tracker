-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Types.MarketplaceFiatServiceTypes)
local var2 = require(var0.Core.Util.FiatUtil)
local var3 = require(var0.Core.Actions.NetworkError)
local var4 = require(var0.Core.Actions.SetFiatProduct)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
   return function(arg1)
      local var0 = arg2(arg3, arg1.responseBody)
      var2:dispatch()
   end
end
