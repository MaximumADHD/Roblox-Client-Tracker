-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if typeof(arg1) == "table" then
      local var0 = false
   end
   local var0 = true
   local var1 = string.format("SetRecentAssets requires a table, not %s", type(arg1))
   assert()
   local var2 = {}
   var2.recentAssets = arg1
   return var2
end)
