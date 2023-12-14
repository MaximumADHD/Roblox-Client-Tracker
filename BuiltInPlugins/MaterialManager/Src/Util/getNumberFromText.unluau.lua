-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   if utf8.len(arg1) == 0 then
      return nil
   end
   local var0 = tonumber(arg1)
   if var0 then
      if 0 < var0 then
         return var0
      end
   end
   return nil
end
