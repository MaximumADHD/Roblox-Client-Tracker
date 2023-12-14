-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = var0.Src.Util.Generation
local var2 = require(var1.Perlin)
local var3 = require(var1.ProcessPerlin)
local var4 = require(var0.Src.Types)
return function(arg1, arg2)
   return function(arg1, arg2, arg3)
      local var31 = 0.36 + var3(arg1(arg1, 2, 50)) * 0.08
      if 1 - arg2 < 0.44 then
         local var0 = Enum.Material.Slate
      else
         local var0 = Enum.Material.Sand
      end
      return Enum.Material.Rock
   end
end
