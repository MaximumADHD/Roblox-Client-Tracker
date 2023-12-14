-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if type(arg1) == "number" then
      local var0 = type(arg1)
      if var0 == "nil" then
         local var0 = false
      end
      local var1 = true
   end
   local var0 = string.format("SetEditDevProductId requires a number or nil, not %s", type(arg1))
   assert()
   local var1 = {}
   var1.editDevProductId = arg1
   return var1
end)
