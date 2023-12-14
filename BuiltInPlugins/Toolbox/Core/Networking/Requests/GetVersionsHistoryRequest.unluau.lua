-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("HttpService")
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.SetVersionHistoryData)
local var4 = require(var0.Core.Flags.getFFlagToolboxAddPackageVersionDescriptions)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg2(var4:JSONDecode(arg1.responseBody).data)
      arg1:dispatch()
   end
end
