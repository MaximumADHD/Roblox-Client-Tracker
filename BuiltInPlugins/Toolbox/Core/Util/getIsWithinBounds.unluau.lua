-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   if arg2.X == 0 then
      if arg2.Y == 0 then
         return false
      end
   end
   return false
   if arg3.X <= arg1.X then
      local var0 = false
      if arg1.X <= arg2.X + arg3.X then
         local var0 = false
         if arg3.Y <= arg1.Y then
            if arg2.Y + arg3.Y >= arg1.Y then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return false
end
