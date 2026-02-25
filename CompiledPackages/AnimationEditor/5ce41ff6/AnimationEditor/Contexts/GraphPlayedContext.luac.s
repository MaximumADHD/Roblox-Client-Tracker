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
       11 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLE                         R4 R0 R2
        1 JUMPIFNOT                        R4 ; [+2]
        2 LOADB                            R4 1
        3 RETURN                           R4 1
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETTABLE                         R4 R1 R3
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADB                            R4 1
        8 RETURN                           R4 1
        9 LOADB                            R4 0
       10 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

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
        0 NAMECALL                         R1 R0 K0 ["GetDebugData"]
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["Animation"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R2 K2 ["AnimationId"]
       12 JUMPIFNOT                        R3 ; [+5]
       13 JUMPIFEQKS                       R3 K3 [""] ; [+4]
       15 GETUPVAL                         R4 0
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

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
       45 JUMPIF                           R8 ; [+20]
       46 NEWTABLE                         R8 0 0
       48 GETTABLEKS                       R9 R7 K2 ["AnimationPlayed"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          UPVAL U2
       52 NAMECALL                         R9 R9 K3 ["Connect"]
       54 CALL                             R9 2 1
       55 FASTCALL2                        TABLE_INSERT R8 R9 ; [+5]
       57 MOVE                             R11 R8
       58 MOVE                             R12 R9
       59 GETIMPORT                        R10 K6 [table.insert]
       61 CALL                             R10 2 0
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R10 R11 K0 ["current"]
       65 SETTABLE                         R8 R10 R7
       66 FORGLOOP                         R3 2 ; [-26]
       68 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R5 R3 R0
        3 JUMPIFNOT                        R5 ; [+2]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLE                         R5 R4 R1
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_4]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K3 ["useRef"]
       16 NEWTABLE                         R5 0 0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K0 ["useMemo"]
       30 DUPCLOSURE                       R7 K5 [PROTO_7]
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K6 ["useEffect"]
       39 NEWCLOSURE                       R8 P3
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 NEWTABLE                         R9 0 2
       46 MOVE                             R10 R6
       47 MOVE                             R11 R5
       48 SETLIST                          R9 R10 2 [1]
       50 CALL                             R7 2 0
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R7 R8 K7 ["useReplicatedState"]
       54 GETUPVAL                         R9 5
       55 GETTABLEKS                       R8 R9 K8 ["PLAYED_GRAPH_UNIQUE_IDS"]
       57 MOVE                             R9 R1
       58 CALL                             R7 2 0
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R7 R8 K7 ["useReplicatedState"]
       62 GETUPVAL                         R9 5
       63 GETTABLEKS                       R8 R9 K9 ["PLAYED_ASSET_IDS"]
       65 MOVE                             R9 R2
       66 CALL                             R7 2 0
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       70 NEWCLOSURE                       R8 P4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 NEWTABLE                         R9 0 2
       75 MOVE                             R10 R1
       76 MOVE                             R11 R2
       77 SETLIST                          R9 R10 2 [1]
       79 CALL                             R7 2 1
       80 DUPTABLE                         R8 K15 [{"playedGraphUniqueIds", "playedAssetIds", "previewHasEnded", "isPreviewRunning", "wasGraphPlayed"}]
       81 SETTABLEKS                       R1 R8 K10 ["playedGraphUniqueIds"]
       83 SETTABLEKS                       R2 R8 K11 ["playedAssetIds"]
       85 LOADB                            R9 0
       86 SETTABLEKS                       R9 R8 K12 ["previewHasEnded"]
       88 LOADB                            R9 1
       89 SETTABLEKS                       R9 R8 K13 ["isPreviewRunning"]
       91 SETTABLEKS                       R7 R8 K14 ["wasGraphPlayed"]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R9 R10 K16 ["createElement"]
       96 GETUPVAL                         R11 6
       97 GETTABLEKS                       R10 R11 K17 ["Provider"]
       99 DUPTABLE                         R11 K19 [{"value"}]
      100 SETTABLEKS                       R8 R11 K18 ["value"]
      102 GETTABLEKS                       R12 R0 K20 ["children"]
      104 CALL                             R9 3 -1
      105 RETURN                           R9 -1

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
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 NEWTABLE                         R1 0 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 NEWTABLE                         R1 0 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K0 ["current"]
       21 JUMPIFNOT                        R0 ; [+3]
       22 GETUPVAL                         R0 2
       23 LOADB                            R1 1
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 SETTABLE                         R6 R1 R5
        9 FORGLOOP                         R2 2 ; [-2]
       11 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 SETTABLE                         R6 R1 R5
        9 FORGLOOP                         R2 2 ; [-2]
       11 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R5 R3 R0
        3 JUMPIFNOT                        R5 ; [+2]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLE                         R5 R4 R1
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useReplicatedStateListener"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["PLAYED_GRAPH_UNIQUE_IDS"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K2 ["useReplicatedStateListener"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K4 ["PLAYED_ASSET_IDS"]
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R4 R5 K5 ["useState"]
       28 NEWTABLE                         R5 0 0
       30 CALL                             R4 1 2
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K5 ["useState"]
       34 NEWTABLE                         R7 0 0
       36 CALL                             R6 1 2
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K5 ["useState"]
       40 LOADB                            R9 0
       41 CALL                             R8 1 2
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R10 R11 K5 ["useState"]
       45 LOADB                            R11 0
       46 CALL                             R10 1 2
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R12 R13 K6 ["useRef"]
       50 LOADB                            R13 0
       51 CALL                             R12 1 1
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       55 NEWCLOSURE                       R14 P0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R15 0 1
       60 MOVE                             R16 R1
       61 SETLIST                          R15 R16 1 [1]
       63 CALL                             R13 2 0
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       67 NEWCLOSURE                       R14 P1
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 NEWTABLE                         R15 0 1
       75 MOVE                             R16 R10
       76 SETLIST                          R15 R16 1 [1]
       78 CALL                             R13 2 0
       79 GETUPVAL                         R14 3
       80 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       82 NEWCLOSURE                       R14 P2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 NEWTABLE                         R15 0 2
       88 MOVE                             R16 R2
       89 MOVE                             R17 R10
       90 SETLIST                          R15 R16 2 [1]
       92 CALL                             R13 2 0
       93 GETUPVAL                         R14 3
       94 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       96 NEWCLOSURE                       R14 P3
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R3
      100 NEWTABLE                         R15 0 2
      102 MOVE                             R16 R3
      103 MOVE                             R17 R10
      104 SETLIST                          R15 R16 2 [1]
      106 CALL                             R13 2 0
      107 GETUPVAL                         R14 3
      108 GETTABLEKS                       R13 R14 K8 ["useCallback"]
      110 NEWCLOSURE                       R14 P4
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R6
      113 NEWTABLE                         R15 0 2
      115 MOVE                             R16 R4
      116 MOVE                             R17 R6
      117 SETLIST                          R15 R16 2 [1]
      119 CALL                             R13 2 1
      120 DUPTABLE                         R14 K14 [{"playedGraphUniqueIds", "playedAssetIds", "previewHasEnded", "isPreviewRunning", "wasGraphPlayed"}]
      121 SETTABLEKS                       R4 R14 K9 ["playedGraphUniqueIds"]
      123 SETTABLEKS                       R6 R14 K10 ["playedAssetIds"]
      125 SETTABLEKS                       R8 R14 K11 ["previewHasEnded"]
      127 SETTABLEKS                       R10 R14 K12 ["isPreviewRunning"]
      129 SETTABLEKS                       R13 R14 K13 ["wasGraphPlayed"]
      131 GETUPVAL                         R16 3
      132 GETTABLEKS                       R15 R16 K15 ["createElement"]
      134 GETUPVAL                         R17 4
      135 GETTABLEKS                       R16 R17 K16 ["Provider"]
      137 DUPTABLE                         R17 K18 [{"value"}]
      138 SETTABLEKS                       R14 R17 K17 ["value"]
      140 GETTABLEKS                       R18 R0 K19 ["children"]
      142 CALL                             R15 3 -1
      143 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R6 K13 ["Networking"]
       26 GETTABLEKS                       R4 R5 K14 ["NetworkUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Parent"]
       33 GETTABLEKS                       R5 R6 K15 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Parent"]
       40 GETTABLEKS                       R6 R7 K16 ["SignalsExperimental"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R0 K12 ["Util"]
       47 GETTABLEKS                       R8 R9 K17 ["Signals"]
       49 GETTABLEKS                       R7 R8 K18 ["SignalsInstanceUtils"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R8 R2 K19 ["ContextServices"]
       54 GETTABLEKS                       R7 R8 K20 ["Plugin"]
       56 DUPTABLE                         R8 K26 [{"playedGraphUniqueIds", "playedAssetIds", "previewHasEnded", "isPreviewRunning", "wasGraphPlayed"}]
       57 NEWTABLE                         R9 0 0
       59 SETTABLEKS                       R9 R8 K21 ["playedGraphUniqueIds"]
       61 NEWTABLE                         R9 0 0
       63 SETTABLEKS                       R9 R8 K22 ["playedAssetIds"]
       65 LOADB                            R9 0
       66 SETTABLEKS                       R9 R8 K23 ["previewHasEnded"]
       68 LOADB                            R9 0
       69 SETTABLEKS                       R9 R8 K24 ["isPreviewRunning"]
       71 DUPCLOSURE                       R9 K27 [PROTO_0]
       72 SETTABLEKS                       R9 R8 K25 ["wasGraphPlayed"]
       74 GETTABLEKS                       R9 R4 K28 ["createContext"]
       76 MOVE                             R10 R8
       77 CALL                             R9 1 1
       78 DUPTABLE                         R10 K32 [{"PLAYED_GRAPH_UNIQUE_IDS", "PLAYED_ASSET_IDS", "IS_PREVIEW_RUNNING"}]
       79 LOADK                            R11 K33 ["GraphPlayedContext_PlayedGraphUniqueIds"]
       80 SETTABLEKS                       R11 R10 K29 ["PLAYED_GRAPH_UNIQUE_IDS"]
       82 LOADK                            R11 K34 ["GraphPlayedContext_PlayedAssetIds"]
       83 SETTABLEKS                       R11 R10 K30 ["PLAYED_ASSET_IDS"]
       85 LOADK                            R11 K35 ["GraphPlayedContext_IsPreviewRunning"]
       86 SETTABLEKS                       R11 R10 K31 ["IS_PREVIEW_RUNNING"]
       88 DUPCLOSURE                       R11 K36 [PROTO_2]
       89 DUPCLOSURE                       R12 K37 [PROTO_3]
       90 DUPCLOSURE                       R13 K38 [PROTO_13]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R14 K39 [PROTO_17]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R10
      103 DUPCLOSURE                       R15 K40 [PROTO_27]
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R9
      109 DUPTABLE                         R16 K47 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed"}]
      110 SETTABLEKS                       R9 R16 K41 ["Context"]
      112 SETTABLEKS                       R14 R16 K42 ["EditableDataModelProvider"]
      114 SETTABLEKS                       R13 R16 K43 ["PreviewDataModelProvider"]
      116 SETTABLEKS                       R15 R16 K44 ["UIDataModelProvider"]
      118 SETTABLEKS                       R11 R16 K45 ["_createAddIdUpdater"]
      120 SETTABLEKS                       R12 R16 K46 ["_checkWasGraphPlayed"]
      122 RETURN                           R16 1
