-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   if string.sub(arg1, 1, 13) == "rbxassetid://" then
      arg1 = string.sub(arg1, 14)
   end
   local var0 = tonumber(arg1)
   if arg1 == "" then
      local var0 = false
      if var0 == "string" then
         if 9.22337203685478E+18 >= var0 then
            local var0 = false
         end
         local var0 = true
      end
   end
   return true
end
