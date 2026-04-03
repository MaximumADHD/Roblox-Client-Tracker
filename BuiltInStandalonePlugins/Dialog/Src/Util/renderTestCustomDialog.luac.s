PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Element"}]
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K3 [{"Plugin"}]
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R5 R6 K4 ["new"]
        7 GETUPVAL                         R6 3
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K2 ["Plugin"]
       11 DUPTABLE                         R5 K6 [{"TelemetryServiceProvider"}]
       12 GETUPVAL                         R6 4
       13 GETUPVAL                         R8 5
       14 GETTABLEKS                       R7 R8 K7 ["Provider"]
       16 DUPTABLE                         R8 K9 [{"value"}]
       17 DUPTABLE                         R9 K11 [{"LogEvent"}]
       18 DUPCLOSURE                       R10 K12 [PROTO_0]
       19 SETTABLEKS                       R10 R9 K10 ["LogEvent"]
       21 SETTABLEKS                       R9 R8 K8 ["value"]
       23 DUPTABLE                         R9 K1 [{"Element"}]
       24 GETUPVAL                         R10 4
       25 GETUPVAL                         R12 6
       26 GETTABLEKS                       R11 R12 K13 ["component"]
       28 DUPTABLE                         R12 K17 [{"uri", "input", "onResolved"}]
       29 GETUPVAL                         R14 6
       30 GETTABLEKS                       R13 R14 K14 ["uri"]
       32 SETTABLEKS                       R13 R12 K14 ["uri"]
       34 SETTABLEKS                       R0 R12 K15 ["input"]
       36 GETUPVAL                         R13 7
       37 SETTABLEKS                       R13 R12 K16 ["onResolved"]
       39 CALL                             R10 2 1
       40 SETTABLEKS                       R10 R9 K0 ["Element"]
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K5 ["TelemetryServiceProvider"]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K0 ["Element"]
       48 CALL                             R1 1 -1
       49 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["rerender"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getByTestId"]
        6 LOADK                            R2 K2 ["--dialog-button-primary"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getByTestId"]
        6 LOADK                            R2 K2 ["--dialog-button-secondary"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getByTestId"]
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
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["new"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K4 ["fn"]
       18 CALL                             R4 0 2
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R5
       28 GETUPVAL                         R7 8
       29 MOVE                             R8 R6
       30 MOVE                             R9 R1
       31 CALL                             R8 1 -1
       32 CALL                             R7 -1 1
       33 GETUPVAL                         R9 9
       34 GETTABLEKS                       R10 R3 K5 ["subWindows"]
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R8 R9 K6 ["toHaveLength"]
       39 LOADN                            R9 1
       40 CALL                             R8 1 0
       41 GETTABLEKS                       R9 R3 K5 ["subWindows"]
       43 GETTABLEN                        R8 R9 1
       44 GETUPVAL                         R9 10
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 GETUPVAL                         R11 11
       48 GETTABLEKS                       R10 R11 K7 ["join"]
       50 MOVE                             R11 R7
       51 MOVE                             R12 R9
       52 DUPTABLE                         R13 K13 [{"onResolvedSpy", "rerender", "clickPrimaryButton", "clickSecondaryButton", "clickTertiaryButton"}]
       53 SETTABLEKS                       R4 R13 K8 ["onResolvedSpy"]
       55 NEWCLOSURE                       R14 P1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R14 R13 K9 ["rerender"]
       60 NEWCLOSURE                       R14 P2
       61 CAPTURE                          UPVAL U12
       62 CAPTURE                          VAL R9
       63 SETTABLEKS                       R14 R13 K10 ["clickPrimaryButton"]
       65 NEWCLOSURE                       R14 P3
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R14 R13 K11 ["clickSecondaryButton"]
       70 NEWCLOSURE                       R14 P4
       71 CAPTURE                          UPVAL U12
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R14 R13 K12 ["clickTertiaryButton"]
       75 CALL                             R10 3 -1
       76 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Packages"]
       25 GETTABLEKS                       R5 R6 K9 ["Dev"]
       27 GETTABLEKS                       R4 R5 K10 ["JestGlobals"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Packages"]
       41 GETTABLEKS                       R7 R8 K9 ["Dev"]
       43 GETTABLEKS                       R6 R7 K12 ["ReactTestingLibrary"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       52 GETTABLEKS                       R7 R8 K15 ["TelemetryServiceContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K13 ["Src"]
       59 GETTABLEKS                       R8 R9 K16 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Src"]
       66 GETTABLEKS                       R10 R11 K17 ["Flags"]
       68 GETTABLEKS                       R9 R10 K18 ["getFeatureStudioDialogManagerCustomDialogs"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R12 R0 K13 ["Src"]
       75 GETTABLEKS                       R11 R12 K19 ["Util"]
       77 GETTABLEKS                       R10 R11 K20 ["mockContext"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R12 R2 K21 ["TestHelpers"]
       82 GETTABLEKS                       R11 R12 K22 ["Instances"]
       84 GETTABLEKS                       R10 R11 K23 ["MockPlugin"]
       86 GETTABLEKS                       R12 R2 K24 ["ContextServices"]
       88 GETTABLEKS                       R11 R12 K25 ["Plugin"]
       90 GETTABLEKS                       R12 R4 K26 ["createElement"]
       92 GETTABLEKS                       R13 R3 K27 ["expect"]
       94 GETTABLEKS                       R14 R5 K28 ["fireEvent"]
       96 GETTABLEKS                       R15 R3 K29 ["jest"]
       98 GETTABLEKS                       R17 R2 K24 ["ContextServices"]
      100 GETTABLEKS                       R16 R17 K30 ["provide"]
      102 GETTABLEKS                       R17 R5 K31 ["render"]
      104 GETTABLEKS                       R18 R5 K32 ["within"]
      106 DUPCLOSURE                       R19 K33 [PROTO_6]
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R14
      120 RETURN                           R19 1
