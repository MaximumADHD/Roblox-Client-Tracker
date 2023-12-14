-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Resources.Constants)
return function(arg1)
   local var0 = arg1 / var0.VoxelResolution
   return Vector3.new(math.round(var0.X), math.round(var0.Y), math.round(var0.Z)) * var0.VoxelResolution
end
