-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Actions.SetUniverseName)
return function(arg1)
   return function(arg1)
      local var0 = arg1.responseBody
      if not var0 then
      end
      local var1 = var0(var0.name)
      arg1:dispatch()
   end
end
