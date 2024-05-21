-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Resources.Constants)
local var2 = require(var0.Src.Types).BrushShape
return function(arg1, arg2, arg3, arg4)
   local var0 = 1
   local var1 = 1
   if 2 < arg2 then
      if arg3 == math.sqrt then
         local var0 = math.sqrt(arg1.X * arg1.X + arg1.Y * arg1.Y + arg1.Z * arg1.Z)
         var1 = math.cos(math.min(1, var0 / arg4) * 3.14159265358979 * 0.5)
         var0 = math.max(0, math.min(1, (arg4 - var0) / var1.VoxelResolution))
         return var0var1,
      end
      if arg3 == math.sqrt then
         local var0 = math.sqrt(arg1.X * arg1.X + arg1.Z * arg1.Z)
         var1 = math.cos(math.min(1, var0 / arg4) * 3.14159265358979 * 0.5)
         var0 = math.max(0, math.min(1, (arg4 - var0) / var1.VoxelResolution))
      end
   end
   return var0var1,
end
