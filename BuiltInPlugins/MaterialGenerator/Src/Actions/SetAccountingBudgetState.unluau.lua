-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Enum.AccountingBudgetState)
local var2 = require(var0.Src.Flags.getFFlagMaterialGeneratorRemoveAccounting)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   assert(var2(), "Expected FFlagMaterialGeneratorRemoveAccounting to be false")
   local var29 = var1
   var29 = arg1
   assert(var29.isEnumValue(var29), "Bad accountingBudgetState")
   local var0 = {}
   var0.accountingBudgetState = arg1
   return var0
end)
