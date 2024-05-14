-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   if not arg1 then
      return nil
   end
   return string.gsub(arg1, "[\n\t]", "")
end
