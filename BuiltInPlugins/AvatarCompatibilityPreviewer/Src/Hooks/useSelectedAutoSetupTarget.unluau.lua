-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Hooks.useRememberLastValue)
local var4 = require(var0.Src.Hooks.useTransformedSelectedInstance)
local var5 = {}
local function fun0(arg1)
   if arg1:IsA("MeshPart") then
      if arg1.Name:lower():match(`{var2.BODY_MESH_SUFFIX}`) then
         return arg1
      end
   end
   return nil
end

return function()
   local var0 = var3()
   local var1 = var3()
   return var4(function(arg1)
      if arg1:IsA("MeshPart") then
         if arg1.Name:lower():match(`{var2.BODY_MESH_SUFFIX}`) then
            return arg1
         end
      end
      return nil
   end)
end
