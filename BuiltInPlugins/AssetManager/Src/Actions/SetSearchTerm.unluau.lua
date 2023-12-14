-- Generated with Unluau (https://github.com/valencefun/unluau)
local var42 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var42 = var42.Action
return var42(script.Name, function(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var0 = true
   local var1 = string.format("SetSearchTerm requires a string, not %s", type(arg1))
   assert()
   local var2 = {}
   var2.searchTerm = arg1
   return var2
end)
