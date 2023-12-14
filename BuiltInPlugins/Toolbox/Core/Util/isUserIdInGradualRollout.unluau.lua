-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if typeof(arg1) == "number" then
      local var0 = false
   end
   assert(true, "userId must be a number")
   if arg1 % 1 == 0 then
      local var0 = false
   end
   assert(true, "userId must be an integer")
   if typeof(arg2) == "number" then
      local var0 = false
   end
   assert(true, "rolloutPercentage must be a number")
   if arg2 % 1 == 0 then
      local var0 = false
   end
   assert(true, "rolloutPercentage must be an integer")
   if arg2 >= 0 then
      local var0 = false
   end
   assert(true, "rolloutPercentage must be >= 0")
   if 100 >= arg2 then
      local var0 = false
   end
   assert(true, "rolloutPercentage must be <= 100")
   if arg2 > arg1 % 100 then
      local var0 = false
   end
   return true
end
