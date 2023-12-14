-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Flags.getFFlagMaterialGeneratorRemoveAccounting)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   assert(var1(), "Expected FFlagMaterialGeneratorRemoveAccounting to be false")
   local var0 = {}
   var0.accountingBudget = arg1
   return var0
end)
