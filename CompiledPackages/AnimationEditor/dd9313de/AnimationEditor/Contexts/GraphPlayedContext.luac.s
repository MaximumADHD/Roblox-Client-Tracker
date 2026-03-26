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
        4 JUMPIFNOT                        R1 ; [+18]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 JUMPIFNOT                        R2 ; [+14]
        9 GETTABLEKS                       R3 R2 K1 ["Value"]
       11 JUMPIFEQKS                       R3 K2 [""] ; [+11]
       13 GETTABLEKS                       R3 R2 K1 ["Value"]
       15 JUMPIFEQ                         R3 R0 ; [+7]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R5 R2 K1 ["Value"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R5
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R1 K0 ["createRoot"]
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
        7 GETTABLEKS                       R3 R4 K1 ["useRef"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 0
       25 CALL                             R5 2 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 0
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K4 ["useMemo"]
       38 DUPCLOSURE                       R7 K5 [PROTO_7]
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 NEWTABLE                         R8 0 0
       43 CALL                             R6 2 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K2 ["useEffect"]
       47 NEWCLOSURE                       R8 P3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 NEWTABLE                         R9 0 2
       54 MOVE                             R10 R6
       55 MOVE                             R11 R5
       56 SETLIST                          R9 R10 2 [1]
       58 CALL                             R7 2 0
       59 GETUPVAL                         R8 5
       60 GETTABLEKS                       R7 R8 K6 ["useReplicatedState"]
       62 GETUPVAL                         R9 6
       63 GETTABLEKS                       R8 R9 K7 ["PLAYED_ASSET_IDS"]
       65 MOVE                             R9 R1
       66 CALL                             R7 2 0
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       70 NEWCLOSURE                       R8 P4
       71 CAPTURE                          VAL R1
       72 NEWTABLE                         R9 0 1
       74 MOVE                             R10 R1
       75 SETLIST                          R9 R10 1 [1]
       77 CALL                             R7 2 1
       78 DUPTABLE                         R8 K12 [{"playedAssetIds", "previewHasEnded", "isPreviewRunning", "wasGraphPlayed"}]
       79 SETTABLEKS                       R1 R8 K8 ["playedAssetIds"]
       81 LOADB                            R9 0
       82 SETTABLEKS                       R9 R8 K9 ["previewHasEnded"]
       84 LOADB                            R9 1
       85 SETTABLEKS                       R9 R8 K10 ["isPreviewRunning"]
       87 SETTABLEKS                       R7 R8 K11 ["wasGraphPlayed"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K13 ["createElement"]
       92 GETUPVAL                         R11 7
       93 GETTABLEKS                       R10 R11 K14 ["Provider"]
       95 DUPTABLE                         R11 K16 [{"value"}]
       96 SETTABLEKS                       R8 R11 K15 ["value"]
       98 GETTABLEKS                       R12 R0 K17 ["children"]
      100 CALL                             R9 3 -1
      101 RETURN                           R9 -1

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
       11 JUMPIF                           R0 ; [+15]
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
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 3
       28 LOADB                            R2 0
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 4
       31 LOADB                            R2 0
       32 SETTABLEKS                       R2 R1 K2 ["current"]
       34 GETUPVAL                         R1 5
       35 NEWTABLE                         R2 0 0
       37 CALL                             R1 1 0
       38 NEWCLOSURE                       R1 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U2
       41 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       43 LOADB                            R3 1
       44 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.PlayClient]
       46 JUMPIFEQ                         R2 R4 ; [+7]
       48 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.PlayServer]
       50 JUMPIFEQ                         R2 R4 ; [+2]
       52 LOADB                            R3 0 +1
       53 LOADB                            R3 1
       54 GETUPVAL                         R4 2
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 GETTABLEKS                       R2 R0 K10 ["CurrentDataModelTypeChanged"]
       59 MOVE                             R4 R1
       60 NAMECALL                         R2 R2 K11 ["Connect"]
       62 CALL                             R2 2 1
       63 SETUPVAL                         R2 0
       64 RETURN                           R0 0

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
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 LOADK                            R5 K1 ["FocusedDataModelSession"]
       14 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       16 CALL                             R3 2 1
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K3 ["Connect"]
       20 CALL                             R3 2 1
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          REF R1
       24 CLOSEUPVALS                      R1
       25 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 NEWTABLE                         R1 0 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R0 R1 K0 ["current"]
       21 JUMPIFNOT                        R0 ; [+3]
       22 GETUPVAL                         R0 3
       23 LOADB                            R1 1
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_26:
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
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K4 ["useState"]
       19 NEWTABLE                         R4 0 0
       21 CALL                             R3 1 2
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R5 R6 K4 ["useState"]
       25 LOADB                            R6 0
       26 CALL                             R5 1 2
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K4 ["useState"]
       30 LOADB                            R8 0
       31 CALL                             R7 1 2
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R9 R10 K5 ["useRef"]
       35 LOADB                            R10 0
       36 CALL                             R9 1 1
       37 GETUPVAL                         R11 3
       38 GETTABLEKS                       R10 R11 K5 ["useRef"]
       40 LOADB                            R11 0
       41 CALL                             R10 1 1
       42 GETUPVAL                         R12 3
       43 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       45 NEWCLOSURE                       R12 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R13 0 1
       53 MOVE                             R14 R1
       54 SETLIST                          R13 R14 1 [1]
       56 CALL                             R11 2 0
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R13 0 1
       68 MOVE                             R14 R7
       69 SETLIST                          R13 R14 1 [1]
       71 CALL                             R11 2 0
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       75 NEWCLOSURE                       R12 P2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 NEWTABLE                         R13 0 1
       81 MOVE                             R14 R2
       82 SETLIST                          R13 R14 1 [1]
       84 CALL                             R11 2 0
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          VAL R3
       90 NEWTABLE                         R13 0 1
       92 MOVE                             R14 R3
       93 SETLIST                          R13 R14 1 [1]
       95 CALL                             R11 2 1
       96 DUPTABLE                         R12 K12 [{"playedAssetIds", "previewHasEnded", "isPreviewRunning", "wasGraphPlayed"}]
       97 SETTABLEKS                       R3 R12 K8 ["playedAssetIds"]
       99 SETTABLEKS                       R5 R12 K9 ["previewHasEnded"]
      101 SETTABLEKS                       R7 R12 K10 ["isPreviewRunning"]
      103 SETTABLEKS                       R11 R12 K11 ["wasGraphPlayed"]
      105 GETUPVAL                         R14 3
      106 GETTABLEKS                       R13 R14 K13 ["createElement"]
      108 GETUPVAL                         R15 4
      109 GETTABLEKS                       R14 R15 K14 ["Provider"]
      111 DUPTABLE                         R15 K16 [{"value"}]
      112 SETTABLEKS                       R12 R15 K15 ["value"]
      114 GETTABLEKS                       R16 R0 K17 ["children"]
      116 CALL                             R13 3 -1
      117 RETURN                           R13 -1

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
       46 GETTABLEKS                       R7 R8 K17 ["SignalsExperimental"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Util"]
       53 GETTABLEKS                       R9 R10 K18 ["Signals"]
       55 GETTABLEKS                       R8 R9 K19 ["SignalsInstanceUtils"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R9 R3 K20 ["ContextServices"]
       60 GETTABLEKS                       R8 R9 K21 ["Plugin"]
       62 DUPTABLE                         R9 K26 [{"playedAssetIds", "previewHasEnded", "isPreviewRunning", "wasGraphPlayed"}]
       63 NEWTABLE                         R10 0 0
       65 SETTABLEKS                       R10 R9 K22 ["playedAssetIds"]
       67 LOADB                            R10 0
       68 SETTABLEKS                       R10 R9 K23 ["previewHasEnded"]
       70 LOADB                            R10 0
       71 SETTABLEKS                       R10 R9 K24 ["isPreviewRunning"]
       73 DUPCLOSURE                       R10 K27 [PROTO_0]
       74 SETTABLEKS                       R10 R9 K25 ["wasGraphPlayed"]
       76 GETTABLEKS                       R10 R5 K28 ["createContext"]
       78 MOVE                             R11 R9
       79 CALL                             R10 1 1
       80 DUPTABLE                         R11 K31 [{"PLAYED_ASSET_IDS", "IS_PREVIEW_RUNNING"}]
       81 LOADK                            R12 K32 ["GraphPlayedContext_PlayedAssetIds"]
       82 SETTABLEKS                       R12 R11 K29 ["PLAYED_ASSET_IDS"]
       84 LOADK                            R12 K33 ["GraphPlayedContext_IsPreviewRunning"]
       85 SETTABLEKS                       R12 R11 K30 ["IS_PREVIEW_RUNNING"]
       87 DUPCLOSURE                       R12 K34 [PROTO_2]
       88 DUPCLOSURE                       R13 K35 [PROTO_3]
       89 DUPCLOSURE                       R14 K36 [PROTO_13]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 DUPCLOSURE                       R15 K37 [PROTO_17]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R11
      103 DUPCLOSURE                       R16 K38 [PROTO_26]
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R10
      109 DUPTABLE                         R17 K45 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed"}]
      110 SETTABLEKS                       R10 R17 K39 ["Context"]
      112 SETTABLEKS                       R15 R17 K40 ["EditableDataModelProvider"]
      114 SETTABLEKS                       R14 R17 K41 ["PreviewDataModelProvider"]
      116 SETTABLEKS                       R16 R17 K42 ["UIDataModelProvider"]
      118 SETTABLEKS                       R12 R17 K43 ["_createAddIdUpdater"]
      120 SETTABLEKS                       R13 R17 K44 ["_checkWasGraphPlayed"]
      122 RETURN                           R17 1
