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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["reimport"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 MOVE                             R6 R1
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["reimport"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["reimport"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_9:
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
        9 GETTABLEKS                       R4 R0 K6 ["Lib"]
       11 GETTABLEKS                       R3 R4 K7 ["External"]
       13 GETTABLEKS                       R2 R3 K8 ["CrossPluginCommunication"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K9 ["ReimportModel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R4 R5 K10 ["ReimportSurfaceAppearance"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["SharedPluginConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Lib"]
       41 GETTABLEKS                       R6 R7 K13 ["DialogRegistry"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R7 R8 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R1 K15 ["new"]
       53 GETTABLEKS                       R9 R4 K16 ["REIMPORT"]
       55 GETTABLEKS                       R8 R9 K17 ["CPC_ID"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Flags"]
       62 GETTABLEKS                       R9 R10 K19 ["GetFFlagReimportErrorConfigButton"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 4 0
       67 DUPCLOSURE                       R10 K20 [PROTO_0]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R11 K21 [PROTO_5]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R0
       76 DUPCLOSURE                       R12 K22 [PROTO_6]
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R12 R9 K23 ["reimportModel"]
       81 DUPCLOSURE                       R12 K24 [PROTO_7]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R12 R9 K25 ["reimportSurfaceAppearance"]
       86 DUPCLOSURE                       R12 K26 [PROTO_8]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R12 R9 K27 ["reimportDecal"]
       91 DUPCLOSURE                       R12 K28 [PROTO_9]
       92 CAPTURE                          VAL R9
       93 SETTABLEKS                       R12 R9 K29 ["reimportInstance"]
       95 RETURN                           R9 1
