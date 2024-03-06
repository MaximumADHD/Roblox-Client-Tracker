-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1, arg2)
   if type(arg1) == "number" then
      local var0 = false
   end
   local var18 = true
   local var24 = string.format("SetRootTreeViewInstance requires assetId to be a number, not %s", type(arg1))
   assert()
   if typeof(arg2) == "Instance" then
      local var0 = false
   end
   local var2 = true
   local var3 = string.format("SetRootTreeViewInstance requires rootTreeViewInstance a String, not %s", type(arg2))
   assert()
   local var4 = {}
   var4.assetId = arg1
   var4.rootTreeViewInstance = arg2
   return var4
end)
