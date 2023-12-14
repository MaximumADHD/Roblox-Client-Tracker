-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   local var0 = arg2 - arg1
   local var1 = var0.Magnitude
   local var2 = arg3 * 0.5
   local var3 = {}
   if var2 < var1 then
      var1 = math.min(var1, var2 * 2 + 20)
      local var0 = math.ceil(var1 / var2 - 0.1)
      local var1 = 1
      local var2 = var0
      local var3 = 1
      var3[1] = arg1 + var0.Unit * var1 * var1 / var0
      return var3
   end
   return var3
end
