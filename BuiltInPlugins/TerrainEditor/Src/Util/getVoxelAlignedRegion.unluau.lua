-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   local function fun0(arg1)
      return math.round(arg1 / arg3) * arg3
   end
   
   local var0 = math.round((arg1.Position.X - arg2.X / 2) / arg3) * arg3
   local var1 = math.round((arg1.Position.X + arg2.X / 2) / arg3) * arg3
   local var2 = math.round((arg1.Position.Y - arg2.Y / 2) / arg3) * arg3
   local var3 = math.round((arg1.Position.Y + arg2.Y / 2) / arg3) * arg3
   local var4 = math.round((arg1.Position.Z - arg2.Z / 2) / arg3) * arg3
   local var5 = math.round((arg1.Position.Z + arg2.Z / 2) / arg3) * arg3
   return CFrame.new(Vector3.new((var0 + var1) / 2, (var2 + var3) / 2, (var4 + var5) / 2))Vector3.new(var1 - var0, var3 - var2, var5 - var4),
end
