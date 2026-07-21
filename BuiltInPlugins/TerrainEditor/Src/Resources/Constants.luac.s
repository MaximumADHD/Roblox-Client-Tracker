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
       18 DUPTABLE                         R2 K57 [{["AspectRatioThreshold"] = 0.1, ["GridLineWidth"] = 20, ["IsDebuggingSavedSettings"] = False, ["MaxScaleFactor"] = 2, ["MaximumOccupancy"] = 1, ["MinimumOccupancy"] = 0.00390625, ["MinimumSmooth"] = 0.0625, ["RayLength"] = 10000, ["TerrainCacheMaxRadius"] = 500, ["TerrainCacheMultiplier"] = 5, ["TerrainCacheUpdateThreshold"] = 0.9, ["VoxelResolution"] = 4, ["MaxRegion"] = 16384, ["MaxBuildRegion"] = 512, ["MaxMaterialListSize"] = 5, ["MaxImportVolume"], ["RegionNormalization"] = 256, ["RegionNormalizationMinVolume"] = 262144, ["BrushNormalization"] = 64, ["BrushNormalizationMinVolume"] = 216, ["PlacementSnap"] = 6, ["SpikeThreshold"] = 10000, ["MinWindowWidth"] = 330, ["MinPanelHeight"] = 330, ["MouseMoveThreshold"] = 20, ["MaxNoiseValue"] = 65535, ["MinNoiseValue"] = -65536}]
       19 MOVE                             R6 R1
       20 CALL                             R6 0 1
       21 MULK                             R5 R6 K58 [1024]
       22 MULK                             R4 R5 K58 [1024]
       23 MULK                             R3 R4 K58 [1024]
       24 SETTABLEKS                       R3 R2 K37 ["MaxImportVolume"]
       26 RETURN                           R2 1
