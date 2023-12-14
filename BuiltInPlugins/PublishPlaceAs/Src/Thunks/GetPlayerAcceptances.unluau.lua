-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Actions.SetPlayerAcceptance)
return function(arg1)
   return function(arg1)
      if next(arg1.responseBody) == "next" then
         local var0 = false
      end
      local var0 = var0(true)
      arg1:dispatch()
   end
end
