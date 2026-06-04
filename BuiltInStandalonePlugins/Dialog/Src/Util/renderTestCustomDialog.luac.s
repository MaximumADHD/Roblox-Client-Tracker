PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Element"}]
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
       16 GETUPVAL                         R7 6
       17 GETTABLEKS                       R7 R7 K8 ["Provider"]
       19 DUPTABLE                         R8 K10 [{"value"}]
       20 DUPTABLE                         R9 K12 [{"LogEvent"}]
       21 DUPCLOSURE                       R10 K13 [PROTO_0]
       22 SETTABLEKS                       R10 R9 K11 ["LogEvent"]
       24 SETTABLEKS                       R9 R8 K9 ["value"]
       26 DUPTABLE                         R9 K1 [{"Element"}]
       27 GETUPVAL                         R10 5
       28 GETUPVAL                         R11 7
       29 GETTABLEKS                       R11 R11 K14 ["component"]
       31 DUPTABLE                         R12 K18 [{"uri", "input", "onResolved"}]
       32 GETUPVAL                         R13 7
       33 GETTABLEKS                       R13 R13 K15 ["uri"]
       35 SETTABLEKS                       R13 R12 K15 ["uri"]
       37 SETTABLEKS                       R0 R12 K16 ["input"]
       39 GETUPVAL                         R13 8
       40 SETTABLEKS                       R13 R12 K17 ["onResolved"]
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K0 ["Element"]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K6 ["TelemetryServiceProvider"]
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K0 ["Element"]
       51 CALL                             R1 1 -1
       52 RETURN                           R1 -1

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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["renderTestCustomDialog should only be used when the custom dialogs feature is enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 JUMPIFNOT                        R2 ; [+2]
        9 MOVE                             R3 R2
       10 JUMP                             ; [+4]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["new"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["mock"]
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["fn"]
       22 CALL                             R5 0 2
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R6
       33 GETUPVAL                         R8 9
       34 MOVE                             R9 R7
       35 MOVE                             R10 R1
       36 CALL                             R9 1 -1
       37 CALL                             R8 -1 1
       38 GETUPVAL                         R9 10
       39 GETTABLEKS                       R10 R3 K6 ["subWindows"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R9 R9 K7 ["toHaveLength"]
       44 LOADN                            R10 1
       45 CALL                             R9 1 0
       46 GETTABLEKS                       R10 R3 K6 ["subWindows"]
       48 GETTABLEN                        R9 R10 1
       49 GETUPVAL                         R10 11
       50 MOVE                             R11 R9
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 12
       53 GETTABLEKS                       R11 R11 K8 ["join"]
       55 MOVE                             R12 R8
       56 MOVE                             R13 R10
       57 DUPTABLE                         R14 K14 [{"onResolvedSpy", "rerender", "clickPrimaryButton", "clickSecondaryButton", "clickTertiaryButton"}]
       58 SETTABLEKS                       R5 R14 K9 ["onResolvedSpy"]
       60 NEWCLOSURE                       R15 P1
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R15 R14 K10 ["rerender"]
       65 NEWCLOSURE                       R15 P2
       66 CAPTURE                          UPVAL U13
       67 CAPTURE                          VAL R10
       68 SETTABLEKS                       R15 R14 K11 ["clickPrimaryButton"]
       70 NEWCLOSURE                       R15 P3
       71 CAPTURE                          UPVAL U13
       72 CAPTURE                          VAL R10
       73 SETTABLEKS                       R15 R14 K12 ["clickSecondaryButton"]
       75 NEWCLOSURE                       R15 P4
       76 CAPTURE                          UPVAL U13
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R15 R14 K13 ["clickTertiaryButton"]
       80 CALL                             R11 3 -1
       81 RETURN                           R11 -1

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
       48 GETTABLEKS                       R7 R0 K13 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K15 ["TelemetryServiceContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K13 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K13 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K18 ["getFeatureStudioDialogManagerCustomDialogs"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K13 ["Src"]
       75 GETTABLEKS                       R10 R10 K19 ["Util"]
       77 GETTABLEKS                       R10 R10 K20 ["mockContext"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R2 K21 ["TestHelpers"]
       82 GETTABLEKS                       R10 R10 K22 ["Instances"]
       84 GETTABLEKS                       R10 R10 K23 ["MockPlugin"]
       86 GETTABLEKS                       R11 R2 K24 ["ContextServices"]
       88 GETTABLEKS                       R11 R11 K25 ["Plugin"]
       90 GETTABLEKS                       R12 R2 K24 ["ContextServices"]
       92 GETTABLEKS                       R12 R12 K26 ["Localization"]
       94 GETTABLEKS                       R13 R4 K27 ["createElement"]
       96 GETTABLEKS                       R14 R3 K28 ["expect"]
       98 GETTABLEKS                       R15 R5 K29 ["fireEvent"]
      100 GETTABLEKS                       R16 R3 K30 ["jest"]
      102 GETTABLEKS                       R17 R2 K24 ["ContextServices"]
      104 GETTABLEKS                       R17 R17 K31 ["provide"]
      106 GETTABLEKS                       R18 R5 K32 ["render"]
      108 GETTABLEKS                       R19 R5 K33 ["within"]
      110 DUPCLOSURE                       R20 K34 [PROTO_6]
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R15
      125 RETURN                           R20 1
