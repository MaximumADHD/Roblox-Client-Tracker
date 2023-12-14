-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.GetFavorited)
local var2 = require(var0.Core.Actions.NetworkError)
local function fun0(arg1)
   if arg1.responseBody == "null" then
      return false
   end
   return true
end

return function(arg1, arg2, arg3)
   return function(arg1)
      if arg1.responseBody == "null" then
         return false
      end
      return true
   end
end
