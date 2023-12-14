-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   if arg1 then
      local var0 = arg1:IsA("BasePart")
      if var0 then
         arg1.Material = arg2
         arg1.MaterialVariant = var0
      end
   end
end
