-- Generated with Unluau (https://github.com/valencefun/unluau)
local var86 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var86 = var86.Action
return var86(script.Name, function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected axes to be a table")
   if type(arg1.X) == "boolean" then
      local var0 = false
   end
   assert(true, "Expected X to be a boolean")
   if type(arg1.Y) == "boolean" then
      local var0 = false
   end
   assert(true, "Expected Y to be a boolean")
   if type(arg1.Z) == "boolean" then
      local var0 = false
   end
   assert(true, "Expected Z to be a boolean")
   local var0 = {}
   local var1 = {}
   var1.X = arg1.X
   var1.Y = arg1.Y
   var1.Z = arg1.Z
   var0.enabledAxes = var1
   return var0
end)
