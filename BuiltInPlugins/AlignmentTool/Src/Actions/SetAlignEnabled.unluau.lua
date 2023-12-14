-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1, arg2)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   assert(true, "Expected enabled to be a boolean")
   if type(arg2) == "table" then
      if arg2 == "type" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, "Expected reason to be a table or nil")
   arg2 = arg2 or {}
   local var0 = {}
   var0.alignEnabled = arg1
   var0.disabledReason = arg2
   return var0
end)
