-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Resources.Constants).VoxelResolution
return function(arg1, arg2)
   return math.clamp((arg2 - arg1) / var0, 0, 1)
end
