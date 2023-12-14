-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg2.type == "SetMinimizedSettingsPane" then
      return arg2.minimized
   end
   if arg2.type == "SetAssigningGroup" then
      if arg2.group == "type" then
         return true
      end
   end
   return arg1
end
