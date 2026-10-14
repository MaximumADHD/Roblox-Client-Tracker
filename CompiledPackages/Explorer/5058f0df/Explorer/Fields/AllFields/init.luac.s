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
       18 GETTABLEKS                       R3 R3 K9 ["getEngineFeatureExplorerPackageOverrideTracking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getEngineFeatureFolderIconTint"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getFFlagBehaviorVisualState"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagEnableReimport"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagLuaExplorerHierarchySync"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagLuaExplorerPackages"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagLuaExplorerUseInstanceFileSyncService"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Flags"]
       67 GETTABLEKS                       R10 R10 K16 ["getFFlagSimCsgEnableNewStudioButtons"]
       69 CALL                             R9 1 1
       70 NEWTABLE                         R10 8 0
       72 GETIMPORT                        R11 K1 [script]
       74 NAMECALL                         R11 R11 K17 ["GetChildren"]
       76 CALL                             R11 1 3
       77 FORGPREP                         R11
       78 LOADK                            R19 K18 ["ModuleScript"]
       79 NAMECALL                         R17 R15 K19 ["IsA"]
       81 CALL                             R17 2 1
       82 FASTCALL2K                       ASSERT R17 K20 ; [+4]
       84 LOADK                            R18 K20 ["All children of AllFields must be a ModuleScript"]
       85 GETIMPORT                        R16 K22 [assert]
       87 CALL                             R16 2 0
       88 GETIMPORT                        R16 K5 [require]
       90 MOVE                             R17 R15
       91 CALL                             R16 1 1
       92 GETTABLEKS                       R17 R16 K23 ["key"]
       94 SETTABLE                         R16 R10 R17
       95 FORGLOOP                         R11 2 ; [-18]
       97 MOVE                             R11 R7
       98 CALL                             R11 0 1
       99 JUMPIF                           R11 ; [+6]
      100 LOADNIL                          R11
      101 SETTABLEKS                       R11 R10 K24 ["packageStatus"]
      103 LOADNIL                          R11
      104 SETTABLEKS                       R11 R10 K25 ["packageOverrideStatus"]
      106 MOVE                             R11 R2
      107 CALL                             R11 0 1
      108 JUMPIF                           R11 ; [+3]
      109 LOADNIL                          R11
      110 SETTABLEKS                       R11 R10 K25 ["packageOverrideStatus"]
      112 MOVE                             R11 R6
      113 CALL                             R11 0 1
      114 JUMPIF                           R11 ; [+3]
      115 LOADNIL                          R11
      116 SETTABLEKS                       R11 R10 K26 ["liveSyncStatus"]
      118 MOVE                             R11 R8
      119 CALL                             R11 0 1
      120 JUMPIFNOT                        R11 ; [+4]
      121 LOADNIL                          R11
      122 SETTABLEKS                       R11 R10 K26 ["liveSyncStatus"]
      124 JUMP                             ; [+3]
      125 LOADNIL                          R11
      126 SETTABLEKS                       R11 R10 K27 ["instanceFileSyncStatus"]
      128 MOVE                             R11 R4
      129 CALL                             R11 0 1
      130 JUMPIF                           R11 ; [+3]
      131 LOADNIL                          R11
      132 SETTABLEKS                       R11 R10 K28 ["isAuroraDisabled"]
      134 MOVE                             R11 R5
      135 CALL                             R11 0 1
      136 JUMPIF                           R11 ; [+3]
      137 LOADNIL                          R11
      138 SETTABLEKS                       R11 R10 K29 ["reimportStatus"]
      140 MOVE                             R11 R9
      141 CALL                             R11 0 1
      142 JUMPIF                           R11 ; [+3]
      143 LOADNIL                          R11
      144 SETTABLEKS                       R11 R10 K30 ["negateSelection"]
      146 MOVE                             R11 R3
      147 CALL                             R11 0 1
      148 JUMPIF                           R11 ; [+3]
      149 LOADNIL                          R11
      150 SETTABLEKS                       R11 R10 K31 ["folderIconTint"]
      152 RETURN                           R10 1
