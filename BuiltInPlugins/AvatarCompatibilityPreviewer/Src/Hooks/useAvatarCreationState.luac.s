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
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["classify"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 LOADK                            R5 K1 ["sendAvatarCreationFailure"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R2
       14 NAMECALL                         R3 R3 K2 ["report"]
       16 CALL                             R3 4 0
       17 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{[1] = "failed", ["errorCode"]}]
        2 GETUPVAL                         R4 1
        3 SETTABLEKS                       R4 R3 K2 ["errorCode"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["findIndex"]
        8 MOVE                             R5 R0
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R2
       11 CALL                             R4 2 1
       12 JUMPIFEQKNIL                     R4 ; [+6]
       14 GETTABLE                         R5 R0 R4
       15 GETTABLEKS                       R5 R5 K0 ["status"]
       17 JUMPIFEQKS                       R5 K5 ["generating"] ; [+3]
       19 MOVE                             R1 R0
       20 RETURN                           R1 1
       21 GETIMPORT                        R5 K8 [table.clone]
       23 MOVE                             R6 R0
       24 CALL                             R5 1 1
       25 GETTABLE                         R7 R0 R4
       26 GETIMPORT                        R8 K8 [table.clone]
       28 MOVE                             R9 R7
       29 CALL                             R8 1 1
       30 MOVE                             R9 R3
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 SETTABLE                         R13 R8 R12
       35 FORGLOOP                         R9 2 ; [-2]
       37 MOVE                             R6 R8
       38 SETTABLE                         R6 R5 R4
       39 MOVE                             R1 R5
       40 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADNIL                          R2
        4 JUMP                             ; [+13]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["classify"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 LOADK                            R6 K1 ["sendAvatarCreationFailure"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R3
       14 NAMECALL                         R4 R4 K2 ["report"]
       16 CALL                             R4 4 0
       17 MOVE                             R2 R3
       18 GETUPVAL                         R3 3
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 GETIMPORT                        R1 K1 [pcall]
        9 GETUPVAL                         R2 6
       10 GETTABLEKS                       R2 R2 K2 ["generate2DPreviewAsync"]
       12 GETUPVAL                         R3 7
       13 GETUPVAL                         R4 8
       14 CALL                             R1 3 2
       15 JUMPIF                           R1 ; [+30]
       16 GETIMPORT                        R3 K4 [warn]
       18 LOADK                            R4 K5 ["[AvatarCreation] 2D generation failed:"]
       19 MOVE                             R5 R2
       20 CALL                             R3 2 0
       21 GETUPVAL                         R4 0
       22 CALL                             R4 0 1
       23 JUMPIF                           R4 ; [+2]
       24 LOADNIL                          R3
       25 JUMP                             ; [+13]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K6 ["classify"]
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 2
       32 LOADK                            R7 K7 ["sendAvatarCreationFailure"]
       33 LOADK                            R8 K8 ["generate2D"]
       34 MOVE                             R9 R4
       35 NAMECALL                         R5 R5 K9 ["report"]
       37 CALL                             R5 4 0
       38 MOVE                             R3 R4
       39 GETUPVAL                         R4 3
       40 NEWCLOSURE                       R5 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U5
       44 CALL                             R4 1 0
       45 RETURN                           R0 0
       46 GETIMPORT                        R3 K1 [pcall]
       48 GETUPVAL                         R4 6
       49 GETTABLEKS                       R4 R4 K10 ["load2DPreviewAsync"]
       51 MOVE                             R5 R2
       52 CALL                             R3 2 2
       53 JUMPIF                           R3 ; [+30]
       54 GETIMPORT                        R5 K4 [warn]
       56 LOADK                            R6 K11 ["[AvatarCreation] 2D preview load failed:"]
       57 MOVE                             R7 R4
       58 CALL                             R5 2 0
       59 GETUPVAL                         R6 0
       60 CALL                             R6 0 1
       61 JUMPIF                           R6 ; [+2]
       62 LOADNIL                          R5
       63 JUMP                             ; [+13]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K6 ["classify"]
       67 MOVE                             R7 R4
       68 CALL                             R6 1 1
       69 GETUPVAL                         R7 2
       70 LOADK                            R9 K7 ["sendAvatarCreationFailure"]
       71 LOADK                            R10 K12 ["load2D"]
       72 MOVE                             R11 R6
       73 NAMECALL                         R7 R7 K9 ["report"]
       75 CALL                             R7 4 0
       76 MOVE                             R5 R6
       77 GETUPVAL                         R6 3
       78 NEWCLOSURE                       R7 P1
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U5
       82 CALL                             R6 1 0
       83 RETURN                           R0 0
       84 GETUPVAL                         R5 3
       85 NEWCLOSURE                       R6 P2
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U5
       90 CALL                             R5 1 0
       91 RETURN                           R0 0

PROTO_14:
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
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          REF R4
       72 CAPTURE                          VAL R2
       73 CALL                             R6 1 1
       74 SETTABLEKS                       R6 R5 K0 ["current"]
       76 CLOSEUPVALS                      R4
       77 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 DUPCLOSURE                       R1 K0 [PROTO_19]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_21:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R1 R0 K0 ["confirmedTurnId"]
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K4 [{["type"] = "failed", [2], ["errorCode"]}]
        9 GETTABLEKS                       R2 R0 K0 ["confirmedTurnId"]
       11 SETTABLEKS                       R2 R1 K0 ["confirmedTurnId"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K3 ["errorCode"]
       16 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADNIL                          R2
        4 JUMP                             ; [+13]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["classify"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 LOADK                            R6 K1 ["sendAvatarCreationFailure"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R3
       14 NAMECALL                         R4 R4 K2 ["report"]
       16 CALL                             R4 4 0
       17 MOVE                             R2 R3
       18 GETUPVAL                         R3 3
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 GETIMPORT                        R2 K1 [pcall]
       12 GETUPVAL                         R3 6
       13 GETTABLEKS                       R3 R3 K2 ["generate3DAvatarAsync"]
       15 GETUPVAL                         R4 7
       16 MOVE                             R5 R1
       17 CALL                             R2 3 3
       18 JUMPIF                           R2 ; [+29]
       19 GETIMPORT                        R5 K4 [warn]
       21 LOADK                            R6 K5 ["[AvatarCreation] 3D generation failed:"]
       22 MOVE                             R7 R3
       23 CALL                             R5 2 0
       24 GETUPVAL                         R6 0
       25 CALL                             R6 0 1
       26 JUMPIF                           R6 ; [+2]
       27 LOADNIL                          R5
       28 JUMP                             ; [+13]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K6 ["classify"]
       32 MOVE                             R7 R3
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 2
       35 LOADK                            R9 K7 ["sendAvatarCreationFailure"]
       36 LOADK                            R10 K8 ["generate3D"]
       37 MOVE                             R11 R6
       38 NAMECALL                         R7 R7 K9 ["report"]
       40 CALL                             R7 4 0
       41 MOVE                             R5 R6
       42 GETUPVAL                         R6 3
       43 NEWCLOSURE                       R7 P2
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R5
       46 CALL                             R6 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R5 3
       49 NEWCLOSURE                       R6 P3
       50 CAPTURE                          UPVAL U4
       51 CALL                             R5 1 0
       52 GETUPVAL                         R5 8
       53 CALL                             R5 0 1
       54 JUMPIFNOT                        R5 ; [+164]
       55 JUMPIFEQKNIL                     R4 ; [+3]
       57 JUMPIFNOTEQKS                    R4 K10 [""] ; [+29]
       59 GETIMPORT                        R5 K4 [warn]
       61 LOADK                            R6 K11 ["[AvatarCreation] Avatar save failed: 3D generation did not return a job ID"]
       62 CALL                             R5 1 0
       63 GETUPVAL                         R6 0
       64 CALL                             R6 0 1
       65 JUMPIF                           R6 ; [+2]
       66 LOADNIL                          R5
       67 JUMP                             ; [+13]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K6 ["classify"]
       71 LOADNIL                          R7
       72 CALL                             R6 1 1
       73 GETUPVAL                         R7 2
       74 LOADK                            R9 K7 ["sendAvatarCreationFailure"]
       75 LOADK                            R10 K12 ["save"]
       76 MOVE                             R11 R6
       77 NAMECALL                         R7 R7 K9 ["report"]
       79 CALL                             R7 4 0
       80 MOVE                             R5 R6
       81 GETUPVAL                         R6 3
       82 NEWCLOSURE                       R7 P2
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R5
       85 CALL                             R6 1 0
       86 RETURN                           R0 0
       87 GETIMPORT                        R5 K1 [pcall]
       89 GETUPVAL                         R6 9
       90 GETTABLEKS                       R6 R6 K13 ["uploadAndInsertAssetForJobAsync"]
       92 MOVE                             R7 R4
       93 CALL                             R5 2 2
       94 JUMPIF                           R5 ; [+29]
       95 GETIMPORT                        R7 K4 [warn]
       97 LOADK                            R8 K14 ["[AvatarCreation] Avatar save failed:"]
       98 MOVE                             R9 R6
       99 CALL                             R7 2 0
      100 GETUPVAL                         R8 0
      101 CALL                             R8 0 1
      102 JUMPIF                           R8 ; [+2]
      103 LOADNIL                          R7
      104 JUMP                             ; [+13]
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R8 R8 K6 ["classify"]
      108 MOVE                             R9 R6
      109 CALL                             R8 1 1
      110 GETUPVAL                         R9 2
      111 LOADK                            R11 K7 ["sendAvatarCreationFailure"]
      112 LOADK                            R12 K12 ["save"]
      113 MOVE                             R13 R8
      114 NAMECALL                         R9 R9 K9 ["report"]
      116 CALL                             R9 4 0
      117 MOVE                             R7 R8
      118 GETUPVAL                         R8 3
      119 NEWCLOSURE                       R9 P2
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R7
      122 CALL                             R8 1 0
      123 RETURN                           R0 0
      124 LOADK                            R9 K15 ["Model"]
      125 NAMECALL                         R7 R6 K16 ["IsA"]
      127 CALL                             R7 2 1
      128 JUMPIFNOT                        R7 ; [+4]
      129 GETTABLEKS                       R7 R6 K17 ["PrimaryPart"]
      131 JUMPIFNOTEQKNIL                  R7 ; [+29]
      133 GETIMPORT                        R7 K4 [warn]
      135 LOADK                            R8 K18 ["[AvatarCreation] Avatar save returned a model without a PrimaryPart"]
      136 CALL                             R7 1 0
      137 GETUPVAL                         R8 0
      138 CALL                             R8 0 1
      139 JUMPIF                           R8 ; [+2]
      140 LOADNIL                          R7
      141 JUMP                             ; [+13]
      142 GETUPVAL                         R8 1
      143 GETTABLEKS                       R8 R8 K6 ["classify"]
      145 LOADNIL                          R9
      146 CALL                             R8 1 1
      147 GETUPVAL                         R9 2
      148 LOADK                            R11 K7 ["sendAvatarCreationFailure"]
      149 LOADK                            R12 K12 ["save"]
      150 MOVE                             R13 R8
      151 NAMECALL                         R9 R9 K9 ["report"]
      153 CALL                             R9 4 0
      154 MOVE                             R7 R8
      155 GETUPVAL                         R8 3
      156 NEWCLOSURE                       R9 P2
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R7
      159 CALL                             R8 1 0
      160 RETURN                           R0 0
      161 GETUPVAL                         R7 10
      162 SETTABLEKS                       R7 R6 K19 ["Name"]
      164 GETUPVAL                         R7 11
      165 CALL                             R7 0 1
      166 JUMPIFNOT                        R7 ; [+3]
      167 GETUPVAL                         R7 12
      168 MOVE                             R8 R6
      169 CALL                             R7 1 0
      170 GETUPVAL                         R7 13
      171 CALL                             R7 0 1
      172 JUMPIFNOT                        R7 ; [+14]
      173 GETUPVAL                         R9 14
      174 GETTABLEKS                       R9 R9 K20 ["ATTRIBUTE_AVATAR_CREATION_JOB_ID"]
      176 MOVE                             R10 R4
      177 NAMECALL                         R7 R6 K21 ["SetAttribute"]
      179 CALL                             R7 3 0
      180 GETUPVAL                         R9 14
      181 GETTABLEKS                       R9 R9 K22 ["ATTRIBUTE_AVATAR_CREATION_PROMPT"]
      183 GETUPVAL                         R10 10
      184 NAMECALL                         R7 R6 K21 ["SetAttribute"]
      186 CALL                             R7 3 0
      187 GETUPVAL                         R7 15
      188 GETTABLEKS                       R7 R7 K23 ["placeGeneratedAvatar"]
      190 GETUPVAL                         R8 16
      191 MOVE                             R9 R6
      192 GETUPVAL                         R10 17
      193 CALL                             R7 3 0
      194 GETUPVAL                         R7 18
      195 CALL                             R7 0 1
      196 JUMPIFNOT                        R7 ; [+10]
      197 GETUPVAL                         R7 2
      198 LOADK                            R9 K24 ["sendAvatarCreationUsage"]
      199 MOVE                             R10 R4
      200 GETUPVAL                         R11 19
      201 MOVE                             R12 R6
      202 CALL                             R11 1 1
      203 GETUPVAL                         R12 17
      204 NAMECALL                         R7 R7 K9 ["report"]
      206 CALL                             R7 5 0
      207 GETUPVAL                         R7 20
      208 GETTABLEKS                       R7 R7 K25 ["disable"]
      210 CALL                             R7 0 0
      211 GETUPVAL                         R7 21
      212 NEWTABLE                         R8 0 0
      214 CALL                             R7 1 0
      215 GETUPVAL                         R7 3
      216 LOADNIL                          R8
      217 CALL                             R7 1 0
      218 RETURN                           R0 0
      219 GETIMPORT                        R5 K1 [pcall]
      221 GETUPVAL                         R6 6
      222 GETTABLEKS                       R6 R6 K26 ["load3DAvatarAsync"]
      224 MOVE                             R7 R3
      225 CALL                             R5 2 2
      226 JUMPIF                           R5 ; [+29]
      227 GETIMPORT                        R7 K4 [warn]
      229 LOADK                            R8 K27 ["[AvatarCreation] 3D load failed:"]
      230 MOVE                             R9 R6
      231 CALL                             R7 2 0
      232 GETUPVAL                         R8 0
      233 CALL                             R8 0 1
      234 JUMPIF                           R8 ; [+2]
      235 LOADNIL                          R7
      236 JUMP                             ; [+13]
      237 GETUPVAL                         R8 1
      238 GETTABLEKS                       R8 R8 K6 ["classify"]
      240 MOVE                             R9 R6
      241 CALL                             R8 1 1
      242 GETUPVAL                         R9 2
      243 LOADK                            R11 K7 ["sendAvatarCreationFailure"]
      244 LOADK                            R12 K28 ["load3D"]
      245 MOVE                             R13 R8
      246 NAMECALL                         R9 R9 K9 ["report"]
      248 CALL                             R9 4 0
      249 MOVE                             R7 R8
      250 GETUPVAL                         R8 3
      251 NEWCLOSURE                       R9 P2
      252 CAPTURE                          UPVAL U4
      253 CAPTURE                          VAL R7
      254 CALL                             R8 1 0
      255 RETURN                           R0 0
      256 GETUPVAL                         R7 6
      257 GETTABLEKS                       R7 R7 K29 ["createGeneratedAvatarModelAsync"]
      259 MOVE                             R8 R6
      260 CALL                             R7 1 1
      261 GETUPVAL                         R8 10
      262 SETTABLEKS                       R8 R7 K19 ["Name"]
      264 GETUPVAL                         R8 15
      265 GETTABLEKS                       R8 R8 K23 ["placeGeneratedAvatar"]
      267 GETUPVAL                         R9 16
      268 MOVE                             R10 R7
      269 GETUPVAL                         R11 17
      270 CALL                             R8 3 0
      271 GETUPVAL                         R8 20
      272 GETTABLEKS                       R8 R8 K25 ["disable"]
      274 CALL                             R8 0 0
      275 GETUPVAL                         R8 21
      276 NEWTABLE                         R9 0 0
      278 CALL                             R8 1 0
      279 GETUPVAL                         R8 3
      280 LOADNIL                          R9
      281 CALL                             R8 1 0
      282 RETURN                           R0 0

PROTO_27:
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
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U12
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U13
       63 CAPTURE                          UPVAL U14
       64 CAPTURE                          UPVAL U15
       65 CAPTURE                          UPVAL U16
       66 CAPTURE                          UPVAL U17
       67 CAPTURE                          UPVAL U18
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U19
       70 CAPTURE                          UPVAL U20
       71 CAPTURE                          UPVAL U21
       72 CAPTURE                          UPVAL U22
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R6 K5 ["current"]
       76 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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
       71 DUPTABLE                         R0 K21 [{["type"] = "failed", ["turns"], ["confirmedTurnId"], ["errorCode"]}]
       72 GETUPVAL                         R1 1
       73 SETTABLEKS                       R1 R0 K6 ["turns"]
       75 GETUPVAL                         R1 2
       76 GETTABLEKS                       R1 R1 K10 ["confirmedTurnId"]
       78 SETTABLEKS                       R1 R0 K10 ["confirmedTurnId"]
       80 GETUPVAL                         R1 2
       81 GETTABLEKS                       R1 R1 K20 ["errorCode"]
       83 SETTABLEKS                       R1 R0 K20 ["errorCode"]
       85 RETURN                           R0 1

PROTO_30:
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
       68 NEWCLOSURE                       R13 P2
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          VAL R0
       72 GETUPVAL                         R14 6
       73 GETTABLEKS                       R14 R14 K7 ["useEventCallback"]
       75 NEWCLOSURE                       R15 P3
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R10
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R6
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          VAL R1
       85 CALL                             R14 1 1
       86 GETUPVAL                         R15 6
       87 GETTABLEKS                       R15 R15 K7 ["useEventCallback"]
       89 NEWCLOSURE                       R16 P4
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R14
       97 CALL                             R15 1 1
       98 GETUPVAL                         R16 6
       99 GETTABLEKS                       R16 R16 K7 ["useEventCallback"]
      101 NEWCLOSURE                       R17 P5
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U9
      104 CAPTURE                          UPVAL U10
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R14
      108 CALL                             R16 1 1
      109 GETUPVAL                         R17 6
      110 GETTABLEKS                       R17 R17 K7 ["useEventCallback"]
      112 NEWCLOSURE                       R18 P6
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R6
      117 CALL                             R17 1 1
      118 GETUPVAL                         R18 6
      119 GETTABLEKS                       R18 R18 K7 ["useEventCallback"]
      121 NEWCLOSURE                       R19 P7
      122 CAPTURE                          VAL R5
      123 CAPTURE                          UPVAL U9
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          UPVAL U8
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U12
      134 CAPTURE                          VAL R3
      135 CAPTURE                          UPVAL U13
      136 CAPTURE                          UPVAL U14
      137 CAPTURE                          UPVAL U15
      138 CAPTURE                          UPVAL U16
      139 CAPTURE                          UPVAL U17
      140 CAPTURE                          VAL R2
      141 CAPTURE                          UPVAL U18
      142 CAPTURE                          UPVAL U19
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R6
      145 CALL                             R18 1 1
      146 GETUPVAL                         R19 6
      147 GETTABLEKS                       R19 R19 K7 ["useEventCallback"]
      149 NEWCLOSURE                       R20 P8
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R8
      154 CALL                             R19 1 1
      155 GETUPVAL                         R20 1
      156 GETTABLEKS                       R20 R20 K9 ["useMemo"]
      158 NEWCLOSURE                       R21 P9
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R7
      162 NEWTABLE                         R22 0 3
      164 MOVE                             R23 R5
      165 MOVE                             R24 R7
      166 GETTABLEKS                       R25 R4 K10 ["enabled"]
      168 SETLIST                          R22 R23 3 [1]
      170 CALL                             R20 2 1
      171 DUPTABLE                         R21 K18 [{"state", "open", "submitPrompt", "regenerate", "cancelGeneration", "generate3D", "resetGeneration"}]
      172 SETTABLEKS                       R20 R21 K11 ["state"]
      174 GETTABLEKS                       R22 R4 K19 ["enable"]
      176 SETTABLEKS                       R22 R21 K12 ["open"]
      178 SETTABLEKS                       R15 R21 K13 ["submitPrompt"]
      180 SETTABLEKS                       R16 R21 K14 ["regenerate"]
      182 SETTABLEKS                       R17 R21 K15 ["cancelGeneration"]
      184 SETTABLEKS                       R18 R21 K16 ["generate3D"]
      186 SETTABLEKS                       R19 R21 K17 ["resetGeneration"]
      188 RETURN                           R21 1

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
       59 GETTABLEKS                       R8 R8 K16 ["AvatarCreationErrors"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K12 ["Util"]
       68 GETTABLEKS                       R9 R9 K17 ["Constants"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K11 ["Src"]
       75 GETTABLEKS                       R10 R10 K12 ["Util"]
       77 GETTABLEKS                       R10 R10 K18 ["SelectionWrapper"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K11 ["Src"]
       84 GETTABLEKS                       R11 R11 K14 ["Components"]
       86 GETTABLEKS                       R11 R11 K19 ["StudioAssetServiceContext"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K11 ["Src"]
       93 GETTABLEKS                       R12 R12 K20 ["Types"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R13 R13 K12 ["Util"]
      102 GETTABLEKS                       R13 R13 K21 ["createAccessoriesFromMeshParts"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K12 ["Util"]
      111 GETTABLEKS                       R14 R14 K22 ["findUnderlyingMeshAndTextureAssetIds"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K11 ["Src"]
      118 GETTABLEKS                       R15 R15 K23 ["Flags"]
      120 GETTABLEKS                       R15 R15 K24 ["getEngineFeatureStudioAssetUploadAndInsertEnabled"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K11 ["Src"]
      127 GETTABLEKS                       R16 R16 K23 ["Flags"]
      129 GETTABLEKS                       R16 R16 K25 ["getFFlagAvatarPreviewerAvatarCreationAccessoriesFromMeshParts"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K11 ["Src"]
      136 GETTABLEKS                       R17 R17 K23 ["Flags"]
      138 GETTABLEKS                       R17 R17 K26 ["getFFlagAvatarPreviewerAvatarCreationErrorCodes"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K11 ["Src"]
      145 GETTABLEKS                       R18 R18 K23 ["Flags"]
      147 GETTABLEKS                       R18 R18 K27 ["getFFlagAvatarPreviewerAvatarCreationFeedback"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R19 R0 K11 ["Src"]
      154 GETTABLEKS                       R19 R19 K23 ["Flags"]
      156 GETTABLEKS                       R19 R19 K28 ["getFFlagAvatarPreviewerAvatarCreationUsage"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K5 [require]
      161 GETTABLEKS                       R20 R0 K11 ["Src"]
      163 GETTABLEKS                       R20 R20 K29 ["Hooks"]
      165 GETTABLEKS                       R20 R20 K30 ["useToggleState"]
      167 CALL                             R19 1 1
      168 DUPCLOSURE                       R20 K31 [PROTO_1]
      169 CAPTURE                          VAL R1
      170 DUPCLOSURE                       R21 K32 [PROTO_2]
      171 DUPCLOSURE                       R22 K33 [PROTO_3]
      172 DUPCLOSURE                       R23 K34 [PROTO_4]
      173 CAPTURE                          VAL R1
      174 DUPCLOSURE                       R24 K35 [PROTO_5]
      175 DUPCLOSURE                       R25 K36 [PROTO_30]
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R13
      196 RETURN                           R25 1
