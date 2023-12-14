-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var3 = arg1:match("://(%d+)")
   local var1 = tonumber()
   if not var1 then
      local var0 = arg1:match("(%d+)")
      local var1 = tonumber()
   end
   if var1 then
      return var1
   end
   return nil
end
