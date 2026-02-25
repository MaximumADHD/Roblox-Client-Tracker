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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["join"]
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R3 4
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 5
       14 GETTABLEKS                       R2 R3 K2 ["provideMockContext"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K3 ["values"]
       19 MOVE                             R4 R1
       20 CALL                             R3 1 1
       21 DUPTABLE                         R4 K5 [{"Provider"}]
       22 GETUPVAL                         R6 6
       23 GETTABLEKS                       R5 R6 K6 ["createElement"]
       25 GETUPVAL                         R6 7
       26 DUPTABLE                         R7 K9 [{"theme", "onStyleSheetChange"}]
       27 LOADK                            R8 K10 ["Dark"]
       28 SETTABLEKS                       R8 R7 K7 ["theme"]
       30 GETUPVAL                         R8 8
       31 SETTABLEKS                       R8 R7 K8 ["onStyleSheetChange"]
       33 DUPTABLE                         R8 K12 [{"Component"}]
       34 GETUPVAL                         R10 6
       35 GETTABLEKS                       R9 R10 K6 ["createElement"]
       37 GETUPVAL                         R10 9
       38 MOVE                             R11 R0
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K11 ["Component"]
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K4 ["Provider"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 RETURN                           R3 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["StudioFoundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R6 R4 K14 ["Components"]
       36 GETTABLEKS                       R5 R6 K15 ["FoundationProviderAdapter"]
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Packages"]
       42 GETTABLEKS                       R7 R8 K16 ["Framework"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R6 K17 ["TestHelpers"]
       47 GETTABLEKS                       R8 R6 K18 ["ContextServices"]
       49 GETTABLEKS                       R11 R6 K19 ["Style"]
       51 GETTABLEKS                       R10 R11 K20 ["Themes"]
       53 GETTABLEKS                       R9 R10 K21 ["StudioTheme"]
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R14 R0 K22 ["Src"]
       59 GETTABLEKS                       R13 R14 K23 ["Util"]
       61 GETTABLEKS                       R12 R13 K24 ["Telemetry"]
       63 GETTABLEKS                       R11 R12 K25 ["TelemetryContext"]
       65 CALL                             R10 1 1
       66 DUPTABLE                         R11 K30 [{"analytics", "telemetry", "localization", "theme"}]
       67 GETTABLEKS                       R13 R8 K31 ["Analytics"]
       69 GETTABLEKS                       R12 R13 K32 ["mock"]
       71 CALL                             R12 0 1
       72 SETTABLEKS                       R12 R11 K26 ["analytics"]
       74 GETTABLEKS                       R12 R10 K32 ["mock"]
       76 CALL                             R12 0 1
       77 SETTABLEKS                       R12 R11 K27 ["telemetry"]
       79 GETTABLEKS                       R13 R8 K33 ["Localization"]
       81 GETTABLEKS                       R12 R13 K32 ["mock"]
       83 CALL                             R12 0 1
       84 SETTABLEKS                       R12 R11 K28 ["localization"]
       86 GETTABLEKS                       R12 R9 K32 ["mock"]
       88 CALL                             R12 0 1
       89 SETTABLEKS                       R12 R11 K29 ["theme"]
       91 GETTABLEKS                       R12 R2 K34 ["useEffect"]
       93 DUPCLOSURE                       R13 K35 [PROTO_2]
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R5
      101 RETURN                           R13 1
