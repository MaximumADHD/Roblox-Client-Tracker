-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.ContextServices.NetworkContext)
local var2 = require(var0.Core.Networking.Requests.SelectCategoryRequest)
local var3 = require(var0.Core.ContextServices.Settings)
local var4 = require(var0.Core.Hooks.useDispatch)
local var5 = require(var0.Packages.React).useCallback
return function()
   local var0 = var4()
   local var1 = var1.use().networkInterface
   local var2 = var3.use():get("Plugin")
   local var3 = var0
   local var4 = var1
   return var5(function(arg1)
      var0(var2(var1, var2, arg1))
   end, {})
end
