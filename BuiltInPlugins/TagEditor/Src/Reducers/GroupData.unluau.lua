-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   arg1 = arg1 or {}
   if arg2.type == "SetGroupData" then
      return arg2.data
   end
   return arg1
end
