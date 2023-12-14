-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("UGCValidationService")
return function(arg1)
   if arg1 then
      local var0 = arg1:FindFirstChild("Handle")
      if var0 then
         if var0:IsA("MeshPart") then
            var0:ResetCollisionFidelity(var0)
         end
      end
   end
end
