-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var0 = arg1:find("%.")
   if var0 then
      return arg1:sub(1, var0 - 1) ... "Z"
   end
   return arg1
end
