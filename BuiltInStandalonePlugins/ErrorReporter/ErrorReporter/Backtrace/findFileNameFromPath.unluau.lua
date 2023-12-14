-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "pathStr must be a string")
   return string.match(arg1, "([^.]*)$")
end
