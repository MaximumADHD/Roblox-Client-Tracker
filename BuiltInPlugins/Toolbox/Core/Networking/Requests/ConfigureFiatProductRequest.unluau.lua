-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Types.MarketplaceFiatServiceTypes)
local var2 = require(var0.Core.Util.FiatUtil)
local var3 = require(var0.Core.Util.DebugFlags)
local var4 = require(var0.Core.Actions.NetworkError)
local var5 = require(var0.Core.Actions.SetFiatProduct)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
   return function(arg1)
      if var2.shouldDebugUrls() then
         print("configureFiatProduct Response: ", arg1)
      end
      local var0 = arg3(arg4, arg1.responseBody)
      arg2:dispatch()
   end
end
