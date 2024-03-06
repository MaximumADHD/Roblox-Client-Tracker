-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, ...)
   local var0 = table.clone(arg1)
   local var1 = {}
   local var11 = ...
   table.sort(var0, function(arg1, arg2)
      local var0 = nil
      local var1 = nil
      local var2 = var19(arg1)
      local var3 = var22(arg2)
      if var2 ~= var3 then
         if typeof(var2) == "boolean" then
            if typeof(var3) == "boolean" then
               local var0 = false
            end
            assert(true, "keyA == bool, keyB is not")
            return var3
         end
         if typeof(var2) ~= typeof(var3) then
            local var0 = false
         end
         assert(true, "typeof(keyA) ~= typeof(keyB)")
         if var3 > var2 then
            local var0 = false
         end
         return true
      end
      return false
   end)
   return var0
end
