-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).ContextServices.PluginActions
return function(arg1, arg2)
   local var0 = var2:use():get(arg1)
   local var1 = var0
   local var2 = arg2
   var1.useEffect(function()
      var0.Enabled = false
      arg2:Disconnect()
   end, {})
end
