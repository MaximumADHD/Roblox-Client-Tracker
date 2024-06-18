-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3, arg4)
   local var0 = Enum.Material.Air
   local var1 = {}
   local var65 = 1
   local var3 = 1
   local var4 = 1
   local var5 = 1
   local var6 = 1
   local var7 = 1
   local var8 = arg2 + Vector3.new(65535, 65535, 65535)
   if 0 < var8.X then
      if var8.X <= arg3.X then
         if 0 < var8.Y then
            if var8.Y <= arg3.Y then
               if 0 < var8.Z then
                  if var8.Z <= arg3.Z then
                     local var0 = var8.Z
                     local var1 = arg1[var8.X][var8.Y][var0]
                     if var1 ~= Enum.Material.Air then
                        if arg4 then
                           if var1 ~= Enum.Material.Water then
                              local var0 = var1[var1]
                              arg1[var8.X][var8.Y][var0] = var0 + 1
                              if 0 < var1[var1] then
                                 var0 = var1
                              end
                           end
                        end
                        local var0 = var1[var1]
                        arg1[var8.X][var8.Y][var0] = var0 + 1
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
      if arg4 then
         if var0 ~= Enum.Material.Water then
            return var0
         end
      end
      return var0
   end
   return nil
end
