-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg2.type == "SetRenaming" then
      if arg2.renaming then
         return arg2.tag
      end
      return nil
   end
   if arg2.type == "SetRenamingGroup" then
      return nil
   end
   return arg1
end
