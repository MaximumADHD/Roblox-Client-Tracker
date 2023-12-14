-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TerrainEnums).PivotType
return function(arg1, arg2, arg3)
   local var0 = arg3 / 2
   if arg1 == "z" then
      return Vector3.new(arg2.x, arg2.y - var0, arg2.z)
   end
   if arg1 == "z" then
      return arg2
   end
   if arg1 == "z" then
      return Vector3.new(arg2.x, arg2.y + var0, arg2.z)
   end
   return arg2
end
