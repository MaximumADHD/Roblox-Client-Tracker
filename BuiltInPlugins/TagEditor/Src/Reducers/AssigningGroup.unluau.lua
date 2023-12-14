-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg2.type == "SetAssigningGroup" then
      return arg2.group
   end
   if arg2.type == "SetTagData" then
      if arg2.type == "SetGroupData" then
         return nil
      end
   end
   return arg1
end
