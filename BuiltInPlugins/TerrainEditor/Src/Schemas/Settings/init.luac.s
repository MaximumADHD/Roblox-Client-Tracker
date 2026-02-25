MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagTerrainEditorGenerationFeature"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 NEWTABLE                         R4 16 0
       27 GETTABLEKS                       R5 R3 K11 ["BiomeSettings"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETIMPORT                        R8 K1 [script]
       33 GETTABLEKS                       R7 R8 K12 ["Biome"]
       35 CALL                             R6 1 1
       36 SETTABLE                         R6 R4 R5
       37 GETTABLEKS                       R5 R3 K13 ["BrushSettings"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K14 ["Brush"]
       45 CALL                             R6 1 1
       46 SETTABLE                         R6 R4 R5
       47 GETTABLEKS                       R5 R3 K15 ["BuildSettings"]
       49 MOVE                             R7 R1
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+8]
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R8 K1 [script]
       56 GETTABLEKS                       R7 R8 K16 ["Build"]
       58 CALL                             R6 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R6
       61 SETTABLE                         R6 R4 R5
       62 GETTABLEKS                       R5 R3 K17 ["ClearSettings"]
       64 GETIMPORT                        R6 K5 [require]
       66 GETIMPORT                        R8 K1 [script]
       68 GETTABLEKS                       R7 R8 K18 ["Clear"]
       70 CALL                             R6 1 1
       71 SETTABLE                         R6 R4 R5
       72 GETTABLEKS                       R5 R3 K19 ["HeightmapSettings"]
       74 GETIMPORT                        R6 K5 [require]
       76 GETIMPORT                        R8 K1 [script]
       78 GETTABLEKS                       R7 R8 K20 ["Heightmap"]
       80 CALL                             R6 1 1
       81 SETTABLE                         R6 R4 R5
       82 GETTABLEKS                       R5 R3 K21 ["MaterialSettings"]
       84 GETIMPORT                        R6 K5 [require]
       86 GETIMPORT                        R8 K1 [script]
       88 GETTABLEKS                       R7 R8 K22 ["Material"]
       90 CALL                             R6 1 1
       91 SETTABLE                         R6 R4 R5
       92 GETTABLEKS                       R5 R3 K23 ["SeaLevelSettings"]
       94 GETIMPORT                        R6 K5 [require]
       96 GETIMPORT                        R8 K1 [script]
       98 GETTABLEKS                       R7 R8 K24 ["SeaLevel"]
      100 CALL                             R6 1 1
      101 SETTABLE                         R6 R4 R5
      102 GETTABLEKS                       R5 R3 K25 ["SelectionSettings"]
      104 GETIMPORT                        R6 K5 [require]
      106 GETIMPORT                        R8 K1 [script]
      108 GETTABLEKS                       R7 R8 K26 ["Selection"]
      110 CALL                             R6 1 1
      111 SETTABLE                         R6 R4 R5
      112 GETTABLEKS                       R5 R3 K27 ["TransformSettings"]
      114 GETIMPORT                        R6 K5 [require]
      116 GETIMPORT                        R8 K1 [script]
      118 GETTABLEKS                       R7 R8 K28 ["Transform"]
      120 CALL                             R6 1 1
      121 SETTABLE                         R6 R4 R5
      122 GETTABLEKS                       R5 R3 K29 ["UpgradeSettings"]
      124 GETIMPORT                        R6 K5 [require]
      126 GETIMPORT                        R8 K1 [script]
      128 GETTABLEKS                       R7 R8 K30 ["Upgrade"]
      130 CALL                             R6 1 1
      131 SETTABLE                         R6 R4 R5
      132 RETURN                           R4 1
