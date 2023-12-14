-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.MaterialFramework).Context.StudioServices
local var3 = var0.Src.Actions
local var4 = require(var3.SetSelectedMaterial)
local var5 = require(var3.SetTextPrompt)
local var6 = require(var0.Src.Flags.getFFlagMaterialGeneratorRemoveAccounting)
local var7 = require(var0.Src.Reducers.MainReducer)
local var8 = require(var0.Src.TestHelpers.createMockMaterialGenerationService)
local var9 = var0.Src.Thunks
local var10 = require(var9.GenerateImages)
local var11 = require(var9.RefillAccountingBudget)
return function()
   local var51 = var1
   local var52 = var51.thunkMiddleware
   local var2 = var1.Store.new(var7, nil, {})
   if not var6() then
      var51 = var8()
      local var0 = var11(var51)
      var2:dispatch()
   end
   local var63 = var5("ancient stone wall")
   var2:dispatch()
   var51 = var2.new(true)
   local var70 = var10(var51)
   var2:dispatch()
   local var4 = var4(var2:getState().MaterialsReducer.materials[1])
   var2:dispatch()
   return var2
end
