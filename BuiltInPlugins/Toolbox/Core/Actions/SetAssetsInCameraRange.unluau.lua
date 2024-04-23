-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Flags.getFFlagToolboxPortContextualReccomendationsToNewPackage)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   local var21 = var1()
   var21 = `{script.Name}marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage`
   assert(var21, var21)
   local var0 = {}
   var0.assetsInCameraViewport = arg1
   var0.assetsInCameraVicinity = arg2
   return var0
end)
