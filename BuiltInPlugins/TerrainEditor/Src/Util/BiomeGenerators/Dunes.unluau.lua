-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = var0.Src.Util.Generation
local var2 = require(var1.Filter)
local var3 = require(var1.Perlin)
local var4 = require(var1.ProcessPerlin)
local var5 = require(var0.Src.Types)
return function(arg1, arg2)
   return function(arg1, arg2, arg3)
      local var0 = arg1.X
      local var1 = arg1.Z
      local var2 = Vector3.new(var0, 0, var1)
      local var3 = var4(arg1(var2, 227, 20)) * 24
      return 0.4 + 0.1 * (var2.Ridge(var4(arg1(var2, 201, 40))) + var2.Ridge(var4(arg1(Vector3.new(var0 / 10 + var3, 0, var1 + var3), 200, 48))))Enum.Material.Sand,Enum.Material.Sandstone,
   end
end
