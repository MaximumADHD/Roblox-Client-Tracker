PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["REIMPORT"]
        4 GETTABLEKS                       R4 R4 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R4 K2 ["PROGRESS_CHANGED"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 4 0
       13 GETTABLEKS                       R2 R1 K4 ["isReimporting"]
       15 JUMPIF                           R2 ; [+16]
       16 GETUPVAL                         R2 2
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 GETUPVAL                         R3 3
       20 GETTABLE                         R2 R3 R0
       21 JUMPIFNOT                        R2 ; [+20]
       22 GETUPVAL                         R3 3
       23 LOADNIL                          R4
       24 SETTABLE                         R4 R3 R0
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K5 ["reimportInstance"]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R2
       30 CALL                             R3 2 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R1 K6 ["progress"]
       34 JUMPIFNOT                        R2 ; [+7]
       35 GETUPVAL                         R2 5
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+4]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R3 R1 K6 ["progress"]
       41 SETTABLE                         R3 R2 R0
       42 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"isReimporting", "progress"}]
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R0
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["isReimporting"]
        9 GETUPVAL                         R3 0
       10 GETTABLE                         R2 R3 R0
       11 SETTABLEKS                       R2 R1 K1 ["progress"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"isReimporting"}]
        3 LOADB                            R3 0
        4 SETTABLEKS                       R3 R2 K0 ["isReimporting"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"isReimporting"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K0 ["isReimporting"]
        6 CALL                             R1 2 0
        7 FASTCALL1                        TYPE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [type]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+9]
       14 NEWTABLE                         R1 0 1
       16 DUPTABLE                         R2 K6 [{"message"}]
       17 SETTABLEKS                       R0 R2 K5 ["message"]
       19 SETLIST                          R1 R2 1 [1]
       21 MOVE                             R0 R1
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K7 ["errors"]
       25 GETTABLEKS                       R1 R1 K8 ["show"]
       27 MOVE                             R2 R0
       28 GETUPVAL                         R3 1
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"isReimporting", "progress"}]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K0 ["isReimporting"]
        6 SETTABLEKS                       R0 R3 K1 ["progress"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K4 [{"success", "error", "warning", "progress"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["success"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R2 R1 K1 ["error"]
       12 DUPCLOSURE                       R2 K5 [PROTO_4]
       13 SETTABLEKS                       R2 R1 K2 ["warning"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K3 ["progress"]
       20 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R2
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["reimport"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 MOVE                             R6 R1
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["reimport"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["reimport"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 JUMPIF                           R3 ; [+2]
        6 NEWTABLE                         R3 0 0
        8 SETTABLE                         R3 R2 R0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 LOADN                            R3 0
       12 SETTABLE                         R3 R2 R0
       13 LOADK                            R4 K0 ["SurfaceAppearance"]
       14 NAMECALL                         R2 R0 K1 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+15]
       18 GETUPVAL                         R2 2
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R2
       23 MOVE                             R5 R0
       24 CALL                             R3 2 1
       25 MOVE                             R2 R3
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K2 ["reimport"]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R2
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 LOADK                            R4 K3 ["Decal"]
       34 NAMECALL                         R2 R0 K1 ["IsA"]
       36 CALL                             R2 2 1
       37 JUMPIFNOT                        R2 ; [+15]
       38 GETUPVAL                         R2 2
       39 MOVE                             R3 R0
       40 CALL                             R2 1 1
       41 GETUPVAL                         R3 3
       42 MOVE                             R4 R2
       43 MOVE                             R5 R0
       44 CALL                             R3 2 1
       45 MOVE                             R2 R3
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K2 ["reimport"]
       49 MOVE                             R4 R0
       50 MOVE                             R5 R2
       51 CALL                             R3 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R2 R0 K4 ["ClassName"]
       55 JUMPIFNOTEQKS                    R2 K5 ["Model"] ; [+26]
       57 LOADK                            R5 K5 ["Model"]
       58 NAMECALL                         R3 R0 K1 ["IsA"]
       60 CALL                             R3 2 -1
       61 FASTCALL                         ASSERT ; [+2]
       62 GETIMPORT                        R2 K7 [assert]
       64 CALL                             R2 -1 0
       65 GETUPVAL                         R2 2
       66 MOVE                             R3 R0
       67 CALL                             R2 1 1
       68 GETUPVAL                         R3 3
       69 MOVE                             R4 R2
       70 MOVE                             R5 R0
       71 MOVE                             R6 R1
       72 CALL                             R3 3 1
       73 MOVE                             R2 R3
       74 GETUPVAL                         R3 5
       75 GETTABLEKS                       R3 R3 K2 ["reimport"]
       77 MOVE                             R4 R0
       78 MOVE                             R5 R2
       79 MOVE                             R6 R1
       80 CALL                             R3 3 0
       81 RETURN                           R0 0
       82 GETIMPORT                        R2 K9 [error]
       84 LOADK                            R4 K10 ["reimport is not supported for targets of type '%*'"]
       85 GETTABLEKS                       R6 R0 K4 ["ClassName"]
       87 NAMECALL                         R4 R4 K11 ["format"]
       89 CALL                             R4 2 1
       90 MOVE                             R3 R4
       91 CALL                             R2 1 0
       92 RETURN                           R0 0

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
       83 GETTABLEKS                       R11 R5 K21 ["REIMPORT"]
       85 GETTABLEKS                       R11 R11 K23 ["getFFlagReimportFileWatchIcon"]
       87 NEWTABLE                         R12 2 0
       89 NEWTABLE                         R13 0 0
       91 NEWTABLE                         R14 0 0
       93 DUPCLOSURE                       R15 K24 [PROTO_0]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R11
      100 DUPCLOSURE                       R16 K25 [PROTO_1]
      101 CAPTURE                          VAL R13
      102 SETTABLEKS                       R16 R12 K26 ["getProgress"]
      104 GETTABLEKS                       R18 R5 K21 ["REIMPORT"]
      106 GETTABLEKS                       R18 R18 K27 ["CPC_CALLBACKS"]
      108 GETTABLEKS                       R18 R18 K28 ["GET_PROGRESS"]
      110 GETTABLEKS                       R19 R12 K26 ["getProgress"]
      112 NAMECALL                         R16 R10 K29 ["OnInvoke"]
      114 CALL                             R16 3 0
      115 DUPCLOSURE                       R16 K30 [PROTO_6]
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R6
      118 DUPCLOSURE                       R17 K31 [PROTO_9]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R1
      122 DUPCLOSURE                       R18 K32 [PROTO_10]
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R3
      126 DUPCLOSURE                       R19 K33 [PROTO_11]
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R4
      130 DUPCLOSURE                       R20 K34 [PROTO_12]
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R4
      134 DUPCLOSURE                       R21 K35 [PROTO_13]
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R3
      141 SETTABLEKS                       R21 R12 K36 ["reimportInstance"]
      143 RETURN                           R12 1
