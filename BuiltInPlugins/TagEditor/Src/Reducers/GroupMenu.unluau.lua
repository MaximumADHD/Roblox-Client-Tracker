-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg2.type == "OpenGroupMenu" then
      return arg2.group
   end
   if arg2.type == "OpenTagMenu" then
      return nil
   end
   if arg2.type == "MoveTagSelectionUpOrDown" then
      return nil
   end
   return arg1
end
