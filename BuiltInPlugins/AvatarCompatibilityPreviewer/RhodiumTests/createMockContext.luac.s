PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R0 K0 ["lastEvent"]
        8 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       10 GETIMPORT                        R1 K3 [table.insert]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["new"]
       11 CALL                             R2 0 1
       12 NEWTABLE                         R3 0 0
       14 GETTABLEKS                       R4 R1 K1 ["SendEventDeferred"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R5 R1 K1 ["SendEventDeferred"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K2 ["fn"]
       24 CALL                             R5 0 2
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K2 ["fn"]
       28 CALL                             R7 0 2
       29 NEWTABLE                         R9 0 5
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K3 ["ContextServices"]
       34 GETTABLEKS                       R10 R10 K4 ["Plugin"]
       36 GETTABLEKS                       R10 R10 K0 ["new"]
       38 MOVE                             R11 R0
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 5
       41 LOADB                            R12 1
       42 CALL                             R11 1 1
       43 GETUPVAL                         R12 4
       44 GETTABLEKS                       R12 R12 K3 ["ContextServices"]
       46 GETTABLEKS                       R12 R12 K5 ["Analytics"]
       48 GETTABLEKS                       R12 R12 K0 ["new"]
       50 GETUPVAL                         R13 6
       51 MOVE                             R14 R1
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 7
       54 GETTABLEKS                       R13 R13 K6 ["Contexts"]
       56 GETTABLEKS                       R13 R13 K7 ["PreviewContext"]
       58 GETTABLEKS                       R13 R13 K0 ["new"]
       60 CALL                             R13 0 1
       61 GETUPVAL                         R14 8
       62 GETTABLEKS                       R14 R14 K0 ["new"]
       64 MOVE                             R15 R2
       65 CALL                             R14 1 -1
       66 SETLIST                          R9 R10 -1 [1]
       68 GETUPVAL                         R10 9
       69 CALL                             R10 0 1
       70 JUMPIFNOT                        R10 ; [+21]
       71 GETUPVAL                         R10 10
       72 GETTABLEKS                       R10 R10 K8 ["PluginActions"]
       74 GETTABLEKS                       R10 R10 K0 ["new"]
       76 MOVE                             R11 R0
       77 GETUPVAL                         R12 11
       78 MOVE                             R13 R0
       79 GETUPVAL                         R14 12
       80 GETTABLEKS                       R14 R14 K9 ["mock"]
       82 CALL                             R14 0 -1
       83 CALL                             R12 -1 -1
       84 CALL                             R10 -1 1
       85 FASTCALL2                        TABLE_INSERT R9 R10 ; [+5]
       87 MOVE                             R12 R9
       88 MOVE                             R13 R10
       89 GETIMPORT                        R11 K12 [table.insert]
       91 CALL                             R11 2 0
       92 DUPTABLE                         R10 K19 [{"context", "plugin", "analyticsService", "analyticsEvents", "selectionService", "placesService"}]
       93 SETTABLEKS                       R9 R10 K13 ["context"]
       95 SETTABLEKS                       R0 R10 K14 ["plugin"]
       97 SETTABLEKS                       R1 R10 K15 ["analyticsService"]
       99 SETTABLEKS                       R3 R10 K16 ["analyticsEvents"]
      101 SETTABLEKS                       R2 R10 K17 ["selectionService"]
      103 DUPTABLE                         R11 K22 [{"startPlaySolo", "stopPlaySolo"}]
      104 SETTABLEKS                       R5 R11 K20 ["startPlaySolo"]
      106 SETTABLEKS                       R7 R11 K21 ["stopPlaySolo"]
      108 SETTABLEKS                       R11 R10 K18 ["placesService"]
      110 DUPTABLE                         R11 K23 [{"placesService"}]
      111 DUPTABLE                         R12 K22 [{"startPlaySolo", "stopPlaySolo"}]
      112 SETTABLEKS                       R6 R12 K20 ["startPlaySolo"]
      114 SETTABLEKS                       R8 R12 K21 ["stopPlaySolo"]
      116 SETTABLEKS                       R12 R11 K18 ["placesService"]
      118 RETURN                           R10 2

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
      108 DUPCLOSURE                       R16 K30 [PROTO_1]
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
