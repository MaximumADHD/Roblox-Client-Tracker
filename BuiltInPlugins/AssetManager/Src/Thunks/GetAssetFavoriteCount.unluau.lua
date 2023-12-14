-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Actions.SetAssetFavoriteCount)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1.responseBody
      if var0 then
         local var0 = arg2(var0, var0)
         arg1:dispatch()
      end
      local var1 = arg2(var0, 0)
      arg1:dispatch()
   end
end
