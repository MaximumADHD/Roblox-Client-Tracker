MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFIntTerrainEditorMaxImportVolumeMegaVoxels"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K34 [{"AspectRatioThreshold", "GridLineWidth", "IsDebuggingSavedSettings", "MaxScaleFactor", "MaximumOccupancy", "MinimumOccupancy", "MinimumSmooth", "RayLength", "TerrainCacheMaxRadius", "TerrainCacheMultiplier", "TerrainCacheUpdateThreshold", "VoxelResolution", "MaxRegion", "MaxBuildRegion", "MaxMaterialListSize", "MaxImportVolume", "RegionNormalization", "RegionNormalizationMinVolume", "BrushNormalization", "BrushNormalizationMinVolume", "PlacementSnap", "SpikeThreshold", "MinWindowWidth", "MouseMoveThreshold", "MaxNoiseValue", "MinNoiseValue"}]
       19 LOADK                            R3 K35 [0.1]
       20 SETTABLEKS                       R3 R2 K8 ["AspectRatioThreshold"]
       22 LOADN                            R3 20
       23 SETTABLEKS                       R3 R2 K9 ["GridLineWidth"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K10 ["IsDebuggingSavedSettings"]
       28 LOADN                            R3 2
       29 SETTABLEKS                       R3 R2 K11 ["MaxScaleFactor"]
       31 LOADN                            R3 1
       32 SETTABLEKS                       R3 R2 K12 ["MaximumOccupancy"]
       34 LOADK                            R3 K36 [0.00390625]
       35 SETTABLEKS                       R3 R2 K13 ["MinimumOccupancy"]
       37 LOADK                            R3 K37 [0.0625]
       38 SETTABLEKS                       R3 R2 K14 ["MinimumSmooth"]
       40 LOADN                            R3 16
       41 SETTABLEKS                       R3 R2 K15 ["RayLength"]
       43 LOADN                            R3 244
       44 SETTABLEKS                       R3 R2 K16 ["TerrainCacheMaxRadius"]
       46 LOADN                            R3 5
       47 SETTABLEKS                       R3 R2 K17 ["TerrainCacheMultiplier"]
       49 LOADK                            R3 K38 [0.9]
       50 SETTABLEKS                       R3 R2 K18 ["TerrainCacheUpdateThreshold"]
       52 LOADN                            R3 4
       53 SETTABLEKS                       R3 R2 K19 ["VoxelResolution"]
       55 LOADN                            R3 0
       56 SETTABLEKS                       R3 R2 K20 ["MaxRegion"]
       58 LOADN                            R3 0
       59 SETTABLEKS                       R3 R2 K21 ["MaxBuildRegion"]
       61 LOADN                            R3 5
       62 SETTABLEKS                       R3 R2 K22 ["MaxMaterialListSize"]
       64 MOVE                             R6 R1
       65 CALL                             R6 0 1
       66 MULK                             R5 R6 K39 [1024]
       67 MULK                             R4 R5 K39 [1024]
       68 MULK                             R3 R4 K39 [1024]
       69 SETTABLEKS                       R3 R2 K23 ["MaxImportVolume"]
       71 LOADN                            R3 0
       72 SETTABLEKS                       R3 R2 K24 ["RegionNormalization"]
       74 LOADK                            R3 K40 [262144]
       75 SETTABLEKS                       R3 R2 K25 ["RegionNormalizationMinVolume"]
       77 LOADN                            R3 64
       78 SETTABLEKS                       R3 R2 K26 ["BrushNormalization"]
       80 LOADN                            R3 216
       81 SETTABLEKS                       R3 R2 K27 ["BrushNormalizationMinVolume"]
       83 LOADN                            R3 6
       84 SETTABLEKS                       R3 R2 K28 ["PlacementSnap"]
       86 LOADN                            R3 16
       87 SETTABLEKS                       R3 R2 K29 ["SpikeThreshold"]
       89 LOADN                            R3 74
       90 SETTABLEKS                       R3 R2 K30 ["MinWindowWidth"]
       92 LOADN                            R3 20
       93 SETTABLEKS                       R3 R2 K31 ["MouseMoveThreshold"]
       95 LOADK                            R3 K41 [65535]
       96 SETTABLEKS                       R3 R2 K32 ["MaxNoiseValue"]
       98 LOADK                            R3 K42 [-65536]
       99 SETTABLEKS                       R3 R2 K33 ["MinNoiseValue"]
      101 RETURN                           R2 1
