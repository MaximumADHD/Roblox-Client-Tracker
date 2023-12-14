-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = arg2[3 * (arg1 - 1) + 1].position
   local var1 = arg2[3 * (arg1 - 1) + 2].position
   local var2 = arg2[3 * (arg1 - 1) + 3].position
   local var3 = (var0 + var1 + var2) / 3
   local var4 = var3 - var0.Unit
   local var5 = var1 - var0:Cross(var2 - var0).Unit
   local var6 = var4:Cross(var5)
   return CFrame.new(var3.x, var3.y, var3.z, var6.x, var4.x, var5.x, var6.y, var4.y, var5.y, var6.z, var4.z, var5.z)
end
