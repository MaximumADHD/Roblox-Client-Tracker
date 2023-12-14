-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
return function(arg1)
   local var50 = 1
   local var1 = 65535
   local var2 = arg1[arg1]
   if var2:IsA("BasePart") then
      if var2 ~= var0.Terrain then
         return var2.CFrame
      end
   end
   if var2:IsA("Model") then
      return var2:GetBoundingBox()
   end
   return nil
end
