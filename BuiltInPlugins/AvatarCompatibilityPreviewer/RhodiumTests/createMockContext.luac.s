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
       69 GETTABLEKS                       R10 R10 K8 ["PluginActions"]
       71 GETTABLEKS                       R10 R10 K0 ["new"]
       73 MOVE                             R11 R0
       74 GETUPVAL                         R12 10
       75 MOVE                             R13 R0
       76 GETUPVAL                         R14 11
       77 GETTABLEKS                       R14 R14 K9 ["mock"]
       79 CALL                             R14 0 -1
       80 CALL                             R12 -1 -1
       81 CALL                             R10 -1 1
       82 FASTCALL2                        TABLE_INSERT R9 R10 ; [+5]
       84 MOVE                             R12 R9
       85 MOVE                             R13 R10
       86 GETIMPORT                        R11 K12 [table.insert]
       88 CALL                             R11 2 0
       89 DUPTABLE                         R11 K19 [{"context", "plugin", "analyticsService", "analyticsEvents", "selectionService", "placesService"}]
       90 SETTABLEKS                       R9 R11 K13 ["context"]
       92 SETTABLEKS                       R0 R11 K14 ["plugin"]
       94 SETTABLEKS                       R1 R11 K15 ["analyticsService"]
       96 SETTABLEKS                       R3 R11 K16 ["analyticsEvents"]
       98 SETTABLEKS                       R2 R11 K17 ["selectionService"]
      100 DUPTABLE                         R12 K22 [{"startPlaySolo", "stopPlaySolo"}]
      101 SETTABLEKS                       R5 R12 K20 ["startPlaySolo"]
      103 SETTABLEKS                       R7 R12 K21 ["stopPlaySolo"]
      105 SETTABLEKS                       R12 R11 K18 ["placesService"]
      107 DUPTABLE                         R12 K23 [{"placesService"}]
      108 DUPTABLE                         R13 K22 [{"startPlaySolo", "stopPlaySolo"}]
      109 SETTABLEKS                       R6 R13 K20 ["startPlaySolo"]
      111 SETTABLEKS                       R8 R13 K21 ["stopPlaySolo"]
      113 SETTABLEKS                       R13 R12 K18 ["placesService"]
      115 RETURN                           R11 2

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
       75 GETTABLEKS                       R9 R2 K20 ["ContextServices"]
       77 GETTABLEKS                       R10 R9 K21 ["Localization"]
       79 GETTABLEKS                       R11 R2 K22 ["TestHelpers"]
       81 GETTABLEKS                       R11 R11 K23 ["Instances"]
       83 GETTABLEKS                       R11 R11 K24 ["MockAnalyticsService"]
       85 GETTABLEKS                       R12 R2 K22 ["TestHelpers"]
       87 GETTABLEKS                       R12 R12 K23 ["Instances"]
       89 GETTABLEKS                       R12 R12 K25 ["MockSelectionService"]
       91 GETTABLEKS                       R13 R2 K22 ["TestHelpers"]
       93 GETTABLEKS                       R13 R13 K23 ["Instances"]
       95 GETTABLEKS                       R13 R13 K26 ["MockPlugin"]
       97 GETTABLEKS                       R14 R3 K27 ["jest"]
       99 DUPCLOSURE                       R15 K28 [PROTO_1]
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R10
      112 RETURN                           R15 1
