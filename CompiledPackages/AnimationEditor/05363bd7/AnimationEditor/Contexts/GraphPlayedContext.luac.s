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
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K6 ["current"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeDescendantsWithPredicate"]
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
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["current"]
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
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K0 ["current"]
       33 LOADNIL                          R9
       34 SETTABLE                         R9 R8 R6
       35 FORGLOOP                         R3 2 ; [-17]
       37 MOVE                             R3 R1
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K0 ["current"]
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
       91 GETUPVAL                         R11 1
       92 GETTABLEKS                       R11 R11 K0 ["current"]
       94 SETTABLE                         R8 R11 R7
       95 FORGLOOP                         R3 2 ; [-55]
       97 RETURN                           R0 0

PROTO_12:
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
       12 NAMECALL                         R10 R9 K1 ["Disconnect"]
       14 CALL                             R10 1 0
       15 FORGLOOP                         R5 2 ; [-4]
       17 FORGLOOP                         R0 2 ; [-10]
       19 GETUPVAL                         R0 1
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["useRef"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K1 ["useRef"]
       26 LOADNIL                          R9
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R8
       34 NEWTABLE                         R11 0 0
       36 CALL                             R9 2 0
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R8
       45 NEWTABLE                         R11 0 0
       47 CALL                             R9 2 1
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       51 DUPCLOSURE                       R11 K5 [PROTO_9]
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 NEWTABLE                         R12 0 0
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K2 ["useEffect"]
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
       72 GETUPVAL                         R11 5
       73 GETTABLEKS                       R11 R11 K6 ["useReplicatedState"]
       75 GETUPVAL                         R12 6
       76 GETTABLEKS                       R12 R12 K7 ["PLAYED_ASSET_IDS"]
       78 MOVE                             R13 R1
       79 CALL                             R11 2 0
       80 GETUPVAL                         R11 5
       81 GETTABLEKS                       R11 R11 K6 ["useReplicatedState"]
       83 GETUPVAL                         R12 6
       84 GETTABLEKS                       R12 R12 K8 ["PLAYED_GRAPH_KEYS"]
       86 MOVE                             R13 R3
       87 CALL                             R11 2 0
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K6 ["useReplicatedState"]
       91 GETUPVAL                         R12 6
       92 GETTABLEKS                       R12 R12 K9 ["GRAPH_ANIMATION_WAS_PLAYED"]
       94 MOVE                             R13 R5
       95 CALL                             R11 2 0
       96 GETUPVAL                         R11 5
       97 GETTABLEKS                       R11 R11 K6 ["useReplicatedState"]
       99 GETUPVAL                         R12 6
      100 GETTABLEKS                       R12 R12 K10 ["PREVIEW_DID_BOOTSTRAP"]
      102 LOADB                            R13 1
      103 CALL                             R11 2 0
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R11 R11 K3 ["useCallback"]
      107 NEWCLOSURE                       R12 P4
      108 CAPTURE                          VAL R1
      109 NEWTABLE                         R13 0 1
      111 MOVE                             R14 R1
      112 SETLIST                          R13 R14 1 [1]
      114 CALL                             R11 2 1
      115 DUPTABLE                         R12 K18 [{"playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "wasGraphPlayed"}]
      116 SETTABLEKS                       R1 R12 K11 ["playedAssetIds"]
      118 SETTABLEKS                       R3 R12 K12 ["playedGraphKeys"]
      120 LOADB                            R13 0
      121 SETTABLEKS                       R13 R12 K13 ["previewHasEnded"]
      123 LOADB                            R13 1
      124 SETTABLEKS                       R13 R12 K14 ["isPreviewRunning"]
      126 SETTABLEKS                       R5 R12 K15 ["graphAnimationWasPlayed"]
      128 LOADB                            R13 1
      129 SETTABLEKS                       R13 R12 K16 ["previewDataModelDidBootstrap"]
      131 SETTABLEKS                       R11 R12 K17 ["wasGraphPlayed"]
      133 GETUPVAL                         R13 0
      134 GETTABLEKS                       R13 R13 K19 ["createElement"]
      136 GETUPVAL                         R14 7
      137 GETTABLEKS                       R14 R14 K20 ["Provider"]
      139 DUPTABLE                         R15 K22 [{"value"}]
      140 SETTABLEKS                       R12 R15 K21 ["value"]
      142 GETTABLEKS                       R16 R0 K23 ["children"]
      144 CALL                             R13 3 -1
      145 RETURN                           R13 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
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
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K5 ["IS_PREVIEW_RUNNING"]
       30 MOVE                             R6 R2
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R4 R0 K6 ["children"]
       34 RETURN                           R4 1

PROTO_20:
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

PROTO_21:
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
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
       13 CAPTURE                          UPVAL U7
       14 MOVE                             R3 R2
       15 CALL                             R3 0 0
       16 LOADK                            R5 K1 ["FocusedDataModelSession"]
       17 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       19 CALL                             R3 2 1
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R3 K3 ["Connect"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          REF R1
       27 CLOSEUPVALS                      R1
       28 RETURN                           R4 1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useReplicatedStateListener"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["PLAYED_ASSET_IDS"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["useReplicatedStateListener"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["PLAYED_GRAPH_KEYS"]
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K2 ["useReplicatedStateListener"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K5 ["GRAPH_ANIMATION_WAS_PLAYED"]
       31 LOADB                            R6 0
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K2 ["useReplicatedStateListener"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K6 ["PREVIEW_DID_BOOTSTRAP"]
       39 LOADB                            R7 0
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K7 ["useState"]
       44 NEWTABLE                         R7 0 0
       46 CALL                             R6 1 2
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K7 ["useState"]
       50 NEWTABLE                         R9 0 0
       52 CALL                             R8 1 2
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R10 R10 K7 ["useState"]
       56 LOADB                            R11 0
       57 CALL                             R10 1 2
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K7 ["useState"]
       61 LOADB                            R13 0
       62 CALL                             R12 1 2
       63 GETUPVAL                         R14 3
       64 GETTABLEKS                       R14 R14 K7 ["useState"]
       66 LOADB                            R15 0
       67 CALL                             R14 1 2
       68 GETUPVAL                         R16 3
       69 GETTABLEKS                       R16 R16 K7 ["useState"]
       71 LOADB                            R17 0
       72 CALL                             R16 1 2
       73 GETUPVAL                         R18 3
       74 GETTABLEKS                       R18 R18 K8 ["useRef"]
       76 LOADB                            R19 0
       77 CALL                             R18 1 1
       78 GETUPVAL                         R19 3
       79 GETTABLEKS                       R19 R19 K8 ["useRef"]
       81 LOADB                            R20 0
       82 CALL                             R19 1 1
       83 GETUPVAL                         R20 3
       84 GETTABLEKS                       R20 R20 K9 ["useEffect"]
       86 NEWCLOSURE                       R21 P0
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R18
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R17
       95 NEWTABLE                         R22 0 1
       97 MOVE                             R23 R1
       98 SETLIST                          R22 R23 1 [1]
      100 CALL                             R20 2 0
      101 GETUPVAL                         R20 3
      102 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      104 NEWCLOSURE                       R21 P1
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R17
      113 NEWTABLE                         R22 0 1
      115 MOVE                             R23 R14
      116 SETLIST                          R22 R23 1 [1]
      118 CALL                             R20 2 0
      119 GETUPVAL                         R20 3
      120 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      122 NEWCLOSURE                       R21 P2
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R7
      125 CAPTURE                          UPVAL U4
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
      139 CAPTURE                          UPVAL U4
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
      159 GETUPVAL                         R20 5
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
      185 DUPTABLE                         R21 K18 [{"playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "wasGraphPlayed"}]
      186 SETTABLEKS                       R6 R21 K11 ["playedAssetIds"]
      188 SETTABLEKS                       R8 R21 K12 ["playedGraphKeys"]
      190 SETTABLEKS                       R12 R21 K13 ["previewHasEnded"]
      192 SETTABLEKS                       R14 R21 K14 ["isPreviewRunning"]
      194 SETTABLEKS                       R10 R21 K15 ["graphAnimationWasPlayed"]
      196 SETTABLEKS                       R16 R21 K16 ["previewDataModelDidBootstrap"]
      198 SETTABLEKS                       R20 R21 K17 ["wasGraphPlayed"]
      200 GETUPVAL                         R22 3
      201 GETTABLEKS                       R22 R22 K19 ["createElement"]
      203 GETUPVAL                         R23 6
      204 GETTABLEKS                       R23 R23 K20 ["Provider"]
      206 DUPTABLE                         R24 K22 [{"value"}]
      207 SETTABLEKS                       R21 R24 K21 ["value"]
      209 GETTABLEKS                       R25 R0 K23 ["children"]
      211 CALL                             R22 3 -1
      212 RETURN                           R22 -1

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
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K14 ["Networking"]
       32 GETTABLEKS                       R5 R5 K15 ["NetworkUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R6 K16 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R7 K17 ["Signals"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["Signals"]
       55 GETTABLEKS                       R8 R8 K18 ["SignalsInstanceUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K19 ["Flags"]
       62 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphCheckPreviewBootstrap"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R3 K21 ["ContextServices"]
       67 GETTABLEKS                       R9 R9 K22 ["Plugin"]
       69 DUPTABLE                         R10 K30 [{"playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "wasGraphPlayed"}]
       70 NEWTABLE                         R11 0 0
       72 SETTABLEKS                       R11 R10 K23 ["playedAssetIds"]
       74 NEWTABLE                         R11 0 0
       76 SETTABLEKS                       R11 R10 K24 ["playedGraphKeys"]
       78 LOADB                            R11 0
       79 SETTABLEKS                       R11 R10 K25 ["previewHasEnded"]
       81 LOADB                            R11 0
       82 SETTABLEKS                       R11 R10 K26 ["isPreviewRunning"]
       84 LOADB                            R11 0
       85 SETTABLEKS                       R11 R10 K27 ["graphAnimationWasPlayed"]
       87 LOADB                            R11 0
       88 SETTABLEKS                       R11 R10 K28 ["previewDataModelDidBootstrap"]
       90 DUPCLOSURE                       R11 K31 [PROTO_0]
       91 SETTABLEKS                       R11 R10 K29 ["wasGraphPlayed"]
       93 GETTABLEKS                       R11 R5 K32 ["createContext"]
       95 MOVE                             R12 R10
       96 CALL                             R11 1 1
       97 DUPTABLE                         R12 K38 [{"PLAYED_ASSET_IDS", "PLAYED_GRAPH_KEYS", "IS_PREVIEW_RUNNING", "GRAPH_ANIMATION_WAS_PLAYED", "PREVIEW_DID_BOOTSTRAP"}]
       98 LOADK                            R13 K39 ["GraphPlayedContext_PlayedAssetIds"]
       99 SETTABLEKS                       R13 R12 K33 ["PLAYED_ASSET_IDS"]
      101 LOADK                            R13 K40 ["GraphPlayedContext_PlayedGraphKeys"]
      102 SETTABLEKS                       R13 R12 K34 ["PLAYED_GRAPH_KEYS"]
      104 LOADK                            R13 K41 ["GraphPlayedContext_IsPreviewRunning"]
      105 SETTABLEKS                       R13 R12 K35 ["IS_PREVIEW_RUNNING"]
      107 LOADK                            R13 K42 ["GraphPlayedContext_GraphAnimationWasPlayed"]
      108 SETTABLEKS                       R13 R12 K36 ["GRAPH_ANIMATION_WAS_PLAYED"]
      110 LOADK                            R13 K43 ["GraphPlayedContext_PreviewDidBootstrap"]
      111 SETTABLEKS                       R13 R12 K37 ["PREVIEW_DID_BOOTSTRAP"]
      113 DUPCLOSURE                       R13 K44 [PROTO_2]
      114 DUPCLOSURE                       R14 K45 [PROTO_3]
      115 DUPCLOSURE                       R15 K46 [PROTO_4]
      116 DUPCLOSURE                       R16 K47 [PROTO_5]
      117 DUPCLOSURE                       R17 K48 [PROTO_15]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R11
      126 DUPCLOSURE                       R18 K49 [PROTO_19]
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R12
      131 DUPCLOSURE                       R19 K50 [PROTO_32]
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R11
      139 DUPTABLE                         R20 K59 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed", "_getGraphKeyFromAnimateScript", "_mergeIdSets"}]
      140 SETTABLEKS                       R11 R20 K51 ["Context"]
      142 SETTABLEKS                       R18 R20 K52 ["EditableDataModelProvider"]
      144 SETTABLEKS                       R17 R20 K53 ["PreviewDataModelProvider"]
      146 SETTABLEKS                       R19 R20 K54 ["UIDataModelProvider"]
      148 SETTABLEKS                       R13 R20 K55 ["_createAddIdUpdater"]
      150 SETTABLEKS                       R14 R20 K56 ["_checkWasGraphPlayed"]
      152 SETTABLEKS                       R15 R20 K57 ["_getGraphKeyFromAnimateScript"]
      154 SETTABLEKS                       R16 R20 K58 ["_mergeIdSets"]
      156 RETURN                           R20 1
