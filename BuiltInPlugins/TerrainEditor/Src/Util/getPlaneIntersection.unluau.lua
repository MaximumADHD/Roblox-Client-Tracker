-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3, arg4)
   local var0 = arg2:Dot(arg4)
   if var0 == 0 then
      return nilnil,
   end
   local var1 = arg3 - arg1:Dot(arg4) / var0
   local var2 = arg2 * var1
   var2 = var1
   return arg1 + var2var2,
end
