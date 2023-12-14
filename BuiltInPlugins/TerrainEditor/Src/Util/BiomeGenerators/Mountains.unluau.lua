-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = var0.Src.Util.Generation
local var2 = require(var1.Filter)
local var3 = require(var1.Fractalize)
local var4 = require(var1.Perlin)
local var5 = require(var1.ProcessPerlin)
local var6 = require(var0.Src.Types)
return function(arg1, arg2)
   local function var0(arg1, arg2)
      return var2.Ridge(var5(arg1(arg1, 100 + arg2, 1 / arg2 * 160)))
   end
   
   return function(arg1, arg2, arg3)
      local var43 = arg1.X
      local var45 = arg1.Z
      local var47 = arg2.WaterLevel
      local var65 = var5(arg1(arg1, 19, 20)) * 20
      var65 = Vector3.new(var43 + var5(arg1(arg1, 17, 20)) * 20, 0, var45 + var65)
      local var85 = {}
      var85.Samples = 8
      var85.Scale = 0.65
      local var93 = -0.4 + var3(var0, Vector3.new(var43, arg1.Y / 20, var45), var85) * 1.2 + var2.RidgeFlipped(var5(arg1(var65, 2, 200))) * 0.2
      if arg2 < 0.275 then
         local var0 = Enum.Material.Snow
      elseif arg2 < 0.35 then
         local var0 = Enum.Material.Rock
      elseif arg2 < 0.4 then
         local var0 = Enum.Material.Ground
      elseif 1 - arg2 < var47 then
         local var0 = Enum.Material.Rock
      elseif 1 - arg2 < var47 + 0.01 then
         local var0 = Enum.Material.Mud
      elseif 1 - arg2 < var47 + 0.015 then
         local var0 = Enum.Material.Ground
      else
         local var0 = Enum.Material.Grass
      end
      return Enum.Material.Rock
   end
end
