-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.ContextServices.NetworkContext)
local var3 = require(var0.Core.ContextServices.IXPContext)
local var4 = require(var0.Core.Networking.Requests.GetHomeConfigurationRequest)
local var5 = require(var0.Core.Networking.Requests.GetAudioConfigurationRequest)
local var6 = require(var0.Core.Hooks.useDispatch)
local var7 = require(var0.Core.Hooks.useSelector)
local var8 = require(var0.Core.Types.HomeTypes)
local var9 = require(var0.Core.Util.SharedFlags.getIXPEnabledForAudioDiscoveryUX)
return function(arg1, arg2)
   local var0 = var3:use()
   local var1 = var2.use().networkInterface
   local var2 = var6()
   local var3 = var2
   local var4 = var1
   local var5 = arg1
   local var6 = arg2
   var1.useEffect(function()
      if arg1 == "AssetType" then
         if var9(var0) then
            var2(var5(var1, arg2))
         end
      end
      var2(var4(var1, arg1, arg2))
   end, {})
   return var7(function(arg1)
      if arg1.homeConfiguration then
         return arg1.homeConfiguration[arg1.Name]
      end
      return nil
   end)
end
