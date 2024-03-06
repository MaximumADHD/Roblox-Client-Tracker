-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = game:GetService("TextureGenerationService")
return function(arg1)
   local var0 = var1:CreatePartGroup(arg1)
   if var0 then
      local var0 = var0:GetMeshIdsHash() or ""
   end
   return ""
end
