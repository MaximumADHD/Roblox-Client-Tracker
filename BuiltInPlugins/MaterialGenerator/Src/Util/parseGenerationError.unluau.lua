-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Enum.GenerationErrorType)
local var2 = require(var0.Src.Types)
return function(arg1)
   if type(arg1) == "string" then
      if string.find(arg1, "got network error status: 429") then
         return var1.TooManyRequests
      end
      if string.find(arg1, "got network error status: 500") then
         return var1.ServerError500
      end
      if string.find(arg1, "got network error status: 504") then
         return var1.ServerError504
      end
      if string.find(arg1, "TextFullyFiltered") then
         return var1.TextFullyFiltered
      end
      if string.find(arg1, "AccountingFailed") then
         if string.find(arg1, "Decrementing account failed") then
            return var1.AccountingFailedDecrement
         end
      end
      local var0 = var1
      var0 = arg1
      return var0.CustomMessagevar0,
   end
   return var1.Unknownnil,
end
