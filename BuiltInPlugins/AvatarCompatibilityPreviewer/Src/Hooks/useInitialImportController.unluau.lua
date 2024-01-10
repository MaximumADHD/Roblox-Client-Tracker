-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Types)
local var4 = require(var0.Src.Hooks.useAddInstancesToUserCatalogAndEquip)
local var5 = require(var0.Src.Hooks.useSerializedState)
return function(arg1)
   local var0 = var4()
   local var1 = var5(arg1, "initialImportComplete", false)
   local var2 = arg1
   var2.useEffect(function(arg1)
      local var0 = arg1:IsA("Accessory")
      if not var0 then
         if arg1:IsA("MeshPart") then
            if arg1.Name == "Head" then
               local var0 = false
            end
            local var0 = true
         end
      end
      return var0
   end, {})
end
