-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = var0.Src.Util.Generation
local var2 = require(var1.Filter)
local var3 = require(var1.Perlin)
local var4 = require(var1.ProcessPerlin)
local var5 = require(var0.Src.Types)
return function(arg1, arg2)
   return function(arg1, arg2, arg3)
      local var25 = arg1.X
      local var26 = arg1.Y
      local var27 = arg1.Z
      local var32 = Vector3.new(var25, 0, var27)
      local var34 = arg2.WaterLevel
      local var72 = var4(arg1(Vector3.new(var25 + arg1(var32, 5, 7) * 10 + arg1(var32, 6, 30) * 50, 0, var27 + arg1(var32, 9, 7) * 10 + arg1(var32, 10, 30) * 50), 2, 70))
      local var73 = var2
      var73 = var72
      local var77 = var73.Threshold(var73, 0.65, 0)
      local var99 = var34 - 0.04 + var72 * var77 * 0.025 + var4(arg1(arg1, 4, 100)) * 0.035 + var4(arg1(arg1, 3, 20)) * 0.025
      if 1 <= var77 then
         local var0 = Enum.Material.Grass
      elseif 1 - arg2 < var34 - 0.01 then
         local var0 = Enum.Material.Mud
      elseif 1 - arg2 < var34 + 0.01 then
         local var0 = Enum.Material.Ground
      else
         local var0 = Enum.Material.Grass
      end
      return Enum.Material.Slate
   end
end
