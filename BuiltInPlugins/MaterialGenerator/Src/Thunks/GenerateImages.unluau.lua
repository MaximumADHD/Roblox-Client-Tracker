-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.ClearSelectedMaterial)
local var3 = require(var1.DoneGeneratingImages)
local var4 = require(var1.MergeFilteredTextPrompt)
local var5 = require(var1.SetGeneratingImages)
local var6 = require(var1.SetGenerationError)
local var7 = require(var1.SetMaterialGenerationSession)
local var8 = require(var1.SetSelectedMaterial)
local var9 = require(var0.Src.Thunks.CreateGeneratedMaterials)
local var10 = require(var0.Src.Enum.GenerationErrorType)
local var11 = require(var0.Src.Util.DebugFlags)
local var12 = require(var0.Src.Util.parseGenerationError)
local var13 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
local var14 = require(var0.Src.Flags.getFFlagMaterialGeneratorSupportVariations2)
local var15 = game:GetFastFlag("MaterialGeneratorErrorAnalytics")
local var16 = require(var0.Src.Types)
return function(arg1, arg2, arg3)
   return function()
      local var0 = var10:GenerateImagesAsync(var14, var13)
   end
end
