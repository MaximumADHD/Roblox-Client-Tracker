-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetMyGroups)
local var2 = require(var0.Src.Actions.NetworkError)
local var3 = require(var0.Packages.Framework).Util.sendResultToKibana
local var4 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
return function(arg1)
   return function(arg1)
      if arg1 then
         var4(arg1)
      end
      local var0 = var1(arg1.responseBody.data)
      var3:dispatch()
   end
end
