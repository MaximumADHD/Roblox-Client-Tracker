-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("HttpService")
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Packages.Cryo)
local var4 = require(var0.Core.Actions.GetAssetContentAttributionInfo)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg2:JSONDecode(arg1.responseBody)
      local var33 = var0.name or var3.None
      local var37 = var0.rootPlaceId or var3.None
      local var1 = var2(var4, arg1)
      var1:dispatch()
   end
end
