-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   return arg1:gsub(".", function(arg1)
      if arg1 == "<" then
         return "&lt;"
      end
      if arg1 == ">" then
         return "&gt;"
      end
      if arg1 == "\"" then
         return "&quot;"
      end
      if arg1 == "\'" then
         return "&apos;"
      end
      if arg1 == "&" then
         return "&amp;"
      end
      return arg1
   end)
end
