-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   if typeof(arg1) == "string" then
      local var0 = false
   end
   assert(true, "string expected")
   return arg1:gsub("(%W)", "%%%1")
end
