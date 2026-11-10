PROTO_0:
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

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADK                            R5 K0 ["CharacterName"]
        3 NAMECALL                         R3 R0 K1 ["GetAttribute"]
        5 CALL                             R3 2 1
        6 MOVE                             R1 R3
        7 LOADK                            R5 K2 ["GraphName"]
        8 NAMECALL                         R3 R0 K1 ["GetAttribute"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 JUMPIFNOT                        R1 ; [+10]
       13 JUMPIFNOT                        R2 ; [+9]
       14 JUMPIFEQKS                       R1 K3 [""] ; [+8]
       16 JUMPIFEQKS                       R2 K3 [""] ; [+6]
       18 MOVE                             R4 R1
       19 LOADK                            R5 K4 ["_"]
       20 MOVE                             R6 R2
       21 CONCAT                           R3 R4 R6
       22 RETURN                           R3 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1

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
       11 GETIMPORT                        R3 K4 [table.freeze]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetDebugData"]
        7 CALL                             R2 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+33]
        1 GETUPVAL                         R3 0
        2 LOADB                            R4 1
        3 CALL                             R3 1 0
        4 JUMPIFNOT                        R2 ; [+29]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADK                            R8 K0 ["CharacterName"]
        8 NAMECALL                         R6 R2 K1 ["GetAttribute"]
       10 CALL                             R6 2 1
       11 MOVE                             R4 R6
       12 LOADK                            R8 K2 ["GraphName"]
       13 NAMECALL                         R6 R2 K1 ["GetAttribute"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 JUMPIFNOT                        R4 ; [+10]
       18 JUMPIFNOT                        R5 ; [+9]
       19 JUMPIFEQKS                       R4 K3 [""] ; [+8]
       21 JUMPIFEQKS                       R5 K3 [""] ; [+6]
       23 MOVE                             R6 R4
       24 LOADK                            R7 K4 ["_"]
       25 MOVE                             R8 R5
       26 CONCAT                           R3 R6 R8
       27 JUMP                             ; [+1]
       28 LOADNIL                          R3
       29 JUMPIFNOT                        R3 ; [+4]
       30 GETUPVAL                         R4 1
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R3
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeDescendantsWithPredicate"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_11]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Animation"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["AnimationId"]
        6 JUMPIFNOT                        R2 ; [+26]
        7 JUMPIFEQKS                       R2 K2 [""] ; [+25]
        9 LOADK                            R5 K3 ["AnimationEditor_GraphAnimation"]
       10 NAMECALL                         R3 R1 K4 ["HasTag"]
       12 CALL                             R3 2 1
       13 GETIMPORT                        R4 K7 [task.spawn]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 5
       25 MOVE                             R5 R2
       26 MOVE                             R6 R3
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R7 R1 K8 ["Parent"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

PROTO_16:
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
       55 JUMPIF                           R8 ; [+35]
       56 NEWTABLE                         R8 0 0
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U6
       65 GETTABLEKS                       R10 R7 K5 ["AnimationPlayed"]
       67 MOVE                             R12 R9
       68 NAMECALL                         R10 R10 K6 ["Connect"]
       70 CALL                             R10 2 1
       71 NAMECALL                         R11 R7 K7 ["GetPlayingAnimationTracks"]
       73 CALL                             R11 1 3
       74 FORGPREP                         R11
       75 MOVE                             R16 R9
       76 MOVE                             R17 R15
       77 CALL                             R16 1 0
       78 FORGLOOP                         R11 2 ; [-4]
       80 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       82 MOVE                             R12 R8
       83 MOVE                             R13 R10
       84 GETIMPORT                        R11 K10 [table.insert]
       86 CALL                             R11 2 0
       87 GETUPVAL                         R11 1
       88 GETTABLEKS                       R11 R11 K0 ["current"]
       90 SETTABLE                         R8 R11 R7
       91 FORGLOOP                         R3 2 ; [-41]
       93 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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
       11 CALL                             R0 1 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 RETURN                           R1 1

PROTO_19:
        0 DUPTABLE                         R0 K7 [{[1], ["previewHasEnded"] = False, ["isPreviewRunning"] = True, ["graphAnimationWasPlayed"], ["previewDataModelDidBootstrap"] = True}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["playedGraphKeys"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K5 ["graphAnimationWasPlayed"]
        7 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["useRef"]
       16 GETIMPORT                        R5 K6 [table.freeze]
       18 NEWTABLE                         R6 0 0
       20 CALL                             R5 1 1
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["useState"]
       25 LOADB                            R6 0
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K3 ["useRef"]
       30 NEWTABLE                         R8 0 0
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K0 ["useContext"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K1 ["Context"]
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U3
       47 NEWTABLE                         R11 0 2
       49 GETTABLEKS                       R12 R1 K8 ["setDebugDataAsync"]
       51 GETTABLEKS                       R13 R1 K9 ["observeActiveDebugTargetIdentifier"]
       53 SETLIST                          R11 R12 2 [1]
       55 CALL                             R9 2 0
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R11 0 2
       64 MOVE                             R12 R3
       65 MOVE                             R13 R6
       66 SETLIST                          R11 R12 2 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       72 DUPCLOSURE                       R11 K12 [PROTO_12]
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U5
       75 NEWTABLE                         R12 0 0
       77 CALL                             R10 2 1
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K7 ["useEffect"]
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R7
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R9
       90 NEWTABLE                         R13 0 3
       92 MOVE                             R14 R10
       93 MOVE                             R15 R9
       94 GETTABLEKS                       R16 R8 K13 ["instanceRegistry"]
       96 SETLIST                          R13 R14 3 [1]
       98 CALL                             R11 2 0
       99 GETUPVAL                         R11 8
      100 GETTABLEKS                       R11 R11 K14 ["useReplicatedState"]
      102 LOADK                            R12 K15 ["GraphPlayedContext_PlayedGraphKeys"]
      103 MOVE                             R13 R2
      104 CALL                             R11 2 0
      105 GETUPVAL                         R11 8
      106 GETTABLEKS                       R11 R11 K14 ["useReplicatedState"]
      108 LOADK                            R12 K16 ["GraphPlayedContext_GraphAnimationWasPlayed"]
      109 MOVE                             R13 R5
      110 CALL                             R11 2 0
      111 GETUPVAL                         R11 8
      112 GETTABLEKS                       R11 R11 K14 ["useReplicatedState"]
      114 LOADK                            R12 K17 ["GraphPlayedContext_PreviewDidBootstrap"]
      115 LOADB                            R13 1
      116 CALL                             R11 2 0
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K11 ["useMemo"]
      120 NEWCLOSURE                       R12 P4
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R5
      123 NEWTABLE                         R13 0 2
      125 MOVE                             R14 R2
      126 MOVE                             R15 R5
      127 SETLIST                          R13 R14 2 [1]
      129 CALL                             R11 2 1
      130 GETUPVAL                         R12 0
      131 GETTABLEKS                       R12 R12 K18 ["createElement"]
      133 GETUPVAL                         R13 9
      134 GETTABLEKS                       R13 R13 K19 ["Provider"]
      136 DUPTABLE                         R14 K21 [{"value"}]
      137 SETTABLEKS                       R11 R14 K20 ["value"]
      139 GETTABLEKS                       R15 R0 K22 ["children"]
      141 CALL                             R12 3 -1
      142 RETURN                           R12 -1

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R1 ; [+5]
       12 GETUPVAL                         R2 1
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U1
       20 GETTABLEKS                       R3 R1 K2 ["CurrentDataModelType"]
       22 LOADB                            R4 1
       23 GETIMPORT                        R5 K6 [Enum.StudioDataModelType.PlayClient]
       25 JUMPIFEQ                         R3 R5 ; [+7]
       27 GETIMPORT                        R5 K8 [Enum.StudioDataModelType.PlayServer]
       29 JUMPIFEQ                         R3 R5 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 GETUPVAL                         R5 1
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 GETTABLEKS                       R3 R1 K9 ["CurrentDataModelTypeChanged"]
       38 MOVE                             R5 R2
       39 NAMECALL                         R3 R3 K10 ["Connect"]
       41 CALL                             R3 2 1
       42 NEWCLOSURE                       R4 P1
       43 CAPTURE                          VAL R3
       44 RETURN                           R4 1

PROTO_24:
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
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R1
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K4 ["useReplicatedState"]
       27 LOADK                            R5 K5 ["GraphPlayedContext_IsPreviewRunning"]
       28 MOVE                             R6 R2
       29 CALL                             R4 2 0
       30 GETTABLEKS                       R4 R0 K6 ["children"]
       32 RETURN                           R4 1

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
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+21]
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
       27 LOADB                            R2 0
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 7
       30 LOADB                            R2 0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 3
       34 LOADB                            R2 0
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 4
       37 LOADB                            R2 0
       38 SETTABLEKS                       R2 R1 K2 ["current"]
       40 GETUPVAL                         R1 5
       41 NEWTABLE                         R2 0 0
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 6
       45 LOADB                            R2 0
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 7
       48 LOADB                            R2 0
       49 CALL                             R1 1 0
       50 NEWCLOSURE                       R1 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       55 LOADB                            R3 1
       56 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.PlayClient]
       58 JUMPIFEQ                         R2 R4 ; [+7]
       60 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.PlayServer]
       62 JUMPIFEQ                         R2 R4 ; [+2]
       64 LOADB                            R3 0 +1
       65 LOADB                            R3 1
       66 GETUPVAL                         R4 2
       67 MOVE                             R5 R3
       68 CALL                             R4 1 0
       69 GETTABLEKS                       R2 R0 K10 ["CurrentDataModelTypeChanged"]
       71 MOVE                             R4 R1
       72 NAMECALL                         R2 R2 K11 ["Connect"]
       74 CALL                             R2 2 1
       75 SETUPVAL                         R2 0
       76 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 LOADNIL                          R1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 MOVE                             R3 R2
       19 CALL                             R3 0 0
       20 LOADK                            R5 K1 ["FocusedDataModelSession"]
       21 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       23 CALL                             R3 2 1
       24 MOVE                             R5 R2
       25 NAMECALL                         R3 R3 K3 ["Connect"]
       27 CALL                             R3 2 1
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          REF R1
       31 CLOSEUPVALS                      R1
       32 RETURN                           R4 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+18]
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
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 6
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K0 ["current"]
       27 JUMPIFNOT                        R0 ; [+3]
       28 GETUPVAL                         R0 3
       29 LOADB                            R1 1
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_34:
        0 DUPTABLE                         R0 K5 [{"playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["playedGraphKeys"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["previewHasEnded"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["isPreviewRunning"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["graphAnimationWasPlayed"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["previewDataModelDidBootstrap"]
       16 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useReplicatedStateListener"]
       10 LOADK                            R3 K3 ["GraphPlayedContext_PlayedGraphKeys"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["useReplicatedStateListener"]
       17 LOADK                            R4 K4 ["GraphPlayedContext_GraphAnimationWasPlayed"]
       18 LOADB                            R5 0
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K2 ["useReplicatedStateListener"]
       23 LOADK                            R5 K5 ["GraphPlayedContext_PreviewDidBootstrap"]
       24 LOADB                            R6 0
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K6 ["useState"]
       29 NEWTABLE                         R6 0 0
       31 CALL                             R5 1 2
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["useState"]
       35 LOADB                            R8 0
       36 CALL                             R7 1 2
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K6 ["useState"]
       40 LOADB                            R10 0
       41 CALL                             R9 1 2
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R11 R11 K6 ["useState"]
       45 LOADB                            R12 0
       46 CALL                             R11 1 2
       47 GETUPVAL                         R13 2
       48 GETTABLEKS                       R13 R13 K6 ["useState"]
       50 LOADB                            R14 0
       51 CALL                             R13 1 2
       52 GETUPVAL                         R15 2
       53 GETTABLEKS                       R15 R15 K7 ["useRef"]
       55 LOADB                            R16 0
       56 CALL                             R15 1 1
       57 GETUPVAL                         R16 2
       58 GETTABLEKS                       R16 R16 K7 ["useRef"]
       60 LOADB                            R17 0
       61 CALL                             R16 1 1
       62 GETUPVAL                         R17 2
       63 GETTABLEKS                       R17 R17 K8 ["useEffect"]
       65 NEWCLOSURE                       R18 P0
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R15
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R14
       73 NEWTABLE                         R19 0 1
       75 MOVE                             R20 R1
       76 SETLIST                          R19 R20 1 [1]
       78 CALL                             R17 2 0
       79 GETUPVAL                         R17 2
       80 GETTABLEKS                       R17 R17 K8 ["useEffect"]
       82 NEWCLOSURE                       R18 P1
       83 CAPTURE                          VAL R16
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R14
       90 NEWTABLE                         R19 0 1
       92 MOVE                             R20 R11
       93 SETLIST                          R19 R20 1 [1]
       95 CALL                             R17 2 0
       96 GETUPVAL                         R17 2
       97 GETTABLEKS                       R17 R17 K8 ["useEffect"]
       99 NEWCLOSURE                       R18 P2
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R6
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          VAL R2
      104 NEWTABLE                         R19 0 1
      106 MOVE                             R20 R2
      107 SETLIST                          R19 R20 1 [1]
      109 CALL                             R17 2 0
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R17 R17 K8 ["useEffect"]
      113 NEWCLOSURE                       R18 P3
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R8
      116 NEWTABLE                         R19 0 1
      118 MOVE                             R20 R3
      119 SETLIST                          R19 R20 1 [1]
      121 CALL                             R17 2 0
      122 GETUPVAL                         R17 2
      123 GETTABLEKS                       R17 R17 K8 ["useEffect"]
      125 NEWCLOSURE                       R18 P4
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R14
      128 NEWTABLE                         R19 0 1
      130 MOVE                             R20 R4
      131 SETLIST                          R19 R20 1 [1]
      133 CALL                             R17 2 0
      134 GETUPVAL                         R17 2
      135 GETTABLEKS                       R17 R17 K9 ["useMemo"]
      137 NEWCLOSURE                       R18 P5
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R13
      143 NEWTABLE                         R19 0 5
      145 MOVE                             R20 R5
      146 MOVE                             R21 R9
      147 MOVE                             R22 R11
      148 MOVE                             R23 R7
      149 MOVE                             R24 R13
      150 SETLIST                          R19 R20 5 [1]
      152 CALL                             R17 2 1
      153 GETUPVAL                         R18 2
      154 GETTABLEKS                       R18 R18 K10 ["createElement"]
      156 GETUPVAL                         R19 4
      157 GETTABLEKS                       R19 R19 K11 ["Provider"]
      159 DUPTABLE                         R20 K13 [{"value"}]
      160 SETTABLEKS                       R17 R20 K12 ["value"]
      162 GETTABLEKS                       R21 R0 K14 ["children"]
      164 CALL                             R18 3 -1
      165 RETURN                           R18 -1

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
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Workspace"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["Framework"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       36 GETTABLEKS                       R6 R6 K15 ["GraphDebugDataContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Contexts"]
       43 GETTABLEKS                       R7 R7 K15 ["GraphDebugDataContext"]
       45 GETTABLEKS                       R7 R7 K16 ["GraphDebugDataUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Contexts"]
       52 GETTABLEKS                       R8 R8 K17 ["InstanceRegistryContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K18 ["Util"]
       59 GETTABLEKS                       R9 R9 K19 ["Networking"]
       61 GETTABLEKS                       R9 R9 K20 ["NetworkUtils"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K11 [require]
       66 GETTABLEKS                       R10 R0 K12 ["Parent"]
       68 GETTABLEKS                       R10 R10 K21 ["React"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Parent"]
       75 GETTABLEKS                       R11 R11 K22 ["Signals"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K18 ["Util"]
       82 GETTABLEKS                       R12 R12 K22 ["Signals"]
       84 GETTABLEKS                       R12 R12 K23 ["SignalsInstanceUtils"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R4 K24 ["ContextServices"]
       89 GETTABLEKS                       R12 R12 K25 ["Plugin"]
       91 DUPTABLE                         R13 K32 [{["playedGraphKeys"], ["previewHasEnded"] = False, ["isPreviewRunning"] = False, ["graphAnimationWasPlayed"] = False, ["previewDataModelDidBootstrap"] = False}]
       92 NEWTABLE                         R14 0 0
       94 SETTABLEKS                       R14 R13 K26 ["playedGraphKeys"]
       96 GETTABLEKS                       R14 R9 K33 ["createContext"]
       98 MOVE                             R15 R13
       99 CALL                             R14 1 1
      100 DUPTABLE                         R15 K42 [{["PLAYED_GRAPH_KEYS"] = "GraphPlayedContext_PlayedGraphKeys", ["IS_PREVIEW_RUNNING"] = "GraphPlayedContext_IsPreviewRunning", ["GRAPH_ANIMATION_WAS_PLAYED"] = "GraphPlayedContext_GraphAnimationWasPlayed", ["PREVIEW_DID_BOOTSTRAP"] = "GraphPlayedContext_PreviewDidBootstrap"}]
      101 DUPCLOSURE                       R16 K43 [PROTO_1]
      102 DUPCLOSURE                       R17 K44 [PROTO_2]
      103 DUPCLOSURE                       R18 K45 [PROTO_3]
      104 DUPCLOSURE                       R19 K46 [PROTO_20]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R14
      115 DUPCLOSURE                       R20 K47 [PROTO_24]
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R8
      119 DUPCLOSURE                       R21 K48 [PROTO_35]
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R14
      125 DUPTABLE                         R22 K56 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_getGraphKeyFromAnimateScript", "_mergeIdSets"}]
      126 SETTABLEKS                       R14 R22 K49 ["Context"]
      128 SETTABLEKS                       R20 R22 K50 ["EditableDataModelProvider"]
      130 SETTABLEKS                       R19 R22 K51 ["PreviewDataModelProvider"]
      132 SETTABLEKS                       R21 R22 K52 ["UIDataModelProvider"]
      134 SETTABLEKS                       R16 R22 K53 ["_createAddIdUpdater"]
      136 SETTABLEKS                       R17 R22 K54 ["_getGraphKeyFromAnimateScript"]
      138 SETTABLEKS                       R18 R22 K55 ["_mergeIdSets"]
      140 RETURN                           R22 1
