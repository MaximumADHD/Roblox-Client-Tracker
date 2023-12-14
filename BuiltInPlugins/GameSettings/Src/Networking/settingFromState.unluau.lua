-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg1.Changed[arg2] == "Changed" then
      return arg1.Changed[arg2]
   end
   return arg1.Current[arg2]
end
