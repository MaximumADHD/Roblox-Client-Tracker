PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 GETIMPORT                        R2 K4 [table.freeze]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R3 K0 ["CharacterName"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["GraphName"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R1 ; [+16]
        9 JUMPIFNOT                        R2 ; [+15]
       10 GETTABLEKS                       R3 R1 K3 ["Value"]
       12 JUMPIFEQKS                       R3 K4 [""] ; [+12]
       14 GETTABLEKS                       R3 R2 K3 ["Value"]
       16 JUMPIFEQKS                       R3 K4 [""] ; [+8]
       18 GETTABLEKS                       R4 R1 K3 ["Value"]
       20 LOADK                            R5 K5 ["_"]
       21 GETTABLEKS                       R6 R2 K3 ["Value"]
       23 CONCAT                           R3 R4 R6
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 SETTABLE                         R7 R2 R6
        9 FORGLOOP                         R3 2 ; [-2]
       11 GETIMPORT                        R3 K4 [table.freeze]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_5:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETTABLE                         R3 R0 R1
        4 JUMPIFEQKB                       R3 TRUE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["AnimationGraphEditor"]
        5 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R1 2
       10 LOADK                            R4 K2 ["CurrentAnimationId"]
       11 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K3 ["current"]
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetDebugData"]
        7 CALL                             R2 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+13]
        8 GETUPVAL                         R2 1
        9 JUMPIFEQ                         R2 R1 ; [+11]
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLE                         R7 R1 R5
       16 JUMPIF                           R7 ; [+2]
       17 LOADB                            R7 1
       18 SETTABLE                         R7 R0 R5
       19 FORGLOOP                         R2 2 ; [-5]
       21 MOVE                             R2 R0
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 GETIMPORT                        R7 K3 [task.spawn]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R5
       30 CALL                             R7 1 0
       31 FORGLOOP                         R2 2 ; [-7]
       33 MOVE                             R2 R1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETIMPORT                        R7 K3 [task.spawn]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CALL                             R7 1 0
       44 FORGLOOP                         R2 2 ; [-8]
       46 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 GETIMPORT                        R5 K3 [task.spawn]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R3
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-7]
       18 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["PostSimulation"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["Connect"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          REF R0
       15 CAPTURE                          UPVAL U1
       16 CLOSEUPVALS                      R0
       17 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+4]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R3 1 0
        7 JUMPIFNOT                        R1 ; [+56]
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 1
       10 CALL                             R3 1 0
       11 JUMPIFNOT                        R2 ; [+31]
       12 LOADK                            R6 K0 ["CharacterName"]
       13 NAMECALL                         R4 R2 K1 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 LOADK                            R7 K2 ["GraphName"]
       17 NAMECALL                         R5 R2 K1 ["FindFirstChild"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R4 ; [+16]
       21 JUMPIFNOT                        R5 ; [+15]
       22 GETTABLEKS                       R6 R4 K3 ["Value"]
       24 JUMPIFEQKS                       R6 K4 [""] ; [+12]
       26 GETTABLEKS                       R6 R5 K3 ["Value"]
       28 JUMPIFEQKS                       R6 K4 [""] ; [+8]
       30 GETTABLEKS                       R6 R4 K3 ["Value"]
       32 LOADK                            R7 K5 ["_"]
       33 GETTABLEKS                       R8 R5 K3 ["Value"]
       35 CONCAT                           R3 R6 R8
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 JUMPIFNOT                        R3 ; [+4]
       39 GETUPVAL                         R4 3
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R3 0
       44 CALL                             R3 0 1
       45 JUMPIF                           R3 ; [+18]
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K6 ["current"]
       49 JUMPIFNOT                        R3 ; [+14]
       50 GETTABLEKS                       R4 R3 K3 ["Value"]
       52 JUMPIFEQKS                       R4 K4 [""] ; [+11]
       54 GETTABLEKS                       R4 R3 K3 ["Value"]
       56 JUMPIFEQ                         R4 R0 ; [+7]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R6 R3 K3 ["Value"]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          VAL R6
       63 CALL                             R4 1 0
       64 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeDescendantsWithPredicate"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_14]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 SETTABLE                         R2 R0 R1
        9 GETUPVAL                         R1 0
       10 GETIMPORT                        R2 K5 [table.freeze]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["current"]
       16 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAnimationClipAsync"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        7 NAMECALL                         R1 R0 K2 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 DUPTABLE                         R1 K8 [{["type"], ["graphId"], ["rigId"] = "", ["retrievalData"]}]
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K9 ["IsClient"]
       16 CALL                             R3 1 1
       17 JUMPIFNOT                        R3 ; [+2]
       18 LOADK                            R2 K10 ["client"]
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K11 ["server"]
       21 SETTABLEKS                       R2 R1 K3 ["type"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K12 ["instanceRegistry"]
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R2 K13 ["instanceToId"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K4 ["graphId"]
       32 DUPTABLE                         R2 K18 [{["animationId"], ["graphInstanceId"], ["loadAsEphemeral"] = True}]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K14 ["animationId"]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K12 ["instanceRegistry"]
       39 MOVE                             R5 R0
       40 NAMECALL                         R3 R3 K13 ["instanceToId"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R2 K15 ["graphInstanceId"]
       45 SETTABLEKS                       R2 R1 K7 ["retrievalData"]
       47 GETIMPORT                        R2 K21 [table.clone]
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K22 ["current"]
       52 CALL                             R2 1 1
       53 GETUPVAL                         R3 5
       54 SETTABLE                         R3 R2 R1
       55 GETUPVAL                         R3 4
       56 GETIMPORT                        R4 K24 [table.freeze]
       58 MOVE                             R5 R2
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K22 ["current"]
       62 GETUPVAL                         R3 6
       63 NEWCLOSURE                       R4 P0
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R1
       66 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       68 GETIMPORT                        R2 K26 [table.insert]
       70 CALL                             R2 2 0
       71 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["Animation"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["AnimationId"]
        6 JUMPIFNOT                        R2 ; [+29]
        7 JUMPIFEQKS                       R2 K2 [""] ; [+28]
        9 LOADK                            R5 K3 ["AnimationEditor_GraphAnimation"]
       10 NAMECALL                         R3 R1 K4 ["HasTag"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 CALL                             R4 0 1
       15 JUMPIFNOT                        R4 ; [+11]
       16 GETIMPORT                        R4 K7 [task.spawn]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U5
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 6
       28 MOVE                             R5 R2
       29 MOVE                             R6 R3
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETTABLEKS                       R7 R1 K8 ["Parent"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 CALL                             R4 3 0
       36 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADB                            R8 1
       10 SETTABLE                         R8 R2 R7
       11 FORGLOOP                         R3 2 ; [-3]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETTABLE                         R8 R2 R6
       20 JUMPIF                           R8 ; [+24]
       21 MOVE                             R8 R7
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 FASTCALL1                        TYPE R12 ; [+3]
       26 MOVE                             R14 R12
       27 GETIMPORT                        R13 K2 [type]
       29 CALL                             R13 1 1
       30 JUMPIFNOTEQKS                    R13 K3 ["function"] ; [+4]
       32 MOVE                             R13 R12
       33 CALL                             R13 0 0
       34 JUMP                             ; [+3]
       35 NAMECALL                         R13 R12 K4 ["Disconnect"]
       37 CALL                             R13 1 0
       38 FORGLOOP                         R8 2 ; [-14]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K0 ["current"]
       43 LOADNIL                          R9
       44 SETTABLE                         R9 R8 R6
       45 FORGLOOP                         R3 2 ; [-27]
       47 MOVE                             R3 R1
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K0 ["current"]
       54 GETTABLE                         R8 R9 R7
       55 JUMPIF                           R8 ; [+36]
       56 NEWTABLE                         R8 0 0
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U7
       66 GETTABLEKS                       R10 R7 K5 ["AnimationPlayed"]
       68 MOVE                             R12 R9
       69 NAMECALL                         R10 R10 K6 ["Connect"]
       71 CALL                             R10 2 1
       72 NAMECALL                         R11 R7 K7 ["GetPlayingAnimationTracks"]
       74 CALL                             R11 1 3
       75 FORGPREP                         R11
       76 MOVE                             R16 R9
       77 MOVE                             R17 R15
       78 CALL                             R16 1 0
       79 FORGLOOP                         R11 2 ; [-4]
       81 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       83 MOVE                             R12 R8
       84 MOVE                             R13 R10
       85 GETIMPORT                        R11 K10 [table.insert]
       87 CALL                             R11 2 0
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K0 ["current"]
       91 SETTABLE                         R8 R11 R7
       92 FORGLOOP                         R3 2 ; [-42]
       94 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R4
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 FASTCALL1                        TYPE R9 ; [+3]
       13 MOVE                             R11 R9
       14 GETIMPORT                        R10 K2 [type]
       16 CALL                             R10 1 1
       17 JUMPIFNOTEQKS                    R10 K3 ["function"] ; [+4]
       19 MOVE                             R10 R9
       20 CALL                             R10 0 0
       21 JUMP                             ; [+3]
       22 NAMECALL                         R10 R9 K4 ["Disconnect"]
       24 CALL                             R10 1 0
       25 FORGLOOP                         R5 2 ; [-14]
       27 FORGLOOP                         R0 2 ; [-20]
       29 GETUPVAL                         R0 1
       30 NEWTABLE                         R1 0 0
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CALL                             R0 1 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_23:
        0 DUPTABLE                         R0 K9 [{[1], ["playedGraphKeys"], ["previewHasEnded"] = False, ["isPreviewRunning"] = True, ["graphAnimationWasPlayed"], ["previewDataModelDidBootstrap"] = True, ["DEPRECATED_wasGraphPlayed"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DEPRECATED_playedAssetIds"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["playedGraphKeys"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K6 ["graphAnimationWasPlayed"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K8 ["DEPRECATED_wasGraphPlayed"]
       13 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["useState"]
       15 NEWTABLE                         R3 0 0
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K2 ["useState"]
       21 NEWTABLE                         R5 0 0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K3 ["useRef"]
       27 GETIMPORT                        R7 K6 [table.freeze]
       29 NEWTABLE                         R8 0 0
       31 CALL                             R7 1 1
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K2 ["useState"]
       36 LOADB                            R8 0
       37 CALL                             R7 1 2
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K3 ["useRef"]
       41 NEWTABLE                         R10 0 0
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K3 ["useRef"]
       47 LOADNIL                          R11
       48 CALL                             R10 1 1
       49 GETUPVAL                         R12 0
       50 CALL                             R12 0 1
       51 JUMPIFNOT                        R12 ; [+8]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K0 ["useContext"]
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R12 R12 K1 ["Context"]
       58 CALL                             R11 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R11
       61 GETUPVAL                         R12 1
       62 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       64 NEWCLOSURE                       R13 P0
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R14 0 0
       70 CALL                             R12 2 0
       71 GETUPVAL                         R12 0
       72 CALL                             R12 0 1
       73 JUMPIFNOT                        R12 ; [+16]
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       77 NEWCLOSURE                       R13 P1
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U6
       81 NEWTABLE                         R14 0 2
       83 GETTABLEKS                       R15 R1 K8 ["setDebugDataAsync"]
       85 GETTABLEKS                       R16 R1 K9 ["observeActiveDebugTargetIdentifier"]
       87 SETLIST                          R14 R15 2 [1]
       89 CALL                             R12 2 0
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       93 NEWCLOSURE                       R13 P2
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R10
       99 NEWTABLE                         R14 0 3
      101 MOVE                             R15 R3
      102 MOVE                             R16 R5
      103 MOVE                             R17 R8
      104 SETLIST                          R14 R15 3 [1]
      106 CALL                             R12 2 1
      107 GETUPVAL                         R13 1
      108 GETTABLEKS                       R13 R13 K11 ["useMemo"]
      110 DUPCLOSURE                       R14 K12 [PROTO_15]
      111 CAPTURE                          UPVAL U7
      112 CAPTURE                          UPVAL U8
      113 NEWTABLE                         R15 0 0
      115 CALL                             R13 2 1
      116 GETUPVAL                         R14 1
      117 GETTABLEKS                       R14 R14 K7 ["useEffect"]
      119 NEWCLOSURE                       R15 P4
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R9
      123 CAPTURE                          UPVAL U0
      124 CAPTURE                          UPVAL U10
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R12
      129 NEWTABLE                         R16 0 3
      131 MOVE                             R17 R13
      132 MOVE                             R18 R12
      133 GETUPVAL                         R20 0
      134 CALL                             R20 0 1
      135 JUMPIFNOT                        R20 ; [+3]
      136 GETTABLEKS                       R19 R11 K13 ["instanceRegistry"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R19
      140 SETLIST                          R16 R17 3 [1]
      142 CALL                             R14 2 0
      143 GETUPVAL                         R14 4
      144 CALL                             R14 0 1
      145 JUMPIF                           R14 ; [+6]
      146 GETUPVAL                         R14 11
      147 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      149 LOADK                            R15 K15 ["GraphPlayedContext_PlayedAssetIds"]
      150 MOVE                             R16 R2
      151 CALL                             R14 2 0
      152 GETUPVAL                         R14 11
      153 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      155 LOADK                            R15 K16 ["GraphPlayedContext_PlayedGraphKeys"]
      156 MOVE                             R16 R4
      157 CALL                             R14 2 0
      158 GETUPVAL                         R14 11
      159 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      161 LOADK                            R15 K17 ["GraphPlayedContext_GraphAnimationWasPlayed"]
      162 MOVE                             R16 R7
      163 CALL                             R14 2 0
      164 GETUPVAL                         R14 11
      165 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      167 LOADK                            R15 K18 ["GraphPlayedContext_PreviewDidBootstrap"]
      168 LOADB                            R16 1
      169 CALL                             R14 2 0
      170 GETUPVAL                         R14 1
      171 GETTABLEKS                       R14 R14 K10 ["useCallback"]
      173 NEWCLOSURE                       R15 P5
      174 CAPTURE                          VAL R2
      175 NEWTABLE                         R16 0 1
      177 MOVE                             R17 R2
      178 SETLIST                          R16 R17 1 [1]
      180 CALL                             R14 2 1
      181 GETUPVAL                         R15 1
      182 GETTABLEKS                       R15 R15 K11 ["useMemo"]
      184 NEWCLOSURE                       R16 P6
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R14
      189 NEWTABLE                         R17 0 4
      191 MOVE                             R18 R2
      192 MOVE                             R19 R4
      193 MOVE                             R20 R7
      194 MOVE                             R21 R14
      195 SETLIST                          R17 R18 4 [1]
      197 CALL                             R15 2 1
      198 GETUPVAL                         R16 1
      199 GETTABLEKS                       R16 R16 K19 ["createElement"]
      201 GETUPVAL                         R17 12
      202 GETTABLEKS                       R17 R17 K20 ["Provider"]
      204 DUPTABLE                         R18 K22 [{"value"}]
      205 SETTABLEKS                       R15 R18 K21 ["value"]
      207 GETTABLEKS                       R19 R0 K23 ["children"]
      209 CALL                             R16 3 -1
      210 RETURN                           R16 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.PlayServer]
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 JUMPIF                           R0 ; [+5]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 FASTCALL2K                       ASSERT R0 K1 ; [+5]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K1 ["Expected MultipleDocumentInterfaceInstance to be available on the plugin"]
       16 GETIMPORT                        R1 K3 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R1 R0 K4 ["FocusedDataModelSession"]
       21 JUMPIF                           R1 ; [+8]
       22 GETUPVAL                         R2 1
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+3]
       25 GETUPVAL                         R2 2
       26 LOADB                            R3 0
       27 CALL                             R2 1 0
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U2
       33 GETTABLEKS                       R3 R1 K5 ["CurrentDataModelType"]
       35 LOADB                            R4 1
       36 GETIMPORT                        R5 K9 [Enum.StudioDataModelType.PlayClient]
       38 JUMPIFEQ                         R3 R5 ; [+7]
       40 GETIMPORT                        R5 K11 [Enum.StudioDataModelType.PlayServer]
       42 JUMPIFEQ                         R3 R5 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 GETUPVAL                         R5 2
       47 MOVE                             R6 R4
       48 CALL                             R5 1 0
       49 GETTABLEKS                       R3 R1 K12 ["CurrentDataModelTypeChanged"]
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K13 ["Connect"]
       54 CALL                             R3 2 1
       55 NEWCLOSURE                       R4 P1
       56 CAPTURE                          VAL R3
       57 RETURN                           R4 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K4 ["useReplicatedState"]
       28 LOADK                            R5 K5 ["GraphPlayedContext_IsPreviewRunning"]
       29 MOVE                             R6 R2
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R4 R0 K6 ["children"]
       33 RETURN                           R4 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.PlayServer]
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+25]
       12 GETUPVAL                         R1 2
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K2 ["current"]
       22 GETUPVAL                         R1 5
       23 NEWTABLE                         R2 0 0
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 6
       27 NEWTABLE                         R2 0 0
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 7
       31 LOADB                            R2 0
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 8
       34 LOADB                            R2 0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 3
       38 LOADB                            R2 0
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 4
       41 LOADB                            R2 0
       42 SETTABLEKS                       R2 R1 K2 ["current"]
       44 GETUPVAL                         R1 5
       45 NEWTABLE                         R2 0 0
       47 CALL                             R1 1 0
       48 GETUPVAL                         R1 6
       49 NEWTABLE                         R2 0 0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 7
       53 LOADB                            R2 0
       54 CALL                             R1 1 0
       55 GETUPVAL                         R1 8
       56 LOADB                            R2 0
       57 CALL                             R1 1 0
       58 NEWCLOSURE                       R1 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U2
       61 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       63 LOADB                            R3 1
       64 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.PlayClient]
       66 JUMPIFEQ                         R2 R4 ; [+7]
       68 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.PlayServer]
       70 JUMPIFEQ                         R2 R4 ; [+2]
       72 LOADB                            R3 0 +1
       73 LOADB                            R3 1
       74 GETUPVAL                         R4 2
       75 MOVE                             R5 R3
       76 CALL                             R4 1 0
       77 GETTABLEKS                       R2 R0 K10 ["CurrentDataModelTypeChanged"]
       79 MOVE                             R4 R1
       80 NAMECALL                         R2 R2 K11 ["Connect"]
       82 CALL                             R2 2 1
       83 SETUPVAL                         R2 0
       84 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 JUMPIF                           R0 ; [+4]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 LOADNIL                          R1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          REF R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 MOVE                             R3 R2
       23 CALL                             R3 0 0
       24 LOADK                            R5 K1 ["FocusedDataModelSession"]
       25 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       27 CALL                             R3 2 1
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R3 K3 ["Connect"]
       31 CALL                             R3 2 1
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          REF R1
       35 CLOSEUPVALS                      R1
       36 RETURN                           R4 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+22]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 NEWTABLE                         R1 0 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 5
       18 NEWTABLE                         R1 0 0
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 6
       22 LOADB                            R1 0
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 7
       25 LOADB                            R1 0
       26 CALL                             R0 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 2
       29 GETTABLEKS                       R0 R0 K0 ["current"]
       31 JUMPIFNOT                        R0 ; [+3]
       32 GETUPVAL                         R0 3
       33 LOADB                            R1 1
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 2
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_41:
        0 DUPTABLE                         R0 K7 [{"DEPRECATED_playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "DEPRECATED_wasGraphPlayed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DEPRECATED_playedAssetIds"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["playedGraphKeys"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["previewHasEnded"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["isPreviewRunning"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["graphAnimationWasPlayed"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["previewDataModelDidBootstrap"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["DEPRECATED_wasGraphPlayed"]
       22 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 NEWTABLE                         R2 0 0
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["useReplicatedStateListener"]
       16 LOADK                            R3 K3 ["GraphPlayedContext_PlayedAssetIds"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K2 ["useReplicatedStateListener"]
       23 LOADK                            R4 K4 ["GraphPlayedContext_PlayedGraphKeys"]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K2 ["useReplicatedStateListener"]
       30 LOADK                            R5 K5 ["GraphPlayedContext_GraphAnimationWasPlayed"]
       31 LOADB                            R6 0
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K2 ["useReplicatedStateListener"]
       36 LOADK                            R6 K6 ["GraphPlayedContext_PreviewDidBootstrap"]
       37 LOADB                            R7 0
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K7 ["useState"]
       42 NEWTABLE                         R7 0 0
       44 CALL                             R6 1 2
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K7 ["useState"]
       48 NEWTABLE                         R9 0 0
       50 CALL                             R8 1 2
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K7 ["useState"]
       54 LOADB                            R11 0
       55 CALL                             R10 1 2
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R12 R12 K7 ["useState"]
       59 LOADB                            R13 0
       60 CALL                             R12 1 2
       61 GETUPVAL                         R14 3
       62 GETTABLEKS                       R14 R14 K7 ["useState"]
       64 LOADB                            R15 0
       65 CALL                             R14 1 2
       66 GETUPVAL                         R16 3
       67 GETTABLEKS                       R16 R16 K7 ["useState"]
       69 LOADB                            R17 0
       70 CALL                             R16 1 2
       71 GETUPVAL                         R18 3
       72 GETTABLEKS                       R18 R18 K8 ["useRef"]
       74 LOADB                            R19 0
       75 CALL                             R18 1 1
       76 GETUPVAL                         R19 3
       77 GETTABLEKS                       R19 R19 K8 ["useRef"]
       79 LOADB                            R20 0
       80 CALL                             R19 1 1
       81 GETUPVAL                         R20 3
       82 GETTABLEKS                       R20 R20 K9 ["useEffect"]
       84 NEWCLOSURE                       R21 P0
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R18
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R17
       94 NEWTABLE                         R22 0 1
       96 MOVE                             R23 R1
       97 SETLIST                          R22 R23 1 [1]
       99 CALL                             R20 2 0
      100 GETUPVAL                         R20 3
      101 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      103 NEWCLOSURE                       R21 P1
      104 CAPTURE                          VAL R19
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R17
      112 NEWTABLE                         R22 0 1
      114 MOVE                             R23 R14
      115 SETLIST                          R22 R23 1 [1]
      117 CALL                             R20 2 0
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      121 NEWCLOSURE                       R21 P2
      122 CAPTURE                          VAL R19
      123 CAPTURE                          UPVAL U1
      124 CAPTURE                          VAL R7
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          VAL R2
      127 NEWTABLE                         R22 0 1
      129 MOVE                             R23 R2
      130 SETLIST                          R22 R23 1 [1]
      132 CALL                             R20 2 0
      133 GETUPVAL                         R20 3
      134 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      136 NEWCLOSURE                       R21 P3
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R9
      139 CAPTURE                          UPVAL U5
      140 CAPTURE                          VAL R3
      141 NEWTABLE                         R22 0 1
      143 MOVE                             R23 R3
      144 SETLIST                          R22 R23 1 [1]
      146 CALL                             R20 2 0
      147 GETUPVAL                         R20 3
      148 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      150 NEWCLOSURE                       R21 P4
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R11
      153 NEWTABLE                         R22 0 1
      155 MOVE                             R23 R4
      156 SETLIST                          R22 R23 1 [1]
      158 CALL                             R20 2 0
      159 GETUPVAL                         R20 6
      160 CALL                             R20 0 1
      161 JUMPIFNOT                        R20 ; [+12]
      162 GETUPVAL                         R20 3
      163 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      165 NEWCLOSURE                       R21 P5
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R17
      168 NEWTABLE                         R22 0 1
      170 MOVE                             R23 R5
      171 SETLIST                          R22 R23 1 [1]
      173 CALL                             R20 2 0
      174 GETUPVAL                         R20 3
      175 GETTABLEKS                       R20 R20 K10 ["useCallback"]
      177 NEWCLOSURE                       R21 P6
      178 CAPTURE                          VAL R6
      179 NEWTABLE                         R22 0 1
      181 MOVE                             R23 R6
      182 SETLIST                          R22 R23 1 [1]
      184 CALL                             R20 2 1
      185 GETUPVAL                         R21 3
      186 GETTABLEKS                       R21 R21 K11 ["useMemo"]
      188 NEWCLOSURE                       R22 P7
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R20
      196 NEWTABLE                         R23 0 7
      198 MOVE                             R24 R6
      199 MOVE                             R25 R8
      200 MOVE                             R26 R12
      201 MOVE                             R27 R14
      202 MOVE                             R28 R10
      203 MOVE                             R29 R16
      204 MOVE                             R30 R20
      205 SETLIST                          R23 R24 7 [1]
      207 CALL                             R21 2 1
      208 GETUPVAL                         R22 3
      209 GETTABLEKS                       R22 R22 K12 ["createElement"]
      211 GETUPVAL                         R23 7
      212 GETTABLEKS                       R23 R23 K13 ["Provider"]
      214 DUPTABLE                         R24 K15 [{"value"}]
      215 SETTABLEKS                       R21 R24 K14 ["value"]
      217 GETTABLEKS                       R25 R0 K16 ["children"]
      219 CALL                             R22 3 -1
      220 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["RunService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["Workspace"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R0 K13 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R0 K15 ["Contexts"]
       42 GETTABLEKS                       R7 R7 K16 ["GraphDebugDataContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R8 R0 K15 ["Contexts"]
       49 GETTABLEKS                       R8 R8 K16 ["GraphDebugDataContext"]
       51 GETTABLEKS                       R8 R8 K17 ["GraphDebugDataUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Contexts"]
       58 GETTABLEKS                       R9 R9 K18 ["InstanceRegistryContext"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R0 K19 ["Util"]
       65 GETTABLEKS                       R10 R10 K20 ["Networking"]
       67 GETTABLEKS                       R10 R10 K21 ["NetworkUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K12 [require]
       72 GETTABLEKS                       R11 R0 K13 ["Parent"]
       74 GETTABLEKS                       R11 R11 K22 ["React"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K12 [require]
       79 GETTABLEKS                       R12 R0 K13 ["Parent"]
       81 GETTABLEKS                       R12 R12 K23 ["Signals"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K12 [require]
       86 GETTABLEKS                       R13 R0 K19 ["Util"]
       88 GETTABLEKS                       R13 R13 K23 ["Signals"]
       90 GETTABLEKS                       R13 R13 K24 ["SignalsInstanceUtils"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K12 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Flags"]
       97 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimGraphCheckPreviewBootstrap"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K12 [require]
      102 GETTABLEKS                       R15 R0 K25 ["Flags"]
      104 GETTABLEKS                       R15 R15 K27 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K12 [require]
      109 GETTABLEKS                       R16 R0 K25 ["Flags"]
      111 GETTABLEKS                       R16 R16 K28 ["getFFlagAnimGraphUI_RunTimeDebug"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R5 K29 ["ContextServices"]
      116 GETTABLEKS                       R16 R16 K30 ["Plugin"]
      118 DUPTABLE                         R17 K39 [{["DEPRECATED_playedAssetIds"], ["playedGraphKeys"], ["previewHasEnded"] = False, ["isPreviewRunning"] = False, ["graphAnimationWasPlayed"] = False, ["previewDataModelDidBootstrap"] = False, ["DEPRECATED_wasGraphPlayed"]}]
      119 NEWTABLE                         R18 0 0
      121 SETTABLEKS                       R18 R17 K31 ["DEPRECATED_playedAssetIds"]
      123 NEWTABLE                         R18 0 0
      125 SETTABLEKS                       R18 R17 K32 ["playedGraphKeys"]
      127 DUPCLOSURE                       R18 K40 [PROTO_0]
      128 SETTABLEKS                       R18 R17 K38 ["DEPRECATED_wasGraphPlayed"]
      130 GETTABLEKS                       R18 R10 K41 ["createContext"]
      132 MOVE                             R19 R17
      133 CALL                             R18 1 1
      134 DUPTABLE                         R19 K52 [{["PLAYED_ASSET_IDS"] = "GraphPlayedContext_PlayedAssetIds", ["PLAYED_GRAPH_KEYS"] = "GraphPlayedContext_PlayedGraphKeys", ["IS_PREVIEW_RUNNING"] = "GraphPlayedContext_IsPreviewRunning", ["GRAPH_ANIMATION_WAS_PLAYED"] = "GraphPlayedContext_GraphAnimationWasPlayed", ["PREVIEW_DID_BOOTSTRAP"] = "GraphPlayedContext_PreviewDidBootstrap"}]
      135 DUPCLOSURE                       R20 K53 [PROTO_2]
      136 DUPCLOSURE                       R21 K54 [PROTO_3]
      137 DUPCLOSURE                       R22 K55 [PROTO_4]
      138 DUPCLOSURE                       R23 K56 [PROTO_5]
      139 DUPCLOSURE                       R24 K57 [PROTO_24]
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R18
      153 DUPCLOSURE                       R25 K58 [PROTO_28]
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R9
      158 DUPCLOSURE                       R26 K59 [PROTO_42]
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R18
      167 DUPTABLE                         R27 K68 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed", "_getGraphKeyFromAnimateScript", "_mergeIdSets"}]
      168 SETTABLEKS                       R18 R27 K60 ["Context"]
      170 SETTABLEKS                       R25 R27 K61 ["EditableDataModelProvider"]
      172 SETTABLEKS                       R24 R27 K62 ["PreviewDataModelProvider"]
      174 SETTABLEKS                       R26 R27 K63 ["UIDataModelProvider"]
      176 SETTABLEKS                       R20 R27 K64 ["_createAddIdUpdater"]
      178 SETTABLEKS                       R23 R27 K65 ["_checkWasGraphPlayed"]
      180 SETTABLEKS                       R21 R27 K66 ["_getGraphKeyFromAnimateScript"]
      182 SETTABLEKS                       R22 R27 K67 ["_mergeIdSets"]
      184 RETURN                           R27 1
