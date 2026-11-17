PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 2
        5 LOADNIL                          R2
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+18]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["join"]
       11 GETUPVAL                         R4 4
       12 GETUPVAL                         R5 5
       13 JUMPIF                           R5 ; [+2]
       14 NEWTABLE                         R5 0 0
       16 DUPTABLE                         R6 K3 [{"focus"}]
       17 GETUPVAL                         R7 6
       18 GETTABLEKS                       R7 R7 K4 ["new"]
       20 MOVE                             R8 R1
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K2 ["focus"]
       24 CALL                             R3 3 1
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K1 ["join"]
       29 GETUPVAL                         R4 4
       30 GETUPVAL                         R5 5
       31 JUMPIF                           R5 ; [+2]
       32 NEWTABLE                         R5 0 0
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 7
       36 GETTABLEKS                       R4 R4 K5 ["createElement"]
       38 LOADK                            R5 K6 ["ScreenGui"]
       39 DUPTABLE                         R6 K9 [{"ref", "ZIndexBehavior"}]
       40 SETTABLEKS                       R2 R6 K7 ["ref"]
       42 GETIMPORT                        R7 K12 [Enum.ZIndexBehavior.Sibling]
       44 SETTABLEKS                       R7 R6 K8 ["ZIndexBehavior"]
       46 NEWTABLE                         R7 0 1
       48 JUMPIFNOT                        R1 ; [+29]
       49 GETUPVAL                         R8 8
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K13 ["values"]
       53 MOVE                             R10 R3
       54 CALL                             R9 1 1
       55 DUPTABLE                         R10 K15 [{"Provider"}]
       56 GETUPVAL                         R11 7
       57 GETTABLEKS                       R11 R11 K5 ["createElement"]
       59 GETUPVAL                         R12 9
       60 DUPTABLE                         R13 K19 [{["theme"] = "Dark", ["onStyleSheetChange"]}]
       61 GETUPVAL                         R14 10
       62 SETTABLEKS                       R14 R13 K18 ["onStyleSheetChange"]
       64 DUPTABLE                         R14 K21 [{"Component"}]
       65 GETUPVAL                         R15 7
       66 GETTABLEKS                       R15 R15 K5 ["createElement"]
       68 GETUPVAL                         R16 11
       69 MOVE                             R17 R0
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K20 ["Component"]
       73 CALL                             R11 3 1
       74 SETTABLEKS                       R11 R10 K14 ["Provider"]
       76 CALL                             R8 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R8
       79 SETLIST                          R7 R8 1 [1]
       81 CALL                             R4 3 -1
       82 RETURN                           R4 -1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StylingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R4 K15 ["Style"]
       38 GETTABLEKS                       R6 R6 K16 ["Themes"]
       40 GETTABLEKS                       R6 R6 K17 ["StudioTheme"]
       42 GETTABLEKS                       R7 R5 K18 ["Localization"]
       44 GETTABLEKS                       R8 R5 K19 ["Focus"]
       46 GETTABLEKS                       R9 R4 K20 ["TestHelpers"]
       48 GETTABLEKS                       R9 R9 K21 ["provideMockContext"]
       50 GETTABLEKS                       R10 R2 K22 ["useEffect"]
       52 GETTABLEKS                       R11 R2 K23 ["useState"]
       54 GETIMPORT                        R12 K9 [require]
       56 GETTABLEKS                       R13 R0 K24 ["Src"]
       58 GETTABLEKS                       R13 R13 K25 ["Util"]
       60 GETTABLEKS                       R13 R13 K26 ["Telemetry"]
       62 GETTABLEKS                       R13 R13 K27 ["TelemetryContext"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K9 [require]
       67 GETTABLEKS                       R14 R0 K10 ["Packages"]
       69 GETTABLEKS                       R14 R14 K28 ["StudioFoundation"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R14 R13 K29 ["Components"]
       74 GETTABLEKS                       R14 R14 K30 ["FoundationProviderAdapter"]
       76 DUPTABLE                         R15 K35 [{"analytics", "telemetry", "localization", "theme"}]
       77 GETTABLEKS                       R16 R5 K36 ["Analytics"]
       79 GETTABLEKS                       R16 R16 K37 ["mock"]
       81 CALL                             R16 0 1
       82 SETTABLEKS                       R16 R15 K31 ["analytics"]
       84 GETTABLEKS                       R16 R12 K37 ["mock"]
       86 CALL                             R16 0 1
       87 SETTABLEKS                       R16 R15 K32 ["telemetry"]
       89 GETTABLEKS                       R16 R7 K37 ["mock"]
       91 CALL                             R16 0 1
       92 SETTABLEKS                       R16 R15 K33 ["localization"]
       94 GETTABLEKS                       R16 R6 K37 ["mock"]
       96 CALL                             R16 0 1
       97 SETTABLEKS                       R16 R15 K34 ["theme"]
       99 DUPCLOSURE                       R16 K38 [PROTO_2]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R14
      109 RETURN                           R16 1
