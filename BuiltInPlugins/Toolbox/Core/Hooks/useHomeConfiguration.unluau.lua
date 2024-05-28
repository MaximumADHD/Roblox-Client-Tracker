-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.ContextServices.NetworkContext)
local var3 = require(var0.Core.Networking.Requests.GetHomeConfigurationRequest)
local var4 = require(var0.Core.Hooks.useDispatch)
local var5 = require(var0.Core.Hooks.useSelector)
local var6 = require(var0.Core.Types.HomeTypes)
return function(arg1, arg2)
   local var0 = var2.use().networkInterface
   local var1 = var4()
   local var2 = var1
   local var3 = var0
   local var4 = arg1
   local var5 = arg2
   var1.useEffect(function()
      var1(var3(var0, arg1, arg2))
   end, {})
   return var5(function(arg1)
      if arg1.homeConfiguration then
         return arg1.homeConfiguration[arg1.Name]
      end
      return nil
   end)
end
