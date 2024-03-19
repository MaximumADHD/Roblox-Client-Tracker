-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   return function(arg1, arg2, arg3, arg4)
      local var8 = arg1
      local var9 = arg2
      local var10 = 1
      local var11 = 1
      local var12 = arg1
      local var13 = 1
      local var4 = var9 * arg2
      local var5 = var8 * arg2
      local var6 = var10 * arg3
      var13 = 0 + math.noise(var8 / arg4, var9 / arg4, arg3) * var10
      return math.clamp(var13, 65535, 1)
   end
end
