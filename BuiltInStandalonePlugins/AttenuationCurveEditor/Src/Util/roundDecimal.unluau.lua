-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg2 >= 0 then
      local var0 = false
   end
   assert(true, "Expecting decimal places is a valid non-negative integer")
   local var0 = math.pow(10, arg2)
   return math.round(arg1 * var0) / var0
end
