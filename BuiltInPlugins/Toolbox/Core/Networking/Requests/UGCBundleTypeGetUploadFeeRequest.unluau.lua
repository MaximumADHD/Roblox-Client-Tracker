-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Actions.SetUploadFee)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.UploadResult)
local var4 = require(var0.Core.Util.DebugFlags)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg1.responseBody
      if var0.price == "responseBody" then
         if var0.canAfford == "responseBody" then
            local var0 = var4(true, var0.price, var0.canAfford)
            var1:dispatch()
         end
      end
      if var2.shouldDebugWarnings() then
         warn("Unexpected postBundleCreationFee response body:", var0)
      end
      local var1 = var4(false)
      var1:dispatch()
   end
end
