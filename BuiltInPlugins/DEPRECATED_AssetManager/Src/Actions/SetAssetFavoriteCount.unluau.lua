-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1, arg2)
   if type(arg1) == "number" then
      local var0 = false
   end
   local var24 = string.format("SetAssetFavoriteCount requires assetId to be a number, not %s", type(arg1))
   assert()
   if type(arg2) == "string" then
      local var0 = false
   end
   local var1 = true
   local var2 = string.format("SetAssetFavoriteCount requires favoriteCount to be a string, not %s", type(arg2))
   assert()
   local var3 = {}
   var3.assetId = arg1
   var3.favoriteCount = arg2
   return var3
end)
