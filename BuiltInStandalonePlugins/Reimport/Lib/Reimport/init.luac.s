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
       21 JUMPIFNOT                        R2 ; [+17]
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
       34 JUMPIFNOT                        R2 ; [+4]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R3 R1 K6 ["progress"]
       38 SETTABLE                         R3 R2 R0
       39 RETURN                           R0 0

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
        1 DUPTABLE                         R1 K2 [{[1] = False}]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K3 ["REIMPORT"]
        6 GETTABLEKS                       R4 R4 K4 ["CPC_EVENTS"]
        8 GETTABLEKS                       R4 R4 K5 ["PROGRESS_CHANGED"]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 NAMECALL                         R2 R2 K6 ["Fire"]
       14 CALL                             R2 4 0
       15 GETTABLEKS                       R2 R1 K0 ["isReimporting"]
       17 JUMPIF                           R2 ; [+16]
       18 GETUPVAL                         R2 3
       19 LOADNIL                          R3
       20 SETTABLE                         R3 R2 R0
       21 GETUPVAL                         R3 4
       22 GETTABLE                         R2 R3 R0
       23 JUMPIFNOT                        R2 ; [+17]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R0
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K7 ["reimportInstance"]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R2
       32 CALL                             R3 2 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R2 R1 K8 ["progress"]
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R3 R1 K8 ["progress"]
       40 SETTABLE                         R3 R2 R0
       41 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K3 ["REIMPORT"]
        6 GETTABLEKS                       R5 R5 K4 ["CPC_EVENTS"]
        8 GETTABLEKS                       R5 R5 K5 ["PROGRESS_CHANGED"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 NAMECALL                         R3 R3 K6 ["Fire"]
       14 CALL                             R3 4 0
       15 GETTABLEKS                       R3 R2 K0 ["isReimporting"]
       17 JUMPIF                           R3 ; [+16]
       18 GETUPVAL                         R3 3
       19 LOADNIL                          R4
       20 SETTABLE                         R4 R3 R1
       21 GETUPVAL                         R4 4
       22 GETTABLE                         R3 R4 R1
       23 JUMPIFNOT                        R3 ; [+17]
       24 GETUPVAL                         R4 4
       25 LOADNIL                          R5
       26 SETTABLE                         R5 R4 R1
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K7 ["reimportInstance"]
       30 MOVE                             R5 R1
       31 MOVE                             R6 R3
       32 CALL                             R4 2 0
       33 JUMP                             ; [+7]
       34 GETTABLEKS                       R3 R2 K8 ["progress"]
       36 JUMPIFNOT                        R3 ; [+4]
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R4 R2 K8 ["progress"]
       40 SETTABLE                         R4 R3 R1
       41 FASTCALL1                        TYPE R0 ; [+3]
       42 MOVE                             R2 R0
       43 GETIMPORT                        R1 K10 [type]
       45 CALL                             R1 1 1
       46 JUMPIFNOTEQKS                    R1 K11 ["string"] ; [+9]
       48 NEWTABLE                         R1 0 1
       50 DUPTABLE                         R2 K13 [{"message"}]
       51 SETTABLEKS                       R0 R2 K12 ["message"]
       53 SETLIST                          R1 R2 1 [1]
       55 MOVE                             R0 R1
       56 FASTCALL1                        TYPE R0 ; [+3]
       57 MOVE                             R4 R0
       58 GETIMPORT                        R3 K10 [type]
       60 CALL                             R3 1 1
       61 JUMPIFNOTEQKS                    R3 K11 ["string"] ; [+2]
       63 LOADB                            R2 0 +1
       64 LOADB                            R2 1
       65 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       67 LOADK                            R3 K14 ["reimport error"]
       68 GETIMPORT                        R1 K16 [assert]
       70 CALL                             R1 2 0
       71 GETUPVAL                         R1 6
       72 GETTABLEKS                       R1 R1 K17 ["errors"]
       74 GETTABLEKS                       R1 R1 K18 ["show"]
       76 MOVE                             R2 R0
       77 GETUPVAL                         R3 0
       78 CALL                             R1 2 0
       79 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1] = True, ["progress"]}]
        2 SETTABLEKS                       R0 R2 K2 ["progress"]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K4 ["REIMPORT"]
        8 GETTABLEKS                       R5 R5 K5 ["CPC_EVENTS"]
       10 GETTABLEKS                       R5 R5 K6 ["PROGRESS_CHANGED"]
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 NAMECALL                         R3 R3 K7 ["Fire"]
       16 CALL                             R3 4 0
       17 GETTABLEKS                       R3 R2 K0 ["isReimporting"]
       19 JUMPIF                           R3 ; [+16]
       20 GETUPVAL                         R3 3
       21 LOADNIL                          R4
       22 SETTABLE                         R4 R3 R1
       23 GETUPVAL                         R4 4
       24 GETTABLE                         R3 R4 R1
       25 JUMPIFNOT                        R3 ; [+17]
       26 GETUPVAL                         R4 4
       27 LOADNIL                          R5
       28 SETTABLE                         R5 R4 R1
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K8 ["reimportInstance"]
       32 MOVE                             R5 R1
       33 MOVE                             R6 R3
       34 CALL                             R4 2 0
       35 RETURN                           R0 0
       36 GETTABLEKS                       R3 R2 K2 ["progress"]
       38 JUMPIFNOT                        R3 ; [+4]
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R4 R2 K2 ["progress"]
       42 SETTABLE                         R4 R3 R1
       43 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K4 [{"success", "error", "warning", "progress"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 SETTABLEKS                       R2 R1 K0 ["success"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 SETTABLEKS                       R2 R1 K1 ["error"]
       20 DUPCLOSURE                       R2 K5 [PROTO_4]
       21 SETTABLEKS                       R2 R1 K2 ["warning"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 SETTABLEKS                       R2 R1 K3 ["progress"]
       32 RETURN                           R1 1

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
        8 MOVE                             R8 R4
        9 JUMPIFNOT                        R8 ; [+14]
       10 LOADB                            R8 1
       11 GETTABLEKS                       R9 R4 K6 ["preset"]
       13 JUMPIFEQKNIL                     R9 ; [+10]
       15 GETTABLEKS                       R9 R4 K6 ["preset"]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K7 ["StudioDefaultPreset"]
       20 JUMPIFEQ                         R9 R10 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 NOT                              R7 R8
       25 NOT                              R6 R7
       26 SETTABLEKS                       R6 R5 K2 ["usedStudioDefaultPreset"]
       28 MOVE                             R8 R2
       29 JUMPIFNOT                        R8 ; [+2]
       30 GETTABLEKS                       R8 R2 K8 ["anchor"]
       32 NOT                              R7 R8
       33 NOT                              R6 R7
       34 SETTABLEKS                       R6 R5 K3 ["wasReimportRelativeToThis"]
       36 GETTABLEKS                       R6 R1 K9 ["ClassName"]
       38 SETTABLEKS                       R6 R5 K4 ["targetType"]
       40 DUPTABLE                         R6 K14 [{"success", "error", "warning", "progress"}]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R7 R6 K10 ["success"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R7 R6 K11 ["error"]
       53 GETTABLEKS                       R7 R0 K12 ["warning"]
       55 SETTABLEKS                       R7 R6 K12 ["warning"]
       57 GETTABLEKS                       R7 R0 K13 ["progress"]
       59 SETTABLEKS                       R7 R6 K13 ["progress"]
       61 RETURN                           R6 1

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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["reimportInstance"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+43]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIF                           R2 ; [+13]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K0 ["REIMPORT"]
       10 GETTABLEKS                       R4 R4 K1 ["CPC_EVENTS"]
       12 GETTABLEKS                       R4 R4 K2 ["PROGRESS_CHANGED"]
       14 MOVE                             R5 R0
       15 DUPTABLE                         R6 K7 [{["isReimporting"] = True, ["progress"] = 0}]
       16 NAMECALL                         R2 R2 K8 ["Fire"]
       18 CALL                             R2 4 0
       19 GETUPVAL                         R3 4
       20 GETTABLE                         R2 R3 R0
       21 JUMPIFNOT                        R2 ; [+12]
       22 GETIMPORT                        R2 K11 [coroutine.status]
       24 GETUPVAL                         R4 4
       25 GETTABLE                         R3 R4 R0
       26 CALL                             R2 1 1
       27 JUMPIFNOTEQKS                    R2 K12 ["suspended"] ; [+6]
       29 GETIMPORT                        R2 K14 [coroutine.close]
       31 GETUPVAL                         R4 4
       32 GETTABLE                         R3 R4 R0
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 4
       35 GETIMPORT                        R3 K17 [task.delay]
       37 LOADK                            R4 K18 [0.2]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R1
       43 CALL                             R3 2 1
       44 SETTABLE                         R3 R2 R0
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 5
       47 GETTABLEKS                       R2 R2 K19 ["reimportInstance"]
       49 MOVE                             R3 R0
       50 MOVE                             R4 R1
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

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
       87 GETTABLEKS                       R12 R12 K24 ["GetFFlagReimportFileWatcher"]
       89 CALL                             R11 1 1
       90 NEWTABLE                         R12 4 0
       92 NEWTABLE                         R13 0 0
       94 NEWTABLE                         R14 0 0
       96 NEWTABLE                         R15 0 0
       98 DUPCLOSURE                       R16 K25 [PROTO_0]
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R17 K26 [PROTO_1]
      105 CAPTURE                          VAL R13
      106 SETTABLEKS                       R17 R12 K27 ["getProgress"]
      108 GETTABLEKS                       R19 R5 K21 ["REIMPORT"]
      110 GETTABLEKS                       R19 R19 K28 ["CPC_CALLBACKS"]
      112 GETTABLEKS                       R19 R19 K29 ["GET_PROGRESS"]
      114 GETTABLEKS                       R20 R12 K27 ["getProgress"]
      116 NAMECALL                         R17 R10 K30 ["OnInvoke"]
      118 CALL                             R17 3 0
      119 DUPCLOSURE                       R17 K31 [PROTO_6]
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R6
      126 DUPCLOSURE                       R18 K32 [PROTO_9]
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R1
      130 DUPCLOSURE                       R19 K33 [PROTO_10]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R3
      134 DUPCLOSURE                       R20 K34 [PROTO_11]
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R4
      138 DUPCLOSURE                       R21 K35 [PROTO_12]
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R4
      142 DUPCLOSURE                       R22 K36 [PROTO_13]
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R22 R12 K37 ["reimportInstance"]
      151 DUPCLOSURE                       R22 K38 [PROTO_15]
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R12
      158 SETTABLEKS                       R22 R12 K39 ["reimportInstanceDebounced"]
      160 RETURN                           R12 1
