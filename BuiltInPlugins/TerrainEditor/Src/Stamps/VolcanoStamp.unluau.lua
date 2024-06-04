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
   local var817 = var1
   var817 = arg1
   var817.init(var817, arg2, arg3)
   return arg1
end

function var9.getHeightGradient(arg1, arg2, arg3, arg4)
   local var857 = arg4[arg1:getIndex(arg2, math.clamp(arg3 - 1, 1, arg1._sliceZ))]
   local var859 = var2
   var859 = (arg4[arg1:getIndex(arg2, arg3)] - arg4[arg1:getIndex(math.clamp(arg2 - 1, 1, arg1._sliceX), arg3)]) / var2
   var857 = (arg4[arg1:getIndex(arg2, arg3)] - var857) / var859
   return Vector2.new(var859, var857)
end

function var9.addErosion(arg1)
   local var0 = arg1._payload[var5.BuildSettings][var4.AdvancedNoise].Children[var4.Offset]
   local var1 = arg1._payload[var5.BuildSettings][var4.AdvancedNoise].Children[var4.Seed]
   local var901 = 0.003
   local var902 = 0.008
   local var903 = 0.016
   local var904 = 0.04
   local var906 = 0.1
   local var907 = 0.05
   local var908 = 0.02
   local var909 = 0.0125
   local var10 = Instance.new("Noise")
   var10.NoiseType = Enum.NoiseType.SimplexGabor
   var10.Seed = var1
   local var918 = arg1._sliceX * arg1._sliceZ
   local var919 = 0
   local var13 = 1
   local var14 = 4
   local var15 = 1
   local var923 = 1
   local var925 = arg1._noiseMap
   local var926 = 1
   {}[1] = arg1._noiseMap[var923]
   local var19 = 1
   local var20 = arg1._sliceX
   local var21 = 1
   local var22 = 1
   local var23 = arg1._sliceZ
   local var24 = 1
   local var939 = var19 * var2 + var2 / 2
   var939 = var1
   local var946 = var22 * var2 + var2 / 2
   local var947 = var0.Y
   var946 = var22
   var947 = {}
   local var28 = 2000 * arg1:getHeightGradient(var19, var946, var947)
   local var29 = arg1:getIndex(var19, var22)
   arg1:getIndex(var19, var22) = arg1._noiseMap[var29] + {}[var13] * arg1._payload[var5.BuildSettings][var4.NoiseStrength] * var10:SampleDirectional(Vector3.new(var939 + var0.X, var939, var946 + var947) * {}[var13] * arg1._payload[var5.BuildSettings][var4.NoiseScale] * 10, Vector3.new(var28.Y, 0, var28.X))
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
   local var1033 = 1
   local var1034 = arg1._sliceX
   local var1035 = 1
   local var1036 = 1
   local var1037 = arg1._sliceZ
   local var1038 = 1
   local var1046 = arg1._sliceZ
   var1046 = var2
   local var1053 = arg1._noiseMap
   arg1:getIndex(var1033, var1036) = var8(Vector2.new(var1033 / arg1._sliceX, var1036 / var1046), var1046, nil)
   if 0 < arg1._payload[var5.BuildSettings][var4.NoiseScale] then
      if 0 < arg1._payload[var5.BuildSettings][var4.NoiseStrength] then
         arg1:addErosion()
      end
   end
   if var1 <= 0 then
   end
   local var11 = Vector3.new(0.5, 0, 0.5)
   local var12 = 0
   local var1064 = 1
   local var1065 = arg1._sliceX
   local var1066 = 1
   local var1067 = 1
   local var1068 = arg1._sliceZ
   local var1069 = 1
   if 1 < arg1._noiseMap[arg1:getIndex(var1064, var1067)] then
      local var0 = Vector3.new(var1064 / arg1._sliceX, 0, var1067 / arg1._sliceZ) - var11.magnitude
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
      local var1109 = (1 - (1 - (var12 - var25) / var12) ^ 4) * var0
      local var1 = 1 - var1109 / 2
      var1109 = var19
      local var2 = arg1:getIndex(var1109, var22)
      local var3 = arg1._noiseMap[var2]
      if var3 > 1 then
         if var1 < var3 then
            local var1118 = arg1._noiseMap
            arg1:getIndex(var1109, var22) = var1
            local var1 = arg1._fillBottomPositions
            arg1:getIndex(var1109, var22) = true
         else
            local var0 = arg1._noiseMap
            arg1:getIndex(var1109, var22) = (var3 + var1) / 2
         end
      end
      local var1124 = arg1._noiseMap
      arg1:getIndex(var1109, var22) = var1
      local var1125 = arg1._fillBottomPositions
      arg1:getIndex(var1109, var22) = true
      local var6 = arg1._noiseMap
      arg1:getIndex(var1109, var22) = (var3 + var1) / 2
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
