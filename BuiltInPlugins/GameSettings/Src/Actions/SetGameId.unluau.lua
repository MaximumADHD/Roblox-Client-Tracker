-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if typeof(arg1) == "number" then
      local var0 = false
   end
   local var0 = true
   local var21 = " requires gameId to be a number, not %s"
   var21 = arg1
   local var1 = string.format(script.Name ... var21, typeof(var21))
   assert()
   local var2 = {}
   var2.gameId = arg1
   return var2
end)
