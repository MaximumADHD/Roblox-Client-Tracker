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
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K24 [{"BrushSize", "Button", "ConfirmGeneration", "DelayedSlider", "Label", "Image", "Material", "MaterialRanges", "MultiSelection", "PlaneLock", "Seed", "SegmentedControl", "TerrainType", "Upgrade"}]
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R5 R6 K10 ["BrushSize"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K10 ["BrushSize"]
       35 GETIMPORT                        R4 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R5 R6 K11 ["Button"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K11 ["Button"]
       44 MOVE                             R5 R1
       45 CALL                             R5 0 1
       46 JUMPIFNOT                        R5 ; [+8]
       47 GETIMPORT                        R4 K5 [require]
       49 GETIMPORT                        R6 K1 [script]
       51 GETTABLEKS                       R5 R6 K12 ["ConfirmGeneration"]
       53 CALL                             R4 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R4
       56 SETTABLEKS                       R4 R3 K12 ["ConfirmGeneration"]
       58 MOVE                             R5 R1
       59 CALL                             R5 0 1
       60 JUMPIFNOT                        R5 ; [+8]
       61 GETIMPORT                        R4 K5 [require]
       63 GETIMPORT                        R6 K1 [script]
       65 GETTABLEKS                       R5 R6 K13 ["DelayedSlider"]
       67 CALL                             R4 1 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R4
       70 SETTABLEKS                       R4 R3 K13 ["DelayedSlider"]
       72 GETIMPORT                        R4 K5 [require]
       74 GETIMPORT                        R6 K1 [script]
       76 GETTABLEKS                       R5 R6 K14 ["Label"]
       78 CALL                             R4 1 1
       79 SETTABLEKS                       R4 R3 K14 ["Label"]
       81 GETIMPORT                        R4 K5 [require]
       83 GETIMPORT                        R6 K1 [script]
       85 GETTABLEKS                       R5 R6 K15 ["Image"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R3 K15 ["Image"]
       90 GETIMPORT                        R4 K5 [require]
       92 GETIMPORT                        R6 K1 [script]
       94 GETTABLEKS                       R5 R6 K16 ["Material"]
       96 CALL                             R4 1 1
       97 SETTABLEKS                       R4 R3 K16 ["Material"]
       99 MOVE                             R5 R1
      100 CALL                             R5 0 1
      101 JUMPIFNOT                        R5 ; [+8]
      102 GETIMPORT                        R4 K5 [require]
      104 GETIMPORT                        R6 K1 [script]
      106 GETTABLEKS                       R5 R6 K17 ["MaterialRanges"]
      108 CALL                             R4 1 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R4
      111 SETTABLEKS                       R4 R3 K17 ["MaterialRanges"]
      113 GETIMPORT                        R4 K5 [require]
      115 GETIMPORT                        R6 K1 [script]
      117 GETTABLEKS                       R5 R6 K18 ["MultiSelection"]
      119 CALL                             R4 1 1
      120 SETTABLEKS                       R4 R3 K18 ["MultiSelection"]
      122 GETIMPORT                        R4 K5 [require]
      124 GETIMPORT                        R6 K1 [script]
      126 GETTABLEKS                       R5 R6 K19 ["PlaneLock"]
      128 CALL                             R4 1 1
      129 SETTABLEKS                       R4 R3 K19 ["PlaneLock"]
      131 GETIMPORT                        R4 K5 [require]
      133 GETIMPORT                        R6 K1 [script]
      135 GETTABLEKS                       R5 R6 K20 ["Seed"]
      137 CALL                             R4 1 1
      138 SETTABLEKS                       R4 R3 K20 ["Seed"]
      140 MOVE                             R5 R2
      141 CALL                             R5 0 1
      142 JUMPIFNOT                        R5 ; [+8]
      143 GETIMPORT                        R4 K5 [require]
      145 GETIMPORT                        R6 K1 [script]
      147 GETTABLEKS                       R5 R6 K21 ["SegmentedControl"]
      149 CALL                             R4 1 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R4
      152 SETTABLEKS                       R4 R3 K21 ["SegmentedControl"]
      154 GETIMPORT                        R4 K5 [require]
      156 GETIMPORT                        R6 K1 [script]
      158 GETTABLEKS                       R5 R6 K22 ["TerrainType"]
      160 CALL                             R4 1 1
      161 SETTABLEKS                       R4 R3 K22 ["TerrainType"]
      163 GETIMPORT                        R4 K5 [require]
      165 GETIMPORT                        R6 K1 [script]
      167 GETTABLEKS                       R5 R6 K23 ["Upgrade"]
      169 CALL                             R4 1 1
      170 SETTABLEKS                       R4 R3 K23 ["Upgrade"]
      172 RETURN                           R3 1
