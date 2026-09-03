MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["TerrainPalette"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K10 [{"catalog"}]
       22 GETIMPORT                        R4 K13 [table.freeze]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K9 ["catalog"]
       29 GETTABLEKS                       R4 R1 K14 ["createContext"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 RETURN                           R4 1
