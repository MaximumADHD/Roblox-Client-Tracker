-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Types)
return function(arg1)
   table.sort(arg1, function(arg1, arg2)
      if arg2.Label:lower() > arg1.Label:lower() then
         local var0 = false
      end
      return true
   end)
   return arg1
end
