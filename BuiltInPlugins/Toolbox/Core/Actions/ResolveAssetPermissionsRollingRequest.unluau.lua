-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Flags.getFFlagToolboxRollingAssetPermissionRequests)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   local var0 = var1()
   assert()
   local var1 = {}
   var1.id = arg1
   return var1
end)
