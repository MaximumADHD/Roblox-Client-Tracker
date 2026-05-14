PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["new"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["fn"]
       15 CALL                             R3 0 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K1 ["fn"]
       19 CALL                             R5 0 2
       20 NEWTABLE                         R7 0 5
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R8 R8 K2 ["ContextServices"]
       25 GETTABLEKS                       R8 R8 K3 ["Plugin"]
       27 GETTABLEKS                       R8 R8 K0 ["new"]
       29 MOVE                             R9 R0
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 5
       32 LOADB                            R10 1
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 4
       35 GETTABLEKS                       R10 R10 K2 ["ContextServices"]
       37 GETTABLEKS                       R10 R10 K4 ["Analytics"]
       39 GETTABLEKS                       R10 R10 K0 ["new"]
       41 GETUPVAL                         R11 6
       42 MOVE                             R12 R1
       43 CALL                             R10 2 1
       44 GETUPVAL                         R11 7
       45 GETTABLEKS                       R11 R11 K5 ["Contexts"]
       47 GETTABLEKS                       R11 R11 K6 ["PreviewContext"]
       49 GETTABLEKS                       R11 R11 K0 ["new"]
       51 CALL                             R11 0 1
       52 GETUPVAL                         R12 8
       53 GETTABLEKS                       R12 R12 K0 ["new"]
       55 MOVE                             R13 R2
       56 CALL                             R12 1 -1
       57 SETLIST                          R7 R8 -1 [1]
       59 GETUPVAL                         R8 9
       60 CALL                             R8 0 1
       61 JUMPIFNOT                        R8 ; [+21]
       62 GETUPVAL                         R8 10
       63 GETTABLEKS                       R8 R8 K7 ["PluginActions"]
       65 GETTABLEKS                       R8 R8 K0 ["new"]
       67 MOVE                             R9 R0
       68 GETUPVAL                         R10 11
       69 MOVE                             R11 R0
       70 GETUPVAL                         R12 12
       71 GETTABLEKS                       R12 R12 K8 ["mock"]
       73 CALL                             R12 0 -1
       74 CALL                             R10 -1 -1
       75 CALL                             R8 -1 1
       76 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
       78 MOVE                             R10 R7
       79 MOVE                             R11 R8
       80 GETIMPORT                        R9 K11 [table.insert]
       82 CALL                             R9 2 0
       83 DUPTABLE                         R8 K17 [{"context", "plugin", "analyticsService", "selectionService", "placesService"}]
       84 SETTABLEKS                       R7 R8 K12 ["context"]
       86 SETTABLEKS                       R0 R8 K13 ["plugin"]
       88 SETTABLEKS                       R1 R8 K14 ["analyticsService"]
       90 SETTABLEKS                       R2 R8 K15 ["selectionService"]
       92 DUPTABLE                         R9 K20 [{"startPlaySolo", "stopPlaySolo"}]
       93 SETTABLEKS                       R3 R9 K18 ["startPlaySolo"]
       95 SETTABLEKS                       R5 R9 K19 ["stopPlaySolo"]
       97 SETTABLEKS                       R9 R8 K16 ["placesService"]
       99 DUPTABLE                         R9 K21 [{"placesService"}]
      100 DUPTABLE                         R10 K20 [{"startPlaySolo", "stopPlaySolo"}]
      101 SETTABLEKS                       R4 R10 K18 ["startPlaySolo"]
      103 SETTABLEKS                       R6 R10 K19 ["stopPlaySolo"]
      105 SETTABLEKS                       R10 R9 K16 ["placesService"]
      107 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AvatarToolsShared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dev"]
       27 GETTABLEKS                       R4 R4 K10 ["JestGlobals"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["MakeTheme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Util"]
       45 GETTABLEKS                       R6 R6 K15 ["SelectionWrapper"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K11 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Components"]
       54 GETTABLEKS                       R7 R7 K17 ["PlacesServiceContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K11 ["Src"]
       61 GETTABLEKS                       R8 R8 K12 ["Resources"]
       63 GETTABLEKS                       R8 R8 K18 ["createAnalyticsHandlers"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K11 ["Src"]
       70 GETTABLEKS                       R9 R9 K14 ["Util"]
       72 GETTABLEKS                       R9 R9 K19 ["makePluginActions"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Src"]
       79 GETTABLEKS                       R10 R10 K20 ["Flags"]
       81 GETTABLEKS                       R10 R10 K21 ["getFFlagAvatarPreviewerCageEditingTools"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R2 K22 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K23 ["Localization"]
       88 GETTABLEKS                       R12 R2 K24 ["TestHelpers"]
       90 GETTABLEKS                       R12 R12 K25 ["Instances"]
       92 GETTABLEKS                       R12 R12 K26 ["MockAnalyticsService"]
       94 GETTABLEKS                       R13 R2 K24 ["TestHelpers"]
       96 GETTABLEKS                       R13 R13 K25 ["Instances"]
       98 GETTABLEKS                       R13 R13 K27 ["MockSelectionService"]
      100 GETTABLEKS                       R14 R2 K24 ["TestHelpers"]
      102 GETTABLEKS                       R14 R14 K25 ["Instances"]
      104 GETTABLEKS                       R14 R14 K28 ["MockPlugin"]
      106 GETTABLEKS                       R15 R3 K29 ["jest"]
      108 DUPCLOSURE                       R16 K30 [PROTO_0]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R11
      122 RETURN                           R16 1
