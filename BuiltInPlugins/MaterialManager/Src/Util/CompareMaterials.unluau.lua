-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Types)
return function(arg1, arg2)
   if not arg1 then
      if not arg2 then
         return true
      end
   end
   if arg1 then
      if not arg2 then
         return false
      end
   end
   return false
   if arg1.MaterialVariant then
      if arg2.MaterialVariant then
         if arg1.MaterialVariant ~= arg2.MaterialVariant then
            local var0 = false
         end
         return true
      end
   end
   if arg1.MaterialVariant then
      if arg2.MaterialVariant then
         if not arg1.MaterialVariant then
            if arg2.MaterialVariant then
               return false
            end
         end
      end
   end
   if not arg1.MaterialVariant then
      if arg2.MaterialVariant then
         return false
      end
   end
   if arg1.Material ~= arg2.Material then
      local var0 = false
   end
   return true
end
