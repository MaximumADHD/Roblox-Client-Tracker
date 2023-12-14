-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = math.floor(arg1 % 60)
   if arg2 == 60 then
      if var0 == 0 then
         var0 = math.max(var0, arg2)
      end
   end
   return string.format("%d:%02d", math.floor(arg1 / 60), var0)
end
