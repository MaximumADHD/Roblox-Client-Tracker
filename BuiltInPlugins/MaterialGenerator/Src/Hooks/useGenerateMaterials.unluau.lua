-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.React)
local var2 = var0.Src.Controllers
local var3 = require(var2.GenerationController)
local var4 = require(var2.MaterialsController)
local var5 = require(var0.Src.Types)
return function()
   local var0 = var3:use()
   local var1 = var4:use()
   return var1.useCallback(function(arg1)
      var0.MetalnessMap = arg1.metalnessMap
      var0.NormalMap = arg1.normalMap
      var0.RoughnessMap = arg1.roughnessMap
      var1:setStatus(var0, "Ready")
   end, {})
end
