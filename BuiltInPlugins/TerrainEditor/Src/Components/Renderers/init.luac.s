MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagEnableTerrainPalette"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K21 [{"BrushSize", "Button", "Label", "Image", "Material", "MultiSelection", "PlaneLock", "Seed", "SegmentedControl", "TerrainMaterialPicker", "Upgrade"}]
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K10 ["BrushSize"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K10 ["BrushSize"]
       35 GETIMPORT                        R4 K5 [require]
       37 GETIMPORT                        R5 K1 [script]
       39 GETTABLEKS                       R5 R5 K11 ["Button"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K11 ["Button"]
       44 GETIMPORT                        R4 K5 [require]
       46 GETIMPORT                        R5 K1 [script]
       48 GETTABLEKS                       R5 R5 K12 ["Label"]
       50 CALL                             R4 1 1
       51 SETTABLEKS                       R4 R3 K12 ["Label"]
       53 GETIMPORT                        R4 K5 [require]
       55 GETIMPORT                        R5 K1 [script]
       57 GETTABLEKS                       R5 R5 K13 ["Image"]
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K13 ["Image"]
       62 GETIMPORT                        R4 K5 [require]
       64 GETIMPORT                        R5 K1 [script]
       66 GETTABLEKS                       R5 R5 K14 ["Material"]
       68 CALL                             R4 1 1
       69 SETTABLEKS                       R4 R3 K14 ["Material"]
       71 GETIMPORT                        R4 K5 [require]
       73 GETIMPORT                        R5 K1 [script]
       75 GETTABLEKS                       R5 R5 K15 ["MultiSelection"]
       77 CALL                             R4 1 1
       78 SETTABLEKS                       R4 R3 K15 ["MultiSelection"]
       80 GETIMPORT                        R4 K5 [require]
       82 GETIMPORT                        R5 K1 [script]
       84 GETTABLEKS                       R5 R5 K16 ["PlaneLock"]
       86 CALL                             R4 1 1
       87 SETTABLEKS                       R4 R3 K16 ["PlaneLock"]
       89 GETIMPORT                        R4 K5 [require]
       91 GETIMPORT                        R5 K1 [script]
       93 GETTABLEKS                       R5 R5 K17 ["Seed"]
       95 CALL                             R4 1 1
       96 SETTABLEKS                       R4 R3 K17 ["Seed"]
       98 MOVE                             R5 R1
       99 CALL                             R5 0 1
      100 JUMPIFNOT                        R5 ; [+8]
      101 GETIMPORT                        R4 K5 [require]
      103 GETIMPORT                        R5 K1 [script]
      105 GETTABLEKS                       R5 R5 K18 ["SegmentedControl"]
      107 CALL                             R4 1 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R4
      110 SETTABLEKS                       R4 R3 K18 ["SegmentedControl"]
      112 MOVE                             R5 R2
      113 CALL                             R5 0 1
      114 JUMPIFNOT                        R5 ; [+8]
      115 GETIMPORT                        R4 K5 [require]
      117 GETIMPORT                        R5 K1 [script]
      119 GETTABLEKS                       R5 R5 K19 ["TerrainMaterialPicker"]
      121 CALL                             R4 1 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R4
      124 SETTABLEKS                       R4 R3 K19 ["TerrainMaterialPicker"]
      126 GETIMPORT                        R4 K5 [require]
      128 GETIMPORT                        R5 K1 [script]
      130 GETTABLEKS                       R5 R5 K20 ["Upgrade"]
      132 CALL                             R4 1 1
      133 SETTABLEKS                       R4 R3 K20 ["Upgrade"]
      135 RETURN                           R3 1
