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
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 JUMPIF                           R2 ; [+3]
       16 GETUPVAL                         R2 3
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+17]
       19 GETTABLEKS                       R2 R1 K4 ["isReimporting"]
       21 JUMPIF                           R2 ; [+4]
       22 GETUPVAL                         R2 4
       23 LOADNIL                          R3
       24 SETTABLE                         R3 R2 R0
       25 JUMP                             ; [+10]
       26 GETTABLEKS                       R2 R1 K5 ["progress"]
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R2 3
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+4]
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R3 R1 K5 ["progress"]
       35 SETTABLE                         R3 R2 R0
       36 GETUPVAL                         R2 2
       37 CALL                             R2 0 1
       38 JUMPIFNOT                        R2 ; [+15]
       39 GETTABLEKS                       R2 R1 K4 ["isReimporting"]
       41 JUMPIF                           R2 ; [+12]
       42 GETUPVAL                         R3 5
       43 GETTABLE                         R2 R3 R0
       44 JUMPIFNOT                        R2 ; [+9]
       45 GETUPVAL                         R3 5
       46 LOADNIL                          R4
       47 SETTABLE                         R4 R3 R0
       48 GETUPVAL                         R3 6
       49 GETTABLEKS                       R3 R3 K6 ["reimportInstance"]
       51 MOVE                             R4 R0
       52 MOVE                             R5 R2
       53 CALL                             R3 2 0
       54 RETURN                           R0 0

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
       23 CALL                             R1 0 1
       24 JUMPIFNOT                        R1 ; [+9]
       25 GETUPVAL                         R1 3
       26 GETTABLEKS                       R1 R1 K7 ["errors"]
       28 GETTABLEKS                       R1 R1 K8 ["show"]
       30 MOVE                             R2 R0
       31 GETUPVAL                         R3 1
       32 CALL                             R1 2 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R1 K10 [require]
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K11 ["Lib"]
       39 GETTABLEKS                       R2 R2 K12 ["DialogRegistry"]
       41 GETTABLEKS                       R2 R2 K13 ["ShowErrorDialog"]
       43 CALL                             R1 1 1
       44 GETTABLEKS                       R2 R1 K14 ["fromErrors"]
       46 MOVE                             R3 R0
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

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
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 SETTABLEKS                       R2 R1 K1 ["error"]
       14 DUPCLOSURE                       R2 K5 [PROTO_4]
       15 SETTABLEKS                       R2 R1 K2 ["warning"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K3 ["progress"]
       22 RETURN                           R1 1

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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 CALL                             R2 0 1
       15 JUMPIF                           R2 ; [+3]
       16 GETUPVAL                         R2 3
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETUPVAL                         R2 1
       20 LOADN                            R3 0
       21 SETTABLE                         R3 R2 R0
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R2 1
       24 LOADB                            R3 1
       25 SETTABLE                         R3 R2 R0
       26 LOADK                            R4 K0 ["SurfaceAppearance"]
       27 NAMECALL                         R2 R0 K1 ["IsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+18]
       31 GETUPVAL                         R2 4
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 GETUPVAL                         R3 5
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+5]
       37 GETUPVAL                         R3 6
       38 MOVE                             R4 R2
       39 MOVE                             R5 R0
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 GETUPVAL                         R3 7
       43 GETTABLEKS                       R3 R3 K2 ["reimport"]
       45 MOVE                             R4 R0
       46 MOVE                             R5 R2
       47 CALL                             R3 2 0
       48 RETURN                           R0 0
       49 LOADK                            R4 K3 ["Decal"]
       50 NAMECALL                         R2 R0 K1 ["IsA"]
       52 CALL                             R2 2 1
       53 JUMPIFNOT                        R2 ; [+18]
       54 GETUPVAL                         R2 4
       55 MOVE                             R3 R0
       56 CALL                             R2 1 1
       57 GETUPVAL                         R3 5
       58 CALL                             R3 0 1
       59 JUMPIFNOT                        R3 ; [+5]
       60 GETUPVAL                         R3 6
       61 MOVE                             R4 R2
       62 MOVE                             R5 R0
       63 CALL                             R3 2 1
       64 MOVE                             R2 R3
       65 GETUPVAL                         R3 7
       66 GETTABLEKS                       R3 R3 K2 ["reimport"]
       68 MOVE                             R4 R0
       69 MOVE                             R5 R2
       70 CALL                             R3 2 0
       71 RETURN                           R0 0
       72 GETTABLEKS                       R2 R0 K4 ["ClassName"]
       74 JUMPIFNOTEQKS                    R2 K5 ["Model"] ; [+29]
       76 LOADK                            R5 K5 ["Model"]
       77 NAMECALL                         R3 R0 K1 ["IsA"]
       79 CALL                             R3 2 -1
       80 FASTCALL                         ASSERT ; [+2]
       81 GETIMPORT                        R2 K7 [assert]
       83 CALL                             R2 -1 0
       84 GETUPVAL                         R2 4
       85 MOVE                             R3 R0
       86 CALL                             R2 1 1
       87 GETUPVAL                         R3 5
       88 CALL                             R3 0 1
       89 JUMPIFNOT                        R3 ; [+6]
       90 GETUPVAL                         R3 6
       91 MOVE                             R4 R2
       92 MOVE                             R5 R0
       93 MOVE                             R6 R1
       94 CALL                             R3 3 1
       95 MOVE                             R2 R3
       96 GETUPVAL                         R3 8
       97 GETTABLEKS                       R3 R3 K2 ["reimport"]
       99 MOVE                             R4 R0
      100 MOVE                             R5 R2
      101 MOVE                             R6 R1
      102 CALL                             R3 3 0
      103 RETURN                           R0 0
      104 GETIMPORT                        R2 K9 [error]
      106 LOADK                            R4 K10 ["reimport is not supported for targets of type '%*'"]
      107 GETTABLEKS                       R6 R0 K4 ["ClassName"]
      109 NAMECALL                         R4 R4 K11 ["format"]
      111 CALL                             R4 2 1
      112 MOVE                             R3 R4
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

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
      104 GETTABLEKS                       R14 R5 K21 ["REIMPORT"]
      106 GETTABLEKS                       R14 R14 K27 ["getFFlagReimportFileWatchIcon"]
      108 NEWTABLE                         R15 2 0
      110 NEWTABLE                         R16 0 0
      112 NEWTABLE                         R17 0 0
      114 DUPCLOSURE                       R18 K28 [PROTO_0]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R15
      122 DUPCLOSURE                       R19 K29 [PROTO_1]
      123 CAPTURE                          VAL R16
      124 SETTABLEKS                       R19 R15 K30 ["getProgress"]
      126 GETTABLEKS                       R21 R5 K21 ["REIMPORT"]
      128 GETTABLEKS                       R21 R21 K31 ["CPC_CALLBACKS"]
      130 GETTABLEKS                       R21 R21 K32 ["GET_PROGRESS"]
      132 GETTABLEKS                       R22 R15 K30 ["getProgress"]
      134 NAMECALL                         R19 R10 K33 ["OnInvoke"]
      136 CALL                             R19 3 0
      137 DUPCLOSURE                       R19 K34 [PROTO_6]
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R0
      142 DUPCLOSURE                       R20 K35 [PROTO_9]
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R1
      146 DUPCLOSURE                       R21 K36 [PROTO_10]
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R3
      151 DUPCLOSURE                       R22 K37 [PROTO_11]
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R4
      156 DUPCLOSURE                       R23 K38 [PROTO_12]
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R4
      161 DUPCLOSURE                       R24 K39 [PROTO_13]
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R3
      171 SETTABLEKS                       R24 R15 K40 ["reimportInstance"]
      173 RETURN                           R15 1
