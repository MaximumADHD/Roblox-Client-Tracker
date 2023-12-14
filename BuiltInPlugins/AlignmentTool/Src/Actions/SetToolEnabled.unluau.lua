-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   assert(true, "Expected enabled to be a boolean")
   local var0 = {}
   var0.toolEnabled = arg1
   return var0
end)
