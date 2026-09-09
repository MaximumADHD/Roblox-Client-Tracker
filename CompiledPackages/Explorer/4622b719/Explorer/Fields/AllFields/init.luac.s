MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["getEngineFeatureFolderIconTint"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagBehaviorVisualState"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getFFlagEnableReimport"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagLuaExplorerHierarchySync"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagLuaExplorerPackages"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagLuaExplorerUseInstanceFileSyncService"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagSimCsgEnableNewStudioButtons"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 8 0
       65 GETIMPORT                        R10 K1 [script]
       67 NAMECALL                         R10 R10 K16 ["GetChildren"]
       69 CALL                             R10 1 3
       70 FORGPREP                         R10
       71 LOADK                            R18 K17 ["ModuleScript"]
       72 NAMECALL                         R16 R14 K18 ["IsA"]
       74 CALL                             R16 2 1
       75 FASTCALL2K                       ASSERT R16 K19 ; [+4]
       77 LOADK                            R17 K19 ["All children of AllFields must be a ModuleScript"]
       78 GETIMPORT                        R15 K21 [assert]
       80 CALL                             R15 2 0
       81 GETIMPORT                        R15 K5 [require]
       83 MOVE                             R16 R14
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R15 K22 ["key"]
       87 SETTABLE                         R15 R9 R16
       88 FORGLOOP                         R10 2 ; [-18]
       90 MOVE                             R10 R6
       91 CALL                             R10 0 1
       92 JUMPIF                           R10 ; [+3]
       93 LOADNIL                          R10
       94 SETTABLEKS                       R10 R9 K23 ["packageStatus"]
       96 MOVE                             R10 R5
       97 CALL                             R10 0 1
       98 JUMPIF                           R10 ; [+3]
       99 LOADNIL                          R10
      100 SETTABLEKS                       R10 R9 K24 ["liveSyncStatus"]
      102 MOVE                             R10 R7
      103 CALL                             R10 0 1
      104 JUMPIFNOT                        R10 ; [+4]
      105 LOADNIL                          R10
      106 SETTABLEKS                       R10 R9 K24 ["liveSyncStatus"]
      108 JUMP                             ; [+3]
      109 LOADNIL                          R10
      110 SETTABLEKS                       R10 R9 K25 ["instanceFileSyncStatus"]
      112 MOVE                             R10 R3
      113 CALL                             R10 0 1
      114 JUMPIF                           R10 ; [+3]
      115 LOADNIL                          R10
      116 SETTABLEKS                       R10 R9 K26 ["isAuroraDisabled"]
      118 MOVE                             R10 R4
      119 CALL                             R10 0 1
      120 JUMPIF                           R10 ; [+3]
      121 LOADNIL                          R10
      122 SETTABLEKS                       R10 R9 K27 ["reimportStatus"]
      124 MOVE                             R10 R8
      125 CALL                             R10 0 1
      126 JUMPIF                           R10 ; [+3]
      127 LOADNIL                          R10
      128 SETTABLEKS                       R10 R9 K28 ["negateSelection"]
      130 MOVE                             R10 R2
      131 CALL                             R10 0 1
      132 JUMPIF                           R10 ; [+3]
      133 LOADNIL                          R10
      134 SETTABLEKS                       R10 R9 K29 ["folderIconTint"]
      136 RETURN                           R9 1
