MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K26 [{"AspectRatioThreshold", "GridLineWidth", "IsDebuggingSavedSettings", "MaxScaleFactor", "MaximumOccupancy", "MinimumOccupancy", "MinimumSmooth", "RayLength", "TerrainCacheMaxRadius", "TerrainCacheMultiplier", "TerrainCacheUpdateThreshold", "VoxelResolution", "MaxRegion", "MaxBuildRegion", "MaxMaterialListSize", "MaxImportVolume", "RegionNormalization", "RegionNormalizationMinVolume", "BrushNormalization", "BrushNormalizationMinVolume", "PlacementSnap", "SpikeThreshold", "MinWindowWidth", "MouseMoveThreshold", "MaxNoiseValue", "MinNoiseValue"}]
        2 LOADK                            R1 K27 [0.1]
        3 SETTABLEKS                       R1 R0 K0 ["AspectRatioThreshold"]
        5 LOADN                            R1 20
        6 SETTABLEKS                       R1 R0 K1 ["GridLineWidth"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["IsDebuggingSavedSettings"]
       11 LOADN                            R1 2
       12 SETTABLEKS                       R1 R0 K3 ["MaxScaleFactor"]
       14 LOADN                            R1 1
       15 SETTABLEKS                       R1 R0 K4 ["MaximumOccupancy"]
       17 LOADK                            R1 K28 [0.00390625]
       18 SETTABLEKS                       R1 R0 K5 ["MinimumOccupancy"]
       20 LOADK                            R1 K29 [0.0625]
       21 SETTABLEKS                       R1 R0 K6 ["MinimumSmooth"]
       23 LOADN                            R1 16
       24 SETTABLEKS                       R1 R0 K7 ["RayLength"]
       26 LOADN                            R1 244
       27 SETTABLEKS                       R1 R0 K8 ["TerrainCacheMaxRadius"]
       29 LOADN                            R1 5
       30 SETTABLEKS                       R1 R0 K9 ["TerrainCacheMultiplier"]
       32 LOADK                            R1 K30 [0.9]
       33 SETTABLEKS                       R1 R0 K10 ["TerrainCacheUpdateThreshold"]
       35 LOADN                            R1 4
       36 SETTABLEKS                       R1 R0 K11 ["VoxelResolution"]
       38 LOADN                            R1 0
       39 SETTABLEKS                       R1 R0 K12 ["MaxRegion"]
       41 LOADN                            R1 0
       42 SETTABLEKS                       R1 R0 K13 ["MaxBuildRegion"]
       44 LOADN                            R1 5
       45 SETTABLEKS                       R1 R0 K14 ["MaxMaterialListSize"]
       47 LOADK                            R1 K31 [274877906944]
       48 SETTABLEKS                       R1 R0 K15 ["MaxImportVolume"]
       50 LOADN                            R1 0
       51 SETTABLEKS                       R1 R0 K16 ["RegionNormalization"]
       53 LOADK                            R1 K32 [262144]
       54 SETTABLEKS                       R1 R0 K17 ["RegionNormalizationMinVolume"]
       56 LOADN                            R1 64
       57 SETTABLEKS                       R1 R0 K18 ["BrushNormalization"]
       59 LOADN                            R1 216
       60 SETTABLEKS                       R1 R0 K19 ["BrushNormalizationMinVolume"]
       62 LOADN                            R1 6
       63 SETTABLEKS                       R1 R0 K20 ["PlacementSnap"]
       65 LOADN                            R1 16
       66 SETTABLEKS                       R1 R0 K21 ["SpikeThreshold"]
       68 LOADN                            R1 74
       69 SETTABLEKS                       R1 R0 K22 ["MinWindowWidth"]
       71 LOADN                            R1 20
       72 SETTABLEKS                       R1 R0 K23 ["MouseMoveThreshold"]
       74 LOADK                            R1 K33 [65535]
       75 SETTABLEKS                       R1 R0 K24 ["MaxNoiseValue"]
       77 LOADK                            R1 K34 [-65536]
       78 SETTABLEKS                       R1 R0 K25 ["MinNoiseValue"]
       80 RETURN                           R0 1
