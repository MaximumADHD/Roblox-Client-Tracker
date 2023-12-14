-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.SetCodeSummaryForAsset)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1.responseBody
      if var0 then
         if var0.codeSummary then
            local var0 = var0.codeSummary
            if var0 == "" then
               local var0 = arg2(var3, var0.codeSummary)
               arg1:dispatch()
            end
         end
      end
   end
end
