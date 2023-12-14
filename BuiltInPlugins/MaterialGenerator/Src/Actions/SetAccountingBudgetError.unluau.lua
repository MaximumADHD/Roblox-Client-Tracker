-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Flags.getFFlagMaterialGeneratorRemoveAccounting)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   assert(var1(), "Expected FFlagMaterialGeneratorRemoveAccounting to be false")
   if type(arg1) == "string" then
      if arg1 == "Expected FFlagMaterialGeneratorRemoveAccounting to be false" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, "Bad accountingBudgetError")
   local var0 = {}
   var0.accountingBudgetError = arg1
   return var0
end)
