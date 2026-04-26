PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["REIMPORT"]
        4 GETTABLEKS                       R5 R6 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R5 K2 ["STATUS_CHANGED"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 4 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"isReimporting"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["isReimporting"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["REIMPORT"]
        9 GETTABLEKS                       R5 R6 K3 ["CPC_EVENTS"]
       11 GETTABLEKS                       R4 R5 K4 ["STATUS_CHANGED"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 NAMECALL                         R2 R2 K5 ["Fire"]
       17 CALL                             R2 4 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"isReimporting"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isReimporting"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R8 2
        7 GETTABLEKS                       R7 R8 K2 ["REIMPORT"]
        9 GETTABLEKS                       R6 R7 K3 ["CPC_EVENTS"]
       11 GETTABLEKS                       R5 R6 K4 ["STATUS_CHANGED"]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 NAMECALL                         R3 R3 K5 ["Fire"]
       17 CALL                             R3 4 0
       18 FASTCALL1                        TYPE R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K7 [type]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K8 ["string"] ; [+9]
       25 NEWTABLE                         R1 0 1
       27 DUPTABLE                         R2 K10 [{"message"}]
       28 SETTABLEKS                       R0 R2 K9 ["message"]
       30 SETLIST                          R1 R2 1 [1]
       32 MOVE                             R0 R1
       33 GETUPVAL                         R1 3
       34 CALL                             R1 0 1
       35 JUMPIFNOT                        R1 ; [+9]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R2 R3 K11 ["errors"]
       39 GETTABLEKS                       R1 R2 K12 ["show"]
       41 MOVE                             R2 R0
       42 GETUPVAL                         R3 0
       43 CALL                             R1 2 0
       44 RETURN                           R0 0
       45 GETIMPORT                        R1 K14 [require]
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R4 R5 K15 ["Lib"]
       50 GETTABLEKS                       R3 R4 K16 ["DialogRegistry"]
       52 GETTABLEKS                       R2 R3 K17 ["ShowErrorDialog"]
       54 CALL                             R1 1 1
       55 GETTABLEKS                       R2 R1 K18 ["fromErrors"]
       57 MOVE                             R3 R0
       58 CALL                             R2 1 0
       59 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [warn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"isReimporting", "progress"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isReimporting"]
        5 SETTABLEKS                       R0 R2 K1 ["progress"]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K3 ["REIMPORT"]
       11 GETTABLEKS                       R6 R7 K4 ["CPC_EVENTS"]
       13 GETTABLEKS                       R5 R6 K5 ["STATUS_CHANGED"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 NAMECALL                         R3 R3 K6 ["Fire"]
       19 CALL                             R3 4 0
       20 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K4 [{"success", "error", "warning", "progress"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["success"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 SETTABLEKS                       R2 R1 K1 ["error"]
       16 DUPCLOSURE                       R2 K5 [PROTO_3]
       17 SETTABLEKS                       R2 R1 K2 ["warning"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R2 R1 K3 ["progress"]
       25 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["success"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["success"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["logReimportAttempt"]
       11 GETUPVAL                         R1 2
       12 LOADB                            R2 1
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["error"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["error"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["logReimportAttempt"]
       12 GETUPVAL                         R2 2
       13 LOADB                            R3 0
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getConfigFromInstance"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 2
        5 DUPTABLE                         R5 K5 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
        6 SETTABLEKS                       R3 R5 K1 ["configId"]
        8 MOVE                             R6 R4
        9 JUMPIFNOT                        R6 ; [+14]
       10 LOADB                            R6 1
       11 GETTABLEKS                       R7 R4 K6 ["preset"]
       13 JUMPIFEQKNIL                     R7 ; [+10]
       15 GETTABLEKS                       R7 R4 K6 ["preset"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K7 ["StudioDefaultPreset"]
       20 JUMPIFEQ                         R7 R8 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K2 ["usedStudioDefaultPreset"]
       26 MOVE                             R6 R2
       27 JUMPIFNOT                        R6 ; [+2]
       28 GETTABLEKS                       R6 R2 K8 ["anchor"]
       30 SETTABLEKS                       R6 R5 K3 ["wasReimportRelativeToThis"]
       32 GETTABLEKS                       R6 R1 K9 ["ClassName"]
       34 SETTABLEKS                       R6 R5 K4 ["targetType"]
       36 DUPTABLE                         R6 K14 [{"success", "error", "warning", "progress"}]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R7 R6 K10 ["success"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K11 ["error"]
       49 GETTABLEKS                       R7 R0 K12 ["warning"]
       51 SETTABLEKS                       R7 R6 K12 ["warning"]
       53 GETTABLEKS                       R7 R0 K13 ["progress"]
       55 SETTABLEKS                       R7 R6 K13 ["progress"]
       57 RETURN                           R6 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+6]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 CALL                             R3 3 1
       11 MOVE                             R2 R3
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K0 ["reimport"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 MOVE                             R6 R1
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K0 ["reimport"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K0 ["reimport"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R4 K0 ["SurfaceAppearance"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["reimportSurfaceAppearance"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 LOADK                            R4 K3 ["Decal"]
       12 NAMECALL                         R2 R0 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["reimportDecal"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R0 K5 ["ClassName"]
       24 JUMPIFNOTEQKS                    R2 K6 ["Model"] ; [+16]
       26 LOADK                            R5 K6 ["Model"]
       27 NAMECALL                         R3 R0 K1 ["IsA"]
       29 CALL                             R3 2 -1
       30 FASTCALL                         ASSERT ; [+2]
       31 GETIMPORT                        R2 K8 [assert]
       33 CALL                             R2 -1 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K9 ["reimportModel"]
       37 MOVE                             R3 R0
       38 MOVE                             R4 R1
       39 CALL                             R2 2 0
       40 RETURN                           R0 0
       41 GETIMPORT                        R2 K11 [error]
       43 LOADK                            R4 K12 ["reimport is not supported for targets of type '%*'"]
       44 GETTABLEKS                       R6 R0 K5 ["ClassName"]
       46 NAMECALL                         R4 R4 K13 ["format"]
       48 CALL                             R4 2 1
       49 MOVE                             R3 R4
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R5 K1 [script]
       11 GETTABLEKS                       R4 R5 K6 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["Util"]
       15 GETTABLEKS                       R2 R3 K8 ["Telemetry"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K9 ["Lib"]
       22 GETTABLEKS                       R4 R5 K10 ["External"]
       24 GETTABLEKS                       R3 R4 K11 ["CrossPluginCommunication"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R5 K1 [script]
       31 GETTABLEKS                       R4 R5 K12 ["ReimportModel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R6 K1 [script]
       38 GETTABLEKS                       R5 R6 K13 ["ReimportSurfaceAppearance"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K14 ["Packages"]
       45 GETTABLEKS                       R6 R7 K15 ["SharedPluginConstants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K9 ["Lib"]
       52 GETTABLEKS                       R7 R8 K16 ["DialogRegistry"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R9 K1 [script]
       59 GETTABLEKS                       R8 R9 K17 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R10 K1 [script]
       66 GETTABLEKS                       R9 R10 K18 ["ReimportConfigs"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K9 ["Lib"]
       73 GETTABLEKS                       R10 R11 K19 ["Constants"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R2 K20 ["new"]
       78 GETTABLEKS                       R12 R5 K21 ["REIMPORT"]
       80 GETTABLEKS                       R11 R12 K22 ["CPC_ID"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K23 ["Flags"]
       87 GETTABLEKS                       R12 R13 K24 ["GetFFlagReimportErrorConfigButton"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K23 ["Flags"]
       94 GETTABLEKS                       R13 R14 K25 ["GetFFlagReimportBasicTelemetry"]
       96 CALL                             R12 1 1
       97 NEWTABLE                         R13 4 0
       99 DUPCLOSURE                       R14 K26 [PROTO_0]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R5
      102 DUPCLOSURE                       R15 K27 [PROTO_5]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R0
      108 DUPCLOSURE                       R16 K28 [PROTO_8]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R1
      112 DUPCLOSURE                       R17 K29 [PROTO_9]
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R17 R13 K30 ["reimportModel"]
      119 DUPCLOSURE                       R17 K31 [PROTO_10]
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R17 R13 K32 ["reimportSurfaceAppearance"]
      126 DUPCLOSURE                       R17 K33 [PROTO_11]
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R17 R13 K34 ["reimportDecal"]
      133 DUPCLOSURE                       R17 K35 [PROTO_12]
      134 CAPTURE                          VAL R13
      135 SETTABLEKS                       R17 R13 K36 ["reimportInstance"]
      137 RETURN                           R13 1
