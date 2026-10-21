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
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagExplorerAvatarIcons"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagLuaExplorerHierarchySync"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagLuaExplorerPackages"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Flags"]
       67 GETTABLEKS                       R10 R10 K16 ["getFFlagLuaExplorerUseInstanceFileSyncService"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K8 ["Flags"]
       74 GETTABLEKS                       R11 R11 K17 ["getFFlagSimCsgEnableNewStudioButtons"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 16 0
       79 GETIMPORT                        R12 K1 [script]
       81 NAMECALL                         R12 R12 K18 ["GetChildren"]
       83 CALL                             R12 1 3
       84 FORGPREP                         R12
       85 LOADK                            R20 K19 ["ModuleScript"]
       86 NAMECALL                         R18 R16 K20 ["IsA"]
       88 CALL                             R18 2 1
       89 FASTCALL2K                       ASSERT R18 K21 ; [+4]
       91 LOADK                            R19 K21 ["All children of AllFields must be a ModuleScript"]
       92 GETIMPORT                        R17 K23 [assert]
       94 CALL                             R17 2 0
       95 GETIMPORT                        R17 K5 [require]
       97 MOVE                             R18 R16
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R18 R17 K24 ["key"]
      101 SETTABLE                         R17 R11 R18
      102 FORGLOOP                         R12 2 ; [-18]
      104 MOVE                             R12 R8
      105 CALL                             R12 0 1
      106 JUMPIF                           R12 ; [+6]
      107 LOADNIL                          R12
      108 SETTABLEKS                       R12 R11 K25 ["packageStatus"]
      110 LOADNIL                          R12
      111 SETTABLEKS                       R12 R11 K26 ["packageOverrideStatus"]
      113 MOVE                             R12 R2
      114 CALL                             R12 0 1
      115 JUMPIF                           R12 ; [+3]
      116 LOADNIL                          R12
      117 SETTABLEKS                       R12 R11 K26 ["packageOverrideStatus"]
      119 MOVE                             R12 R7
      120 CALL                             R12 0 1
      121 JUMPIF                           R12 ; [+3]
      122 LOADNIL                          R12
      123 SETTABLEKS                       R12 R11 K27 ["liveSyncStatus"]
      125 MOVE                             R12 R9
      126 CALL                             R12 0 1
      127 JUMPIFNOT                        R12 ; [+4]
      128 LOADNIL                          R12
      129 SETTABLEKS                       R12 R11 K27 ["liveSyncStatus"]
      131 JUMP                             ; [+3]
      132 LOADNIL                          R12
      133 SETTABLEKS                       R12 R11 K28 ["instanceFileSyncStatus"]
      135 MOVE                             R12 R4
      136 CALL                             R12 0 1
      137 JUMPIF                           R12 ; [+3]
      138 LOADNIL                          R12
      139 SETTABLEKS                       R12 R11 K29 ["isAuroraDisabled"]
      141 MOVE                             R12 R5
      142 CALL                             R12 0 1
      143 JUMPIF                           R12 ; [+3]
      144 LOADNIL                          R12
      145 SETTABLEKS                       R12 R11 K30 ["reimportStatus"]
      147 MOVE                             R12 R10
      148 CALL                             R12 0 1
      149 JUMPIF                           R12 ; [+3]
      150 LOADNIL                          R12
      151 SETTABLEKS                       R12 R11 K31 ["negateSelection"]
      153 MOVE                             R12 R6
      154 CALL                             R12 0 1
      155 JUMPIF                           R12 ; [+9]
      156 LOADNIL                          R12
      157 SETTABLEKS                       R12 R11 K32 ["accessoryType"]
      159 LOADNIL                          R12
      160 SETTABLEKS                       R12 R11 K33 ["isAvatarInstance"]
      162 LOADNIL                          R12
      163 SETTABLEKS                       R12 R11 K34 ["isMakeupInstance"]
      165 MOVE                             R12 R3
      166 CALL                             R12 0 1
      167 JUMPIF                           R12 ; [+3]
      168 LOADNIL                          R12
      169 SETTABLEKS                       R12 R11 K35 ["folderIconTint"]
      171 RETURN                           R11 1
