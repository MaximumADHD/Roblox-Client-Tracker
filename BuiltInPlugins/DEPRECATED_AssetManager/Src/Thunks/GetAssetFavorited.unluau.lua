-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Actions.SetAssetFavorited)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg1.responseBody
      if var0 == "null" then
         local var0 = arg2(arg3, true)
         arg1:dispatch()
      end
      local var1 = arg2(arg3, false)
      arg1:dispatch()
   end
end
