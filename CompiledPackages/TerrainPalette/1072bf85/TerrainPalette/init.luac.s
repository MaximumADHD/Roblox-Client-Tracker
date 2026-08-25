MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Components", "Types"}]
        2 DUPTABLE                         R1 K4 [{"TerrainPaletteApp"}]
        3 GETIMPORT                        R2 K6 [require]
        5 GETIMPORT                        R3 K8 [script]
        7 GETTABLEKS                       R3 R3 K0 ["Components"]
        9 GETTABLEKS                       R3 R3 K3 ["TerrainPaletteApp"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K3 ["TerrainPaletteApp"]
       14 SETTABLEKS                       R1 R0 K0 ["Components"]
       16 GETIMPORT                        R1 K6 [require]
       18 GETIMPORT                        R2 K8 [script]
       20 GETTABLEKS                       R2 R2 K1 ["Types"]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K1 ["Types"]
       25 RETURN                           R0 1
