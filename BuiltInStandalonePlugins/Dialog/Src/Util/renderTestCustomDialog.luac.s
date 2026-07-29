PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Provider"}]
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K4 [{"Plugin", "Localization"}]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K5 ["new"]
        7 GETUPVAL                         R6 3
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K2 ["Plugin"]
       11 GETUPVAL                         R5 4
       12 SETTABLEKS                       R5 R4 K3 ["Localization"]
       14 DUPTABLE                         R5 K7 [{"TelemetryServiceProvider"}]
       15 GETUPVAL                         R6 5
       16 GETUPVAL                         R8 6
       17 CALL                             R8 0 1
       18 JUMPIFNOT                        R8 ; [+8]
       19 GETUPVAL                         R7 7
       20 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       22 GETTABLEKS                       R7 R7 K9 ["TelemetryServiceContext"]
       24 GETTABLEKS                       R7 R7 K0 ["Provider"]
       26 JUMP                             ; [+3]
       27 GETUPVAL                         R7 8
       28 GETTABLEKS                       R7 R7 K0 ["Provider"]
       30 DUPTABLE                         R8 K11 [{"value"}]
       31 DUPTABLE                         R9 K13 [{"LogEvent"}]
       32 DUPCLOSURE                       R10 K14 [PROTO_0]
       33 SETTABLEKS                       R10 R9 K12 ["LogEvent"]
       35 SETTABLEKS                       R9 R8 K10 ["value"]
       37 DUPTABLE                         R9 K16 [{"Element"}]
       38 GETUPVAL                         R10 5
       39 GETUPVAL                         R11 9
       40 GETTABLEKS                       R11 R11 K17 ["component"]
       42 DUPTABLE                         R12 K21 [{"uri", "input", "onResolved"}]
       43 GETUPVAL                         R13 9
       44 GETTABLEKS                       R13 R13 K18 ["uri"]
       46 SETTABLEKS                       R13 R12 K18 ["uri"]
       48 SETTABLEKS                       R0 R12 K19 ["input"]
       50 GETUPVAL                         R13 10
       51 SETTABLEKS                       R13 R12 K20 ["onResolved"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K15 ["Element"]
       56 CALL                             R6 3 1
       57 SETTABLEKS                       R6 R5 K6 ["TelemetryServiceProvider"]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K0 ["Provider"]
       62 CALL                             R1 1 -1
       63 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["rerender"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getByTestId"]
        6 LOADK                            R2 K2 ["--dialog-button-primary"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getByTestId"]
        6 LOADK                            R2 K2 ["--dialog-button-secondary"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getByTestId"]
        6 LOADK                            R2 K2 ["--dialog-button-tertiary"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R2 ; [+2]
        1 MOVE                             R3 R2
        2 JUMP                             ; [+4]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["new"]
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["mock"]
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K2 ["fn"]
       14 CALL                             R5 0 2
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R6
       27 GETUPVAL                         R8 10
       28 MOVE                             R9 R7
       29 MOVE                             R10 R1
       30 CALL                             R9 1 -1
       31 CALL                             R8 -1 1
       32 GETUPVAL                         R9 11
       33 GETTABLEKS                       R10 R3 K3 ["subWindows"]
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R9 R9 K4 ["toHaveLength"]
       38 LOADN                            R10 1
       39 CALL                             R9 1 0
       40 GETTABLEKS                       R10 R3 K3 ["subWindows"]
       42 GETTABLEN                        R9 R10 1
       43 GETUPVAL                         R10 12
       44 MOVE                             R11 R9
       45 CALL                             R10 1 1
       46 GETUPVAL                         R11 13
       47 GETTABLEKS                       R11 R11 K5 ["join"]
       49 MOVE                             R12 R8
       50 MOVE                             R13 R10
       51 DUPTABLE                         R14 K11 [{"onResolvedSpy", "rerender", "clickPrimaryButton", "clickSecondaryButton", "clickTertiaryButton"}]
       52 SETTABLEKS                       R5 R14 K6 ["onResolvedSpy"]
       54 NEWCLOSURE                       R15 P1
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R15 R14 K7 ["rerender"]
       59 NEWCLOSURE                       R15 P2
       60 CAPTURE                          UPVAL U14
       61 CAPTURE                          VAL R10
       62 SETTABLEKS                       R15 R14 K8 ["clickPrimaryButton"]
       64 NEWCLOSURE                       R15 P3
       65 CAPTURE                          UPVAL U14
       66 CAPTURE                          VAL R10
       67 SETTABLEKS                       R15 R14 K9 ["clickSecondaryButton"]
       69 NEWCLOSURE                       R15 P4
       70 CAPTURE                          UPVAL U14
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R15 R14 K10 ["clickTertiaryButton"]
       74 CALL                             R11 3 -1
       75 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
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
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K9 ["Dev"]
       43 GETTABLEKS                       R6 R6 K12 ["ReactTestingLibrary"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K16 ["DEPRECATED_TelemetryServiceContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K14 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K14 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["Util"]
       75 GETTABLEKS                       R10 R10 K19 ["mockContext"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R2 K20 ["TestHelpers"]
       80 GETTABLEKS                       R10 R10 K21 ["Instances"]
       82 GETTABLEKS                       R10 R10 K22 ["MockPlugin"]
       84 GETTABLEKS                       R11 R2 K23 ["ContextServices"]
       86 GETTABLEKS                       R11 R11 K24 ["Plugin"]
       88 GETTABLEKS                       R12 R2 K23 ["ContextServices"]
       90 GETTABLEKS                       R12 R12 K25 ["Localization"]
       92 GETTABLEKS                       R13 R4 K26 ["createElement"]
       94 GETTABLEKS                       R14 R3 K27 ["expect"]
       96 GETTABLEKS                       R15 R5 K28 ["fireEvent"]
       98 GETTABLEKS                       R16 R6 K29 ["SharedFlags"]
      100 GETTABLEKS                       R16 R16 K30 ["getFFlagStudioFoundationDialogComponent"]
      102 GETTABLEKS                       R17 R3 K31 ["jest"]
      104 GETTABLEKS                       R18 R2 K23 ["ContextServices"]
      106 GETTABLEKS                       R18 R18 K32 ["provide"]
      108 GETTABLEKS                       R19 R5 K33 ["render"]
      110 GETTABLEKS                       R20 R5 K34 ["within"]
      112 DUPCLOSURE                       R21 K35 [PROTO_6]
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R15
      128 RETURN                           R21 1
