-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3, arg4, arg5)
   local var0 = Enum.Material.Air
   local var1 = {}
   local var8 = 1
   local var3 = 1
   local var4 = 1
   local var5 = 1
   local var6 = 1
   local var7 = 1
   local var8 = arg1 + 65535
   local var9 = arg2 + 65535
   local var10 = arg3 + 65535
   if 0 < var8 then
      if var8 <= arg5.X then
         if 0 < var9 then
            if var9 <= arg5.Y then
               if 0 < var10 then
                  if var10 <= arg5.Z then
                     local var0 = arg4[var8]
                     local var1 = var0[var9][var10]
                     if var1 ~= Enum.Material.Air then
                        local var0 = var1[var1]
                        var0[var9][var10] = var0 + 1
                        if 0 < var1[var1] then
                           var0 = var1
                        end
                     end
                  end
               end
            end
         end
      end
   end
   if var0 ~= Enum.Material.Air then
      return var0
   end
   return nil
end
