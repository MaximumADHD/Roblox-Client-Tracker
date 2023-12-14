-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Controllers.GenerationController)
local var3 = require(var0.Src.Controllers.MaterialsController)
local var4 = require(var0.Src.Types)
return function()
   local var0 = var2:use()
   local var1 = var3:use()
   return var1.useCallback(function(arg1)
      if arg1.colorMap then
         var1.ColorMap = arg1.colorMap
      end
      if arg1.metalnessMap then
         var1.MetalnessMap = arg1.metalnessMap
      end
      if arg1.normalMap then
         var1.NormalMap = arg1.normalMap
      end
      if arg1.roughnessMap then
         var1.RoughnessMap = arg1.roughnessMap
      end
      var0:setStatus(var1, "Saved")
   end, {})
end
