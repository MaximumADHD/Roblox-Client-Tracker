-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var0 = arg1
   if var0 < 9 then
      return false
   end
   if 12 < var0 then
      return false
   end
   local var13 = "[^"
   local var15 = "]"
   if not string.find(arg1, var13 ... string.sub(arg1, 1, 1) ... var15) then
      return false
   end
   local var2 = 0
   local var3 = 1
   var13 = arg1
   var15 = var3
   var3 = string.find(var13, "0", var15, true)
   while var3 do
      local var0 = var2 + 1
      local var1 = var3 + 1
   end
   if 0.5 >= var2 / var0 then
      local var0 = false
   end
   return true
end
