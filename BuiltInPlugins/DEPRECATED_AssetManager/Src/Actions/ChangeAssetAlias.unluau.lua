-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var18 = true
   local var24 = string.format("ChangeAssetAlias assetId requires a string, not %s", type(arg1))
   assert()
   if type(arg2) == "string" then
      local var0 = false
   end
   local var2 = true
   local var3 = string.format("ChangeAssetAlias newAlias requires a string, not %s", type(arg2))
   assert()
   local var4 = {}
   var4.assetId = arg1
   var4.newAlias = arg2
   return var4
end)
