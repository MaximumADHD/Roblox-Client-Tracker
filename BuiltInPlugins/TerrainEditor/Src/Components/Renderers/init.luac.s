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
       16 DUPTABLE                         R2 K19 [{"BrushSize", "Button", "Label", "Image", "Material", "MultiSelection", "PlaneLock", "Seed", "SegmentedControl", "Upgrade"}]
       17 GETIMPORT                        R3 K5 [require]
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R4 R4 K9 ["BrushSize"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K9 ["BrushSize"]
       26 GETIMPORT                        R3 K5 [require]
       28 GETIMPORT                        R4 K1 [script]
       30 GETTABLEKS                       R4 R4 K10 ["Button"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K10 ["Button"]
       35 GETIMPORT                        R3 K5 [require]
       37 GETIMPORT                        R4 K1 [script]
       39 GETTABLEKS                       R4 R4 K11 ["Label"]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K11 ["Label"]
       44 GETIMPORT                        R3 K5 [require]
       46 GETIMPORT                        R4 K1 [script]
       48 GETTABLEKS                       R4 R4 K12 ["Image"]
       50 CALL                             R3 1 1
       51 SETTABLEKS                       R3 R2 K12 ["Image"]
       53 GETIMPORT                        R3 K5 [require]
       55 GETIMPORT                        R4 K1 [script]
       57 GETTABLEKS                       R4 R4 K13 ["Material"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K13 ["Material"]
       62 GETIMPORT                        R3 K5 [require]
       64 GETIMPORT                        R4 K1 [script]
       66 GETTABLEKS                       R4 R4 K14 ["MultiSelection"]
       68 CALL                             R3 1 1
       69 SETTABLEKS                       R3 R2 K14 ["MultiSelection"]
       71 GETIMPORT                        R3 K5 [require]
       73 GETIMPORT                        R4 K1 [script]
       75 GETTABLEKS                       R4 R4 K15 ["PlaneLock"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K15 ["PlaneLock"]
       80 GETIMPORT                        R3 K5 [require]
       82 GETIMPORT                        R4 K1 [script]
       84 GETTABLEKS                       R4 R4 K16 ["Seed"]
       86 CALL                             R3 1 1
       87 SETTABLEKS                       R3 R2 K16 ["Seed"]
       89 MOVE                             R4 R1
       90 CALL                             R4 0 1
       91 JUMPIFNOT                        R4 ; [+8]
       92 GETIMPORT                        R3 K5 [require]
       94 GETIMPORT                        R4 K1 [script]
       96 GETTABLEKS                       R4 R4 K17 ["SegmentedControl"]
       98 CALL                             R3 1 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R3
      101 SETTABLEKS                       R3 R2 K17 ["SegmentedControl"]
      103 GETIMPORT                        R3 K5 [require]
      105 GETIMPORT                        R4 K1 [script]
      107 GETTABLEKS                       R4 R4 K18 ["Upgrade"]
      109 CALL                             R3 1 1
      110 SETTABLEKS                       R3 R2 K18 ["Upgrade"]
      112 RETURN                           R2 1
