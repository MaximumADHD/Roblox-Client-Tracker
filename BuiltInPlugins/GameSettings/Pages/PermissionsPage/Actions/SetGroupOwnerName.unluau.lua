-- Generated with Unluau (https://github.com/valencefun/unluau)
local var9 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Util
var9 = var9.Action
return var9(script.Name, function(arg1)
   if typeof(arg1) == "string" then
      local var0 = false
   end
   local var19 = script
   var19 = arg1
   assert(true, var19.Name ... " expected groupOwnerName to be a string, not " ... typeof(var19))
   local var0 = {}
   var0.groupOwnerName = arg1
   return var0
end)
