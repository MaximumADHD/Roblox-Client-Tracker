-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.SetAccountingBudget)
local var3 = require(var1.SetAccountingBudgetState)
local var4 = require(var1.SetAccountingBudgetError)
local var5 = require(var0.Src.Enum.AccountingBudgetState)
local var6 = require(var0.Src.Flags.getFFlagMaterialGeneratorRemoveAccounting)
return function(arg1)
   assert(var6(), "Expected FFlagMaterialGeneratorRemoveAccounting to be false")
   return function()
      local var0 = var4:GetAccountingBalanceAsync()
   end
end
