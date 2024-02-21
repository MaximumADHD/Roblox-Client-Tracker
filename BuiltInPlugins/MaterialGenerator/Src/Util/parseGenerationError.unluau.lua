-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("MaterialGenerator").Src.Enum.GenerationErrorType)
return function(arg1)
   if type(arg1) == "string" then
      if string.find(arg1, "got network error status: 429") then
         return var0.TooManyRequests
      end
      if string.find(arg1, "got network error status: 500") then
         return var0.ServerError500
      end
      if string.find(arg1, "got network error status: 504") then
         return var0.ServerError504
      end
      if string.find(arg1, "TextFullyFiltered") then
         return var0.TextFullyFiltered
      end
      if string.find(arg1, "AccountingFailed") then
         if string.find(arg1, "Decrementing account failed") then
            return var0.AccountingFailedDecrement
         end
      end
      local var0 = var0
      var0 = arg1
      return var0.CustomMessagevar0,
   end
   return var0.Unknownnil,
end
