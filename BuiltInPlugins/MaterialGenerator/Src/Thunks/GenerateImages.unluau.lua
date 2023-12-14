-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.AddGeneratedImages)
local var3 = require(var1.ClearSelectedMaterial)
local var4 = require(var1.DoneGeneratingImages)
local var5 = require(var1.MergeFilteredTextPrompt)
local var6 = require(var1.SetAccountingBudget)
local var7 = require(var1.SetGeneratingImages)
local var8 = require(var1.SetGenerationError)
local var9 = require(var1.SetMaterialGenerationSession)
local var10 = require(var1.SetSelectedMaterial)
local var11 = var0.Src.Thunks
local var12 = require(var11.CreateGeneratedMaterials)
local var13 = require(var11.RefillAccountingBudget)
local var14 = var0.Src.Enum
local var15 = require(var14.AccountingBudgetState)
local var16 = require(var14.GenerationErrorType)
local var17 = require(var0.Src.Util.DebugFlags)
local var18 = require(var0.Src.Util.parseGenerationError)
local var19 = require(var0.Src.Flags.getFFlagConcurrentMaterialMapsRequests)
local var20 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
local var21 = require(var0.Src.Flags.getFFlagMaterialGeneratorRemoveAccounting)
local var22 = require(var0.Src.Flags.getFFlagMaterialGeneratorSupportVariations2)
local var23 = game:GetFastFlag("MaterialGeneratorErrorAnalytics")
local var24 = require(var0.Src.Types)
return function(arg1, arg2, arg3)
   return function()
      local var0 = var16:GenerateImagesAsync(var21, var15)
   end
end
