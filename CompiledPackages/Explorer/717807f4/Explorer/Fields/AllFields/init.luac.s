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
       18 GETTABLEKS                       R3 R3 K9 ["getFFlagBehaviorVisualState"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagEnableReimport"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getFFlagLuaExplorerHierarchySync"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagLuaExplorerPackages"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagLuaExplorerUseInstanceFileSyncService"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagSimCsgEnableNewStudioButtons"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 8 0
       58 GETIMPORT                        R9 K1 [script]
       60 NAMECALL                         R9 R9 K15 ["GetChildren"]
       62 CALL                             R9 1 3
       63 FORGPREP                         R9
       64 LOADK                            R17 K16 ["ModuleScript"]
       65 NAMECALL                         R15 R13 K17 ["IsA"]
       67 CALL                             R15 2 1
       68 FASTCALL2K                       ASSERT R15 K18 ; [+4]
       70 LOADK                            R16 K18 ["All children of AllFields must be a ModuleScript"]
       71 GETIMPORT                        R14 K20 [assert]
       73 CALL                             R14 2 0
       74 GETIMPORT                        R14 K5 [require]
       76 MOVE                             R15 R13
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R15 R14 K21 ["key"]
       80 SETTABLE                         R14 R8 R15
       81 FORGLOOP                         R9 2 ; [-18]
       83 MOVE                             R9 R5
       84 CALL                             R9 0 1
       85 JUMPIF                           R9 ; [+3]
       86 LOADNIL                          R9
       87 SETTABLEKS                       R9 R8 K22 ["packageStatus"]
       89 MOVE                             R9 R4
       90 CALL                             R9 0 1
       91 JUMPIF                           R9 ; [+3]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K23 ["liveSyncStatus"]
       95 MOVE                             R9 R6
       96 CALL                             R9 0 1
       97 JUMPIFNOT                        R9 ; [+4]
       98 LOADNIL                          R9
       99 SETTABLEKS                       R9 R8 K23 ["liveSyncStatus"]
      101 JUMP                             ; [+3]
      102 LOADNIL                          R9
      103 SETTABLEKS                       R9 R8 K24 ["instanceFileSyncStatus"]
      105 MOVE                             R9 R2
      106 CALL                             R9 0 1
      107 JUMPIF                           R9 ; [+3]
      108 LOADNIL                          R9
      109 SETTABLEKS                       R9 R8 K25 ["isAuroraDisabled"]
      111 MOVE                             R9 R3
      112 CALL                             R9 0 1
      113 JUMPIF                           R9 ; [+3]
      114 LOADNIL                          R9
      115 SETTABLEKS                       R9 R8 K26 ["reimportStatus"]
      117 MOVE                             R9 R7
      118 CALL                             R9 0 1
      119 JUMPIF                           R9 ; [+3]
      120 LOADNIL                          R9
      121 SETTABLEKS                       R9 R8 K27 ["negateSelection"]
      123 RETURN                           R8 1
