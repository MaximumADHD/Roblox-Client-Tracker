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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R2 1 0
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K0 ["current"]
       11 JUMPIFNOT                        R2 ; [+14]
       12 GETTABLEKS                       R3 R2 K1 ["Value"]
       14 JUMPIFEQKS                       R3 K2 [""] ; [+11]
       16 GETTABLEKS                       R3 R2 K1 ["Value"]
       18 JUMPIFEQ                         R3 R0 ; [+7]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R5 R2 K1 ["Value"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R5
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeDescendantsWithPredicate"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_6]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Animation"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["AnimationId"]
        6 JUMPIFNOT                        R2 ; [+10]
        7 JUMPIFEQKS                       R2 K2 [""] ; [+9]
        9 LOADK                            R5 K3 ["AnimationEditor_GraphAnimation"]
       10 NAMECALL                         R3 R1 K4 ["HasTag"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_9:
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
       45 JUMPIF                           R8 ; [+44]
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
       63 JUMP                             ; [+13]
       64 GETTABLEKS                       R17 R16 K6 ["AnimationId"]
       66 JUMPIFNOT                        R17 ; [+10]
       67 JUMPIFEQKS                       R17 K7 [""] ; [+9]
       69 LOADK                            R20 K8 ["AnimationEditor_GraphAnimation"]
       70 NAMECALL                         R18 R16 K9 ["HasTag"]
       72 CALL                             R18 2 1
       73 GETUPVAL                         R19 2
       74 MOVE                             R20 R17
       75 MOVE                             R21 R18
       76 CALL                             R19 2 0
       77 FORGLOOP                         R11 2 ; [-18]
       79 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       81 MOVE                             R12 R8
       82 MOVE                             R13 R10
       83 GETIMPORT                        R11 K12 [table.insert]
       85 CALL                             R11 2 0
       86 GETUPVAL                         R12 1
       87 GETTABLEKS                       R11 R12 K0 ["current"]
       89 SETTABLE                         R8 R11 R7
       90 FORGLOOP                         R3 2 ; [-50]
       92 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K1 ["useRef"]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K1 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K2 ["useEffect"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R6
       28 NEWTABLE                         R9 0 0
       30 CALL                             R7 2 0
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R9 0 0
       40 CALL                             R7 2 1
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K4 ["useMemo"]
       44 DUPCLOSURE                       R9 K5 [PROTO_7]
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 NEWTABLE                         R10 0 0
       49 CALL                             R8 2 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R9 R10 K2 ["useEffect"]
       53 NEWCLOSURE                       R10 P3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R11 0 2
       60 MOVE                             R12 R8
       61 MOVE                             R13 R7
       62 SETLIST                          R11 R12 2 [1]
       64 CALL                             R9 2 0
       65 GETUPVAL                         R10 5
       66 GETTABLEKS                       R9 R10 K6 ["useReplicatedState"]
       68 GETUPVAL                         R11 6
       69 GETTABLEKS                       R10 R11 K7 ["PLAYED_ASSET_IDS"]
       71 MOVE                             R11 R1
       72 CALL                             R9 2 0
       73 GETUPVAL                         R10 5
       74 GETTABLEKS                       R9 R10 K6 ["useReplicatedState"]
       76 GETUPVAL                         R11 6
       77 GETTABLEKS                       R10 R11 K8 ["GRAPH_ANIMATION_WAS_PLAYED"]
       79 MOVE                             R11 R3
       80 CALL                             R9 2 0
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R9 R10 K3 ["useCallback"]
       84 NEWCLOSURE                       R10 P4
       85 CAPTURE                          VAL R1
       86 NEWTABLE                         R11 0 1
       88 MOVE                             R12 R1
       89 SETLIST                          R11 R12 1 [1]
       91 CALL                             R9 2 1
       92 DUPTABLE                         R10 K14 [{"playedAssetIds", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "wasGraphPlayed"}]
       93 SETTABLEKS                       R1 R10 K9 ["playedAssetIds"]
       95 LOADB                            R11 0
       96 SETTABLEKS                       R11 R10 K10 ["previewHasEnded"]
       98 LOADB                            R11 1
       99 SETTABLEKS                       R11 R10 K11 ["isPreviewRunning"]
      101 SETTABLEKS                       R3 R10 K12 ["graphAnimationWasPlayed"]
      103 SETTABLEKS                       R9 R10 K13 ["wasGraphPlayed"]
      105 GETUPVAL                         R12 0
      106 GETTABLEKS                       R11 R12 K15 ["createElement"]
      108 GETUPVAL                         R13 7
      109 GETTABLEKS                       R12 R13 K16 ["Provider"]
      111 DUPTABLE                         R13 K18 [{"value"}]
      112 SETTABLEKS                       R10 R13 K17 ["value"]
      114 GETTABLEKS                       R14 R0 K19 ["children"]
      116 CALL                             R11 3 -1
      117 RETURN                           R11 -1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+18]
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
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 3
       31 LOADB                            R2 0
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 4
       34 LOADB                            R2 0
       35 SETTABLEKS                       R2 R1 K2 ["current"]
       37 GETUPVAL                         R1 5
       38 NEWTABLE                         R2 0 0
       40 CALL                             R1 1 0
       41 GETUPVAL                         R1 6
       42 LOADB                            R2 0
       43 CALL                             R1 1 0
       44 NEWCLOSURE                       R1 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       49 LOADB                            R3 1
       50 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.PlayClient]
       52 JUMPIFEQ                         R2 R4 ; [+7]
       54 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.PlayServer]
       56 JUMPIFEQ                         R2 R4 ; [+2]
       58 LOADB                            R3 0 +1
       59 LOADB                            R3 1
       60 GETUPVAL                         R4 2
       61 MOVE                             R5 R3
       62 CALL                             R4 1 0
       63 GETTABLEKS                       R2 R0 K10 ["CurrentDataModelTypeChanged"]
       65 MOVE                             R4 R1
       66 NAMECALL                         R2 R2 K11 ["Connect"]
       68 CALL                             R2 2 1
       69 SETUPVAL                         R2 0
       70 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_21:
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
       12 MOVE                             R3 R2
       13 CALL                             R3 0 0
       14 LOADK                            R5 K1 ["FocusedDataModelSession"]
       15 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       17 CALL                             R3 2 1
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K3 ["Connect"]
       21 CALL                             R3 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          REF R1
       25 CLOSEUPVALS                      R1
       26 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+15]
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
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R0 R1 K0 ["current"]
       24 JUMPIFNOT                        R0 ; [+3]
       25 GETUPVAL                         R0 3
       26 LOADB                            R1 1
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 SETTABLE                         R6 R1 R5
        9 FORGLOOP                         R2 2 ; [-2]
       11 GETIMPORT                        R2 K4 [table.freeze]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_27:
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
       20 GETTABLEKS                       R4 R5 K4 ["GRAPH_ANIMATION_WAS_PLAYED"]
       22 LOADB                            R5 0
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K5 ["useState"]
       27 NEWTABLE                         R5 0 0
       29 CALL                             R4 1 2
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K5 ["useState"]
       33 LOADB                            R7 0
       34 CALL                             R6 1 2
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R8 R9 K5 ["useState"]
       38 LOADB                            R9 0
       39 CALL                             R8 1 2
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R10 R11 K5 ["useState"]
       43 LOADB                            R11 0
       44 CALL                             R10 1 2
       45 GETUPVAL                         R13 3
       46 GETTABLEKS                       R12 R13 K6 ["useRef"]
       48 LOADB                            R13 0
       49 CALL                             R12 1 1
       50 GETUPVAL                         R14 3
       51 GETTABLEKS                       R13 R14 K6 ["useRef"]
       53 LOADB                            R14 0
       54 CALL                             R13 1 1
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R14 R15 K7 ["useEffect"]
       58 NEWCLOSURE                       R15 P0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R7
       65 NEWTABLE                         R16 0 1
       67 MOVE                             R17 R1
       68 SETLIST                          R16 R17 1 [1]
       70 CALL                             R14 2 0
       71 GETUPVAL                         R15 3
       72 GETTABLEKS                       R14 R15 K7 ["useEffect"]
       74 NEWCLOSURE                       R15 P1
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 NEWTABLE                         R16 0 1
       83 MOVE                             R17 R10
       84 SETLIST                          R16 R17 1 [1]
       86 CALL                             R14 2 0
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R14 R15 K7 ["useEffect"]
       90 NEWCLOSURE                       R15 P2
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R2
       94 NEWTABLE                         R16 0 1
       96 MOVE                             R17 R2
       97 SETLIST                          R16 R17 1 [1]
       99 CALL                             R14 2 0
      100 GETUPVAL                         R15 3
      101 GETTABLEKS                       R14 R15 K7 ["useEffect"]
      103 NEWCLOSURE                       R15 P3
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R7
      106 NEWTABLE                         R16 0 1
      108 MOVE                             R17 R3
      109 SETLIST                          R16 R17 1 [1]
      111 CALL                             R14 2 0
      112 GETUPVAL                         R15 3
      113 GETTABLEKS                       R14 R15 K8 ["useCallback"]
      115 NEWCLOSURE                       R15 P4
      116 CAPTURE                          VAL R4
      117 NEWTABLE                         R16 0 1
      119 MOVE                             R17 R4
      120 SETLIST                          R16 R17 1 [1]
      122 CALL                             R14 2 1
      123 DUPTABLE                         R15 K14 [{"playedAssetIds", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "wasGraphPlayed"}]
      124 SETTABLEKS                       R4 R15 K9 ["playedAssetIds"]
      126 SETTABLEKS                       R8 R15 K10 ["previewHasEnded"]
      128 SETTABLEKS                       R10 R15 K11 ["isPreviewRunning"]
      130 SETTABLEKS                       R6 R15 K12 ["graphAnimationWasPlayed"]
      132 SETTABLEKS                       R14 R15 K13 ["wasGraphPlayed"]
      134 GETUPVAL                         R17 3
      135 GETTABLEKS                       R16 R17 K15 ["createElement"]
      137 GETUPVAL                         R18 4
      138 GETTABLEKS                       R17 R18 K16 ["Provider"]
      140 DUPTABLE                         R18 K18 [{"value"}]
      141 SETTABLEKS                       R15 R18 K17 ["value"]
      143 GETTABLEKS                       R19 R0 K19 ["children"]
      145 CALL                             R16 3 -1
      146 RETURN                           R16 -1

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
       62 DUPTABLE                         R9 K26 [{"playedAssetIds", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "wasGraphPlayed"}]
       63 NEWTABLE                         R10 0 0
       65 SETTABLEKS                       R10 R9 K21 ["playedAssetIds"]
       67 LOADB                            R10 0
       68 SETTABLEKS                       R10 R9 K22 ["previewHasEnded"]
       70 LOADB                            R10 0
       71 SETTABLEKS                       R10 R9 K23 ["isPreviewRunning"]
       73 LOADB                            R10 0
       74 SETTABLEKS                       R10 R9 K24 ["graphAnimationWasPlayed"]
       76 DUPCLOSURE                       R10 K27 [PROTO_0]
       77 SETTABLEKS                       R10 R9 K25 ["wasGraphPlayed"]
       79 GETTABLEKS                       R10 R5 K28 ["createContext"]
       81 MOVE                             R11 R9
       82 CALL                             R10 1 1
       83 DUPTABLE                         R11 K32 [{"PLAYED_ASSET_IDS", "IS_PREVIEW_RUNNING", "GRAPH_ANIMATION_WAS_PLAYED"}]
       84 LOADK                            R12 K33 ["GraphPlayedContext_PlayedAssetIds"]
       85 SETTABLEKS                       R12 R11 K29 ["PLAYED_ASSET_IDS"]
       87 LOADK                            R12 K34 ["GraphPlayedContext_IsPreviewRunning"]
       88 SETTABLEKS                       R12 R11 K30 ["IS_PREVIEW_RUNNING"]
       90 LOADK                            R12 K35 ["GraphPlayedContext_GraphAnimationWasPlayed"]
       91 SETTABLEKS                       R12 R11 K31 ["GRAPH_ANIMATION_WAS_PLAYED"]
       93 DUPCLOSURE                       R12 K36 [PROTO_2]
       94 DUPCLOSURE                       R13 K37 [PROTO_3]
       95 DUPCLOSURE                       R14 K38 [PROTO_13]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R10
      104 DUPCLOSURE                       R15 K39 [PROTO_17]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R11
      109 DUPCLOSURE                       R16 K40 [PROTO_27]
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 DUPTABLE                         R17 K47 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed"}]
      116 SETTABLEKS                       R10 R17 K41 ["Context"]
      118 SETTABLEKS                       R15 R17 K42 ["EditableDataModelProvider"]
      120 SETTABLEKS                       R14 R17 K43 ["PreviewDataModelProvider"]
      122 SETTABLEKS                       R16 R17 K44 ["UIDataModelProvider"]
      124 SETTABLEKS                       R12 R17 K45 ["_createAddIdUpdater"]
      126 SETTABLEKS                       R13 R17 K46 ["_checkWasGraphPlayed"]
      128 RETURN                           R17 1
