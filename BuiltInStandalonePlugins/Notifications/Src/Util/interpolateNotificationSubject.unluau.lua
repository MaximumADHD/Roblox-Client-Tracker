-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg1 then
      if arg2 then
         return arg1:gsub("{(.-)}", arg2)
      end
      return arg1
   end
   return ""
end
