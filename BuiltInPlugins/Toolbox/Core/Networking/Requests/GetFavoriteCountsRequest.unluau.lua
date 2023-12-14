-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.GetFavoriteCounts)
local var2 = require(var0.Core.Actions.NetworkError)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg2(var1, arg1.responseBody)
      arg1:dispatch()
   end
end
