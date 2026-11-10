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
       18 GETTABLEKS                       R3 R3 K9 ["getEngineFeatureExplorerIconContent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getEngineFeatureExplorerPackageOverrideTracking"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureFolderIconTint"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagBehaviorVisualState"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagEnableReimport"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagExplorerAvatarIcons"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagLuaExplorerHierarchySync"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Flags"]
       67 GETTABLEKS                       R10 R10 K16 ["getFFlagLuaExplorerPackages"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K8 ["Flags"]
       74 GETTABLEKS                       R11 R11 K17 ["getFFlagLuaExplorerUseInstanceFileSyncService"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K8 ["Flags"]
       81 GETTABLEKS                       R12 R12 K18 ["getFFlagSimCsgEnableNewStudioButtons"]
       83 CALL                             R11 1 1
       84 NEWTABLE                         R12 16 0
       86 GETIMPORT                        R13 K1 [script]
       88 NAMECALL                         R13 R13 K19 ["GetChildren"]
       90 CALL                             R13 1 3
       91 FORGPREP                         R13
       92 LOADK                            R21 K20 ["ModuleScript"]
       93 NAMECALL                         R19 R17 K21 ["IsA"]
       95 CALL                             R19 2 1
       96 FASTCALL2K                       ASSERT R19 K22 ; [+4]
       98 LOADK                            R20 K22 ["All children of AllFields must be a ModuleScript"]
       99 GETIMPORT                        R18 K24 [assert]
      101 CALL                             R18 2 0
      102 GETIMPORT                        R18 K5 [require]
      104 MOVE                             R19 R17
      105 CALL                             R18 1 1
      106 GETTABLEKS                       R19 R18 K25 ["key"]
      108 SETTABLE                         R18 R12 R19
      109 FORGLOOP                         R13 2 ; [-18]
      111 MOVE                             R13 R9
      112 CALL                             R13 0 1
      113 JUMPIF                           R13 ; [+6]
      114 LOADNIL                          R13
      115 SETTABLEKS                       R13 R12 K26 ["packageStatus"]
      117 LOADNIL                          R13
      118 SETTABLEKS                       R13 R12 K27 ["packageOverrideStatus"]
      120 MOVE                             R13 R3
      121 CALL                             R13 0 1
      122 JUMPIF                           R13 ; [+3]
      123 LOADNIL                          R13
      124 SETTABLEKS                       R13 R12 K27 ["packageOverrideStatus"]
      126 MOVE                             R13 R8
      127 CALL                             R13 0 1
      128 JUMPIF                           R13 ; [+3]
      129 LOADNIL                          R13
      130 SETTABLEKS                       R13 R12 K28 ["liveSyncStatus"]
      132 MOVE                             R13 R10
      133 CALL                             R13 0 1
      134 JUMPIFNOT                        R13 ; [+4]
      135 LOADNIL                          R13
      136 SETTABLEKS                       R13 R12 K28 ["liveSyncStatus"]
      138 JUMP                             ; [+3]
      139 LOADNIL                          R13
      140 SETTABLEKS                       R13 R12 K29 ["instanceFileSyncStatus"]
      142 MOVE                             R13 R5
      143 CALL                             R13 0 1
      144 JUMPIF                           R13 ; [+3]
      145 LOADNIL                          R13
      146 SETTABLEKS                       R13 R12 K30 ["isAuroraDisabled"]
      148 MOVE                             R13 R6
      149 CALL                             R13 0 1
      150 JUMPIF                           R13 ; [+3]
      151 LOADNIL                          R13
      152 SETTABLEKS                       R13 R12 K31 ["reimportStatus"]
      154 MOVE                             R13 R11
      155 CALL                             R13 0 1
      156 JUMPIF                           R13 ; [+3]
      157 LOADNIL                          R13
      158 SETTABLEKS                       R13 R12 K32 ["negateSelection"]
      160 MOVE                             R13 R7
      161 CALL                             R13 0 1
      162 JUMPIF                           R13 ; [+9]
      163 LOADNIL                          R13
      164 SETTABLEKS                       R13 R12 K33 ["accessoryType"]
      166 LOADNIL                          R13
      167 SETTABLEKS                       R13 R12 K34 ["isAvatarInstance"]
      169 LOADNIL                          R13
      170 SETTABLEKS                       R13 R12 K35 ["isMakeupInstance"]
      172 MOVE                             R13 R4
      173 CALL                             R13 0 1
      174 JUMPIF                           R13 ; [+3]
      175 LOADNIL                          R13
      176 SETTABLEKS                       R13 R12 K36 ["folderIconTint"]
      178 MOVE                             R13 R2
      179 CALL                             R13 0 1
      180 JUMPIF                           R13 ; [+3]
      181 LOADNIL                          R13
      182 SETTABLEKS                       R13 R12 K37 ["explorerIcon"]
      184 RETURN                           R12 1
