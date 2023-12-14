-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = var0.Src.Util.Generation
local var2 = require(var1.Filter)
local var3 = require(var1.NoisySeed)
local var4 = require(var1.Perlin)
local var5 = require(var1.ProcessPerlin)
local var6 = require(var0.Src.Types)
return function(arg1, arg2, arg3)
   local var0 = { Enum.Material.Rock, Enum.Material.Mud, Enum.Material.Sand, Enum.Material.Sand, Enum.Material.Sandstone, Enum.Material.Sandstone, Enum.Material.Sandstone, Enum.Material.Sandstone }
   local var1 = Enum.Material.Sandstone
   local var2 = Enum.Material.Sandstone
   return function(arg1, arg2, arg3)
      local var40 = arg1.X
      local var41 = arg1.Y
      local var42 = arg1.Z
      local var47 = Vector3.new(var40, 0, var42)
      local var59 = var2.RidgeFlipped(var5(arg1(var47, 2, 200)))
      local var73 = arg1(var47, 9, 20) * 20
      var73 = Vector3.new(var40 + arg1(var47, 5, 20) * 20, 0, var42 + var73)
      local var85 = var2.RidgeFlipped(var5(arg1(var73, 2, 200)))
      local var86 = var2
      var86 = var85
      local var90 = var86.Threshold(var86, 0, 0.05)
      local var91 = var2
      var91 = var85
      local var96 = var2
      var96 = var59
      local var101 = var2
      var101 = var85
      local var120 = var2
      var120 = var85
      local var127 = var2
      var127 = var85
      local var136 = var2
      var136 = var85
      local var145 = var2
      var145 = var85
      local var152 = var2
      var152 = var85
      local var160 = 0.42 + var5(arg1(arg1, 2, 70)) * 0.05 + var59 * 0.05 + var90 * 0.04 + var120.Threshold(var120, 0.05, 0) * 0.08 + var127.Threshold(var127, 0.05, 0.075) * 0.04 + var91.Threshold(var91, 0.125, 0) * 0.01 + var136.Threshold(var136, 0.0575, 0.2725) * 0.01 + var96.Threshold(var96, 0.33, 0.12) * 0.06 + var145.Threshold(var145, 0.45, 0) * 0.14 + var152.Threshold(var152, 0.45, 0.04) * 0.025 + var101.Threshold(var101, 0.49, 0) * 0.02
      if 1 - arg2 < arg3.WaterLevel + 0.015 then
         local var0 = Enum.Material.Sand
      elseif 0 < var90 then
         if var90 < 1 then
            local var0 = Enum.Material.Sand
         else
            local var0 = Enum.Material.Sandstone
         end
      else
         local var0 = Enum.Material.Sandstone
      end
      return var0[math.ceil((1 - arg2(Vector3.new(1, var174, 2))) * 10)]
   end
end
