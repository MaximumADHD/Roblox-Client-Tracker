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
       16 GETUPVAL                         R7 6
       17 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       19 GETTABLEKS                       R7 R7 K9 ["TelemetryServiceContext"]
       21 GETTABLEKS                       R7 R7 K0 ["Provider"]
       23 DUPTABLE                         R8 K11 [{"value"}]
       24 DUPTABLE                         R9 K13 [{"LogEvent"}]
       25 DUPCLOSURE                       R10 K14 [PROTO_0]
       26 SETTABLEKS                       R10 R9 K12 ["LogEvent"]
       28 SETTABLEKS                       R9 R8 K10 ["value"]
       30 DUPTABLE                         R9 K16 [{"Element"}]
       31 GETUPVAL                         R10 5
       32 GETUPVAL                         R11 7
       33 GETTABLEKS                       R11 R11 K17 ["component"]
       35 DUPTABLE                         R12 K21 [{"uri", "input", "onResolved"}]
       36 GETUPVAL                         R13 7
       37 GETTABLEKS                       R13 R13 K18 ["uri"]
       39 SETTABLEKS                       R13 R12 K18 ["uri"]
       41 SETTABLEKS                       R0 R12 K19 ["input"]
       43 GETUPVAL                         R13 8
       44 SETTABLEKS                       R13 R12 K20 ["onResolved"]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K15 ["Element"]
       49 CALL                             R6 3 1
       50 SETTABLEKS                       R6 R5 K6 ["TelemetryServiceProvider"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K0 ["Provider"]
       55 CALL                             R1 1 -1
       56 RETURN                           R1 -1

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
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R6
       25 GETUPVAL                         R8 8
       26 MOVE                             R9 R7
       27 MOVE                             R10 R1
       28 CALL                             R9 1 -1
       29 CALL                             R8 -1 1
       30 GETUPVAL                         R9 9
       31 GETTABLEKS                       R10 R3 K3 ["subWindows"]
       33 CALL                             R9 1 1
       34 GETTABLEKS                       R9 R9 K4 ["toHaveLength"]
       36 LOADN                            R10 1
       37 CALL                             R9 1 0
       38 GETTABLEKS                       R10 R3 K3 ["subWindows"]
       40 GETTABLEN                        R9 R10 1
       41 GETUPVAL                         R10 10
       42 MOVE                             R11 R9
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 11
       45 GETTABLEKS                       R11 R11 K5 ["join"]
       47 MOVE                             R12 R8
       48 MOVE                             R13 R10
       49 DUPTABLE                         R14 K11 [{"onResolvedSpy", "rerender", "clickPrimaryButton", "clickSecondaryButton", "clickTertiaryButton"}]
       50 SETTABLEKS                       R5 R14 K6 ["onResolvedSpy"]
       52 NEWCLOSURE                       R15 P1
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 SETTABLEKS                       R15 R14 K7 ["rerender"]
       57 NEWCLOSURE                       R15 P2
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          VAL R10
       60 SETTABLEKS                       R15 R14 K8 ["clickPrimaryButton"]
       62 NEWCLOSURE                       R15 P3
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          VAL R10
       65 SETTABLEKS                       R15 R14 K9 ["clickSecondaryButton"]
       67 NEWCLOSURE                       R15 P4
       68 CAPTURE                          UPVAL U12
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R15 R14 K10 ["clickTertiaryButton"]
       72 CALL                             R11 3 -1
       73 RETURN                           R11 -1

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
       57 GETTABLEKS                       R8 R8 K15 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K14 ["Src"]
       64 GETTABLEKS                       R9 R9 K16 ["Util"]
       66 GETTABLEKS                       R9 R9 K17 ["mockContext"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R2 K18 ["TestHelpers"]
       71 GETTABLEKS                       R9 R9 K19 ["Instances"]
       73 GETTABLEKS                       R9 R9 K20 ["MockPlugin"]
       75 GETTABLEKS                       R10 R2 K21 ["ContextServices"]
       77 GETTABLEKS                       R10 R10 K22 ["Plugin"]
       79 GETTABLEKS                       R11 R2 K21 ["ContextServices"]
       81 GETTABLEKS                       R11 R11 K23 ["Localization"]
       83 GETTABLEKS                       R12 R4 K24 ["createElement"]
       85 GETTABLEKS                       R13 R3 K25 ["expect"]
       87 GETTABLEKS                       R14 R5 K26 ["fireEvent"]
       89 GETTABLEKS                       R15 R3 K27 ["jest"]
       91 GETTABLEKS                       R16 R2 K21 ["ContextServices"]
       93 GETTABLEKS                       R16 R16 K28 ["provide"]
       95 GETTABLEKS                       R17 R5 K29 ["render"]
       97 GETTABLEKS                       R18 R5 K30 ["within"]
       99 DUPCLOSURE                       R19 K31 [PROTO_6]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R14
      113 RETURN                           R19 1
