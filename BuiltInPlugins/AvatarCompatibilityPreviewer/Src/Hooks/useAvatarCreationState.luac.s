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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{[1] = "failed", ["error"]}]
        2 LOADK                            R5 K4 ["2D generation failed: %*"]
        3 GETUPVAL                         R7 1
        4 NAMECALL                         R5 R5 K5 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 SETTABLEKS                       R4 R3 K2 ["error"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K6 ["findIndex"]
       13 MOVE                             R5 R0
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R2
       16 CALL                             R4 2 1
       17 JUMPIFEQKNIL                     R4 ; [+6]
       19 GETTABLE                         R5 R0 R4
       20 GETTABLEKS                       R5 R5 K0 ["status"]
       22 JUMPIFEQKS                       R5 K7 ["generating"] ; [+3]
       24 MOVE                             R1 R0
       25 RETURN                           R1 1
       26 GETIMPORT                        R5 K10 [table.clone]
       28 MOVE                             R6 R0
       29 CALL                             R5 1 1
       30 GETTABLE                         R7 R0 R4
       31 GETIMPORT                        R8 K10 [table.clone]
       33 MOVE                             R9 R7
       34 CALL                             R8 1 1
       35 MOVE                             R9 R3
       36 LOADNIL                          R10
       37 LOADNIL                          R11
       38 FORGPREP                         R9
       39 SETTABLE                         R13 R8 R12
       40 FORGLOOP                         R9 2 ; [-2]
       42 MOVE                             R6 R8
       43 SETTABLE                         R6 R5 R4
       44 MOVE                             R1 R5
       45 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{[1] = "failed", ["error"]}]
        2 LOADK                            R5 K4 ["2D preview load failed: %*"]
        3 GETUPVAL                         R7 1
        4 NAMECALL                         R5 R5 K5 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 SETTABLEKS                       R4 R3 K2 ["error"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K6 ["findIndex"]
       13 MOVE                             R5 R0
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R2
       16 CALL                             R4 2 1
       17 JUMPIFEQKNIL                     R4 ; [+6]
       19 GETTABLE                         R5 R0 R4
       20 GETTABLEKS                       R5 R5 K0 ["status"]
       22 JUMPIFEQKS                       R5 K7 ["generating"] ; [+3]
       24 MOVE                             R1 R0
       25 RETURN                           R1 1
       26 GETIMPORT                        R5 K10 [table.clone]
       28 MOVE                             R6 R0
       29 CALL                             R5 1 1
       30 GETTABLE                         R7 R0 R4
       31 GETIMPORT                        R8 K10 [table.clone]
       33 MOVE                             R9 R7
       34 CALL                             R8 1 1
       35 MOVE                             R9 R3
       36 LOADNIL                          R10
       37 LOADNIL                          R11
       38 FORGPREP                         R9
       39 SETTABLE                         R13 R8 R12
       40 FORGLOOP                         R9 2 ; [-2]
       42 MOVE                             R6 R8
       43 SETTABLE                         R6 R5 R4
       44 MOVE                             R1 R5
       45 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R3 1
        3 GETIMPORT                        R4 K2 [task.spawn]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K3 ["current"]
       15 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 LENGTH                           R1 R0
        1 JUMPIFEQKN                       R1 K0 [0] ; [+4]
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R1 K1 ["current"]
       10 ADDK                             R2 R2 K2 [1]
       11 SETTABLEKS                       R2 R1 K1 ["current"]
       13 GETIMPORT                        R1 K5 [string.format]
       15 LOADK                            R2 K6 ["turn-%d"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["current"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R3 3
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 4
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 5
       30 MOVE                             R4 R1
       31 MOVE                             R5 R0
       32 MOVE                             R6 R2
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 DUPCLOSURE                       R1 K0 [PROTO_17]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_19:
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 GETTABLEKS                       R1 R0 K0 ["type"]
        4 JUMPIFNOTEQKS                    R1 K1 ["running"] ; [+6]
        6 GETTABLEKS                       R1 R0 K2 ["confirmedTurnId"]
        8 GETUPVAL                         R2 0
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 RETURN                           R0 1
       12 DUPTABLE                         R1 K5 [{[1] = "running", ["confirmedTurnId"], ["progress"], ["previewModel"]}]
       13 GETTABLEKS                       R2 R0 K2 ["confirmedTurnId"]
       15 SETTABLEKS                       R2 R1 K2 ["confirmedTurnId"]
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R2 R1 K3 ["progress"]
       20 GETUPVAL                         R3 2
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 GETUPVAL                         R2 2
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R2 R0 K4 ["previewModel"]
       27 SETTABLEKS                       R2 R1 K4 ["previewModel"]
       29 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_21:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R1 R0 K0 ["confirmedTurnId"]
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K4 [{["type"] = "failed", [2], ["error"]}]
        9 GETTABLEKS                       R2 R0 K0 ["confirmedTurnId"]
       11 SETTABLEKS                       R2 R1 K0 ["confirmedTurnId"]
       13 LOADK                            R3 K5 ["3D generation failed: %*"]
       14 GETUPVAL                         R5 1
       15 NAMECALL                         R3 R3 K6 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 SETTABLEKS                       R2 R1 K3 ["error"]
       21 RETURN                           R1 1

PROTO_22:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R1 R0 K0 ["confirmedTurnId"]
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K4 [{["type"] = "failed", [2], ["error"]}]
        9 GETTABLEKS                       R2 R0 K0 ["confirmedTurnId"]
       11 SETTABLEKS                       R2 R1 K0 ["confirmedTurnId"]
       13 LOADK                            R3 K5 ["3D load failed: %*"]
       14 GETUPVAL                         R5 1
       15 NAMECALL                         R3 R3 K6 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 SETTABLEKS                       R2 R1 K3 ["error"]
       21 RETURN                           R1 1

PROTO_23:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETIMPORT                        R1 K1 [pcall]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K2 ["generate3DAvatarAsync"]
        8 GETUPVAL                         R3 3
        9 MOVE                             R4 R0
       10 CALL                             R1 3 2
       11 JUMPIF                           R1 ; [+11]
       12 GETIMPORT                        R3 K4 [warn]
       14 LOADK                            R4 K5 ["[AvatarCreation] 3D generation failed:"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 0
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R2
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K1 [pcall]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K6 ["load3DAvatarAsync"]
       28 MOVE                             R5 R2
       29 CALL                             R3 2 2
       30 JUMPIF                           R3 ; [+11]
       31 GETIMPORT                        R5 K4 [warn]
       33 LOADK                            R6 K7 ["[AvatarCreation] 3D load failed:"]
       34 MOVE                             R7 R4
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R4
       40 CALL                             R5 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K8 ["createGeneratedAvatarModelAsync"]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 1
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K9 ["placeGeneratedAvatar"]
       50 GETUPVAL                         R7 5
       51 MOVE                             R8 R5
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 6
       54 GETTABLEKS                       R6 R6 K10 ["disable"]
       56 CALL                             R6 0 0
       57 GETUPVAL                         R6 7
       58 NEWTABLE                         R7 0 0
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 0
       62 LOADNIL                          R7
       63 CALL                             R6 1 0
       64 RETURN                           R0 0

PROTO_24:
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
       23 GETUPVAL                         R4 2
       24 CALL                             R4 0 0
       25 GETUPVAL                         R4 3
       26 DUPTABLE                         R5 K7 [{["type"] = "running", ["confirmedTurnId"]}]
       27 SETTABLEKS                       R0 R5 K6 ["confirmedTurnId"]
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 4
       31 GETIMPORT                        R5 K10 [task.spawn]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K11 ["current"]
       45 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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
       24 JUMPIFNOTEQKS                    R0 K8 ["running"] ; [+21]
       26 DUPTABLE                         R0 K13 [{["type"] = "generating3D", ["turns"], ["confirmedTurnId"], ["progress"], ["previewModel"]}]
       27 GETUPVAL                         R1 1
       28 SETTABLEKS                       R1 R0 K6 ["turns"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K10 ["confirmedTurnId"]
       33 SETTABLEKS                       R1 R0 K10 ["confirmedTurnId"]
       35 GETUPVAL                         R1 2
       36 GETTABLEKS                       R1 R1 K11 ["progress"]
       38 SETTABLEKS                       R1 R0 K11 ["progress"]
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K12 ["previewModel"]
       43 SETTABLEKS                       R1 R0 K12 ["previewModel"]
       45 RETURN                           R0 1
       46 DUPTABLE                         R0 K16 [{["type"] = "failed", ["turns"], ["confirmedTurnId"], ["error"]}]
       47 GETUPVAL                         R1 1
       48 SETTABLEKS                       R1 R0 K6 ["turns"]
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R1 R1 K10 ["confirmedTurnId"]
       53 SETTABLEKS                       R1 R0 K10 ["confirmedTurnId"]
       55 GETUPVAL                         R1 2
       56 GETTABLEKS                       R1 R1 K15 ["error"]
       58 SETTABLEKS                       R1 R0 K15 ["error"]
       60 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["use"]
        8 CALL                             R1 1 1
        9 NAMECALL                         R1 R1 K2 ["get"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 3
       13 LOADB                            R3 0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["useState"]
       18 NEWTABLE                         R4 0 0
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useState"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["useRef"]
       29 LOADN                            R8 0
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K4 ["useRef"]
       34 LOADNIL                          R9
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K5 ["useEventCallback"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R8
       41 CALL                             R9 1 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          VAL R9
       47 NEWTABLE                         R12 0 0
       49 CALL                             R10 2 0
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K5 ["useEventCallback"]
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          UPVAL U5
       59 CALL                             R10 1 1
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R11 R11 K5 ["useEventCallback"]
       63 NEWCLOSURE                       R12 P3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R10
       70 CALL                             R11 1 1
       71 GETUPVAL                         R12 4
       72 GETTABLEKS                       R12 R12 K5 ["useEventCallback"]
       74 NEWCLOSURE                       R13 P4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 CALL                             R12 1 1
       82 GETUPVAL                         R13 4
       83 GETTABLEKS                       R13 R13 K5 ["useEventCallback"]
       85 NEWCLOSURE                       R14 P5
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R4
       90 CALL                             R13 1 1
       91 GETUPVAL                         R14 4
       92 GETTABLEKS                       R14 R14 K5 ["useEventCallback"]
       94 NEWCLOSURE                       R15 P6
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 CALL                             R14 1 1
      106 GETUPVAL                         R15 4
      107 GETTABLEKS                       R15 R15 K5 ["useEventCallback"]
      109 NEWCLOSURE                       R16 P7
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 CALL                             R15 1 1
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K7 ["useMemo"]
      118 NEWCLOSURE                       R17 P8
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R5
      122 NEWTABLE                         R18 0 3
      124 MOVE                             R19 R3
      125 MOVE                             R20 R5
      126 GETTABLEKS                       R21 R2 K8 ["enabled"]
      128 SETLIST                          R18 R19 3 [1]
      130 CALL                             R16 2 1
      131 DUPTABLE                         R17 K16 [{"state", "open", "submitPrompt", "regenerate", "cancelGeneration", "generate3D", "resetGeneration"}]
      132 SETTABLEKS                       R16 R17 K9 ["state"]
      134 GETTABLEKS                       R18 R2 K17 ["enable"]
      136 SETTABLEKS                       R18 R17 K10 ["open"]
      138 SETTABLEKS                       R11 R17 K11 ["submitPrompt"]
      140 SETTABLEKS                       R12 R17 K12 ["regenerate"]
      142 SETTABLEKS                       R13 R17 K13 ["cancelGeneration"]
      144 SETTABLEKS                       R14 R17 K14 ["generate3D"]
      146 SETTABLEKS                       R15 R17 K15 ["resetGeneration"]
      148 RETURN                           R17 1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["AutoSetupUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Components"]
       43 GETTABLEKS                       R6 R6 K14 ["AvatarCreationContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["SelectionWrapper"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useToggleState"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K19 [PROTO_1]
       72 CAPTURE                          VAL R1
       73 DUPCLOSURE                       R10 K20 [PROTO_2]
       74 DUPCLOSURE                       R11 K21 [PROTO_3]
       75 DUPCLOSURE                       R12 K22 [PROTO_4]
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R13 K23 [PROTO_27]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R4
       86 RETURN                           R13 1
