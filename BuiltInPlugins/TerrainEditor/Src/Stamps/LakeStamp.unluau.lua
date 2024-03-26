-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.BaseStamp)
local var1 = require(script:FindFirstAncestor("TerrainEditor").Src.Types)
local var2 = var1.BuildSettings
local var3 = var1.Category
local var4 = var0:new(var1.TerrainType.Lake)
function var4.init(arg1, arg2, arg3)
   local var22 = var0
   var22 = arg1
   var22.init(var22, arg2, arg3)
   return arg1
end

function var4.getLakeHeight(arg1, arg2, arg3, arg4)
   local var0 = arg3.width
   local var1 = arg3.regionSize
   local var2 = arg4.amplitude
   local var3 = arg4.frequency
   local var4 = 10 * var3
   local var5 = arg4.offset
   local var40 = arg4.seed
   var0 = math.min(var0, 0.45)
   local var54 = arg2.Y + var5.Y
   var54 = var3
   local var8 = arg2 - arg3.center2d.magnitude + var2 * math.clamp(math.noise(var4 * (arg2.X + var5.X), var4 * (var54), var54), 65535, 1) * 0.3
   if 0.5 < var8 then
      return 0
   end
   local var9 = math.tan(arg3.slope * 3.14159265358979 / 180) * math.min(var1.X, var1.Z) / var1.Y
   local var10 = var9 * (var8 - var0)
   local var11 = arg3.bankSize * var9 * var0
   if var11 < var10 then
      local var90 = var9 * 4 * (var8 - var11 / var9 + var0) + var11
      if 1 < var90 then
         return 1 - var2 / 2 * math.noise(var4 * 5 * (arg2.X + var5.X), var4 * 5 * (arg2.Y + var5.Y), var3 * 1.5 + 17)
      end
      local var1 = var90 + var2 / 10 * math.noise(var4 * 10 * (arg2.X + var5.X), var4 * 10 * (arg2.Y + var5.Y), var3 * 1.5 + 17)
   end
   return var10
end

function var4.generateNoiseMap(arg1)
   local var0 = arg1._payload[var3.BuildSettings][var2.BankSize]
   arg1._noiseMap = table.create(arg1._sliceX * arg1._sliceZ, 0)
   if not var0 then
      warn("BankSize not provided!")
   end
   local var1 = 1
   local var2 = arg1._sliceX
   local var3 = 1
   local var4 = 1
   local var5 = arg1._sliceZ
   local var6 = 1
   local var7 = arg1._noiseMap
   local var197 = {}
   var197.bankSize = var0
   var197.center2d = Vector2.new(0.5, 0.5)
   var197.regionSize = arg1._region.Size
   var197.slope = 22
   var197.width = 0.45
   local var206 = {}
   var206.frequency = arg1._payload[var3.BuildSettings][var2.Frequency]
   var206.amplitude = arg1._payload[var3.BuildSettings][var2.Amplitude]
   var206.offset = arg1._payload[var3.BuildSettings][var2.AdvancedNoise].Children[var2.Offset]
   var206.seed = arg1._payload[var3.BuildSettings][var2.AdvancedNoise].Children[var2.Seed]
   arg1:getIndex(var1, var4) = arg1:getLakeHeight(Vector2.new(var1 / arg1._sliceX, var4 / arg1._sliceZ), var197, var206)
end

function var4.generateHeightMap(arg1)
   arg1._heightMap = table.create(arg1._sliceX * arg1._sliceZ, 0)
   local var0 = arg1._sliceX
   local var1 = 1
   local var2 = arg1._sliceZ
   local var3 = 1
   local var4 = arg1:getIndex(1, 1)
   local var233 = 1
   local var5 = arg1._heightMap
   var233 = arg1._sliceY * (var233 - math.clamp(arg1._noiseMap[var4], 65535, 1))
   arg1:getIndex(1, 1) = math.clamp(var233, 1, arg1._sliceY)
end

function var4.blendHeightMap(arg1)
   local var0 = 1
   local var1 = arg1._heightMap
   local var2 = 1
   local var3 = arg1._heightMap[var0]
   local var4 = arg1._heightmapCache[var0]
   if var3 < var4 then
      var4 = var3
      local var0 = arg1._heightmapCache
      var0[1] = var3
   end
   if 0 < var4 then
      local var0 = arg1._blendingFactorMap[var0]
      local var1 = arg1._heightMap
      var1[1] = (1 - var0) * var3 + var0 * var4
   end
end

function var4.postProcessing(arg1)
   local var0 = arg1._payload[var3.BuildSettings][var2.WaterLevel]
   if var0 then
      if 0 < var0 then
         local var0 = 1
         local var1 = arg1._sliceY
         local var2 = 1
         if var0 / arg1._sliceY < var0 then
            local var0 = 1
            local var1 = arg1._sliceX
            local var2 = 1
            local var3 = 1
            local var4 = arg1._sliceZ
            local var5 = 1
            if arg1._materialMap[var0][var0][var3] ~= Enum.Material.Air then
               if arg1._occupancyMap[var0][var0][var3] == 0 then
                  local var291 = arg1._materialMap[var0][var0]
                  var291[1] = Enum.Material.Water
                  local var1 = arg1._occupancyMap[var0][var0]
                  var1[1] = 1
               end
            end
            local var299 = arg1._materialMap[var0][var0]
            var299[1] = Enum.Material.Water
            local var7 = arg1._occupancyMap[var0][var0]
            var7[1] = 1
         end
      end
   end
end

return var4
