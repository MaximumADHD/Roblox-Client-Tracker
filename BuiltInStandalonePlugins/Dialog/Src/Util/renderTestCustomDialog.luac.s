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
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U10
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R6
       35 GETUPVAL                         R8 11
       36 MOVE                             R9 R7
       37 MOVE                             R10 R1
       38 CALL                             R9 1 -1
       39 CALL                             R8 -1 1
       40 GETUPVAL                         R9 12
       41 GETTABLEKS                       R10 R3 K6 ["subWindows"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R9 R9 K7 ["toHaveLength"]
       46 LOADN                            R10 1
       47 CALL                             R9 1 0
       48 GETTABLEKS                       R10 R3 K6 ["subWindows"]
       50 GETTABLEN                        R9 R10 1
       51 GETUPVAL                         R10 13
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 GETUPVAL                         R11 14
       55 GETTABLEKS                       R11 R11 K8 ["join"]
       57 MOVE                             R12 R8
       58 MOVE                             R13 R10
       59 DUPTABLE                         R14 K14 [{"onResolvedSpy", "rerender", "clickPrimaryButton", "clickSecondaryButton", "clickTertiaryButton"}]
       60 SETTABLEKS                       R5 R14 K9 ["onResolvedSpy"]
       62 NEWCLOSURE                       R15 P1
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R15 R14 K10 ["rerender"]
       67 NEWCLOSURE                       R15 P2
       68 CAPTURE                          UPVAL U15
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R15 R14 K11 ["clickPrimaryButton"]
       72 NEWCLOSURE                       R15 P3
       73 CAPTURE                          UPVAL U15
       74 CAPTURE                          VAL R10
       75 SETTABLEKS                       R15 R14 K12 ["clickSecondaryButton"]
       77 NEWCLOSURE                       R15 P4
       78 CAPTURE                          UPVAL U15
       79 CAPTURE                          VAL R10
       80 SETTABLEKS                       R15 R14 K13 ["clickTertiaryButton"]
       82 CALL                             R11 3 -1
       83 RETURN                           R11 -1

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
       73 GETTABLEKS                       R10 R10 K18 ["Flags"]
       75 GETTABLEKS                       R10 R10 K19 ["getFeatureStudioDialogManagerCustomDialogs"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K14 ["Src"]
       82 GETTABLEKS                       R11 R11 K20 ["Util"]
       84 GETTABLEKS                       R11 R11 K21 ["mockContext"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R2 K22 ["TestHelpers"]
       89 GETTABLEKS                       R11 R11 K23 ["Instances"]
       91 GETTABLEKS                       R11 R11 K24 ["MockPlugin"]
       93 GETTABLEKS                       R12 R2 K25 ["ContextServices"]
       95 GETTABLEKS                       R12 R12 K26 ["Plugin"]
       97 GETTABLEKS                       R13 R2 K25 ["ContextServices"]
       99 GETTABLEKS                       R13 R13 K27 ["Localization"]
      101 GETTABLEKS                       R14 R4 K28 ["createElement"]
      103 GETTABLEKS                       R15 R3 K29 ["expect"]
      105 GETTABLEKS                       R16 R5 K30 ["fireEvent"]
      107 GETTABLEKS                       R17 R6 K31 ["SharedFlags"]
      109 GETTABLEKS                       R17 R17 K32 ["getFFlagStudioFoundationDialogComponent"]
      111 GETTABLEKS                       R18 R3 K33 ["jest"]
      113 GETTABLEKS                       R19 R2 K25 ["ContextServices"]
      115 GETTABLEKS                       R19 R19 K34 ["provide"]
      117 GETTABLEKS                       R20 R5 K35 ["render"]
      119 GETTABLEKS                       R21 R5 K36 ["within"]
      121 DUPCLOSURE                       R22 K37 [PROTO_6]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R16
      138 RETURN                           R22 1
