-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Selectors.GetUserCollaborators)
local var2 = require(var0.Src.Selectors.GetGroupCollaborators)
return function(arg1)
   if var1(arg1) > 0 then
      local var0 = true
      if var54 > 0 then
         local var0 = true
         if var2(arg1) > 0 then
            if var59 > 0 then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return true
end
