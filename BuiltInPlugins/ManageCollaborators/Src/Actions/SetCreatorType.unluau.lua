-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if typeof(arg1) == "EnumItem" then
      if arg1.EnumType ~= Enum.CreatorType then
         local var0 = false
      end
      local var0 = true
   end
   local var21 = script
   var21 = arg1
   assert(false, var21.Name ... " requires creatorType to be an Enum.CreatorType, not " ... typeof(var21))
   local var0 = {}
   var0.creatorType = arg1
   return var0
end)
