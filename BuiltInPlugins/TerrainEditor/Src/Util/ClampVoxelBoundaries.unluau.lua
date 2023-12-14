-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Resources.Constants)
return function(arg1, arg2, arg3)
   local var0 = Vector3.new(arg2, arg3 * 0.5, arg2)
   local var31 = arg1 - var0
   local var32 = arg1 + var0
   return Vector3.new(math.floor(var31.X / var0.VoxelResolution), math.floor(var31.Y / var0.VoxelResolution), math.floor(var31.Z / var0.VoxelResolution)) * var0.VoxelResolutionVector3.new(math.ceil(var32.X / var0.VoxelResolution), math.ceil(var32.Y / var0.VoxelResolution), math.ceil(var32.Z / var0.VoxelResolution)) * var0.VoxelResolution,
end
