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
      local var29 = arg2.WaterLevel
      local var45 = var4(arg1(arg1, 19, 20))
      var45 = Vector3.new(var4(arg1(arg1, 17, 20)) * 20, 0, arg1.Z + var45 * 20)
      local var59 = var2.RidgeFlipped(var4(arg1(var45, 2, 200))) ^ 0.5
      local var66 = var4(arg1(arg1, 3, 60))
      local var83 = 0.48 + var66 * 0.05 + (0.05 + var66 * 0.1 + var4(arg1(arg1, 4, 25)) * 0.125) * var59
      local var88 = (1 - arg2) * 0.9 + var59 * 0.1
      if var88 < var29 - 0.015 then
         local var0 = Enum.Material.Mud
      elseif var88 < var29 then
         local var0 = Enum.Material.Ground
      else
         local var0 = Enum.Material.Grass
      end
      return var94var95,Enum.Material.Slate,
   end
end
