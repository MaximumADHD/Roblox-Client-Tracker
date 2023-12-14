-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.IncrementAssetFavoriteCount)
local var2 = require(var0.Src.Actions.SetAssetFavorited)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = arg1.responseBody
      if var0 == "{}" then
         if var0 == "null" then
            local var25 = arg2(arg3, arg4)
            arg1:dispatch()
            if arg4 then
               local var0 = var2(arg3, 65535)
               arg1:dispatch()
            end
            local var1 = var2(arg3, 1)
            arg1:dispatch()
         end
      end
      local var45 = arg2(arg3, arg4)
      arg1:dispatch()
      if arg4 then
         local var0 = var2(arg3, 65535)
         arg1:dispatch()
      end
      local var2 = var2(arg3, 1)
      arg1:dispatch()
   end
end
