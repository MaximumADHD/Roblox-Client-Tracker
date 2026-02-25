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
       33 GETIMPORT                        R1 K12 [require]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R5 R6 K13 ["Bin"]
       38 GETTABLEKS                       R4 R5 K14 ["Common"]
       40 GETTABLEKS                       R3 R4 K15 ["Dialogs"]
       42 GETTABLEKS                       R2 R3 K16 ["ShowErrorDialog"]
       44 CALL                             R1 1 1
       45 GETTABLEKS                       R2 R1 K17 ["fromErrors"]
       47 MOVE                             R3 R0
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

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
       12 SETTABLEKS                       R2 R1 K1 ["error"]
       14 DUPCLOSURE                       R2 K5 [PROTO_3]
       15 SETTABLEKS                       R2 R1 K2 ["warning"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R2 R1 K3 ["progress"]
       23 RETURN                           R1 1

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
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+11]
       14 LOADK                            R4 K3 ["Decal"]
       15 NAMECALL                         R2 R0 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K4 ["reimportDecal"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R2 R0 K5 ["ClassName"]
       27 JUMPIFNOTEQKS                    R2 K6 ["Model"] ; [+16]
       29 LOADK                            R5 K6 ["Model"]
       30 NAMECALL                         R3 R0 K1 ["IsA"]
       32 CALL                             R3 2 -1
       33 FASTCALL                         ASSERT ; [+2]
       34 GETIMPORT                        R2 K8 [assert]
       36 CALL                             R2 -1 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R2 R3 K9 ["reimportModel"]
       40 MOVE                             R3 R0
       41 MOVE                             R4 R1
       42 CALL                             R2 2 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R2 K11 [error]
       46 LOADK                            R4 K12 ["reimport is not supported for targets of type '%*'"]
       47 GETTABLEKS                       R6 R0 K5 ["ClassName"]
       49 NAMECALL                         R4 R4 K13 ["format"]
       51 CALL                             R4 2 1
       52 MOVE                             R3 R4
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

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
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R6 R7 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K14 ["Flags"]
       48 GETTABLEKS                       R7 R8 K15 ["GetFFlagReimportDecalSupport"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R1 K16 ["new"]
       53 GETTABLEKS                       R9 R4 K17 ["REIMPORT"]
       55 GETTABLEKS                       R8 R9 K18 ["CPC_ID"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 4 0
       60 DUPCLOSURE                       R9 K19 [PROTO_0]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R10 K20 [PROTO_5]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 DUPCLOSURE                       R11 K21 [PROTO_6]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R11 R8 K22 ["reimportModel"]
       72 DUPCLOSURE                       R11 K23 [PROTO_7]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R11 R8 K24 ["reimportSurfaceAppearance"]
       77 DUPCLOSURE                       R11 K25 [PROTO_8]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R11 R8 K26 ["reimportDecal"]
       82 DUPCLOSURE                       R11 K27 [PROTO_9]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R11 R8 K28 ["reimportInstance"]
       87 RETURN                           R8 1
