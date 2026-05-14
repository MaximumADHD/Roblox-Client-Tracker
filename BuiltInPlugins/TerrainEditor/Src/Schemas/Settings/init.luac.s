MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Category"]
       16 NEWTABLE                         R3 16 0
       18 GETTABLEKS                       R4 R2 K9 ["BiomeSettings"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETIMPORT                        R6 K1 [script]
       24 GETTABLEKS                       R6 R6 K10 ["Biome"]
       26 CALL                             R5 1 1
       27 SETTABLE                         R5 R3 R4
       28 GETTABLEKS                       R4 R2 K11 ["BrushSettings"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K12 ["Brush"]
       36 CALL                             R5 1 1
       37 SETTABLE                         R5 R3 R4
       38 GETTABLEKS                       R4 R2 K13 ["ClearSettings"]
       40 GETIMPORT                        R5 K5 [require]
       42 GETIMPORT                        R6 K1 [script]
       44 GETTABLEKS                       R6 R6 K14 ["Clear"]
       46 CALL                             R5 1 1
       47 SETTABLE                         R5 R3 R4
       48 GETTABLEKS                       R4 R2 K15 ["HeightmapSettings"]
       50 GETIMPORT                        R5 K5 [require]
       52 GETIMPORT                        R6 K1 [script]
       54 GETTABLEKS                       R6 R6 K16 ["Heightmap"]
       56 CALL                             R5 1 1
       57 SETTABLE                         R5 R3 R4
       58 GETTABLEKS                       R4 R2 K17 ["MaterialSettings"]
       60 GETIMPORT                        R5 K5 [require]
       62 GETIMPORT                        R6 K1 [script]
       64 GETTABLEKS                       R6 R6 K18 ["Material"]
       66 CALL                             R5 1 1
       67 SETTABLE                         R5 R3 R4
       68 GETTABLEKS                       R4 R2 K19 ["SeaLevelSettings"]
       70 GETIMPORT                        R5 K5 [require]
       72 GETIMPORT                        R6 K1 [script]
       74 GETTABLEKS                       R6 R6 K20 ["SeaLevel"]
       76 CALL                             R5 1 1
       77 SETTABLE                         R5 R3 R4
       78 GETTABLEKS                       R4 R2 K21 ["SelectionSettings"]
       80 GETIMPORT                        R5 K5 [require]
       82 GETIMPORT                        R6 K1 [script]
       84 GETTABLEKS                       R6 R6 K22 ["Selection"]
       86 CALL                             R5 1 1
       87 SETTABLE                         R5 R3 R4
       88 GETTABLEKS                       R4 R2 K23 ["TransformSettings"]
       90 GETIMPORT                        R5 K5 [require]
       92 GETIMPORT                        R6 K1 [script]
       94 GETTABLEKS                       R6 R6 K24 ["Transform"]
       96 CALL                             R5 1 1
       97 SETTABLE                         R5 R3 R4
       98 GETTABLEKS                       R4 R2 K25 ["UpgradeSettings"]
      100 GETIMPORT                        R5 K5 [require]
      102 GETIMPORT                        R6 K1 [script]
      104 GETTABLEKS                       R6 R6 K26 ["Upgrade"]
      106 CALL                             R5 1 1
      107 SETTABLE                         R5 R3 R4
      108 RETURN                           R3 1
