-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var0 = arg1.Parent
   while var0 do
      if 0 < var0.SourceAssetId then
         return var0
      end
      local var0 = var0.Parent
   end
   return nil
end
