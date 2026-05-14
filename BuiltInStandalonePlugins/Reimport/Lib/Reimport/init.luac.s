PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["REIMPORT"]
        4 GETTABLEKS                       R4 R4 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R4 K2 ["STATUS_CHANGED"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 4 0
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+18]
       16 GETTABLEKS                       R2 R1 K4 ["isReimporting"]
       18 JUMPIF                           R2 ; [+15]
       19 GETUPVAL                         R2 3
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R0
       22 GETUPVAL                         R3 4
       23 GETTABLE                         R2 R3 R0
       24 JUMPIFNOT                        R2 ; [+9]
       25 GETUPVAL                         R3 4
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R0
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R3 R3 K5 ["reimportInstance"]
       31 MOVE                             R4 R0
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"isReimporting"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["isReimporting"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["REIMPORT"]
        9 GETTABLEKS                       R4 R4 K3 ["CPC_EVENTS"]
       11 GETTABLEKS                       R4 R4 K4 ["STATUS_CHANGED"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 NAMECALL                         R2 R2 K5 ["Fire"]
       17 CALL                             R2 4 0
       18 GETUPVAL                         R2 3
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+18]
       21 GETTABLEKS                       R2 R1 K0 ["isReimporting"]
       23 JUMPIF                           R2 ; [+15]
       24 GETUPVAL                         R2 4
       25 LOADNIL                          R3
       26 SETTABLE                         R3 R2 R0
       27 GETUPVAL                         R3 5
       28 GETTABLE                         R2 R3 R0
       29 JUMPIFNOT                        R2 ; [+9]
       30 GETUPVAL                         R3 5
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R3 R0
       33 GETUPVAL                         R3 6
       34 GETTABLEKS                       R3 R3 K6 ["reimportInstance"]
       36 MOVE                             R4 R0
       37 MOVE                             R5 R2
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"isReimporting"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isReimporting"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K2 ["REIMPORT"]
        9 GETTABLEKS                       R5 R5 K3 ["CPC_EVENTS"]
       11 GETTABLEKS                       R5 R5 K4 ["STATUS_CHANGED"]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 NAMECALL                         R3 R3 K5 ["Fire"]
       17 CALL                             R3 4 0
       18 GETUPVAL                         R3 3
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+18]
       21 GETTABLEKS                       R3 R2 K0 ["isReimporting"]
       23 JUMPIF                           R3 ; [+15]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R1
       27 GETUPVAL                         R4 5
       28 GETTABLE                         R3 R4 R1
       29 JUMPIFNOT                        R3 ; [+9]
       30 GETUPVAL                         R4 5
       31 LOADNIL                          R5
       32 SETTABLE                         R5 R4 R1
       33 GETUPVAL                         R4 6
       34 GETTABLEKS                       R4 R4 K6 ["reimportInstance"]
       36 MOVE                             R5 R1
       37 MOVE                             R6 R3
       38 CALL                             R4 2 0
       39 FASTCALL1                        TYPE R0 ; [+3]
       40 MOVE                             R2 R0
       41 GETIMPORT                        R1 K8 [type]
       43 CALL                             R1 1 1
       44 JUMPIFNOTEQKS                    R1 K9 ["string"] ; [+9]
       46 NEWTABLE                         R1 0 1
       48 DUPTABLE                         R2 K11 [{"message"}]
       49 SETTABLEKS                       R0 R2 K10 ["message"]
       51 SETLIST                          R1 R2 1 [1]
       53 MOVE                             R0 R1
       54 GETUPVAL                         R1 7
       55 CALL                             R1 0 1
       56 JUMPIFNOT                        R1 ; [+9]
       57 GETUPVAL                         R1 8
       58 GETTABLEKS                       R1 R1 K12 ["errors"]
       60 GETTABLEKS                       R1 R1 K13 ["show"]
       62 MOVE                             R2 R0
       63 GETUPVAL                         R3 0
       64 CALL                             R1 2 0
       65 RETURN                           R0 0
       66 GETIMPORT                        R1 K15 [require]
       68 GETUPVAL                         R2 9
       69 GETTABLEKS                       R2 R2 K16 ["Lib"]
       71 GETTABLEKS                       R2 R2 K17 ["DialogRegistry"]
       73 GETTABLEKS                       R2 R2 K18 ["ShowErrorDialog"]
       75 CALL                             R1 1 1
       76 GETTABLEKS                       R2 R1 K19 ["fromErrors"]
       78 MOVE                             R3 R0
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

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
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K3 ["REIMPORT"]
       11 GETTABLEKS                       R5 R5 K4 ["CPC_EVENTS"]
       13 GETTABLEKS                       R5 R5 K5 ["STATUS_CHANGED"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 NAMECALL                         R3 R3 K6 ["Fire"]
       19 CALL                             R3 4 0
       20 GETUPVAL                         R3 3
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+18]
       23 GETTABLEKS                       R3 R2 K0 ["isReimporting"]
       25 JUMPIF                           R3 ; [+15]
       26 GETUPVAL                         R3 4
       27 LOADNIL                          R4
       28 SETTABLE                         R4 R3 R1
       29 GETUPVAL                         R4 5
       30 GETTABLE                         R3 R4 R1
       31 JUMPIFNOT                        R3 ; [+9]
       32 GETUPVAL                         R4 5
       33 LOADNIL                          R5
       34 SETTABLE                         R5 R4 R1
       35 GETUPVAL                         R4 6
       36 GETTABLEKS                       R4 R4 K7 ["reimportInstance"]
       38 MOVE                             R5 R1
       39 MOVE                             R6 R3
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K4 [{"success", "error", "warning", "progress"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 SETTABLEKS                       R2 R1 K0 ["success"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 SETTABLEKS                       R2 R1 K1 ["error"]
       24 DUPCLOSURE                       R2 K5 [PROTO_3]
       25 SETTABLEKS                       R2 R1 K2 ["warning"]
       27 NEWCLOSURE                       R2 P3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 SETTABLEKS                       R2 R1 K3 ["progress"]
       37 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["success"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["success"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["logReimportAttempt"]
       11 GETUPVAL                         R1 2
       12 LOADB                            R2 1
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["error"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["error"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["logReimportAttempt"]
       12 GETUPVAL                         R2 2
       13 LOADB                            R3 0
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getConfigFromInstance"]
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
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K7 ["StudioDefaultPreset"]
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
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K0 ["reimport"]
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
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K0 ["reimport"]
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
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K0 ["reimport"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 LOADB                            R3 1
       15 SETTABLE                         R3 R2 R0
       16 LOADK                            R4 K0 ["SurfaceAppearance"]
       17 NAMECALL                         R2 R0 K1 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+18]
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 4
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETUPVAL                         R3 5
       28 MOVE                             R4 R2
       29 MOVE                             R5 R0
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 GETUPVAL                         R3 6
       33 GETTABLEKS                       R3 R3 K2 ["reimport"]
       35 MOVE                             R4 R0
       36 MOVE                             R5 R2
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 LOADK                            R4 K3 ["Decal"]
       40 NAMECALL                         R2 R0 K1 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+18]
       44 GETUPVAL                         R2 3
       45 MOVE                             R3 R0
       46 CALL                             R2 1 1
       47 GETUPVAL                         R3 4
       48 CALL                             R3 0 1
       49 JUMPIFNOT                        R3 ; [+5]
       50 GETUPVAL                         R3 5
       51 MOVE                             R4 R2
       52 MOVE                             R5 R0
       53 CALL                             R3 2 1
       54 MOVE                             R2 R3
       55 GETUPVAL                         R3 6
       56 GETTABLEKS                       R3 R3 K2 ["reimport"]
       58 MOVE                             R4 R0
       59 MOVE                             R5 R2
       60 CALL                             R3 2 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R2 R0 K4 ["ClassName"]
       64 JUMPIFNOTEQKS                    R2 K5 ["Model"] ; [+29]
       66 LOADK                            R5 K5 ["Model"]
       67 NAMECALL                         R3 R0 K1 ["IsA"]
       69 CALL                             R3 2 -1
       70 FASTCALL                         ASSERT ; [+2]
       71 GETIMPORT                        R2 K7 [assert]
       73 CALL                             R2 -1 0
       74 GETUPVAL                         R2 3
       75 MOVE                             R3 R0
       76 CALL                             R2 1 1
       77 GETUPVAL                         R3 4
       78 CALL                             R3 0 1
       79 JUMPIFNOT                        R3 ; [+6]
       80 GETUPVAL                         R3 5
       81 MOVE                             R4 R2
       82 MOVE                             R5 R0
       83 MOVE                             R6 R1
       84 CALL                             R3 3 1
       85 MOVE                             R2 R3
       86 GETUPVAL                         R3 7
       87 GETTABLEKS                       R3 R3 K2 ["reimport"]
       89 MOVE                             R4 R0
       90 MOVE                             R5 R2
       91 MOVE                             R6 R1
       92 CALL                             R3 3 0
       93 RETURN                           R0 0
       94 GETIMPORT                        R2 K9 [error]
       96 LOADK                            R4 K10 ["reimport is not supported for targets of type '%*'"]
       97 GETTABLEKS                       R6 R0 K4 ["ClassName"]
       99 NAMECALL                         R4 R4 K11 ["format"]
      101 CALL                             R4 2 1
      102 MOVE                             R3 R4
      103 CALL                             R2 1 0
      104 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Util"]
       15 GETTABLEKS                       R2 R2 K8 ["Telemetry"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Lib"]
       22 GETTABLEKS                       R3 R3 K10 ["External"]
       24 GETTABLEKS                       R3 R3 K11 ["CrossPluginCommunication"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K12 ["ReimportModel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K13 ["ReimportSurfaceAppearance"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Packages"]
       45 GETTABLEKS                       R6 R6 K15 ["SharedPluginConstants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Lib"]
       52 GETTABLEKS                       R7 R7 K16 ["DialogRegistry"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K17 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R9 K1 [script]
       66 GETTABLEKS                       R9 R9 K18 ["ReimportConfigs"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Lib"]
       73 GETTABLEKS                       R10 R10 K19 ["Constants"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R2 K20 ["new"]
       78 GETTABLEKS                       R11 R5 K21 ["REIMPORT"]
       80 GETTABLEKS                       R11 R11 K22 ["CPC_ID"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Flags"]
       87 GETTABLEKS                       R12 R12 K24 ["GetFFlagReimportErrorConfigButton"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["Flags"]
       94 GETTABLEKS                       R13 R13 K25 ["GetFFlagReimportBasicTelemetry"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["Flags"]
      101 GETTABLEKS                       R14 R14 K26 ["GetFFlagDebounceReimports"]
      103 CALL                             R13 1 1
      104 NEWTABLE                         R14 1 0
      106 NEWTABLE                         R15 0 0
      108 NEWTABLE                         R16 0 0
      110 DUPCLOSURE                       R17 K27 [PROTO_0]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R14
      117 DUPCLOSURE                       R18 K28 [PROTO_5]
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R0
      127 DUPCLOSURE                       R19 K29 [PROTO_8]
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R1
      131 DUPCLOSURE                       R20 K30 [PROTO_9]
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R3
      136 DUPCLOSURE                       R21 K31 [PROTO_10]
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R4
      141 DUPCLOSURE                       R22 K32 [PROTO_11]
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R4
      146 DUPCLOSURE                       R23 K33 [PROTO_12]
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R23 R14 K34 ["reimportInstance"]
      157 RETURN                           R14 1
