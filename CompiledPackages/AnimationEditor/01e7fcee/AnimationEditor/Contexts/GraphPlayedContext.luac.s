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
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETTABLE                         R3 R0 R1
        4 JUMPIFEQKB                       R3 TRUE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R3 K0 ["GraphName"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["CharacterName"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R1 ; [+16]
        9 JUMPIFNOT                        R2 ; [+15]
       10 GETTABLEKS                       R3 R1 K3 ["Value"]
       12 JUMPIFEQKS                       R3 K4 [""] ; [+12]
       14 GETTABLEKS                       R3 R2 K3 ["Value"]
       16 JUMPIFEQKS                       R3 K4 [""] ; [+8]
       18 GETTABLEKS                       R4 R2 K3 ["Value"]
       20 LOADK                            R5 K5 ["_"]
       21 GETTABLEKS                       R6 R1 K3 ["Value"]
       23 CONCAT                           R3 R4 R6
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnimationGraphEditor"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R1 1
        7 LOADK                            R4 K2 ["CurrentAnimationId"]
        8 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K3 ["current"]
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R3 1 0
        4 JUMPIFNOT                        R1 ; [+53]
        5 GETUPVAL                         R3 1
        6 LOADB                            R4 1
        7 CALL                             R3 1 0
        8 JUMPIFNOT                        R2 ; [+31]
        9 LOADK                            R6 K0 ["GraphName"]
       10 NAMECALL                         R4 R2 K1 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 LOADK                            R7 K2 ["CharacterName"]
       14 NAMECALL                         R5 R2 K1 ["FindFirstChild"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R4 ; [+16]
       18 JUMPIFNOT                        R5 ; [+15]
       19 GETTABLEKS                       R6 R4 K3 ["Value"]
       21 JUMPIFEQKS                       R6 K4 [""] ; [+12]
       23 GETTABLEKS                       R6 R5 K3 ["Value"]
       25 JUMPIFEQKS                       R6 K4 [""] ; [+8]
       27 GETTABLEKS                       R6 R5 K3 ["Value"]
       29 LOADK                            R7 K5 ["_"]
       30 GETTABLEKS                       R8 R4 K3 ["Value"]
       32 CONCAT                           R3 R6 R8
       33 JUMP                             ; [+1]
       34 LOADNIL                          R3
       35 JUMPIFNOT                        R3 ; [+4]
       36 GETUPVAL                         R4 2
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          VAL R3
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R3 R4 K6 ["current"]
       43 JUMPIFNOT                        R3 ; [+14]
       44 GETTABLEKS                       R4 R3 K3 ["Value"]
       46 JUMPIFEQKS                       R4 K4 [""] ; [+11]
       48 GETTABLEKS                       R4 R3 K3 ["Value"]
       50 JUMPIFEQ                         R4 R0 ; [+7]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R6 R3 K3 ["Value"]
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          VAL R6
       57 CALL                             R4 1 0
       58 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeDescendantsWithPredicate"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_8]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Animation"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["AnimationId"]
        6 JUMPIFNOT                        R2 ; [+15]
        7 JUMPIFEQKS                       R2 K2 [""] ; [+14]
        9 LOADK                            R5 K3 ["AnimationEditor_GraphAnimation"]
       10 NAMECALL                         R3 R1 K4 ["HasTag"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R7 R1 K5 ["Parent"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R7
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_11:
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
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R3 R6 K0 ["current"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETTABLE                         R8 R2 R6
       20 JUMPIF                           R8 ; [+14]
       21 MOVE                             R8 R7
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 NAMECALL                         R13 R12 K1 ["Disconnect"]
       27 CALL                             R13 1 0
       28 FORGLOOP                         R8 2 ; [-4]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K0 ["current"]
       33 LOADNIL                          R9
       34 SETTABLE                         R9 R8 R6
       35 FORGLOOP                         R3 2 ; [-17]
       37 MOVE                             R3 R1
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R9 R10 K0 ["current"]
       44 GETTABLE                         R8 R9 R7
       45 JUMPIF                           R8 ; [+49]
       46 NEWTABLE                         R8 0 0
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          UPVAL U2
       50 GETTABLEKS                       R10 R7 K2 ["AnimationPlayed"]
       52 MOVE                             R12 R9
       53 NAMECALL                         R10 R10 K3 ["Connect"]
       55 CALL                             R10 2 1
       56 NAMECALL                         R11 R7 K4 ["GetPlayingAnimationTracks"]
       58 CALL                             R11 1 3
       59 FORGPREP                         R11
       60 GETTABLEKS                       R16 R15 K5 ["Animation"]
       62 JUMPIF                           R16 ; [+1]
       63 JUMP                             ; [+18]
       64 GETTABLEKS                       R17 R16 K6 ["AnimationId"]
       66 JUMPIFNOT                        R17 ; [+15]
       67 JUMPIFEQKS                       R17 K7 [""] ; [+14]
       69 LOADK                            R20 K8 ["AnimationEditor_GraphAnimation"]
       70 NAMECALL                         R18 R16 K9 ["HasTag"]
       72 CALL                             R18 2 1
       73 GETUPVAL                         R19 2
       74 MOVE                             R20 R17
       75 MOVE                             R21 R18
       76 JUMPIFNOT                        R18 ; [+3]
       77 GETTABLEKS                       R22 R16 K10 ["Parent"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R22
       81 CALL                             R19 3 0
       82 FORGLOOP                         R11 2 ; [-23]
       84 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       86 MOVE                             R12 R8
       87 MOVE                             R13 R10
       88 GETIMPORT                        R11 K13 [table.insert]
       90 CALL                             R11 2 0
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R11 R12 K0 ["current"]
       94 SETTABLE                         R8 R11 R7
       95 FORGLOOP                         R3 2 ; [-55]
       97 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R0 R3 K0 ["current"]
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R4
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 NAMECALL                         R10 R9 K1 ["Disconnect"]
       14 CALL                             R10 1 0
       15 FORGLOOP                         R5 2 ; [-4]
       17 FORGLOOP                         R0 2 ; [-10]
       19 GETUPVAL                         R0 1
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K1 ["useRef"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K1 ["useRef"]
       26 LOADNIL                          R9
       27 CALL                             R8 1 1
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K2 ["useEffect"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R8
       34 NEWTABLE                         R11 0 0
       36 CALL                             R9 2 0
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K3 ["useCallback"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R8
       45 NEWTABLE                         R11 0 0
       47 CALL                             R9 2 1
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K4 ["useMemo"]
       51 DUPCLOSURE                       R11 K5 [PROTO_9]
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 NEWTABLE                         R12 0 0
       56 CALL                             R10 2 1
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R11 R12 K2 ["useEffect"]
       60 NEWCLOSURE                       R12 P3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 NEWTABLE                         R13 0 2
       67 MOVE                             R14 R10
       68 MOVE                             R15 R9
       69 SETLIST                          R13 R14 2 [1]
       71 CALL                             R11 2 0
       72 GETUPVAL                         R12 5
       73 GETTABLEKS                       R11 R12 K6 ["useReplicatedState"]
       75 GETUPVAL                         R13 6
       76 GETTABLEKS                       R12 R13 K7 ["PLAYED_ASSET_IDS"]
       78 MOVE                             R13 R1
       79 CALL                             R11 2 0
       80 GETUPVAL                         R12 5
       81 GETTABLEKS                       R11 R12 K6 ["useReplicatedState"]
       83 GETUPVAL                         R13 6
       84 GETTABLEKS                       R12 R13 K8 ["PLAYED_GRAPH_KEYS"]
       86 MOVE                             R13 R3
       87 CALL                             R11 2 0
       88 GETUPVAL                         R12 5
       89 GETTABLEKS                       R11 R12 K6 ["useReplicatedState"]
       91 GETUPVAL                         R13 6
       92 GETTABLEKS                       R12 R13 K9 ["GRAPH_ANIMATION_WAS_PLAYED"]
       94 MOVE                             R13 R5
       95 CALL                             R11 2 0
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R11 R12 K3 ["useCallback"]
       99 NEWCLOSURE                       R12 P4
      100 CAPTURE                          VAL R1
      101 NEWTABLE                         R13 0 1
      103 MOVE                             R14 R1
      104 SETLIST                          R13 R14 1 [1]
      106 CALL                             R11 2 1
      107 DUPTABLE                         R12 K16 [{"playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "wasGraphPlayed"}]
      108 SETTABLEKS                       R1 R12 K10 ["playedAssetIds"]
      110 SETTABLEKS                       R3 R12 K11 ["playedGraphKeys"]
      112 LOADB                            R13 0
      113 SETTABLEKS                       R13 R12 K12 ["previewHasEnded"]
      115 LOADB                            R13 1
      116 SETTABLEKS                       R13 R12 K13 ["isPreviewRunning"]
      118 SETTABLEKS                       R5 R12 K14 ["graphAnimationWasPlayed"]
      120 SETTABLEKS                       R11 R12 K15 ["wasGraphPlayed"]
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R13 R14 K17 ["createElement"]
      125 GETUPVAL                         R15 7
      126 GETTABLEKS                       R14 R15 K18 ["Provider"]
      128 DUPTABLE                         R15 K20 [{"value"}]
      129 SETTABLEKS                       R12 R15 K19 ["value"]
      131 GETTABLEKS                       R16 R0 K21 ["children"]
      133 CALL                             R13 3 -1
      134 RETURN                           R13 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CurrentDataModelType"]
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MultipleDocumentInterfaceInstance"]
        3 GETTABLEKS                       R1 R0 K1 ["FocusedDataModelSession"]
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 GETTABLEKS                       R3 R1 K2 ["CurrentDataModelType"]
       13 LOADB                            R4 1
       14 GETIMPORT                        R5 K6 [Enum.StudioDataModelType.PlayClient]
       16 JUMPIFEQ                         R3 R5 ; [+7]
       18 GETIMPORT                        R5 K8 [Enum.StudioDataModelType.PlayServer]
       20 JUMPIFEQ                         R3 R5 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 GETUPVAL                         R5 1
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 GETTABLEKS                       R3 R1 K9 ["CurrentDataModelTypeChanged"]
       29 MOVE                             R5 R2
       30 NAMECALL                         R3 R3 K10 ["Connect"]
       32 CALL                             R3 2 1
       33 NEWCLOSURE                       R4 P1
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R1
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K4 ["useReplicatedState"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K5 ["IS_PREVIEW_RUNNING"]
       30 MOVE                             R6 R2
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R4 R0 K6 ["children"]
       34 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CurrentDataModelType"]
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+22]
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
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 3
       35 LOADB                            R2 0
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 4
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K2 ["current"]
       41 GETUPVAL                         R1 5
       42 NEWTABLE                         R2 0 0
       44 CALL                             R1 1 0
       45 GETUPVAL                         R1 6
       46 NEWTABLE                         R2 0 0
       48 CALL                             R1 1 0
       49 GETUPVAL                         R1 7
       50 LOADB                            R2 0
       51 CALL                             R1 1 0
       52 NEWCLOSURE                       R1 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U2
       55 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       57 LOADB                            R3 1
       58 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.PlayClient]
       60 JUMPIFEQ                         R2 R4 ; [+7]
       62 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.PlayServer]
       64 JUMPIFEQ                         R2 R4 ; [+2]
       66 LOADB                            R3 0 +1
       67 LOADB                            R3 1
       68 GETUPVAL                         R4 2
       69 MOVE                             R5 R3
       70 CALL                             R4 1 0
       71 GETTABLEKS                       R2 R0 K10 ["CurrentDataModelTypeChanged"]
       73 MOVE                             R4 R1
       74 NAMECALL                         R2 R2 K11 ["Connect"]
       76 CALL                             R2 2 1
       77 SETUPVAL                         R2 0
       78 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MultipleDocumentInterfaceInstance"]
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 MOVE                             R3 R2
       14 CALL                             R3 0 0
       15 LOADK                            R5 K1 ["FocusedDataModelSession"]
       16 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K3 ["Connect"]
       22 CALL                             R3 2 1
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          REF R1
       26 CLOSEUPVALS                      R1
       27 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+19]
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
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K0 ["current"]
       28 JUMPIFNOT                        R0 ; [+3]
       29 GETUPVAL                         R0 3
       30 LOADB                            R1 1
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useReplicatedStateListener"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["PLAYED_ASSET_IDS"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K2 ["useReplicatedStateListener"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K4 ["PLAYED_GRAPH_KEYS"]
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K2 ["useReplicatedStateListener"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K5 ["GRAPH_ANIMATION_WAS_PLAYED"]
       31 LOADB                            R6 0
       32 CALL                             R4 2 1
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K6 ["useState"]
       36 NEWTABLE                         R6 0 0
       38 CALL                             R5 1 2
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R7 R8 K6 ["useState"]
       42 NEWTABLE                         R8 0 0
       44 CALL                             R7 1 2
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R9 R10 K6 ["useState"]
       48 LOADB                            R10 0
       49 CALL                             R9 1 2
       50 GETUPVAL                         R12 3
       51 GETTABLEKS                       R11 R12 K6 ["useState"]
       53 LOADB                            R12 0
       54 CALL                             R11 1 2
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R13 R14 K6 ["useState"]
       58 LOADB                            R14 0
       59 CALL                             R13 1 2
       60 GETUPVAL                         R16 3
       61 GETTABLEKS                       R15 R16 K7 ["useRef"]
       63 LOADB                            R16 0
       64 CALL                             R15 1 1
       65 GETUPVAL                         R17 3
       66 GETTABLEKS                       R16 R17 K7 ["useRef"]
       68 LOADB                            R17 0
       69 CALL                             R16 1 1
       70 GETUPVAL                         R18 3
       71 GETTABLEKS                       R17 R18 K8 ["useEffect"]
       73 NEWCLOSURE                       R18 P0
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 NEWTABLE                         R19 0 1
       83 MOVE                             R20 R1
       84 SETLIST                          R19 R20 1 [1]
       86 CALL                             R17 2 0
       87 GETUPVAL                         R18 3
       88 GETTABLEKS                       R17 R18 K8 ["useEffect"]
       90 NEWCLOSURE                       R18 P1
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R10
       98 NEWTABLE                         R19 0 1
      100 MOVE                             R20 R13
      101 SETLIST                          R19 R20 1 [1]
      103 CALL                             R17 2 0
      104 GETUPVAL                         R18 3
      105 GETTABLEKS                       R17 R18 K8 ["useEffect"]
      107 NEWCLOSURE                       R18 P2
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R6
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          VAL R2
      112 NEWTABLE                         R19 0 1
      114 MOVE                             R20 R2
      115 SETLIST                          R19 R20 1 [1]
      117 CALL                             R17 2 0
      118 GETUPVAL                         R18 3
      119 GETTABLEKS                       R17 R18 K8 ["useEffect"]
      121 NEWCLOSURE                       R18 P3
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R8
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R3
      126 NEWTABLE                         R19 0 1
      128 MOVE                             R20 R3
      129 SETLIST                          R19 R20 1 [1]
      131 CALL                             R17 2 0
      132 GETUPVAL                         R18 3
      133 GETTABLEKS                       R17 R18 K8 ["useEffect"]
      135 NEWCLOSURE                       R18 P4
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R10
      138 NEWTABLE                         R19 0 1
      140 MOVE                             R20 R4
      141 SETLIST                          R19 R20 1 [1]
      143 CALL                             R17 2 0
      144 GETUPVAL                         R18 3
      145 GETTABLEKS                       R17 R18 K9 ["useCallback"]
      147 NEWCLOSURE                       R18 P5
      148 CAPTURE                          VAL R5
      149 NEWTABLE                         R19 0 1
      151 MOVE                             R20 R5
      152 SETLIST                          R19 R20 1 [1]
      154 CALL                             R17 2 1
      155 DUPTABLE                         R18 K16 [{"playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "wasGraphPlayed"}]
      156 SETTABLEKS                       R5 R18 K10 ["playedAssetIds"]
      158 SETTABLEKS                       R7 R18 K11 ["playedGraphKeys"]
      160 SETTABLEKS                       R11 R18 K12 ["previewHasEnded"]
      162 SETTABLEKS                       R13 R18 K13 ["isPreviewRunning"]
      164 SETTABLEKS                       R9 R18 K14 ["graphAnimationWasPlayed"]
      166 SETTABLEKS                       R17 R18 K15 ["wasGraphPlayed"]
      168 GETUPVAL                         R20 3
      169 GETTABLEKS                       R19 R20 K17 ["createElement"]
      171 GETUPVAL                         R21 5
      172 GETTABLEKS                       R20 R21 K18 ["Provider"]
      174 DUPTABLE                         R21 K20 [{"value"}]
      175 SETTABLEKS                       R18 R21 K19 ["value"]
      177 GETTABLEKS                       R22 R0 K21 ["children"]
      179 CALL                             R19 3 -1
      180 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Workspace"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R0 K13 ["Util"]
       30 GETTABLEKS                       R6 R7 K14 ["Networking"]
       32 GETTABLEKS                       R5 R6 K15 ["NetworkUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R7 K16 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R8 K17 ["Signals"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Util"]
       53 GETTABLEKS                       R9 R10 K17 ["Signals"]
       55 GETTABLEKS                       R8 R9 K18 ["SignalsInstanceUtils"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R9 R3 K19 ["ContextServices"]
       60 GETTABLEKS                       R8 R9 K20 ["Plugin"]
       62 DUPTABLE                         R9 K27 [{"playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "wasGraphPlayed"}]
       63 NEWTABLE                         R10 0 0
       65 SETTABLEKS                       R10 R9 K21 ["playedAssetIds"]
       67 NEWTABLE                         R10 0 0
       69 SETTABLEKS                       R10 R9 K22 ["playedGraphKeys"]
       71 LOADB                            R10 0
       72 SETTABLEKS                       R10 R9 K23 ["previewHasEnded"]
       74 LOADB                            R10 0
       75 SETTABLEKS                       R10 R9 K24 ["isPreviewRunning"]
       77 LOADB                            R10 0
       78 SETTABLEKS                       R10 R9 K25 ["graphAnimationWasPlayed"]
       80 DUPCLOSURE                       R10 K28 [PROTO_0]
       81 SETTABLEKS                       R10 R9 K26 ["wasGraphPlayed"]
       83 GETTABLEKS                       R10 R5 K29 ["createContext"]
       85 MOVE                             R11 R9
       86 CALL                             R10 1 1
       87 DUPTABLE                         R11 K34 [{"PLAYED_ASSET_IDS", "PLAYED_GRAPH_KEYS", "IS_PREVIEW_RUNNING", "GRAPH_ANIMATION_WAS_PLAYED"}]
       88 LOADK                            R12 K35 ["GraphPlayedContext_PlayedAssetIds"]
       89 SETTABLEKS                       R12 R11 K30 ["PLAYED_ASSET_IDS"]
       91 LOADK                            R12 K36 ["GraphPlayedContext_PlayedGraphKeys"]
       92 SETTABLEKS                       R12 R11 K31 ["PLAYED_GRAPH_KEYS"]
       94 LOADK                            R12 K37 ["GraphPlayedContext_IsPreviewRunning"]
       95 SETTABLEKS                       R12 R11 K32 ["IS_PREVIEW_RUNNING"]
       97 LOADK                            R12 K38 ["GraphPlayedContext_GraphAnimationWasPlayed"]
       98 SETTABLEKS                       R12 R11 K33 ["GRAPH_ANIMATION_WAS_PLAYED"]
      100 DUPCLOSURE                       R12 K39 [PROTO_2]
      101 DUPCLOSURE                       R13 K40 [PROTO_3]
      102 DUPCLOSURE                       R14 K41 [PROTO_4]
      103 DUPCLOSURE                       R15 K42 [PROTO_5]
      104 DUPCLOSURE                       R16 K43 [PROTO_15]
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R10
      113 DUPCLOSURE                       R17 K44 [PROTO_19]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R11
      118 DUPCLOSURE                       R18 K45 [PROTO_31]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R10
      125 DUPTABLE                         R19 K54 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed", "_getGraphKeyFromAnimateScript", "_mergeIdSets"}]
      126 SETTABLEKS                       R10 R19 K46 ["Context"]
      128 SETTABLEKS                       R17 R19 K47 ["EditableDataModelProvider"]
      130 SETTABLEKS                       R16 R19 K48 ["PreviewDataModelProvider"]
      132 SETTABLEKS                       R18 R19 K49 ["UIDataModelProvider"]
      134 SETTABLEKS                       R12 R19 K50 ["_createAddIdUpdater"]
      136 SETTABLEKS                       R13 R19 K51 ["_checkWasGraphPlayed"]
      138 SETTABLEKS                       R14 R19 K52 ["_getGraphKeyFromAnimateScript"]
      140 SETTABLEKS                       R15 R19 K53 ["_mergeIdSets"]
      142 RETURN                           R19 1
