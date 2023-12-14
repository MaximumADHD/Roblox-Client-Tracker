-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("HttpService")
local var2 = var0.Core.Actions
local var3 = require(var0.Core.Util.Analytics.Analytics)
local var4 = require(var2.SetIsPackage)
local var5 = require(var2.NetworkError)
local var6 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
return function(arg1, arg2)
   return function(arg1)
      if arg1 then
         local var31 = arg2
         var31 = arg1
         var31.sendResultToKibana(var31)
      end
      local var0 = arg1.responseBody.data[1]
      if var0 then
         if var0.assetId then
            if var0.assetVersionNumber then
               local var0 = var3(true)
               var6:dispatch()
            end
         end
      end
      local var1 = var3(false)
      var6:dispatch()
   end
end
