-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Core.Actions
local var1 = require(var0.CreateFavorite)
local var2 = require(var0.DeleteFavorite)
local var3 = require(var0.NetworkError)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = arg1(arg2)
      arg4:dispatch()
   end
end
