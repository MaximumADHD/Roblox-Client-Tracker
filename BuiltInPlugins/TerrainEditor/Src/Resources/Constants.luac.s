MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K11 [{"AspectRatioThreshold", "GridLineWidth", "MaxScaleFactor", "MaximumOccupancy", "MinimumOccupancy", "MinimumSmooth", "RayLength", "TerrainCacheMaxRadius", "TerrainCacheMultiplier", "TerrainCacheUpdateThreshold", "VoxelResolution"}]
  LOADK R1 K12 [0.1]
  SETTABLEKS R1 R0 K0 ["AspectRatioThreshold"]
  LOADN R1 20
  SETTABLEKS R1 R0 K1 ["GridLineWidth"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["MaxScaleFactor"]
  LOADN R1 1
  SETTABLEKS R1 R0 K3 ["MaximumOccupancy"]
  LOADK R1 K13 [0.00390625]
  SETTABLEKS R1 R0 K4 ["MinimumOccupancy"]
  LOADK R1 K14 [0.0625]
  SETTABLEKS R1 R0 K5 ["MinimumSmooth"]
  LOADN R1 16
  SETTABLEKS R1 R0 K6 ["RayLength"]
  LOADN R1 244
  SETTABLEKS R1 R0 K7 ["TerrainCacheMaxRadius"]
  LOADN R1 5
  SETTABLEKS R1 R0 K8 ["TerrainCacheMultiplier"]
  LOADK R1 K15 [0.9]
  SETTABLEKS R1 R0 K9 ["TerrainCacheUpdateThreshold"]
  LOADN R1 4
  SETTABLEKS R1 R0 K10 ["VoxelResolution"]
  RETURN R0 1
