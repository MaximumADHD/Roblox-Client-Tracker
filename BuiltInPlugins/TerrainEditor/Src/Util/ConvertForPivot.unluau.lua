-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Types).PivotPosition
return function(arg1, arg2, arg3)
   local var0 = arg3 / 2
   if arg1 == "Vector3" then
      return Vector3.new(arg2.X, arg2.Y - var0, arg2.Z)
   end
   if arg1 == "Vector3" then
      return Vector3.new(arg2.X, arg2.Y + var0, arg2.Z)
   end
   return arg2
end
