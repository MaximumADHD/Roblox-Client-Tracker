-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseStamp)
local var2 = require(var0.Src.Resources.Constants).VoxelResolution
local var3 = require(var0.Src.Types)
local var4 = var3.BuildSettings
local var5 = var3.Category
local var6 = var0.Src.Util.Generation
local var7 = require(var6.GetBlendingFactorMap)
local var8 = require(var6.GetGaussianHillHeight)
local var9 = var1:new(var3.TerrainType.Mountain)
function var9.init(arg1, arg2, arg3)
   local var765 = var1
   var765 = arg1
   var765.init(var765, arg2, arg3)
   return arg1
end

function var9.getHeightGradient(arg1, arg2, arg3, arg4)
   local var805 = arg4[arg1:getIndex(arg2, math.clamp(arg3 - 1, 1, arg1._sliceZ))]
   local var807 = var2
   var807 = (arg4[arg1:getIndex(arg2, arg3)] - arg4[arg1:getIndex(math.clamp(arg2 - 1, 1, arg1._sliceX), arg3)]) / var2
   var805 = (arg4[arg1:getIndex(arg2, arg3)] - var805) / var807
   return Vector2.new(var807, var805)
end

function var9.addErosion(arg1)
   local var0 = arg1._payload[var5.BuildSettings][var4.AdvancedNoise].Children[var4.Offset]
   local var1 = arg1._payload[var5.BuildSettings][var4.AdvancedNoise].Children[var4.Seed]
   local var849 = 0.003
   local var850 = 0.008
   local var851 = 0.016
   local var852 = 0.04
   local var854 = 0.1
   local var855 = 0.05
   local var856 = 0.02
   local var857 = 0.0125
   local var10 = Instance.new("Noise")
   var10.NoiseType = Enum.NoiseType.SimplexGabor
   var10.Seed = var1
   local var866 = arg1._sliceX * arg1._sliceZ
   local var867 = 0
   local var13 = 1
   local var14 = 4
   local var15 = 1
   local var871 = 1
   local var873 = arg1._noiseMap
   local var874 = 1
   {}[1] = arg1._noiseMap[var871]
   local var19 = 1
   local var20 = arg1._sliceX
   local var21 = 1
   local var22 = 1
   local var23 = arg1._sliceZ
   local var24 = 1
   local var887 = var19 * var2 + var2 / 2
   var887 = var1
   local var894 = var22 * var2 + var2 / 2
   local var895 = var0.Y
   var894 = var22
   var895 = {}
   local var28 = 2000 * arg1:getHeightGradient(var19, var894, var895)
   local var29 = arg1:getIndex(var19, var22)
   arg1:getIndex(var19, var22) = arg1._noiseMap[var29] + {}[var13] * arg1._payload[var5.BuildSettings][var4.NoiseStrength] * var10:SampleDirectional(Vector3.new(var887 + var0.X, var887, var894 + var895) * {}[var13] * arg1._payload[var5.BuildSettings][var4.NoiseScale] * 10, Vector3.new(var28.Y, 0, var28.X))
end

function var9.generateNoiseMap(arg1)
   local var0 = arg1._payload[var5.BuildSettings][var4.CraterDepth]
   local var1 = arg1._payload[var5.BuildSettings][var4.CraterRadius]
   arg1._noiseMap = table.create(arg1._sliceX * arg1._sliceZ, 0)
   arg1._fillBottomPositions = table.create(arg1._sliceX * arg1._sliceZ, false)
   if var0 then
      if not var1 then
         warn("Missing parameters!")
      end
   end
   warn("Missing parameters!")
   local var2 = {}
   var2.center2d = Vector2.new(0.5, 0.5)
   var2.hillWidth = 0.2
   var2.hillHeight = 1 + var1 * 0.5
   local var981 = 1
   local var982 = arg1._sliceX
   local var983 = 1
   local var984 = 1
   local var985 = arg1._sliceZ
   local var986 = 1
   local var994 = arg1._sliceZ
   var994 = var2
   local var1001 = arg1._noiseMap
   arg1:getIndex(var981, var984) = var8(Vector2.new(var981 / arg1._sliceX, var984 / var994), var994, nil)
   if 0 < arg1._payload[var5.BuildSettings][var4.NoiseScale] then
      if 0 < arg1._payload[var5.BuildSettings][var4.NoiseStrength] then
         arg1:addErosion()
      end
   end
   if var1 <= 0 then
   end
   local var11 = Vector3.new(0.5, 0, 0.5)
   local var12 = 0
   local var1012 = 1
   local var1013 = arg1._sliceX
   local var1014 = 1
   local var1015 = 1
   local var1016 = arg1._sliceZ
   local var1017 = 1
   if 1 < arg1._noiseMap[arg1:getIndex(var1012, var1015)] then
      local var0 = Vector3.new(var1012 / arg1._sliceX, 0, var1015 / arg1._sliceZ) - var11.magnitude
      if var12 < var0 then
         var12 = var0
      end
   end
   local var19 = 1
   local var20 = arg1._sliceX
   local var21 = 1
   local var22 = 1
   local var23 = arg1._sliceZ
   local var24 = 1
   local var25 = Vector3.new(var19 / arg1._sliceX, 0, var22 / arg1._sliceZ) - var11.magnitude
   if var25 < var12 then
      local var1057 = (1 - (1 - (var12 - var25) / var12) ^ 4) * var0
      local var1 = 1 - var1057 / 2
      var1057 = var19
      local var2 = arg1:getIndex(var1057, var22)
      local var3 = arg1._noiseMap[var2]
      if var3 > 1 then
         if var1 < var3 then
            local var1066 = arg1._noiseMap
            arg1:getIndex(var1057, var22) = var1
            local var1 = arg1._fillBottomPositions
            arg1:getIndex(var1057, var22) = true
         else
            local var0 = arg1._noiseMap
            arg1:getIndex(var1057, var22) = (var3 + var1) / 2
         end
      end
      local var1072 = arg1._noiseMap
      arg1:getIndex(var1057, var22) = var1
      local var1073 = arg1._fillBottomPositions
      arg1:getIndex(var1057, var22) = true
      local var6 = arg1._noiseMap
      arg1:getIndex(var1057, var22) = (var3 + var1) / 2
   end
end

function var9.generateHeightMap(arg1)
   arg1._heightMap = table.create(arg1._sliceX * arg1._sliceZ, 0)
   local var0 = arg1._sliceX
   local var1 = 1
   local var2 = arg1._sliceZ
   local var3 = 1
   local var4 = arg1:getIndex(1, 1)
   local var5 = arg1._heightMap
   arg1:getIndex(1, 1) = math.clamp(arg1._sliceY * math.clamp(arg1._noiseMap[var4], 65535, 1), 0, arg1._sliceY)
end

function var9.updateBlendingFactorMap(arg1, arg2)
   arg1._blendingFactorMap = table.create(arg1._sliceX * arg1._sliceZ, 0)
   if 0 < arg2 then
      local var0 = {}
      var0.CurveWidth = 1
      var0.Distance = (1 - arg2) * 0.9
      var0.PreserveDistance = 0.5 - arg2 / 5
      var0.PreserveRatio = 0
      var0.RoundCorner = 1
      arg1._blendingFactorMap = var7(Vector2.new(arg1._sliceX, arg1._sliceZ), var0)
   end
end

return var9
