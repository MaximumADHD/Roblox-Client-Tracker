-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.Dash)
local var3 = require(var0.Packages.Promise)
local var4 = var0.Src.Actions
local var5 = require(var4.AddGeneratedMaterials)
local var6 = require(var4.SetGenerationError)
local var7 = require(var4.UpdateMaterialTextures)
local var8 = require(var0.Src.Flags.getFFlagConcurrentMaterialMapsRequests)
local var9 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
local var10 = require(var0.Src.Thunks.UpdateMaterial)
local var11 = var0.Src.Util
local var12 = require(var11.createGeneratedMaterial)
local var13 = require(var11.generateMaterialMaps)
local var14 = var2.collectArray
local var15 = var2.joinDeep
local var16 = var2.map
return function(arg1, arg2, arg3, arg4)
   assert(var8(), "Expected FFlagConcurrentMaterialMapsRequests to be true")
   return function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end
end
