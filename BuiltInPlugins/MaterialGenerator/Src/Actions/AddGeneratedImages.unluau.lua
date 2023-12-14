-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Flags.getFFlagConcurrentMaterialMapsRequests)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2, arg3)
   assert(var1(), "Expected FFlagConcurrentMaterialMapsRequests to be false")
   local var0 = {}
   var0.textPrompt = arg1
   var0.temporaryImageIds = arg2
   var0.generationId = arg3
   return var0
end)
