-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Flags.getFFlagToolboxPortContextualReccomendationsToNewPackage)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   local var20 = var1()
   var20 = `{script.Name}marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage`
   assert(var20, var20)
   local var0 = {}
   var0.contextualRecommendationsPollingFrequencyInSeconds = arg1
   return var0
end)
