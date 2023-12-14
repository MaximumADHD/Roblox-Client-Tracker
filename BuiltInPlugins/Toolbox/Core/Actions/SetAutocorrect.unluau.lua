-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Types.AutocorrectTypes)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   local var0 = {}
   local var1 = arg1.correctionState or var1.AutocorrectResponseState.NoCorrection
   var0.correctionState = var1
   local var25 = arg1.correctedQuery
   var0.correctedQuery = var1
   local var3 = arg1.userQuery
   var0.userQuery = var1
   return var0
end)
