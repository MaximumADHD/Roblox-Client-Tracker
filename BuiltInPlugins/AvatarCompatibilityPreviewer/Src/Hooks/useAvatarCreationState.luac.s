PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findIndex"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 SUBK                             R2 R1 K0 [1]
        3 JUMP                             ; [+1]
        4 LENGTH                           R2 R0
        5 MOVE                             R5 R2
        6 LOADN                            R3 1
        7 LOADN                            R4 -1
        8 FORNPREP                         R3
        9 GETTABLE                         R6 R0 R5
       10 GETTABLEKS                       R7 R6 K1 ["status"]
       12 JUMPIFNOTEQKS                    R7 K2 ["complete"] ; [+8]
       14 GETTABLEKS                       R7 R6 K3 ["previewId"]
       16 JUMPIFEQKNIL                     R7 ; [+4]
       18 GETTABLEKS                       R7 R6 K3 ["previewId"]
       20 RETURN                           R7 1
       21 FORNLOOP                         R3
       22 LOADNIL                          R3
       23 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 SETTABLE                         R7 R2 R6
        9 FORGLOOP                         R3 2 ; [-2]
       11 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["findIndex"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 2 1
        7 JUMPIFEQKNIL                     R3 ; [+6]
        9 GETTABLE                         R4 R0 R3
       10 GETTABLEKS                       R4 R4 K1 ["status"]
       12 JUMPIFEQKS                       R4 K2 ["generating"] ; [+2]
       14 RETURN                           R0 1
       15 GETIMPORT                        R4 K5 [table.clone]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 GETTABLE                         R6 R0 R3
       20 GETIMPORT                        R7 K5 [table.clone]
       22 MOVE                             R8 R6
       23 CALL                             R7 1 1
       24 MOVE                             R8 R2
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 SETTABLE                         R12 R7 R11
       29 FORGLOOP                         R8 2 ; [-2]
       31 MOVE                             R5 R7
       32 SETTABLE                         R5 R4 R3
       33 RETURN                           R4 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["Node"]
       10 GETTABLEKS                       R9 R7 K1 ["Text"]
       12 JUMPIFEQKNIL                     R8 ; [+18]
       14 JUMPIFEQKS                       R8 K2 [""] ; [+16]
       16 JUMPIFEQKNIL                     R9 ; [+14]
       18 JUMPIFEQKS                       R9 K2 [""] ; [+12]
       20 GETTABLEKS                       R11 R7 K4 ["AtSeconds"]
       22 ORK                              R10 R11 K3 [0]
       23 GETTABLE                         R11 R1 R8
       24 JUMPIFEQKNIL                     R11 ; [+4]
       26 GETTABLE                         R11 R1 R8
       27 JUMPIFNOTLE                      R11 R10 ; [+3]
       29 SETTABLE                         R10 R1 R8
       30 SETTABLE                         R9 R2 R8
       31 FORGLOOP                         R3 2 ; [-24]
       33 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{[1] = "failed", ["error"]}]
        2 LOADK                            R4 K4 ["2D generation failed: %*"]
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R4 R4 K5 ["format"]
        6 CALL                             R4 2 1
        7 SETTABLEKS                       R4 R3 K2 ["error"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K6 ["findIndex"]
       12 MOVE                             R5 R0
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+6]
       18 GETTABLE                         R5 R0 R4
       19 GETTABLEKS                       R5 R5 K0 ["status"]
       21 JUMPIFEQKS                       R5 K7 ["generating"] ; [+3]
       23 MOVE                             R1 R0
       24 RETURN                           R1 1
       25 GETIMPORT                        R5 K10 [table.clone]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 1
       29 GETTABLE                         R7 R0 R4
       30 GETIMPORT                        R8 K10 [table.clone]
       32 MOVE                             R9 R7
       33 CALL                             R8 1 1
       34 MOVE                             R9 R3
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 FORGPREP                         R9
       38 SETTABLE                         R13 R8 R12
       39 FORGLOOP                         R9 2 ; [-2]
       41 MOVE                             R6 R8
       42 SETTABLE                         R6 R5 R4
       43 MOVE                             R1 R5
       44 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{[1] = "failed", ["error"]}]
        2 LOADK                            R4 K4 ["2D preview load failed: %*"]
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R4 R4 K5 ["format"]
        6 CALL                             R4 2 1
        7 SETTABLEKS                       R4 R3 K2 ["error"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K6 ["findIndex"]
       12 MOVE                             R5 R0
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+6]
       18 GETTABLE                         R5 R0 R4
       19 GETTABLEKS                       R5 R5 K0 ["status"]
       21 JUMPIFEQKS                       R5 K7 ["generating"] ; [+3]
       23 MOVE                             R1 R0
       24 RETURN                           R1 1
       25 GETIMPORT                        R5 K10 [table.clone]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 1
       29 GETTABLE                         R7 R0 R4
       30 GETIMPORT                        R8 K10 [table.clone]
       32 MOVE                             R9 R7
       33 CALL                             R8 1 1
       34 MOVE                             R9 R3
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 FORGPREP                         R9
       38 SETTABLE                         R13 R8 R12
       39 FORGLOOP                         R9 2 ; [-2]
       41 MOVE                             R6 R8
       42 SETTABLE                         R6 R5 R4
       43 MOVE                             R1 R5
       44 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K4 [{[1] = "complete", ["previewId"], ["previewImage"]}]
        2 GETUPVAL                         R4 1
        3 SETTABLEKS                       R4 R3 K2 ["previewId"]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K3 ["previewImage"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K5 ["findIndex"]
       11 MOVE                             R5 R0
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R2
       14 CALL                             R4 2 1
       15 JUMPIFEQKNIL                     R4 ; [+6]
       17 GETTABLE                         R5 R0 R4
       18 GETTABLEKS                       R5 R5 K0 ["status"]
       20 JUMPIFEQKS                       R5 K6 ["generating"] ; [+3]
       22 MOVE                             R1 R0
       23 RETURN                           R1 1
       24 GETIMPORT                        R5 K9 [table.clone]
       26 MOVE                             R6 R0
       27 CALL                             R5 1 1
       28 GETTABLE                         R7 R0 R4
       29 GETIMPORT                        R8 K9 [table.clone]
       31 MOVE                             R9 R7
       32 CALL                             R8 1 1
       33 MOVE                             R9 R3
       34 LOADNIL                          R10
       35 LOADNIL                          R11
       36 FORGPREP                         R9
       37 SETTABLE                         R13 R8 R12
       38 FORGLOOP                         R9 2 ; [-2]
       40 MOVE                             R6 R8
       41 SETTABLE                         R6 R5 R4
       42 MOVE                             R1 R5
       43 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["generate2DPreviewAsync"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R0 3 2
        8 JUMPIF                           R0 ; [+12]
        9 GETIMPORT                        R2 K4 [warn]
       11 LOADK                            R3 K5 ["[AvatarCreation] 2D generation failed:"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 3
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U5
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K1 [pcall]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K6 ["load2DPreviewAsync"]
       26 MOVE                             R4 R1
       27 CALL                             R2 2 2
       28 JUMPIF                           R2 ; [+12]
       29 GETIMPORT                        R4 K4 [warn]
       31 LOADK                            R5 K7 ["[AvatarCreation] 2D preview load failed:"]
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 3
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U5
       39 CALL                             R4 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R4 3
       42 NEWCLOSURE                       R5 P2
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U5
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["current"]
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       11 LOADK                            R6 K1 ["generation tags missing"]
       12 GETIMPORT                        R4 K3 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R5 R3 K4 ["effort"]
       17 JUMPIFEQKNIL                     R5 ; [+11]
       19 LOADK                            R4 K5 ["%* [PipelineName:%*] [Effort:%*]"]
       20 MOVE                             R6 R1
       21 GETTABLEKS                       R7 R3 K6 ["pipeline"]
       23 GETTABLEKS                       R8 R3 K4 ["effort"]
       25 NAMECALL                         R4 R4 K7 ["format"]
       27 CALL                             R4 4 1
       28 JUMP                             ; [+7]
       29 LOADK                            R4 K8 ["%* [PipelineName:%*]"]
       30 MOVE                             R6 R1
       31 GETTABLEKS                       R7 R3 K6 ["pipeline"]
       33 NAMECALL                         R4 R4 K7 ["format"]
       35 CALL                             R4 3 1
       36 GETTABLEKS                       R5 R3 K9 ["dynamicHead"]
       38 JUMPIFEQKNIL                     R5 ; [+9]
       40 MOVE                             R5 R4
       41 LOADK                            R6 K10 [" [dynamic_head:%*]"]
       42 GETTABLEKS                       R8 R3 K9 ["dynamicHead"]
       44 NAMECALL                         R6 R6 K7 ["format"]
       46 CALL                             R6 2 1
       47 CONCAT                           R4 R5 R6
       48 GETTABLEKS                       R5 R3 K11 ["r15Plus"]
       50 JUMPIFEQKNIL                     R5 ; [+9]
       52 MOVE                             R5 R4
       53 LOADK                            R6 K12 [" [r15_plus:%*]"]
       54 GETTABLEKS                       R8 R3 K11 ["r15Plus"]
       56 NAMECALL                         R6 R6 K7 ["format"]
       58 CALL                             R6 2 1
       59 CONCAT                           R4 R5 R6
       60 GETUPVAL                         R5 2
       61 GETIMPORT                        R6 K15 [task.spawn]
       63 NEWCLOSURE                       R7 P0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          REF R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U5
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K0 ["current"]
       73 CLOSEUPVALS                      R4
       74 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K8 [{["id"], ["promptText"], ["referencePreviewId"], ["status"] = "generating"}]
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K3 ["id"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K4 ["promptText"]
       11 GETUPVAL                         R5 2
       12 SETTABLEKS                       R5 R4 K5 ["referencePreviewId"]
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K10 [table.insert]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_15:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+4]
        3 GETUPVAL                         R2 0
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R1 R2 K1 ["current"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R3 R2 K1 ["current"]
       13 ADDK                             R3 R3 K2 [1]
       14 SETTABLEKS                       R3 R2 K1 ["current"]
       16 GETIMPORT                        R2 K5 [string.format]
       18 LOADK                            R3 K6 ["turn-%d"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K1 ["current"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 GETUPVAL                         R4 4
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 5
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 6
       33 MOVE                             R5 R2
       34 MOVE                             R6 R0
       35 MOVE                             R7 R3
       36 CALL                             R4 3 0
       37 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["findIndex"]
        4 MOVE                             R4 R0
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 2 1
        8 MOVE                             R1 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 1
       12 NEWTABLE                         R2 0 0
       14 LOADN                            R5 1
       15 SUBK                             R3 R1 K1 [1]
       16 LOADN                            R4 1
       17 FORNPREP                         R3
       18 GETTABLE                         R8 R0 R5
       19 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       21 MOVE                             R7 R2
       22 GETIMPORT                        R6 K4 [table.insert]
       24 CALL                             R6 2 0
       25 FORNLOOP                         R3
       26 DUPTABLE                         R5 K10 [{["id"], ["promptText"], ["referencePreviewId"], ["status"] = "generating"}]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K5 ["id"]
       30 GETUPVAL                         R6 3
       31 SETTABLEKS                       R6 R5 K6 ["promptText"]
       33 GETUPVAL                         R6 4
       34 SETTABLEKS                       R6 R5 K7 ["referencePreviewId"]
       36 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R3 K4 [table.insert]
       41 CALL                             R3 2 0
       42 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["findIndex"]
        4 MOVE                             R4 R2
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 2 1
        8 MOVE                             R1 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 GETTABLE                         R2 R3 R1
       14 GETTABLEKS                       R2 R2 K1 ["promptText"]
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R5 R4 K2 ["current"]
       23 ADDK                             R5 R5 K3 [1]
       24 SETTABLEKS                       R5 R4 K2 ["current"]
       26 GETIMPORT                        R4 K6 [string.format]
       28 LOADK                            R5 K7 ["turn-%d"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K2 ["current"]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 4
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CALL                             R5 1 0
       41 GETUPVAL                         R5 5
       42 MOVE                             R6 R4
       43 MOVE                             R7 R2
       44 MOVE                             R8 R3
       45 CALL                             R5 3 0
       46 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LENGTH                           R4 R1
        5 LOADN                            R2 1
        6 LOADN                            R3 -1
        7 FORNPREP                         R2
        8 GETTABLE                         R5 R1 R4
        9 GETTABLEKS                       R5 R5 K3 ["status"]
       11 JUMPIFNOTEQKS                    R5 K4 ["generating"] ; [+17]
       13 GETTABLE                         R6 R1 R4
       14 DUPTABLE                         R7 K6 [{["status"] = "cancelled"}]
       15 GETIMPORT                        R8 K2 [table.clone]
       17 MOVE                             R9 R6
       18 CALL                             R8 1 1
       19 MOVE                             R9 R7
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 FORGPREP                         R9
       23 SETTABLE                         R13 R8 R12
       24 FORGLOOP                         R9 2 ; [-2]
       26 MOVE                             R5 R8
       27 SETTABLE                         R5 R1 R4
       28 RETURN                           R1 1
       29 FORNLOOP                         R2
       30 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 DUPCLOSURE                       R1 K0 [PROTO_18]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_20:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R1 R0 K0 ["confirmedTurnId"]
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K4 [{["type"] = "failed", [2], ["error"]}]
        9 GETTABLEKS                       R2 R0 K0 ["confirmedTurnId"]
       11 SETTABLEKS                       R2 R1 K0 ["confirmedTurnId"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K3 ["error"]
       16 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 GETTABLEKS                       R1 R0 K0 ["type"]
        4 JUMPIFNOTEQKS                    R1 K1 ["running"] ; [+6]
        6 GETTABLEKS                       R1 R0 K2 ["confirmedTurnId"]
        8 GETUPVAL                         R2 0
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 RETURN                           R0 1
       12 GETIMPORT                        R1 K5 [table.clone]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 GETUPVAL                         R2 1
       17 JUMPIF                           R2 ; [+26]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["Progress"]
       21 JUMPIFEQKNIL                     R2 ; [+22]
       23 GETTABLEKS                       R2 R0 K7 ["progress"]
       25 JUMPIFEQKNIL                     R2 ; [+8]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K6 ["Progress"]
       30 GETTABLEKS                       R3 R0 K7 ["progress"]
       32 JUMPIFNOTLE                      R3 R2 ; [+11]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K6 ["Progress"]
       37 SETTABLEKS                       R2 R1 K7 ["progress"]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K8 ["WeightedProgressUpper"]
       42 SETTABLEKS                       R2 R1 K9 ["progressUpper"]
       44 GETUPVAL                         R2 2
       45 GETTABLEKS                       R2 R2 K10 ["PreviewModel"]
       47 JUMPIFEQKNIL                     R2 ; [+6]
       49 GETUPVAL                         R2 2
       50 GETTABLEKS                       R2 R2 K10 ["PreviewModel"]
       52 SETTABLEKS                       R2 R1 K11 ["previewModel"]
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R2 R2 K12 ["Step"]
       57 JUMPIFEQKNIL                     R2 ; [+6]
       59 GETUPVAL                         R2 2
       60 GETTABLEKS                       R2 R2 K12 ["Step"]
       62 SETTABLEKS                       R2 R1 K13 ["step"]
       64 GETUPVAL                         R2 2
       65 GETTABLEKS                       R2 R2 K14 ["PlanPending"]
       67 JUMPIFEQKNIL                     R2 ; [+6]
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R2 R2 K14 ["PlanPending"]
       72 SETTABLEKS                       R2 R1 K15 ["planPending"]
       74 GETUPVAL                         R2 2
       75 GETTABLEKS                       R2 R2 K16 ["Nodes"]
       77 JUMPIFEQKNIL                     R2 ; [+6]
       79 GETUPVAL                         R2 2
       80 GETTABLEKS                       R2 R2 K16 ["Nodes"]
       82 SETTABLEKS                       R2 R1 K17 ["nodes"]
       84 GETUPVAL                         R2 2
       85 GETTABLEKS                       R2 R2 K18 ["Thoughts"]
       87 JUMPIFEQKNIL                     R2 ; [+8]
       89 GETUPVAL                         R2 3
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K18 ["Thoughts"]
       93 CALL                             R2 1 1
       94 SETTABLEKS                       R2 R1 K19 ["thoughtByNode"]
       96 RETURN                           R1 1

PROTO_23:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["PreviewModel"]
        3 JUMPIFEQKNIL                     R2 ; [+22]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K1 ["WeightedProgressUpper"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+17]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K2 ["Step"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+12]
       15 LOADB                            R1 0
       16 GETTABLEKS                       R2 R0 K3 ["PlanPending"]
       18 JUMPIFNOTEQKNIL                  R2 ; [+7]
       20 GETTABLEKS                       R2 R0 K4 ["Nodes"]
       22 JUMPIFEQKNIL                     R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 GETUPVAL                         R2 0
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_24:
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 GETTABLEKS                       R1 R0 K0 ["type"]
        4 JUMPIFNOTEQKS                    R1 K1 ["running"] ; [+6]
        6 GETTABLEKS                       R1 R0 K2 ["confirmedTurnId"]
        8 GETUPVAL                         R2 0
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 RETURN                           R0 1
       12 GETIMPORT                        R1 K5 [table.clone]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 LOADN                            R2 1
       17 SETTABLEKS                       R2 R1 K6 ["progress"]
       19 LOADN                            R2 1
       20 SETTABLEKS                       R2 R1 K7 ["progressUpper"]
       22 LOADK                            R2 K8 ["uploading"]
       23 SETTABLEKS                       R2 R1 K9 ["step"]
       25 RETURN                           R1 1

PROTO_25:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETIMPORT                        R2 K1 [pcall]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["generate3DAvatarAsync"]
       12 GETUPVAL                         R4 4
       13 MOVE                             R5 R1
       14 CALL                             R2 3 3
       15 JUMPIF                           R2 ; [+16]
       16 GETIMPORT                        R5 K4 [warn]
       18 LOADK                            R6 K5 ["[AvatarCreation] 3D generation failed:"]
       19 MOVE                             R7 R3
       20 CALL                             R5 2 0
       21 LOADK                            R5 K6 ["3D generation failed: %*"]
       22 MOVE                             R7 R3
       23 NAMECALL                         R5 R5 K7 ["format"]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 0
       33 NEWCLOSURE                       R6 P3
       34 CAPTURE                          UPVAL U1
       35 CALL                             R5 1 0
       36 GETUPVAL                         R5 5
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+119]
       39 JUMPIFEQKNIL                     R4 ; [+3]
       41 JUMPIFNOTEQKS                    R4 K8 [""] ; [+12]
       43 GETIMPORT                        R5 K4 [warn]
       45 LOADK                            R6 K9 ["[AvatarCreation] Avatar save failed: 3D generation did not return a job ID"]
       46 CALL                             R5 1 0
       47 GETUPVAL                         R5 0
       48 LOADK                            R7 K10 ["Avatar save failed: 3D generation did not return a job ID"]
       49 NEWCLOSURE                       R6 P2
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R7
       52 CALL                             R5 1 0
       53 RETURN                           R0 0
       54 GETIMPORT                        R5 K1 [pcall]
       56 GETUPVAL                         R6 6
       57 GETTABLEKS                       R6 R6 K11 ["uploadAndInsertAssetForJobAsync"]
       59 MOVE                             R7 R4
       60 CALL                             R5 2 2
       61 JUMPIF                           R5 ; [+16]
       62 GETIMPORT                        R7 K4 [warn]
       64 LOADK                            R8 K12 ["[AvatarCreation] Avatar save failed:"]
       65 MOVE                             R9 R6
       66 CALL                             R7 2 0
       67 LOADK                            R7 K13 ["Avatar save failed: %*"]
       68 MOVE                             R9 R6
       69 NAMECALL                         R7 R7 K7 ["format"]
       71 CALL                             R7 2 1
       72 GETUPVAL                         R8 0
       73 NEWCLOSURE                       R9 P2
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R7
       76 CALL                             R8 1 0
       77 RETURN                           R0 0
       78 LOADK                            R9 K14 ["Model"]
       79 NAMECALL                         R7 R6 K15 ["IsA"]
       81 CALL                             R7 2 1
       82 JUMPIFNOT                        R7 ; [+4]
       83 GETTABLEKS                       R7 R6 K16 ["PrimaryPart"]
       85 JUMPIFNOTEQKNIL                  R7 ; [+12]
       87 GETIMPORT                        R7 K4 [warn]
       89 LOADK                            R8 K17 ["[AvatarCreation] Avatar save returned a model without a PrimaryPart"]
       90 CALL                             R7 1 0
       91 GETUPVAL                         R7 0
       92 LOADK                            R9 K18 ["Avatar save returned a model without a PrimaryPart"]
       93 NEWCLOSURE                       R8 P2
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R9
       96 CALL                             R7 1 0
       97 RETURN                           R0 0
       98 GETUPVAL                         R7 7
       99 SETTABLEKS                       R7 R6 K19 ["Name"]
      101 GETUPVAL                         R7 8
      102 CALL                             R7 0 1
      103 JUMPIFNOT                        R7 ; [+3]
      104 GETUPVAL                         R7 9
      105 MOVE                             R8 R6
      106 CALL                             R7 1 0
      107 GETUPVAL                         R7 10
      108 CALL                             R7 0 1
      109 JUMPIFNOT                        R7 ; [+14]
      110 GETUPVAL                         R9 11
      111 GETTABLEKS                       R9 R9 K20 ["ATTRIBUTE_AVATAR_CREATION_JOB_ID"]
      113 MOVE                             R10 R4
      114 NAMECALL                         R7 R6 K21 ["SetAttribute"]
      116 CALL                             R7 3 0
      117 GETUPVAL                         R9 11
      118 GETTABLEKS                       R9 R9 K22 ["ATTRIBUTE_AVATAR_CREATION_PROMPT"]
      120 GETUPVAL                         R10 7
      121 NAMECALL                         R7 R6 K21 ["SetAttribute"]
      123 CALL                             R7 3 0
      124 GETUPVAL                         R7 12
      125 GETTABLEKS                       R7 R7 K23 ["placeGeneratedAvatar"]
      127 GETUPVAL                         R8 13
      128 MOVE                             R9 R6
      129 GETUPVAL                         R10 14
      130 GETTABLEKS                       R10 R10 K24 ["r15Plus"]
      132 CALL                             R7 3 0
      133 GETUPVAL                         R7 15
      134 CALL                             R7 0 1
      135 JUMPIFNOT                        R7 ; [+10]
      136 GETUPVAL                         R7 16
      137 LOADK                            R9 K25 ["sendAvatarCreationUsage"]
      138 MOVE                             R10 R4
      139 GETUPVAL                         R11 17
      140 MOVE                             R12 R6
      141 CALL                             R11 1 1
      142 GETUPVAL                         R12 14
      143 NAMECALL                         R7 R7 K26 ["report"]
      145 CALL                             R7 5 0
      146 GETUPVAL                         R7 18
      147 GETTABLEKS                       R7 R7 K27 ["disable"]
      149 CALL                             R7 0 0
      150 GETUPVAL                         R7 19
      151 NEWTABLE                         R8 0 0
      153 CALL                             R7 1 0
      154 GETUPVAL                         R7 0
      155 LOADNIL                          R8
      156 CALL                             R7 1 0
      157 RETURN                           R0 0
      158 GETIMPORT                        R5 K1 [pcall]
      160 GETUPVAL                         R6 3
      161 GETTABLEKS                       R6 R6 K28 ["load3DAvatarAsync"]
      163 MOVE                             R7 R3
      164 CALL                             R5 2 2
      165 JUMPIF                           R5 ; [+16]
      166 GETIMPORT                        R7 K4 [warn]
      168 LOADK                            R8 K29 ["[AvatarCreation] 3D load failed:"]
      169 MOVE                             R9 R6
      170 CALL                             R7 2 0
      171 LOADK                            R7 K30 ["3D load failed: %*"]
      172 MOVE                             R9 R6
      173 NAMECALL                         R7 R7 K7 ["format"]
      175 CALL                             R7 2 1
      176 GETUPVAL                         R8 0
      177 NEWCLOSURE                       R9 P2
      178 CAPTURE                          UPVAL U1
      179 CAPTURE                          VAL R7
      180 CALL                             R8 1 0
      181 RETURN                           R0 0
      182 GETUPVAL                         R7 3
      183 GETTABLEKS                       R7 R7 K31 ["createGeneratedAvatarModelAsync"]
      185 MOVE                             R8 R6
      186 CALL                             R7 1 1
      187 GETUPVAL                         R8 7
      188 SETTABLEKS                       R8 R7 K19 ["Name"]
      190 GETUPVAL                         R8 12
      191 GETTABLEKS                       R8 R8 K23 ["placeGeneratedAvatar"]
      193 GETUPVAL                         R9 13
      194 MOVE                             R10 R7
      195 GETUPVAL                         R11 14
      196 GETTABLEKS                       R11 R11 K24 ["r15Plus"]
      198 CALL                             R8 3 0
      199 GETUPVAL                         R8 18
      200 GETTABLEKS                       R8 R8 K27 ["disable"]
      202 CALL                             R8 0 0
      203 GETUPVAL                         R8 19
      204 NEWTABLE                         R9 0 0
      206 CALL                             R8 1 0
      207 GETUPVAL                         R8 0
      208 LOADNIL                          R9
      209 CALL                             R8 1 0
      210 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["findIndex"]
        4 MOVE                             R4 R2
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 2 1
        8 MOVE                             R1 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 GETTABLE                         R2 R3 R1
       14 GETTABLEKS                       R3 R2 K1 ["previewId"]
       16 GETTABLEKS                       R4 R2 K2 ["status"]
       18 JUMPIFNOTEQKS                    R4 K3 ["complete"] ; [+3]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R5 0
       24 GETTABLEN                        R4 R5 1
       25 GETTABLEKS                       R4 R4 K4 ["promptText"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K5 ["current"]
       30 JUMPIFNOTEQKNIL                  R5 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       36 LOADK                            R8 K6 ["generation tags missing"]
       37 GETIMPORT                        R6 K8 [assert]
       39 CALL                             R6 2 0
       40 GETUPVAL                         R6 3
       41 CALL                             R6 0 0
       42 GETUPVAL                         R6 4
       43 DUPTABLE                         R7 K12 [{["type"] = "running", ["confirmedTurnId"]}]
       44 SETTABLEKS                       R0 R7 K11 ["confirmedTurnId"]
       46 CALL                             R6 1 0
       47 GETUPVAL                         R6 5
       48 GETIMPORT                        R7 K15 [task.spawn]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U11
       61 CAPTURE                          UPVAL U12
       62 CAPTURE                          UPVAL U13
       63 CAPTURE                          UPVAL U14
       64 CAPTURE                          UPVAL U15
       65 CAPTURE                          VAL R5
       66 CAPTURE                          UPVAL U16
       67 CAPTURE                          UPVAL U17
       68 CAPTURE                          UPVAL U18
       69 CAPTURE                          UPVAL U19
       70 CAPTURE                          UPVAL U20
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R7 R6 K5 ["current"]
       74 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["disable"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 NEWTABLE                         R1 0 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+9]
        4 GETUPVAL                         R1 1
        5 LENGTH                           R0 R1
        6 JUMPIFNOTEQKN                    R0 K1 [0] ; [+6]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOTEQKNIL                  R0 ; [+3]
       11 DUPTABLE                         R0 K4 [{["type"] = "inactive"}]
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 2
       14 JUMPIFNOTEQKNIL                  R0 ; [+6]
       16 DUPTABLE                         R0 K7 [{["type"] = "chatting", ["turns"]}]
       17 GETUPVAL                         R1 1
       18 SETTABLEKS                       R1 R0 K6 ["turns"]
       20 RETURN                           R0 1
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K2 ["type"]
       24 JUMPIFNOTEQKS                    R0 K8 ["running"] ; [+46]
       26 DUPTABLE                         R0 K18 [{["type"] = "generating3D", ["turns"], ["confirmedTurnId"], ["progress"], ["progressUpper"], ["previewModel"], ["step"], ["planPending"], ["nodes"], ["thoughtByNode"]}]
       27 GETUPVAL                         R1 1
       28 SETTABLEKS                       R1 R0 K6 ["turns"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K10 ["confirmedTurnId"]
       33 SETTABLEKS                       R1 R0 K10 ["confirmedTurnId"]
       35 GETUPVAL                         R1 2
       36 GETTABLEKS                       R1 R1 K11 ["progress"]
       38 SETTABLEKS                       R1 R0 K11 ["progress"]
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K12 ["progressUpper"]
       43 SETTABLEKS                       R1 R0 K12 ["progressUpper"]
       45 GETUPVAL                         R1 2
       46 GETTABLEKS                       R1 R1 K13 ["previewModel"]
       48 SETTABLEKS                       R1 R0 K13 ["previewModel"]
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R1 R1 K14 ["step"]
       53 SETTABLEKS                       R1 R0 K14 ["step"]
       55 GETUPVAL                         R1 2
       56 GETTABLEKS                       R1 R1 K15 ["planPending"]
       58 SETTABLEKS                       R1 R0 K15 ["planPending"]
       60 GETUPVAL                         R1 2
       61 GETTABLEKS                       R1 R1 K16 ["nodes"]
       63 SETTABLEKS                       R1 R0 K16 ["nodes"]
       65 GETUPVAL                         R1 2
       66 GETTABLEKS                       R1 R1 K17 ["thoughtByNode"]
       68 SETTABLEKS                       R1 R0 K17 ["thoughtByNode"]
       70 RETURN                           R0 1
       71 DUPTABLE                         R0 K21 [{["type"] = "failed", ["turns"], ["confirmedTurnId"], ["error"]}]
       72 GETUPVAL                         R1 1
       73 SETTABLEKS                       R1 R0 K6 ["turns"]
       75 GETUPVAL                         R1 2
       76 GETTABLEKS                       R1 R1 K10 ["confirmedTurnId"]
       78 SETTABLEKS                       R1 R0 K10 ["confirmedTurnId"]
       80 GETUPVAL                         R1 2
       81 GETTABLEKS                       R1 R1 K20 ["error"]
       83 SETTABLEKS                       R1 R0 K20 ["error"]
       85 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 3
       14 NAMECALL                         R2 R2 K2 ["use"]
       16 CALL                             R2 1 1
       17 NAMECALL                         R2 R2 K4 ["get"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["useContext"]
       23 GETUPVAL                         R4 4
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 5
       26 LOADB                            R5 0
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["useState"]
       31 NEWTABLE                         R6 0 0
       33 CALL                             R5 1 2
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["useState"]
       37 LOADNIL                          R8
       38 CALL                             R7 1 2
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K6 ["useRef"]
       42 LOADN                            R10 0
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K6 ["useRef"]
       47 LOADNIL                          R11
       48 CALL                             R10 1 1
       49 GETUPVAL                         R11 6
       50 GETTABLEKS                       R11 R11 K7 ["useEventCallback"]
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R10
       54 CALL                             R11 1 1
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       58 NEWCLOSURE                       R13 P1
       59 CAPTURE                          VAL R11
       60 NEWTABLE                         R14 0 0
       62 CALL                             R12 2 0
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K6 ["useRef"]
       66 LOADNIL                          R13
       67 CALL                             R12 1 1
       68 GETUPVAL                         R13 6
       69 GETTABLEKS                       R13 R13 K7 ["useEventCallback"]
       71 NEWCLOSURE                       R14 P2
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          UPVAL U7
       78 CALL                             R13 1 1
       79 GETUPVAL                         R14 6
       80 GETTABLEKS                       R14 R14 K7 ["useEventCallback"]
       82 NEWCLOSURE                       R15 P3
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R9
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R13
       90 CALL                             R14 1 1
       91 GETUPVAL                         R15 6
       92 GETTABLEKS                       R15 R15 K7 ["useEventCallback"]
       94 NEWCLOSURE                       R16 P4
       95 CAPTURE                          VAL R5
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R13
      101 CALL                             R15 1 1
      102 GETUPVAL                         R16 6
      103 GETTABLEKS                       R16 R16 K7 ["useEventCallback"]
      105 NEWCLOSURE                       R17 P5
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R6
      110 CALL                             R16 1 1
      111 GETUPVAL                         R17 6
      112 GETTABLEKS                       R17 R17 K7 ["useEventCallback"]
      114 NEWCLOSURE                       R18 P6
      115 CAPTURE                          VAL R5
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R10
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          VAL R1
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          VAL R3
      125 CAPTURE                          UPVAL U11
      126 CAPTURE                          UPVAL U12
      127 CAPTURE                          UPVAL U13
      128 CAPTURE                          UPVAL U14
      129 CAPTURE                          UPVAL U15
      130 CAPTURE                          VAL R2
      131 CAPTURE                          UPVAL U16
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U17
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 CALL                             R17 1 1
      137 GETUPVAL                         R18 6
      138 GETTABLEKS                       R18 R18 K7 ["useEventCallback"]
      140 NEWCLOSURE                       R19 P7
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R8
      145 CALL                             R18 1 1
      146 GETUPVAL                         R19 1
      147 GETTABLEKS                       R19 R19 K9 ["useMemo"]
      149 NEWCLOSURE                       R20 P8
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R7
      153 NEWTABLE                         R21 0 3
      155 MOVE                             R22 R5
      156 MOVE                             R23 R7
      157 GETTABLEKS                       R24 R4 K10 ["enabled"]
      159 SETLIST                          R21 R22 3 [1]
      161 CALL                             R19 2 1
      162 DUPTABLE                         R20 K18 [{"state", "open", "submitPrompt", "regenerate", "cancelGeneration", "generate3D", "resetGeneration"}]
      163 SETTABLEKS                       R19 R20 K11 ["state"]
      165 GETTABLEKS                       R21 R4 K19 ["enable"]
      167 SETTABLEKS                       R21 R20 K12 ["open"]
      169 SETTABLEKS                       R14 R20 K13 ["submitPrompt"]
      171 SETTABLEKS                       R15 R20 K14 ["regenerate"]
      173 SETTABLEKS                       R16 R20 K15 ["cancelGeneration"]
      175 SETTABLEKS                       R17 R20 K16 ["generate3D"]
      177 SETTABLEKS                       R18 R20 K17 ["resetGeneration"]
      179 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
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
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["AutoSetupUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Components"]
       50 GETTABLEKS                       R7 R7 K15 ["AvatarCreationContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K12 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["Constants"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K12 ["Util"]
       68 GETTABLEKS                       R9 R9 K17 ["SelectionWrapper"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K11 ["Src"]
       75 GETTABLEKS                       R10 R10 K14 ["Components"]
       77 GETTABLEKS                       R10 R10 K18 ["StudioAssetServiceContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K11 ["Src"]
       84 GETTABLEKS                       R11 R11 K19 ["Types"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K11 ["Src"]
       91 GETTABLEKS                       R12 R12 K12 ["Util"]
       93 GETTABLEKS                       R12 R12 K20 ["createAccessoriesFromMeshParts"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R13 R13 K12 ["Util"]
      102 GETTABLEKS                       R13 R13 K21 ["findUnderlyingMeshAndTextureAssetIds"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K22 ["Flags"]
      111 GETTABLEKS                       R14 R14 K23 ["getEngineFeatureStudioAssetUploadAndInsertEnabled"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K11 ["Src"]
      118 GETTABLEKS                       R15 R15 K22 ["Flags"]
      120 GETTABLEKS                       R15 R15 K24 ["getFFlagAvatarPreviewerAvatarCreationAccessoriesFromMeshParts"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K11 ["Src"]
      127 GETTABLEKS                       R16 R16 K22 ["Flags"]
      129 GETTABLEKS                       R16 R16 K25 ["getFFlagAvatarPreviewerAvatarCreationFeedback"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K11 ["Src"]
      136 GETTABLEKS                       R17 R17 K22 ["Flags"]
      138 GETTABLEKS                       R17 R17 K26 ["getFFlagAvatarPreviewerAvatarCreationUsage"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K11 ["Src"]
      145 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      147 GETTABLEKS                       R18 R18 K28 ["useToggleState"]
      149 CALL                             R17 1 1
      150 DUPCLOSURE                       R18 K29 [PROTO_1]
      151 CAPTURE                          VAL R1
      152 DUPCLOSURE                       R19 K30 [PROTO_2]
      153 DUPCLOSURE                       R20 K31 [PROTO_3]
      154 DUPCLOSURE                       R21 K32 [PROTO_4]
      155 CAPTURE                          VAL R1
      156 DUPCLOSURE                       R22 K33 [PROTO_5]
      157 DUPCLOSURE                       R23 K34 [PROTO_29]
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R12
      176 RETURN                           R23 1
