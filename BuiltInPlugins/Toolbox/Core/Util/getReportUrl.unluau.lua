-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ContentProvider")
local var1 = game:GetService("HttpService")
local var2 = script.Parent.Parent.Parent.Core.Util
local var3 = require(var2.AssetConfigConstants)
local var4 = require(var2.EnumConvert)
return function(arg1, arg2)
   local var35 = var4
   var35 = arg2
   local var1 = var35.convertAssetTypeValueToEnum(var35)
   return string.format("%s/abusereport/asset?id=%s", var0.BaseUrl, var1:urlEncode(arg1))
end
