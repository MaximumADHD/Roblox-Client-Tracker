-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("MemStorageService")
local var1 = game:GetService("Selection")
return function(arg1, arg2, arg3)
   if arg3:IsR15() then
      if not arg2.ValidateUgcBody then
      end
   end
   local var0 = var1:Get()
   local var1 = var0
   if var1 == 1 then
   end
   var1 = `rbxassetid://%*`
   if var0[1] ~= arg1.Instance then
      if var0[1]:FindFirstChildWhichIsA("PackageLink").PackageId ~= var1 then
      end
   end
   var0:Fire("ValidateUgcBody")
end
