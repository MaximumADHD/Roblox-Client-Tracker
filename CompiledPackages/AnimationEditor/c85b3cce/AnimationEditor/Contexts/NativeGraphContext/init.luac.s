PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMap"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K1 ["nodeType"]
       14 GETIMPORT                        R8 K5 [Enum.AnimationNodeType.GraphOutput]
       16 FASTCALL1                        TOSTRING R8 ; [+2]
       17 GETIMPORT                        R7 K7 [tostring]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQ                      R6 R7 ; [+3]
       22 LOADB                            R6 1
       23 RETURN                           R6 1
       24 FORGLOOP                         R1 2 ; [-13]
       26 LOADB                            R1 0
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 NEWTABLE                         R4 0 1
        7 GETTABLEKS                       R5 R1 K1 ["getMap"]
        9 SETLIST                          R4 R5 1 [1]
       11 CALL                             R2 2 1
       12 DUPTABLE                         R3 K3 [{"hasGraphOutput"}]
       13 SETTABLEKS                       R2 R3 K2 ["hasGraphOutput"]
       15 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphState"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 4
        9 GETTABLEKS                       R3 R3 K1 ["observeSelectedGraphInstance"]
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R3 5
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["testOverrideGraphPayloadMap"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["testOverrideGraphPayloadMap"]
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R2 R1 K1 ["graphPayloadMap"]
       13 JUMPIFEQKNIL                     R2 ; [+10]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K2 ["fitGraphRect"]
       19 GETTABLEKS                       R5 R1 K3 ["renderInfoMap"]
       21 MOVE                             R6 R2
       22 CALL                             R4 2 -1
       23 CALL                             R3 -1 0
       24 GETUPVAL                         R3 4
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R4 R1 K3 ["renderInfoMap"]
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R4 R1 K4 ["graphNodeProps"]
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 7
       36 GETTABLEKS                       R3 R3 K5 ["setMap"]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R4 R2 K6 ["lookup"]
       41 JUMP                             ; [+2]
       42 NEWTABLE                         R4 0 0
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 8
       46 GETTABLEKS                       R3 R3 K5 ["setMap"]
       48 GETTABLEKS                       R4 R1 K3 ["renderInfoMap"]
       50 CALL                             R3 1 0
       51 GETUPVAL                         R3 9
       52 GETTABLEKS                       R3 R3 K5 ["setMap"]
       54 GETTABLEKS                       R4 R1 K4 ["graphNodeProps"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

PROTO_8:
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
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["setNodeIsCollapsed"]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["Failed to find instance for setNodeIsCollapsed"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["setZIndex"]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["Failed to find instance for setNodeIsCollapsed"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["NativeGraphContext"]
        2 LOADK                            R4 K1 ["setNodePositionsAsync"]
        3 NAMECALL                         R1 R1 K2 ["TryBeginRecording"]
        5 CALL                             R1 3 1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 1
       11 MOVE                             R9 R5
       12 NAMECALL                         R7 R7 K3 ["idToInstance"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+6]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K4 ["setNodePosition"]
       19 MOVE                             R9 R7
       20 MOVE                             R10 R6
       21 CALL                             R8 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 JUMPIFNOT                        R1 ; [+7]
       25 GETUPVAL                         R2 0
       26 MOVE                             R4 R1
       27 GETIMPORT                        R5 K8 [Enum.FinishRecordingOperation.Commit]
       29 NAMECALL                         R2 R2 K9 ["FinishRecording"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["setNodeSize"]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["Failed to find instance for setNodeSizeAsync"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["selectionService"]
        4 NAMECALL                         R2 R2 K1 ["Get"]
        6 CALL                             R2 1 1
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R0
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETUPVAL                         R8 1
       15 MOVE                             R10 R6
       16 NAMECALL                         R8 R8 K2 ["idToInstance"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K5 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R3 2 ; [-14]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K0 ["selectionService"]
       32 MOVE                             R5 R2
       33 NAMECALL                         R3 R3 K6 ["Set"]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["selectionService"]
        3 NAMECALL                         R2 R2 K1 ["Get"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 RETURN                           R0 0
       10 JUMPIFNOT                        R1 ; [+2]
       11 MOVE                             R3 R2
       12 JUMP                             ; [+2]
       13 NEWTABLE                         R3 0 0
       15 NEWTABLE                         R4 0 0
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K2 ["lookup"]
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R10 R10 K3 ["get"]
       26 GETTABLEKS                       R11 R9 K4 ["id"]
       28 CALL                             R10 1 1
       29 JUMPIFEQKNIL                     R10 ; [+45]
       31 GETTABLEKS                       R11 R10 K5 ["position"]
       33 GETTABLEKS                       R12 R10 K6 ["size"]
       35 GETTABLEKS                       R13 R11 K7 ["X"]
       37 GETTABLEKS                       R14 R0 K8 ["Max"]
       39 GETTABLEKS                       R14 R14 K7 ["X"]
       41 JUMPIFLT                         R14 R13 ; [+33]
       43 GETTABLEKS                       R14 R11 K7 ["X"]
       45 GETTABLEKS                       R15 R12 K7 ["X"]
       47 ADD                              R13 R14 R15
       48 GETTABLEKS                       R14 R0 K9 ["Min"]
       50 GETTABLEKS                       R14 R14 K7 ["X"]
       52 JUMPIFLT                         R13 R14 ; [+22]
       54 GETTABLEKS                       R13 R11 K10 ["Y"]
       56 GETTABLEKS                       R14 R0 K9 ["Min"]
       58 GETTABLEKS                       R14 R14 K10 ["Y"]
       60 JUMPIFLT                         R13 R14 ; [+14]
       62 GETTABLEKS                       R14 R11 K10 ["Y"]
       64 GETTABLEKS                       R15 R12 K10 ["Y"]
       66 SUB                              R13 R14 R15
       67 GETTABLEKS                       R14 R0 K8 ["Max"]
       69 GETTABLEKS                       R14 R14 K10 ["Y"]
       71 JUMPIFLT                         R14 R13 ; [+3]
       73 LOADB                            R13 1
       74 SETTABLE                         R13 R4 R8
       75 FORGLOOP                         R5 2 ; [-53]
       77 MOVE                             R5 R4
       78 LOADNIL                          R6
       79 LOADNIL                          R7
       80 FORGPREP                         R5
       81 GETUPVAL                         R10 3
       82 MOVE                             R12 R8
       83 NAMECALL                         R10 R10 K11 ["idToInstance"]
       85 CALL                             R10 2 1
       86 JUMPIFNOT                        R10 ; [+13]
       87 GETIMPORT                        R11 K14 [table.find]
       89 MOVE                             R12 R3
       90 MOVE                             R13 R10
       91 CALL                             R11 2 1
       92 JUMPIF                           R11 ; [+7]
       93 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       95 MOVE                             R12 R3
       96 MOVE                             R13 R10
       97 GETIMPORT                        R11 K16 [table.insert]
       99 CALL                             R11 2 0
      100 FORGLOOP                         R5 2 ; [-20]
      102 GETUPVAL                         R5 0
      103 GETTABLEKS                       R5 R5 K0 ["selectionService"]
      105 MOVE                             R7 R3
      106 NAMECALL                         R5 R5 K17 ["Set"]
      108 CALL                             R5 2 0
      109 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["ObjectValue"]
        4 NAMECALL                         R0 R0 K1 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["Name"]
       10 LOADK                            R3 K3 ["_"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["Name"]
       14 CONCAT                           R1 R2 R4
       15 RETURN                           R1 1
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_SourceAssetId"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+24]
        6 JUMPIFEQKS                       R0 K2 [""] ; [+23]
        8 GETUPVAL                         R1 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K4 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K5 ["number"] ; [+8]
       16 LOADK                            R3 K6 ["rbxassetid://%*"]
       17 MOVE                             R5 R0
       18 NAMECALL                         R3 R3 K7 ["format"]
       20 CALL                             R3 2 1
       21 MOVE                             R2 R3
       22 JUMP                             ; [+5]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K9 [tostring]
       27 CALL                             R2 1 1
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 1
       31 LOADNIL                          R2
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOTEQKS                    R0 K0 ["RBX_SourceAssetId"] ; [+34]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["RBX_SourceAssetId"]
        4 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+24]
        8 JUMPIFEQKS                       R1 K2 [""] ; [+23]
       10 GETUPVAL                         R2 1
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K4 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+8]
       18 LOADK                            R4 K6 ["rbxassetid://%*"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R4 R4 K7 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 JUMP                             ; [+5]
       25 FASTCALL1                        TOSTRING R1 ; [+3]
       26 MOVE                             R4 R1
       27 GETIMPORT                        R3 K9 [tostring]
       29 CALL                             R3 1 1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 1
       33 LOADNIL                          R3
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_GraphDirty"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["RBX_SourceAssetId"]
        7 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        9 CALL                             R1 2 1
       10 LOADNIL                          R2
       11 JUMPIFNOT                        R1 ; [+22]
       12 JUMPIFEQKS                       R1 K3 [""] ; [+21]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K5 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K6 ["number"] ; [+8]
       21 LOADK                            R3 K7 ["rbxassetid://%*"]
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R3 K8 ["format"]
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 JUMP                             ; [+6]
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R4 R1
       30 GETIMPORT                        R3 K10 [tostring]
       32 CALL                             R3 1 1
       33 MOVE                             R2 R3
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 JUMPIFNOTEQKB                    R0 FALSE ; [+6]
       39 JUMPIFNOT                        R2 ; [+4]
       40 GETUPVAL                         R3 2
       41 MOVE                             R4 R2
       42 CALL                             R3 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 3
       45 GETUPVAL                         R5 0
       46 NAMECALL                         R3 R3 K11 ["RegisterAnimationClip"]
       48 CALL                             R3 2 1
       49 GETUPVAL                         R4 2
       50 MOVE                             R5 R3
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_20:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K0 [""]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+48]
       17 NEWCLOSURE                       R0 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U3
       20 GETUPVAL                         R1 0
       21 LOADK                            R3 K1 ["RBX_SourceAssetId"]
       22 NAMECALL                         R1 R1 K2 ["GetAttribute"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+24]
       26 JUMPIFEQKS                       R1 K0 [""] ; [+23]
       28 GETUPVAL                         R2 3
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R5 R1
       31 GETIMPORT                        R4 K4 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+8]
       36 LOADK                            R4 K6 ["rbxassetid://%*"]
       37 MOVE                             R6 R1
       38 NAMECALL                         R4 R4 K7 ["format"]
       40 CALL                             R4 2 1
       41 MOVE                             R3 R4
       42 JUMP                             ; [+5]
       43 FASTCALL1                        TOSTRING R1 ; [+3]
       44 MOVE                             R4 R1
       45 GETIMPORT                        R3 K9 [tostring]
       47 CALL                             R3 1 1
       48 CALL                             R2 1 0
       49 JUMP                             ; [+3]
       50 GETUPVAL                         R2 3
       51 LOADNIL                          R3
       52 CALL                             R2 1 0
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K10 ["AttributeChanged"]
       56 NEWCLOSURE                       R3 P1
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U3
       59 NAMECALL                         R1 R1 K11 ["Connect"]
       61 CALL                             R1 2 1
       62 NEWCLOSURE                       R2 P2
       63 CAPTURE                          VAL R1
       64 RETURN                           R2 1
       65 NEWCLOSURE                       R0 P3
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U4
       70 MOVE                             R1 R0
       71 CALL                             R1 0 0
       72 GETUPVAL                         R1 0
       73 GETTABLEKS                       R1 R1 K10 ["AttributeChanged"]
       75 NEWCLOSURE                       R3 P4
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R1 R1 K11 ["Connect"]
       79 CALL                             R1 2 1
       80 NEWCLOSURE                       R2 P5
       81 CAPTURE                          VAL R1
       82 RETURN                           R2 1

PROTO_23:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ReplicatedStorage"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADK                            R3 K4 ["AnimationGraphEditor"]
        7 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+10]
       11 GETIMPORT                        R2 K8 [Instance.new]
       13 LOADK                            R3 K9 ["Folder"]
       14 CALL                             R2 1 1
       15 LOADK                            R3 K4 ["AnimationGraphEditor"]
       16 SETTABLEKS                       R3 R2 K10 ["Name"]
       18 SETTABLEKS                       R0 R2 K11 ["Parent"]
       20 MOVE                             R1 R2
       21 LOADK                            R4 K12 ["CurrentAnimationId"]
       22 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       24 CALL                             R2 2 1
       25 JUMPIF                           R2 ; [+10]
       26 GETIMPORT                        R3 K8 [Instance.new]
       28 LOADK                            R4 K13 ["StringValue"]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K12 ["CurrentAnimationId"]
       31 SETTABLEKS                       R4 R3 K10 ["Name"]
       33 SETTABLEKS                       R1 R3 K11 ["Parent"]
       35 MOVE                             R2 R3
       36 GETUPVAL                         R3 0
       37 SETTABLEKS                       R3 R2 K14 ["Value"]
       39 GETUPVAL                         R3 1
       40 JUMPIFNOT                        R3 ; [+36]
       41 GETUPVAL                         R3 1
       42 LOADK                            R5 K15 ["ObjectValue"]
       43 NAMECALL                         R3 R3 K16 ["FindFirstAncestorWhichIsA"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+30]
       47 GETTABLEKS                       R5 R3 K10 ["Name"]
       49 LOADK                            R6 K17 ["_"]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K10 ["Name"]
       53 CONCAT                           R4 R5 R7
       54 MOVE                             R7 R4
       55 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+10]
       59 GETUPVAL                         R6 2
       60 CALL                             R6 0 1
       61 JUMPIFNOT                        R6 ; [+4]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K11 ["Parent"]
       65 JUMP                             ; [+3]
       66 NAMECALL                         R6 R5 K18 ["Destroy"]
       68 CALL                             R6 1 0
       69 GETUPVAL                         R6 1
       70 NAMECALL                         R6 R6 K19 ["Clone"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R4 R6 K10 ["Name"]
       75 SETTABLEKS                       R1 R6 K11 ["Parent"]
       77 LOADNIL                          R3
       78 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+6]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 0
       11 CALL                             R3 1 1
       12 JUMPIFEQKNIL                     R3 ; [+4]
       14 GETUPVAL                         R4 3
       15 JUMPIFNOTEQKNIL                  R4 ; [+3]
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 GETUPVAL                         R4 4
       20 MOVE                             R5 R0
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQKNIL                  R4 ; [+8]
       24 GETIMPORT                        R5 K2 [warn]
       26 LOADK                            R6 K3 ["Failed to parse animation node type:"]
       27 MOVE                             R7 R0
       28 CALL                             R5 2 0
       29 LOADNIL                          R5
       30 RETURN                           R5 1
       31 GETUPVAL                         R5 5
       32 LOADK                            R7 K4 ["NativeGraphContext"]
       33 LOADK                            R8 K5 ["createNodeAsync"]
       34 NAMECALL                         R5 R5 K6 ["TryBeginRecording"]
       36 CALL                             R5 3 1
       37 GETUPVAL                         R6 6
       38 GETTABLEKS                       R6 R6 K7 ["createNodeOfType"]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R1
       42 MOVE                             R9 R3
       43 CALL                             R6 3 1
       44 GETUPVAL                         R7 7
       45 GETTABLEKS                       R7 R7 K8 ["FFlagAnimGraphUI_DynamicZIndex"]
       47 JUMPIFNOT                        R7 ; [+10]
       48 GETUPVAL                         R7 6
       49 GETTABLEKS                       R7 R7 K9 ["setZIndex"]
       51 MOVE                             R8 R6
       52 GETUPVAL                         R9 7
       53 GETTABLEKS                       R9 R9 K10 ["getNextNodeZIndex"]
       55 GETUPVAL                         R10 8
       56 CALL                             R9 1 -1
       57 CALL                             R7 -1 0
       58 JUMPIFNOT                        R6 ; [+6]
       59 GETUPVAL                         R7 9
       60 MOVE                             R9 R6
       61 NAMECALL                         R7 R7 K11 ["instanceToId"]
       63 CALL                             R7 2 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R7
       66 FASTCALL2K                       ASSERT R7 K12 ; [+5]
       68 MOVE                             R9 R7
       69 LOADK                            R10 K12 ["Failed to get new node ID after creation"]
       70 GETIMPORT                        R8 K14 [assert]
       72 CALL                             R8 2 0
       73 GETUPVAL                         R8 10
       74 CALL                             R8 0 1
       75 JUMPIFNOT                        R8 ; [+41]
       76 GETIMPORT                        R8 K18 [Enum.AnimationNodeType.Blend1DNode]
       78 JUMPIFNOTEQ                      R4 R8 ; [+38]
       80 GETUPVAL                         R8 6
       81 GETTABLEKS                       R8 R8 K19 ["setNodeConnection"]
       83 GETUPVAL                         R9 9
       84 GETUPVAL                         R10 3
       85 MOVE                             R11 R7
       86 LOADK                            R12 K20 ["A"]
       87 LOADNIL                          R13
       88 LOADNIL                          R14
       89 LOADN                            R15 1
       90 CALL                             R8 7 3
       91 JUMPIFNOT                        R10 ; [+5]
       92 LOADK                            R13 K21 ["Position"]
       93 LOADN                            R14 0
       94 NAMECALL                         R11 R10 K22 ["SetAttribute"]
       96 CALL                             R11 3 0
       97 GETUPVAL                         R11 6
       98 GETTABLEKS                       R11 R11 K19 ["setNodeConnection"]
      100 GETUPVAL                         R12 9
      101 GETUPVAL                         R13 3
      102 MOVE                             R14 R7
      103 LOADK                            R15 K23 ["B"]
      104 LOADNIL                          R16
      105 LOADNIL                          R17
      106 LOADN                            R18 2
      107 CALL                             R11 7 3
      108 MOVE                             R9 R11
      109 MOVE                             R9 R12
      110 MOVE                             R10 R13
      111 JUMPIFNOT                        R10 ; [+5]
      112 LOADK                            R13 K21 ["Position"]
      113 LOADN                            R14 1
      114 NAMECALL                         R11 R10 K22 ["SetAttribute"]
      116 CALL                             R11 3 0
      117 JUMPIFNOT                        R2 ; [+86]
      118 GETTABLEKS                       R8 R2 K24 ["sourcePinSide"]
      120 JUMPIFNOTEQKS                    R8 K25 ["Input"] ; [+16]
      122 JUMPIFEQKNIL                     R7 ; [+81]
      124 GETUPVAL                         R8 6
      125 GETTABLEKS                       R8 R8 K19 ["setNodeConnection"]
      127 GETUPVAL                         R9 9
      128 GETUPVAL                         R10 3
      129 GETTABLEKS                       R11 R2 K26 ["sourcePinNodeId"]
      131 GETTABLEKS                       R12 R2 K27 ["sourcePinName"]
      133 MOVE                             R13 R7
      134 LOADK                            R14 K28 ["Output"]
      135 CALL                             R8 6 0
      136 JUMP                             ; [+67]
      137 GETTABLEKS                       R8 R2 K24 ["sourcePinSide"]
      139 JUMPIFNOTEQKS                    R8 K28 ["Output"] ; [+60]
      141 GETUPVAL                         R8 11
      142 MOVE                             R10 R4
      143 NAMECALL                         R8 R8 K29 ["GetAnimationNodeDefinition"]
      145 CALL                             R8 2 1
      146 LOADNIL                          R9
      147 GETUPVAL                         R10 6
      148 GETTABLEKS                       R10 R10 K30 ["hasDynamicInputPins"]
      150 GETUPVAL                         R11 3
      151 GETTABLEKS                       R12 R2 K26 ["sourcePinNodeId"]
      153 CALL                             R10 2 1
      154 JUMPIFNOT                        R10 ; [+9]
      155 GETUPVAL                         R10 6
      156 GETTABLEKS                       R10 R10 K31 ["getDynamicInputPinNameFromInputNode"]
      158 MOVE                             R11 R6
      159 GETTABLEKS                       R12 R2 K27 ["sourcePinName"]
      161 CALL                             R10 2 1
      162 MOVE                             R9 R10
      163 JUMP                             ; [+13]
      164 JUMPIFNOT                        R8 ; [+12]
      165 GETTABLEKS                       R10 R8 K32 ["Inputs"]
      167 JUMPIFNOT                        R10 ; [+9]
      168 GETTABLEKS                       R11 R8 K32 ["Inputs"]
      170 GETTABLEN                        R10 R11 1
      171 JUMPIFNOT                        R10 ; [+5]
      172 GETTABLEKS                       R11 R8 K32 ["Inputs"]
      174 GETTABLEN                        R10 R11 1
      175 GETTABLEKS                       R9 R10 K33 ["InputName"]
      177 JUMPIFEQKNIL                     R9 ; [+16]
      179 JUMPIFEQKNIL                     R7 ; [+24]
      181 GETUPVAL                         R10 6
      182 GETTABLEKS                       R10 R10 K19 ["setNodeConnection"]
      184 GETUPVAL                         R11 9
      185 GETUPVAL                         R12 3
      186 MOVE                             R13 R7
      187 MOVE                             R14 R9
      188 GETTABLEKS                       R15 R2 K26 ["sourcePinNodeId"]
      190 GETTABLEKS                       R16 R2 K27 ["sourcePinName"]
      192 CALL                             R10 6 0
      193 JUMP                             ; [+10]
      194 GETIMPORT                        R10 K2 [warn]
      196 LOADK                            R11 K34 ["Failed to find input pin name for node type:"]
      197 MOVE                             R12 R0
      198 CALL                             R10 2 0
      199 JUMP                             ; [+4]
      200 GETIMPORT                        R8 K36 [error]
      202 LOADK                            R9 K37 ["Bad sourcePinSide state"]
      203 CALL                             R8 1 0
      204 GETUPVAL                         R8 12
      205 GETTABLEKS                       R8 R8 K38 ["selectionService"]
      207 NEWTABLE                         R10 0 1
      209 MOVE                             R11 R6
      210 SETLIST                          R10 R11 1 [1]
      212 NAMECALL                         R8 R8 K39 ["Set"]
      214 CALL                             R8 2 0
      215 JUMPIFNOT                        R5 ; [+7]
      216 GETUPVAL                         R8 5
      217 MOVE                             R10 R5
      218 GETIMPORT                        R11 K42 [Enum.FinishRecordingOperation.Commit]
      220 NAMECALL                         R8 R8 K43 ["FinishRecording"]
      222 CALL                             R8 3 0
      223 RETURN                           R7 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+30]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["selectionService"]
        5 NAMECALL                         R0 R0 K1 ["Get"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 2
        9 LOADK                            R3 K2 ["Remove nodes"]
       10 NAMECALL                         R1 R1 K3 ["TryBeginRecording"]
       12 CALL                             R1 2 1
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R6 K4 ["Parent"]
       20 FORGLOOP                         R2 2 ; [-4]
       22 JUMPIFEQKNIL                     R1 ; [+13]
       24 GETUPVAL                         R2 2
       25 MOVE                             R4 R1
       26 GETIMPORT                        R5 K8 [Enum.FinishRecordingOperation.Commit]
       28 NAMECALL                         R2 R2 K9 ["FinishRecording"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R0 K11 [error]
       34 LOADK                            R1 K12 ["Should be unreachable since delete/backspace is overridden by the native actions, but if you see this file a bug report"]
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R2 0
        7 CALL                             R1 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K1 ["getParameterInstanceName"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 0 0
       21 NAMECALL                         R4 R1 K2 ["GetChildren"]
       23 CALL                             R4 1 3
       24 FORGPREP                         R4
       25 GETTABLEKS                       R9 R8 K3 ["Name"]
       27 JUMPIFNOTEQ                      R9 R2 ; [+8]
       29 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       31 MOVE                             R10 R3
       32 MOVE                             R11 R8
       33 GETIMPORT                        R9 K6 [table.insert]
       35 CALL                             R9 2 0
       36 FORGLOOP                         R4 2 ; [-12]
       38 LENGTH                           R4 R3
       39 LOADN                            R5 0
       40 JUMPIFNOTLT                      R5 R4 ; [+8]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K7 ["selectionService"]
       45 MOVE                             R6 R3
       46 NAMECALL                         R4 R4 K8 ["Set"]
       48 CALL                             R4 2 0
       49 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R2 0
        7 CALL                             R1 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 CALL                             R1 1 1
       12 JUMPIFEQKNIL                     R1 ; [+4]
       14 GETUPVAL                         R2 3
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 GETUPVAL                         R2 4
       20 LOADK                            R4 K1 ["NativeGraphContext"]
       21 LOADK                            R5 K2 ["createParameterAsync"]
       22 NAMECALL                         R2 R2 K3 ["TryBeginRecording"]
       24 CALL                             R2 3 1
       25 LOADK                            R5 K4 ["AnimationGraphDefinition"]
       26 NAMECALL                         R3 R1 K5 ["IsA"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+6]
       30 GETIMPORT                        R3 K7 [warn]
       32 LOADK                            R4 K8 ["Selected graph instance is not an AnimationGraphDefinition"]
       33 CALL                             R3 1 0
       34 LOADNIL                          R3
       35 RETURN                           R3 1
       36 GETUPVAL                         R3 5
       37 GETTABLEKS                       R3 R3 K9 ["getOrCreateParameterInstance"]
       39 GETUPVAL                         R4 6
       40 MOVE                             R5 R1
       41 MOVE                             R6 R0
       42 LOADB                            R7 0
       43 CALL                             R3 4 1
       44 GETUPVAL                         R4 7
       45 GETTABLEKS                       R4 R4 K10 ["FFlagAnimGraphUI_DynamicZIndex"]
       47 JUMPIFNOT                        R4 ; [+10]
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R4 R4 K11 ["setZIndex"]
       51 MOVE                             R5 R3
       52 GETUPVAL                         R6 7
       53 GETTABLEKS                       R6 R6 K12 ["getNextNodeZIndex"]
       55 GETUPVAL                         R7 8
       56 CALL                             R6 1 -1
       57 CALL                             R4 -1 0
       58 GETUPVAL                         R6 9
       59 GETTABLEKS                       R6 R6 K13 ["NODE_ATTRIBUTES"]
       61 GETTABLEKS                       R6 R6 K14 ["BindingName"]
       63 NAMECALL                         R4 R3 K15 ["GetAttribute"]
       65 CALL                             R4 2 1
       66 MOVE                             R7 R4
       67 NAMECALL                         R5 R1 K15 ["GetAttribute"]
       69 CALL                             R5 2 1
       70 JUMPIFNOTEQKNIL                  R5 ; [+24]
       72 GETTABLEKS                       R5 R0 K16 ["initializeWithValue"]
       74 JUMPIFEQKNIL                     R5 ; [+20]
       76 GETTABLEKS                       R6 R0 K16 ["initializeWithValue"]
       78 FASTCALL1                        TYPE R6 ; [+2]
       79 GETIMPORT                        R5 K18 [type]
       81 CALL                             R5 1 1
       82 JUMPIFNOTEQKS                    R5 K19 ["table"] ; [+6]
       84 GETIMPORT                        R5 K7 [warn]
       86 LOADK                            R6 K20 ["TODO: JSONEncode initial value to support safely"]
       87 CALL                             R5 1 0
       88 JUMP                             ; [+6]
       89 MOVE                             R7 R4
       90 GETTABLEKS                       R8 R0 K16 ["initializeWithValue"]
       92 NAMECALL                         R5 R1 K21 ["SetAttribute"]
       94 CALL                             R5 3 0
       95 GETUPVAL                         R5 10
       96 GETTABLEKS                       R5 R5 K22 ["selectionService"]
       98 NEWTABLE                         R7 0 1
      100 MOVE                             R8 R3
      101 SETLIST                          R7 R8 1 [1]
      103 NAMECALL                         R5 R5 K23 ["Set"]
      105 CALL                             R5 2 0
      106 GETTABLEKS                       R5 R0 K24 ["pinPosition"]
      108 JUMPIFNOT                        R5 ; [+17]
      109 GETUPVAL                         R5 5
      110 GETTABLEKS                       R5 R5 K25 ["setNodePosition"]
      112 MOVE                             R6 R3
      113 GETUPVAL                         R8 0
      114 CALL                             R8 0 1
      115 JUMPIFNOT                        R8 ; [+7]
      116 GETUPVAL                         R7 5
      117 GETTABLEKS                       R7 R7 K26 ["predictOutputPosition"]
      119 GETTABLEKS                       R8 R0 K24 ["pinPosition"]
      121 CALL                             R7 1 1
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R7 R0 K24 ["pinPosition"]
      125 CALL                             R5 2 0
      126 GETUPVAL                         R5 6
      127 MOVE                             R7 R3
      128 NAMECALL                         R5 R5 K27 ["instanceToId"]
      130 CALL                             R5 2 1
      131 JUMPIFNOT                        R2 ; [+7]
      132 GETUPVAL                         R6 4
      133 MOVE                             R8 R2
      134 GETIMPORT                        R9 K31 [Enum.FinishRecordingOperation.Commit]
      136 NAMECALL                         R6 R6 K32 ["FinishRecording"]
      138 CALL                             R6 3 0
      139 RETURN                           R5 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["parameterType"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["observeSelectedGraphInstance"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R2 2
       12 LOADB                            R3 0
       13 CALL                             R2 1 1
       14 JUMPIFEQKNIL                     R2 ; [+4]
       16 GETUPVAL                         R3 3
       17 JUMPIFNOTEQKNIL                  R3 ; [+3]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       22 NAMECALL                         R3 R2 K3 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+6]
       26 GETIMPORT                        R3 K5 [warn]
       28 LOADK                            R4 K6 ["Selected graph instance is not an AnimationGraphDefinition"]
       29 CALL                             R3 1 0
       30 LOADNIL                          R3
       31 RETURN                           R3 1
       32 JUMPIF                           R1 ; [+22]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K7 ["getParameterInstanceName"]
       36 GETTABLEKS                       R4 R0 K8 ["parameterName"]
       38 CALL                             R3 1 1
       39 MOVE                             R6 R3
       40 NAMECALL                         R4 R2 K9 ["FindFirstChild"]
       42 CALL                             R4 2 1
       43 JUMPIF                           R4 ; [+2]
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R7 R7 K10 ["NODE_ATTRIBUTES"]
       49 GETTABLEKS                       R7 R7 K11 ["ParameterType"]
       51 NAMECALL                         R5 R4 K12 ["GetAttribute"]
       53 CALL                             R5 2 1
       54 MOVE                             R1 R5
       55 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       57 MOVE                             R4 R1
       58 LOADK                            R5 K13 ["Parameter type must be provided or inferable for createExistingParameterAsync"]
       59 GETIMPORT                        R3 K15 [assert]
       61 CALL                             R3 2 0
       62 GETUPVAL                         R3 6
       63 LOADK                            R5 K16 ["NativeGraphContext"]
       64 LOADK                            R6 K17 ["createParameterAsync"]
       65 NAMECALL                         R3 R3 K18 ["TryBeginRecording"]
       67 CALL                             R3 3 1
       68 GETUPVAL                         R4 4
       69 GETTABLEKS                       R4 R4 K19 ["createExistingParameterInstance"]
       71 GETUPVAL                         R5 7
       72 MOVE                             R6 R2
       73 DUPTABLE                         R7 K20 [{"parameterType", "parameterName"}]
       74 SETTABLEKS                       R1 R7 K0 ["parameterType"]
       76 GETTABLEKS                       R8 R0 K8 ["parameterName"]
       78 SETTABLEKS                       R8 R7 K8 ["parameterName"]
       80 CALL                             R4 3 1
       81 LOADNIL                          R5
       82 JUMPIF                           R4 ; [+19]
       83 GETUPVAL                         R6 8
       84 DUPTABLE                         R7 K23 [{"parameterType", "pinPosition", "initializeWithValue", "parameterName"}]
       85 SETTABLEKS                       R1 R7 K0 ["parameterType"]
       87 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
       89 SETTABLEKS                       R8 R7 K21 ["pinPosition"]
       91 GETTABLEKS                       R8 R0 K22 ["initializeWithValue"]
       93 SETTABLEKS                       R8 R7 K22 ["initializeWithValue"]
       95 GETTABLEKS                       R8 R0 K8 ["parameterName"]
       97 SETTABLEKS                       R8 R7 K8 ["parameterName"]
       99 CALL                             R6 1 1
      100 MOVE                             R5 R6
      101 JUMP                             ; [+37]
      102 GETUPVAL                         R6 7
      103 MOVE                             R8 R4
      104 NAMECALL                         R6 R6 K24 ["instanceToId"]
      106 CALL                             R6 2 1
      107 MOVE                             R5 R6
      108 GETUPVAL                         R6 9
      109 GETTABLEKS                       R6 R6 K25 ["selectionService"]
      111 NEWTABLE                         R8 0 1
      113 MOVE                             R9 R4
      114 SETLIST                          R8 R9 1 [1]
      116 NAMECALL                         R6 R6 K26 ["Set"]
      118 CALL                             R6 2 0
      119 GETTABLEKS                       R6 R0 K21 ["pinPosition"]
      121 JUMPIFNOT                        R6 ; [+17]
      122 GETUPVAL                         R6 4
      123 GETTABLEKS                       R6 R6 K27 ["setNodePosition"]
      125 MOVE                             R7 R4
      126 GETUPVAL                         R9 0
      127 CALL                             R9 0 1
      128 JUMPIFNOT                        R9 ; [+7]
      129 GETUPVAL                         R8 4
      130 GETTABLEKS                       R8 R8 K28 ["predictOutputPosition"]
      132 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
      134 CALL                             R8 1 1
      135 JUMP                             ; [+2]
      136 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
      138 CALL                             R6 2 0
      139 JUMPIFNOT                        R3 ; [+7]
      140 GETUPVAL                         R6 6
      141 MOVE                             R8 R3
      142 GETIMPORT                        R9 K32 [Enum.FinishRecordingOperation.Commit]
      144 NAMECALL                         R6 R6 K33 ["FinishRecording"]
      146 CALL                             R6 3 0
      147 RETURN                           R5 1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+7]
        3 GETIMPORT                        R3 K1 [warn]
        5 LOADK                            R4 K2 ["No graph payload map available for deleteNodeInput"]
        6 CALL                             R3 1 0
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 1
       10 LOADK                            R5 K3 ["NativeGraphContext"]
       11 LOADK                            R6 K4 ["deleteNodeInput"]
       12 NAMECALL                         R3 R3 K5 ["TryBeginRecording"]
       14 CALL                             R3 3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["deleteNodeInput"]
       18 GETUPVAL                         R5 3
       19 GETUPVAL                         R6 0
       20 MOVE                             R7 R0
       21 MOVE                             R8 R1
       22 GETUPVAL                         R10 4
       23 CALL                             R10 0 1
       24 JUMPIFNOT                        R10 ; [+2]
       25 MOVE                             R9 R2
       26 JUMP                             ; [+1]
       27 LOADNIL                          R9
       28 CALL                             R4 5 1
       29 JUMPIFNOT                        R3 ; [+7]
       30 GETUPVAL                         R5 1
       31 MOVE                             R7 R3
       32 GETIMPORT                        R8 K9 [Enum.FinishRecordingOperation.Commit]
       34 NAMECALL                         R5 R5 K10 ["FinishRecording"]
       36 CALL                             R5 3 0
       37 RETURN                           R4 1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+7]
        3 GETIMPORT                        R3 K1 [warn]
        5 LOADK                            R4 K2 ["No graph payload map available for removeNodeInputConnectionAsync"]
        6 CALL                             R3 1 0
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 1
       10 LOADK                            R5 K3 ["NativeGraphContext"]
       11 LOADK                            R6 K4 ["removeNodeInputConnectionAsync"]
       12 NAMECALL                         R3 R3 K5 ["TryBeginRecording"]
       14 CALL                             R3 3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K6 ["removeNodeInputConnection"]
       18 GETUPVAL                         R5 3
       19 GETUPVAL                         R6 0
       20 MOVE                             R7 R0
       21 MOVE                             R8 R1
       22 GETUPVAL                         R10 4
       23 CALL                             R10 0 1
       24 JUMPIFNOT                        R10 ; [+2]
       25 MOVE                             R9 R2
       26 JUMP                             ; [+1]
       27 LOADNIL                          R9
       28 CALL                             R4 5 1
       29 JUMPIFNOT                        R3 ; [+7]
       30 GETUPVAL                         R5 1
       31 MOVE                             R7 R3
       32 GETIMPORT                        R8 K10 [Enum.FinishRecordingOperation.Commit]
       34 NAMECALL                         R5 R5 K11 ["FinishRecording"]
       36 CALL                             R5 3 0
       37 RETURN                           R4 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+7]
        3 GETIMPORT                        R2 K1 [warn]
        5 LOADK                            R3 K2 ["No graph payload map available for removeNodeOutputConnectionAsync"]
        6 CALL                             R2 1 0
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 LOADK                            R4 K3 ["NativeGraphContext"]
       11 LOADK                            R5 K4 ["removeNodeOutputConnectionAsync"]
       12 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       14 CALL                             R2 3 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K6 ["removeNodeOutputConnection"]
       18 GETUPVAL                         R4 3
       19 GETUPVAL                         R5 0
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 CALL                             R3 4 1
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETUPVAL                         R4 1
       25 MOVE                             R6 R2
       26 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       28 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       30 CALL                             R4 3 0
       31 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R5 0
        1 JUMPIFNOTEQKNIL                  R5 ; [+6]
        3 GETIMPORT                        R5 K1 [warn]
        5 LOADK                            R6 K2 ["No graph payload map available for setNodeConnectionAsync"]
        6 CALL                             R5 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R5 1
        9 LOADK                            R7 K3 ["NativeGraphContext"]
       10 LOADK                            R8 K4 ["addNodeConnection"]
       11 NAMECALL                         R5 R5 K5 ["TryBeginRecording"]
       13 CALL                             R5 3 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K6 ["setNodeConnection"]
       17 GETUPVAL                         R7 3
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R0
       20 MOVE                             R10 R1
       21 MOVE                             R11 R2
       22 MOVE                             R12 R3
       23 GETUPVAL                         R14 4
       24 CALL                             R14 0 1
       25 JUMPIFNOT                        R14 ; [+2]
       26 MOVE                             R13 R4
       27 JUMP                             ; [+1]
       28 LOADNIL                          R13
       29 CALL                             R6 7 2
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K7 ["lookup"]
       33 GETTABLE                         R8 R9 R2
       34 JUMPIFNOT                        R8 ; [+28]
       35 GETTABLEKS                       R9 R8 K8 ["className"]
       37 JUMPIFEQKS                       R9 K9 ["Parameter"] ; [+25]
       39 JUMPIFNOT                        R6 ; [+23]
       40 JUMPIFNOT                        R7 ; [+22]
       41 GETUPVAL                         R9 5
       42 GETTABLEKS                       R9 R9 K10 ["setNodeOutputInfoInDestroyMapRef"]
       44 GETTABLEKS                       R9 R9 K11 ["current"]
       46 MOVE                             R10 R2
       47 DUPTABLE                         R11 K18 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       48 SETTABLEKS                       R0 R11 K12 ["inputNodeId"]
       50 SETTABLEKS                       R7 R11 K13 ["inputNodePinId"]
       52 SETTABLEKS                       R3 R11 K14 ["outputNodePinId"]
       54 SETTABLEKS                       R6 R11 K15 ["wireId"]
       56 SETTABLEKS                       R2 R11 K16 ["outputNodeId"]
       58 NEWTABLE                         R12 0 0
       60 SETTABLEKS                       R12 R11 K17 ["properties"]
       62 CALL                             R9 2 0
       63 JUMPIFNOT                        R5 ; [+7]
       64 GETUPVAL                         R9 1
       65 MOVE                             R11 R5
       66 GETIMPORT                        R12 K22 [Enum.FinishRecordingOperation.Commit]
       68 NAMECALL                         R9 R9 K23 ["FinishRecording"]
       70 CALL                             R9 3 0
       71 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R2 0
        7 CALL                             R1 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 3
       16 LOADK                            R4 K1 ["NativeGraphContext"]
       17 LOADK                            R5 K2 ["createParameterAsync"]
       18 NAMECALL                         R2 R2 K3 ["TryBeginRecording"]
       20 CALL                             R2 3 1
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R5 R0 K4 ["sourcePinInfo"]
       24 GETTABLEKS                       R5 R5 K5 ["sourcePinNodeId"]
       26 NAMECALL                         R3 R3 K6 ["idToInstance"]
       28 CALL                             R3 2 1
       29 JUMPIFEQKNIL                     R3 ; [+6]
       31 LOADK                            R6 K7 ["AnimationNodeDefinition"]
       32 NAMECALL                         R4 R3 K8 ["IsA"]
       34 CALL                             R4 2 1
       35 JUMPIF                           R4 ; [+5]
       36 GETIMPORT                        R4 K10 [warn]
       38 LOADK                            R5 K11 ["Failed to find node definition instance for createParameterAsync"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0
       41 LOADK                            R6 K7 ["AnimationNodeDefinition"]
       42 NAMECALL                         R4 R3 K8 ["IsA"]
       44 CALL                             R4 2 1
       45 JUMPIF                           R4 ; [+5]
       46 GETIMPORT                        R4 K10 [warn]
       48 LOADK                            R5 K12 ["Instance is not an AnimationNodeDefinition"]
       49 CALL                             R4 1 0
       50 RETURN                           R0 0
       51 LOADK                            R6 K13 ["AnimationGraphDefinition"]
       52 NAMECALL                         R4 R1 K8 ["IsA"]
       54 CALL                             R4 2 1
       55 JUMPIF                           R4 ; [+5]
       56 GETIMPORT                        R4 K10 [warn]
       58 LOADK                            R5 K14 ["Selected graph instance is not an AnimationGraphDefinition"]
       59 CALL                             R4 1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K16 ["getParameterType"]
       64 GETTABLEKS                       R6 R3 K17 ["NodeType"]
       66 GETTABLEKS                       R7 R0 K4 ["sourcePinInfo"]
       68 GETTABLEKS                       R7 R7 K18 ["sourcePinName"]
       70 CALL                             R5 2 1
       71 ORK                              R4 R5 K15 ["unknown"]
       72 LOADNIL                          R5
       73 GETTABLEKS                       R6 R0 K19 ["parameterName"]
       75 JUMPIF                           R6 ; [+15]
       76 GETUPVAL                         R7 6
       77 DUPTABLE                         R8 K24 [{["parameterType"], ["pinPosition"], ["initializeWithValue"], ["parameterName"] = ""}]
       78 SETTABLEKS                       R4 R8 K20 ["parameterType"]
       80 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
       82 SETTABLEKS                       R9 R8 K21 ["pinPosition"]
       84 GETTABLEKS                       R9 R0 K25 ["existingValue"]
       86 SETTABLEKS                       R9 R8 K22 ["initializeWithValue"]
       88 CALL                             R7 1 1
       89 MOVE                             R5 R7
       90 JUMP                             ; [+31]
       91 GETUPVAL                         R7 7
       92 DUPTABLE                         R8 K26 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
       93 SETTABLEKS                       R4 R8 K20 ["parameterType"]
       95 SETTABLEKS                       R6 R8 K19 ["parameterName"]
       97 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
       99 SETTABLEKS                       R9 R8 K21 ["pinPosition"]
      101 GETTABLEKS                       R9 R0 K25 ["existingValue"]
      103 SETTABLEKS                       R9 R8 K22 ["initializeWithValue"]
      105 CALL                             R7 1 1
      106 MOVE                             R5 R7
      107 GETTABLEKS                       R7 R0 K25 ["existingValue"]
      109 JUMPIFNOT                        R7 ; [+12]
      110 MOVE                             R9 R6
      111 NAMECALL                         R7 R1 K27 ["GetAttribute"]
      113 CALL                             R7 2 1
      114 JUMPIFNOTEQKNIL                  R7 ; [+7]
      116 MOVE                             R9 R6
      117 GETTABLEKS                       R10 R0 K25 ["existingValue"]
      119 NAMECALL                         R7 R1 K28 ["SetAttribute"]
      121 CALL                             R7 3 0
      122 JUMPIFNOT                        R5 ; [+46]
      123 GETTABLEKS                       R7 R0 K4 ["sourcePinInfo"]
      125 GETTABLEKS                       R7 R7 K5 ["sourcePinNodeId"]
      127 GETTABLEKS                       R8 R0 K4 ["sourcePinInfo"]
      129 GETTABLEKS                       R8 R8 K18 ["sourcePinName"]
      131 GETUPVAL                         R9 4
      132 MOVE                             R11 R5
      133 NAMECALL                         R9 R9 K6 ["idToInstance"]
      135 CALL                             R9 2 1
      136 JUMPIFNOT                        R9 ; [+32]
      137 GETUPVAL                         R10 5
      138 GETTABLEKS                       R10 R10 K29 ["setNodePosition"]
      140 MOVE                             R11 R9
      141 GETUPVAL                         R13 0
      142 CALL                             R13 0 1
      143 JUMPIFNOT                        R13 ; [+7]
      144 GETUPVAL                         R12 5
      145 GETTABLEKS                       R12 R12 K30 ["predictOutputPosition"]
      147 GETTABLEKS                       R13 R0 K21 ["pinPosition"]
      149 CALL                             R12 1 1
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R12 R0 K21 ["pinPosition"]
      153 CALL                             R10 2 0
      154 GETUPVAL                         R10 8
      155 MOVE                             R11 R7
      156 MOVE                             R12 R8
      157 MOVE                             R13 R5
      158 LOADK                            R14 K31 ["Output"]
      159 GETUPVAL                         R16 9
      160 CALL                             R16 0 1
      161 JUMPIFNOT                        R16 ; [+5]
      162 GETTABLEKS                       R15 R0 K4 ["sourcePinInfo"]
      164 GETTABLEKS                       R15 R15 K32 ["sourcePinDynamicIndex"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R15
      168 CALL                             R10 5 0
      169 JUMPIFNOT                        R2 ; [+7]
      170 GETUPVAL                         R7 3
      171 MOVE                             R9 R2
      172 GETIMPORT                        R10 K36 [Enum.FinishRecordingOperation.Commit]
      174 NAMECALL                         R7 R7 K37 ["FinishRecording"]
      176 CALL                             R7 3 0
      177 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETIMPORT                        R3 K4 [Enum.FinishRecordingOperation.Commit]
       10 NAMECALL                         R0 R0 K5 ["FinishRecording"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K0 ["current"]
       17 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETIMPORT                        R3 K4 [Enum.FinishRecordingOperation.Cancel]
       10 NAMECALL                         R0 R0 K5 ["FinishRecording"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_38:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R4 0
        1 LOADK                            R6 K0 ["NativeGraphContext"]
        2 LOADK                            R7 K1 ["setNodePropertyAsync"]
        3 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
        5 CALL                             R4 3 1
        6 GETUPVAL                         R5 1
        7 MOVE                             R7 R0
        8 NAMECALL                         R5 R5 K3 ["idToInstance"]
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+71]
       12 LOADK                            R8 K4 ["AnimationNodeDefinition"]
       13 NAMECALL                         R6 R5 K5 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+66]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R8 R5 K6 ["NodeType"]
       20 NAMECALL                         R6 R6 K7 ["GetAnimationNodeDefinition"]
       22 CALL                             R6 2 1
       23 LOADB                            R7 0
       24 GETTABLEKS                       R8 R6 K8 ["Properties"]
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETTABLEKS                       R13 R12 K9 ["Name"]
       31 JUMPIFNOTEQ                      R13 R1 ; [+42]
       33 GETTABLEKS                       R13 R12 K10 ["Type"]
       35 JUMPIFNOTEQKS                    R13 K11 ["Mask"] ; [+40]
       37 LOADK                            R15 K11 ["Mask"]
       38 NAMECALL                         R13 R5 K12 ["FindFirstChild"]
       40 CALL                             R13 2 1
       41 JUMPIFEQKNIL                     R13 ; [+14]
       43 LOADK                            R16 K13 ["ObjectValue"]
       44 NAMECALL                         R14 R13 K5 ["IsA"]
       46 CALL                             R14 2 1
       47 JUMPIFNOT                        R14 ; [+8]
       48 GETUPVAL                         R14 1
       49 MOVE                             R16 R2
       50 NAMECALL                         R14 R14 K3 ["idToInstance"]
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K14 ["Value"]
       55 JUMP                             ; [+16]
       56 GETIMPORT                        R14 K17 [Instance.new]
       58 LOADK                            R15 K13 ["ObjectValue"]
       59 CALL                             R14 1 1
       60 LOADK                            R15 K11 ["Mask"]
       61 SETTABLEKS                       R15 R14 K9 ["Name"]
       63 GETUPVAL                         R15 1
       64 MOVE                             R17 R2
       65 NAMECALL                         R15 R15 K3 ["idToInstance"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K14 ["Value"]
       70 SETTABLEKS                       R5 R14 K18 ["Parent"]
       72 LOADB                            R7 1
       73 JUMP                             ; [+2]
       74 FORGLOOP                         R8 2 ; [-46]
       76 JUMPIF                           R7 ; [+11]
       77 MOVE                             R10 R1
       78 MOVE                             R11 R2
       79 NAMECALL                         R8 R5 K19 ["SetAttribute"]
       81 CALL                             R8 3 0
       82 JUMP                             ; [+5]
       83 GETIMPORT                        R6 K21 [warn]
       85 LOADK                            R7 K22 ["Node instance not found for nodeId:"]
       86 MOVE                             R8 R0
       87 CALL                             R6 2 0
       88 JUMPIFNOT                        R4 ; [+16]
       89 GETUPVAL                         R6 0
       90 MOVE                             R8 R4
       91 GETUPVAL                         R10 3
       92 GETTABLEKS                       R10 R10 K23 ["FFlagAnimGraphUI_DragChangeHistoryFix"]
       94 JUMPIFNOT                        R10 ; [+5]
       95 JUMPIFNOTEQKS                    R3 K24 ["Drag"] ; [+4]
       97 GETIMPORT                        R9 K28 [Enum.FinishRecordingOperation.Append]
       99 JUMP                             ; [+2]
      100 GETIMPORT                        R9 K30 [Enum.FinishRecordingOperation.Commit]
      102 NAMECALL                         R6 R6 K31 ["FinishRecording"]
      104 CALL                             R6 3 0
      105 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["NativeGraphContext"]
        2 LOADK                            R6 K1 ["setInputPinNodePropertyAsync"]
        3 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R6 R0 K3 ["inputNodeId"]
        9 NAMECALL                         R4 R4 K4 ["idToInstance"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+29]
       13 LOADK                            R7 K5 ["AnimationNodeDefinition"]
       14 NAMECALL                         R5 R4 K6 ["IsA"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+24]
       18 GETTABLEKS                       R7 R0 K7 ["inputNodePinId"]
       20 NAMECALL                         R5 R4 K8 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R5 ; [+11]
       24 LOADK                            R8 K9 ["ObjectValue"]
       25 NAMECALL                         R6 R5 K6 ["IsA"]
       27 CALL                             R6 2 1
       28 JUMPIFNOT                        R6 ; [+6]
       29 MOVE                             R8 R1
       30 MOVE                             R9 R2
       31 NAMECALL                         R6 R5 K10 ["SetAttribute"]
       33 CALL                             R6 3 0
       34 JUMP                             ; [+13]
       35 GETIMPORT                        R6 K12 [warn]
       37 LOADK                            R7 K13 ["Output pin not found or not an ObjectValue:"]
       38 GETTABLEKS                       R8 R0 K7 ["inputNodePinId"]
       40 CALL                             R6 2 0
       41 JUMP                             ; [+6]
       42 GETIMPORT                        R5 K12 [warn]
       44 LOADK                            R6 K14 ["Node instance not found for nodeId:"]
       45 GETTABLEKS                       R7 R0 K15 ["outputNodeId"]
       47 CALL                             R5 2 0
       48 JUMPIFNOT                        R3 ; [+7]
       49 GETUPVAL                         R5 0
       50 MOVE                             R7 R3
       51 GETIMPORT                        R8 K19 [Enum.FinishRecordingOperation.Commit]
       53 NAMECALL                         R5 R5 K20 ["FinishRecording"]
       55 CALL                             R5 3 0
       56 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_42:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+43]
       12 LOADK                            R8 K4 ["%s"]
       13 LOADK                            R9 K5 [""]
       14 NAMECALL                         R6 R1 K6 ["gsub"]
       16 CALL                             R6 3 1
       17 LENGTH                           R5 R6
       18 JUMPIFEQKN                       R5 K7 [0] ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 GETUPVAL                         R5 2
       23 CALL                             R5 0 1
       24 JUMPIFNOT                        R5 ; [+10]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K8 ["setDisplayName"]
       28 MOVE                             R6 R3
       29 JUMPIFNOT                        R4 ; [+2]
       30 LOADNIL                          R7
       31 JUMP                             ; [+1]
       32 MOVE                             R7 R1
       33 CALL                             R5 2 0
       34 JUMP                             ; [+12]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K9 ["NODE_ATTRIBUTES"]
       38 GETTABLEKS                       R7 R7 K10 ["DisplayName"]
       40 JUMPIFNOT                        R4 ; [+2]
       41 LOADNIL                          R8
       42 JUMP                             ; [+1]
       43 MOVE                             R8 R1
       44 NAMECALL                         R5 R3 K11 ["SetAttribute"]
       46 CALL                             R5 3 0
       47 JUMPIF                           R4 ; [+7]
       48 GETIMPORT                        R5 K13 [xpcall]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 DUPCLOSURE                       R7 K14 [PROTO_42]
       54 CALL                             R5 2 0
       55 GETUPVAL                         R4 5
       56 GETTABLEKS                       R4 R4 K15 ["observe"]
       58 MOVE                             R5 R0
       59 CALL                             R4 1 1
       60 LOADB                            R5 0
       61 CALL                             R4 1 1
       62 JUMPIFNOT                        R4 ; [+30]
       63 GETUPVAL                         R5 6
       64 JUMPIFNOT                        R5 ; [+28]
       65 GETTABLEKS                       R5 R4 K16 ["outputPinToConnectionMap"]
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 JUMPIFEQKNIL                     R9 ; [+20]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K17 ["hasDynamicInputPins"]
       75 GETUPVAL                         R11 6
       76 GETTABLEKS                       R12 R9 K18 ["inputNodeId"]
       78 CALL                             R10 2 1
       79 JUMPIFNOT                        R10 ; [+11]
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K19 ["renameDynamicInputPin"]
       83 GETUPVAL                         R11 1
       84 GETUPVAL                         R12 6
       85 GETTABLEKS                       R13 R9 K18 ["inputNodeId"]
       87 GETTABLEKS                       R14 R9 K20 ["inputNodePinId"]
       89 MOVE                             R15 R1
       90 CALL                             R10 5 0
       91 FORGLOOP                         R5 2 ; [-22]
       93 JUMPIFNOT                        R2 ; [+7]
       94 GETUPVAL                         R5 0
       95 MOVE                             R7 R2
       96 GETIMPORT                        R8 K24 [Enum.FinishRecordingOperation.Commit]
       98 NAMECALL                         R5 R5 K25 ["FinishRecording"]
      100 CALL                             R5 3 0
      101 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["NativeGraphContext"]
        2 LOADK                            R6 K1 ["reorderPinsAsync"]
        3 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K3 ["reorderPins"]
        9 GETUPVAL                         R5 2
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 CALL                             R4 4 0
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETUPVAL                         R4 0
       16 MOVE                             R6 R3
       17 GETIMPORT                        R7 K7 [Enum.FinishRecordingOperation.Commit]
       19 NAMECALL                         R4 R4 K8 ["FinishRecording"]
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R3 0
        7 CALL                             R2 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 GETUPVAL                         R3 3
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETUPVAL                         R3 4
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R3 K1 ["idToInstance"]
       21 CALL                             R3 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 JUMPIFEQKNIL                     R1 ; [+3]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 JUMPIFNOT                        R3 ; [+10]
       29 LOADK                            R7 K2 ["Folder"]
       30 NAMECALL                         R5 R3 K3 ["IsA"]
       32 CALL                             R5 2 1
       33 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       35 LOADK                            R6 K4 ["Expected parameter instance to be a Folder"]
       36 GETIMPORT                        R4 K6 [assert]
       38 CALL                             R4 2 0
       39 LOADNIL                          R4
       40 JUMPIFNOT                        R3 ; [+17]
       41 LOADK                            R8 K2 ["Folder"]
       42 NAMECALL                         R6 R3 K3 ["IsA"]
       44 CALL                             R6 2 1
       45 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       47 LOADK                            R7 K4 ["Expected parameter instance to be a Folder"]
       48 GETIMPORT                        R5 K6 [assert]
       50 CALL                             R5 2 0
       51 NEWTABLE                         R5 0 1
       53 MOVE                             R6 R3
       54 SETLIST                          R5 R6 1 [1]
       56 MOVE                             R4 R5
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R5 5
       59 GETTABLEKS                       R5 R5 K7 ["getAllParameterInstancesFromName"]
       61 MOVE                             R6 R2
       62 MOVE                             R7 R0
       63 CALL                             R5 2 1
       64 MOVE                             R4 R5
       65 GETUPVAL                         R5 6
       66 LOADK                            R7 K8 ["NativeGraphContext"]
       67 LOADK                            R8 K9 ["removeParameterAsync"]
       68 NAMECALL                         R5 R5 K10 ["TryBeginRecording"]
       70 CALL                             R5 3 1
       71 MOVE                             R6 R4
       72 LOADNIL                          R7
       73 LOADNIL                          R8
       74 FORGPREP                         R6
       75 NAMECALL                         R11 R10 K11 ["GetChildren"]
       77 CALL                             R11 1 3
       78 FORGPREP                         R11
       79 LOADK                            R18 K12 ["ObjectValue"]
       80 NAMECALL                         R16 R15 K3 ["IsA"]
       82 CALL                             R16 2 1
       83 JUMPIFNOT                        R16 ; [+15]
       84 GETTABLEKS                       R16 R15 K13 ["Value"]
       86 JUMPIFNOT                        R16 ; [+12]
       87 GETUPVAL                         R17 5
       88 GETTABLEKS                       R17 R17 K14 ["getParameterWireInputPinId"]
       90 GETTABLEKS                       R18 R15 K15 ["Name"]
       92 CALL                             R17 1 1
       93 JUMPIFNOT                        R17 ; [+5]
       94 MOVE                             R20 R17
       95 LOADNIL                          R21
       96 NAMECALL                         R18 R16 K16 ["SetAttribute"]
       98 CALL                             R18 3 0
       99 FORGLOOP                         R11 2 ; [-21]
      101 GETUPVAL                         R11 7
      102 CALL                             R11 0 1
      103 JUMPIFNOT                        R11 ; [+4]
      104 LOADNIL                          R11
      105 SETTABLEKS                       R11 R10 K17 ["Parent"]
      107 JUMP                             ; [+3]
      108 NAMECALL                         R11 R10 K18 ["Destroy"]
      110 CALL                             R11 1 0
      111 FORGLOOP                         R6 2 ; [-37]
      113 GETUPVAL                         R8 5
      114 GETTABLEKS                       R8 R8 K19 ["getParameterInstanceName"]
      116 MOVE                             R9 R0
      117 CALL                             R8 1 -1
      118 NAMECALL                         R6 R2 K20 ["FindFirstChild"]
      120 CALL                             R6 -1 1
      121 JUMPIF                           R6 ; [+11]
      122 MOVE                             R8 R0
      123 NAMECALL                         R6 R2 K21 ["GetAttribute"]
      125 CALL                             R6 2 1
      126 JUMPIFEQKNIL                     R6 ; [+6]
      128 MOVE                             R8 R0
      129 LOADNIL                          R9
      130 NAMECALL                         R6 R2 K16 ["SetAttribute"]
      132 CALL                             R6 3 0
      133 JUMPIFNOT                        R5 ; [+7]
      134 GETUPVAL                         R6 6
      135 MOVE                             R8 R5
      136 GETIMPORT                        R9 K25 [Enum.FinishRecordingOperation.Commit]
      138 NAMECALL                         R6 R6 K26 ["FinishRecording"]
      140 CALL                             R6 3 0
      141 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAnimGraphUI_NodesHaveSpaces"]
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 MOVE                             R1 R3
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["observeSelectedGraphInstance"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 1
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R3 4
       20 LOADB                            R4 0
       21 CALL                             R3 1 1
       22 JUMPIF                           R3 ; [+1]
       23 RETURN                           R0 0
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETUPVAL                         R4 5
       26 MOVE                             R6 R2
       27 NAMECALL                         R4 R4 K2 ["idToInstance"]
       29 CALL                             R4 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 JUMPIFEQKNIL                     R2 ; [+3]
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 NEWTABLE                         R5 0 0
       38 JUMPIFNOT                        R4 ; [+18]
       39 LOADK                            R9 K3 ["Folder"]
       40 NAMECALL                         R7 R4 K4 ["IsA"]
       42 CALL                             R7 2 1
       43 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       45 LOADK                            R8 K5 ["Expected specified parameterNodeInstance to be a Folder"]
       46 GETIMPORT                        R6 K7 [assert]
       48 CALL                             R6 2 0
       49 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       51 MOVE                             R7 R5
       52 MOVE                             R8 R4
       53 GETIMPORT                        R6 K10 [table.insert]
       55 CALL                             R6 2 0
       56 JUMP                             ; [+7]
       57 GETUPVAL                         R6 6
       58 GETTABLEKS                       R6 R6 K11 ["getAllParameterInstancesFromName"]
       60 MOVE                             R7 R3
       61 MOVE                             R8 R0
       62 CALL                             R6 2 1
       63 MOVE                             R5 R6
       64 LENGTH                           R6 R5
       65 JUMPIFNOTEQKN                    R6 K12 [0] ; [+2]
       67 RETURN                           R0 0
       68 GETUPVAL                         R6 7
       69 LOADK                            R8 K13 ["NativeGraphContext"]
       70 LOADK                            R9 K14 ["renameParameterAsync"]
       71 NAMECALL                         R6 R6 K15 ["TryBeginRecording"]
       73 CALL                             R6 3 1
       74 MOVE                             R9 R1
       75 NAMECALL                         R7 R3 K16 ["GetAttribute"]
       77 CALL                             R7 2 1
       78 JUMPIF                           R7 ; [+8]
       79 MOVE                             R9 R1
       80 MOVE                             R12 R0
       81 NAMECALL                         R10 R3 K16 ["GetAttribute"]
       83 CALL                             R10 2 -1
       84 NAMECALL                         R7 R3 K17 ["SetAttribute"]
       86 CALL                             R7 -1 0
       87 GETUPVAL                         R7 8
       88 GETTABLEKS                       R7 R7 K18 ["parameterDestroyConnectionMapRef"]
       90 GETTABLEKS                       R7 R7 K19 ["current"]
       92 GETIMPORT                        R8 K21 [table.clone]
       94 MOVE                             R9 R7
       95 CALL                             R8 1 1
       96 MOVE                             R9 R5
       97 LOADNIL                          R10
       98 LOADNIL                          R11
       99 FORGPREP                         R9
      100 NAMECALL                         R14 R13 K22 ["GetChildren"]
      102 CALL                             R14 1 3
      103 FORGPREP                         R14
      104 LOADK                            R21 K23 ["ObjectValue"]
      105 NAMECALL                         R19 R18 K4 ["IsA"]
      107 CALL                             R19 2 1
      108 JUMPIFNOT                        R19 ; [+17]
      109 GETTABLEKS                       R19 R18 K24 ["Value"]
      111 JUMPIFNOT                        R19 ; [+14]
      112 GETUPVAL                         R20 6
      113 GETTABLEKS                       R20 R20 K25 ["getParameterWireInputPinId"]
      115 GETTABLEKS                       R21 R18 K26 ["Name"]
      117 CALL                             R20 1 1
      118 JUMPIFNOT                        R20 ; [+7]
      119 GETUPVAL                         R21 6
      120 GETTABLEKS                       R21 R21 K27 ["setParameterBindingName"]
      122 MOVE                             R22 R19
      123 MOVE                             R23 R20
      124 MOVE                             R24 R1
      125 CALL                             R21 3 0
      126 FORGLOOP                         R14 2 ; [-23]
      128 GETUPVAL                         R14 6
      129 GETTABLEKS                       R14 R14 K28 ["getParameterInstanceName"]
      131 MOVE                             R15 R1
      132 CALL                             R14 1 1
      133 SETTABLEKS                       R14 R13 K26 ["Name"]
      135 GETUPVAL                         R16 9
      136 GETTABLEKS                       R16 R16 K29 ["NODE_ATTRIBUTES"]
      138 GETTABLEKS                       R16 R16 K30 ["BindingName"]
      140 MOVE                             R17 R1
      141 NAMECALL                         R14 R13 K17 ["SetAttribute"]
      143 CALL                             R14 3 0
      144 GETUPVAL                         R14 5
      145 MOVE                             R16 R13
      146 NAMECALL                         R14 R14 K31 ["instanceToId"]
      148 CALL                             R14 2 1
      149 GETTABLE                         R15 R7 R14
      150 JUMPIFNOT                        R15 ; [+11]
      151 DUPTABLE                         R15 K35 [{"connection", "nodeId", "parameterName"}]
      152 GETTABLE                         R16 R7 R14
      153 GETTABLEKS                       R16 R16 K32 ["connection"]
      155 SETTABLEKS                       R16 R15 K32 ["connection"]
      157 SETTABLEKS                       R14 R15 K33 ["nodeId"]
      159 SETTABLEKS                       R1 R15 K34 ["parameterName"]
      161 SETTABLE                         R15 R8 R14
      162 FORGLOOP                         R9 2 ; [-63]
      164 GETUPVAL                         R9 8
      165 GETTABLEKS                       R9 R9 K36 ["setParameterDestroyConnectionMap"]
      167 MOVE                             R10 R8
      168 CALL                             R9 1 0
      169 LOADB                            R9 0
      170 JUMPIFEQKNIL                     R2 ; [+9]
      172 GETUPVAL                         R11 6
      173 GETTABLEKS                       R11 R11 K28 ["getParameterInstanceName"]
      175 MOVE                             R12 R0
      176 CALL                             R11 1 -1
      177 NAMECALL                         R9 R3 K37 ["FindFirstChild"]
      179 CALL                             R9 -1 1
      180 JUMPIF                           R9 ; [+5]
      181 MOVE                             R12 R0
      182 LOADNIL                          R13
      183 NAMECALL                         R10 R3 K17 ["SetAttribute"]
      185 CALL                             R10 3 0
      186 JUMPIFNOT                        R6 ; [+7]
      187 GETUPVAL                         R10 7
      188 MOVE                             R12 R6
      189 GETIMPORT                        R13 K41 [Enum.FinishRecordingOperation.Commit]
      191 NAMECALL                         R10 R10 K42 ["FinishRecording"]
      193 CALL                             R10 3 0
      194 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+6]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 0
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["getAllParameterInstancesFromName"]
       17 MOVE                             R5 R3
       18 MOVE                             R6 R0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 4
       21 LOADK                            R7 K2 ["NativeGraphContext"]
       22 LOADK                            R8 K3 ["setParameterNodeTypeAsync"]
       23 NAMECALL                         R5 R5 K4 ["TryBeginRecording"]
       25 CALL                             R5 3 1
       26 MOVE                             R8 R0
       27 MOVE                             R9 R2
       28 NAMECALL                         R6 R3 K5 ["SetAttribute"]
       30 CALL                             R6 3 0
       31 MOVE                             R6 R4
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 GETUPVAL                         R13 5
       36 GETTABLEKS                       R13 R13 K6 ["NODE_ATTRIBUTES"]
       38 GETTABLEKS                       R13 R13 K7 ["ParameterType"]
       40 MOVE                             R14 R1
       41 NAMECALL                         R11 R10 K5 ["SetAttribute"]
       43 CALL                             R11 3 0
       44 FORGLOOP                         R6 2 ; [-10]
       46 JUMPIFNOT                        R5 ; [+7]
       47 GETUPVAL                         R6 4
       48 MOVE                             R8 R5
       49 GETIMPORT                        R9 K11 [Enum.FinishRecordingOperation.Commit]
       51 NAMECALL                         R6 R6 K12 ["FinishRecording"]
       53 CALL                             R6 3 0
       54 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K1 ["NativeGraphContext"]
        9 LOADK                            R5 K2 ["deleteNodeInstanceAsync"]
       10 NAMECALL                         R2 R2 K3 ["TryBeginRecording"]
       12 CALL                             R2 3 1
       13 GETUPVAL                         R3 2
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+4]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R1 K4 ["Parent"]
       19 JUMP                             ; [+3]
       20 NAMECALL                         R3 R1 K5 ["Destroy"]
       22 CALL                             R3 1 0
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETUPVAL                         R3 1
       25 MOVE                             R5 R2
       26 GETIMPORT                        R6 K9 [Enum.FinishRecordingOperation.Commit]
       28 NAMECALL                         R3 R3 K10 ["FinishRecording"]
       30 CALL                             R3 3 0
       31 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+77]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["instanceToId"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K4 ["nodeDestroyConnectionMapRef"]
       15 GETTABLEKS                       R1 R1 K5 ["current"]
       17 GETTABLE                         R2 R1 R0
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["current"]
       23 MOVE                             R4 R2
       24 JUMPIFNOT                        R4 ; [+2]
       25 GETTABLEKS                       R4 R2 K6 ["nodeOutputInfo"]
       27 JUMPIFNOT                        R4 ; [+45]
       28 JUMPIFNOT                        R3 ; [+10]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K7 ["removeOrderedInputPin"]
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R3
       34 GETTABLEKS                       R8 R4 K8 ["inputNodeId"]
       36 GETTABLEKS                       R9 R4 K9 ["inputNodePinId"]
       38 CALL                             R5 4 0
       39 GETTABLEKS                       R5 R4 K10 ["wireId"]
       41 JUMPIFNOT                        R5 ; [+31]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R7 R4 K10 ["wireId"]
       45 NAMECALL                         R5 R5 K11 ["idToInstance"]
       47 CALL                             R5 2 1
       48 JUMPIFNOT                        R5 ; [+24]
       49 LOADK                            R8 K12 ["ObjectValue"]
       50 NAMECALL                         R6 R5 K13 ["IsA"]
       52 CALL                             R6 2 1
       53 JUMPIFNOT                        R6 ; [+19]
       54 GETTABLEKS                       R6 R5 K14 ["Value"]
       56 JUMPIFEQKNIL                     R6 ; [+6]
       58 GETTABLEKS                       R6 R5 K14 ["Value"]
       60 GETUPVAL                         R7 0
       61 JUMPIFNOTEQ                      R6 R7 ; [+11]
       63 GETUPVAL                         R6 5
       64 CALL                             R6 0 1
       65 JUMPIFNOT                        R6 ; [+4]
       66 LOADNIL                          R6
       67 SETTABLEKS                       R6 R5 K15 ["Parent"]
       69 JUMP                             ; [+3]
       70 NAMECALL                         R6 R5 K16 ["Destroy"]
       72 CALL                             R6 1 0
       73 GETIMPORT                        R5 K19 [table.clone]
       75 MOVE                             R6 R1
       76 CALL                             R5 1 1
       77 LOADNIL                          R6
       78 SETTABLE                         R6 R5 R0
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R6 R6 K20 ["setNodeDestroyConnectionMap"]
       82 MOVE                             R7 R5
       83 CALL                             R6 1 0
       84 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNodeInfoLookupListRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["nodeDestroyConnectionMapRef"]
       10 GETTABLEKS                       R2 R2 K1 ["current"]
       12 GETIMPORT                        R3 K5 [table.clone]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 LOADB                            R4 0
       17 MOVE                             R5 R1
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLEKS                       R11 R9 K6 ["nodeId"]
       23 GETTABLE                         R10 R2 R11
       24 JUMPIF                           R10 ; [+30]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+23]
       32 GETTABLEKS                       R11 R10 K8 ["AncestryChanged"]
       34 NEWCLOSURE                       R13 P0
       35 CAPTURE                          VAL R10
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 NAMECALL                         R11 R11 K9 ["Connect"]
       43 CALL                             R11 2 1
       44 LOADB                            R4 1
       45 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       47 DUPTABLE                         R13 K11 [{"connection", "nodeId"}]
       48 SETTABLEKS                       R11 R13 K10 ["connection"]
       50 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       52 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       54 SETTABLE                         R13 R3 R12
       55 FORGLOOP                         R5 2 ; [-35]
       57 JUMPIFNOT                        R4 ; [+5]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K12 ["setNodeDestroyConnectionMap"]
       61 MOVE                             R6 R3
       62 CALL                             R5 1 0
       63 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 1
       10 RETURN                           R0 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+37]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["instanceToId"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K4 ["parameterDestroyConnectionMapRef"]
       15 GETTABLEKS                       R1 R1 K5 ["current"]
       17 GETTABLE                         R2 R1 R0
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R4 R2 K6 ["parameterName"]
       23 GETTABLEKS                       R5 R2 K7 ["nodeId"]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R3 R2 K8 ["connection"]
       28 NAMECALL                         R3 R3 K9 ["Disconnect"]
       30 CALL                             R3 1 0
       31 GETIMPORT                        R3 K12 [table.clone]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R2 K7 ["nodeId"]
       37 LOADNIL                          R5
       38 SETTABLE                         R5 R3 R4
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K13 ["setParameterDestroyConnectionMap"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeParameterNodeInfoLookupListRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["parameterDestroyConnectionMapRef"]
       10 GETTABLEKS                       R2 R2 K1 ["current"]
       12 GETIMPORT                        R3 K5 [table.clone]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 LOADB                            R4 0
       17 MOVE                             R5 R1
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLEKS                       R11 R9 K6 ["nodeId"]
       23 GETTABLE                         R10 R2 R11
       24 JUMPIF                           R10 ; [+38]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+31]
       32 GETTABLEKS                       R11 R10 K8 ["AncestryChanged"]
       34 NEWCLOSURE                       R13 P0
       35 CAPTURE                          VAL R10
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U2
       39 NAMECALL                         R11 R11 K9 ["Connect"]
       41 CALL                             R11 2 1
       42 LOADB                            R4 1
       43 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       45 DUPTABLE                         R13 K12 [{"connection", "nodeId", "parameterName"}]
       46 SETTABLEKS                       R11 R13 K10 ["connection"]
       48 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       50 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       52 GETUPVAL                         R16 3
       53 GETTABLEKS                       R16 R16 K13 ["NODE_ATTRIBUTES"]
       55 GETTABLEKS                       R16 R16 K14 ["BindingName"]
       57 NAMECALL                         R14 R10 K15 ["GetAttribute"]
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K11 ["parameterName"]
       62 SETTABLE                         R13 R3 R12
       63 FORGLOOP                         R5 2 ; [-43]
       65 JUMPIFNOT                        R4 ; [+5]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K16 ["setParameterDestroyConnectionMap"]
       69 MOVE                             R6 R3
       70 CALL                             R5 1 0
       71 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_55:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+4]
       14 NEWTABLE                         R2 0 0
       16 RETURN                           R2 1
       17 NEWTABLE                         R2 0 1
       19 MOVE                             R3 R1
       20 SETLIST                          R2 R3 1 [1]
       22 RETURN                           R2 1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["useContext"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["Context"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 3
       14 CALL                             R6 0 1
       15 JUMPIFNOT                        R6 ; [+8]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K0 ["useContext"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K1 ["Context"]
       22 CALL                             R5 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K2 ["useState"]
       28 GETIMPORT                        R7 K5 [Rect.new]
       30 LOADN                            R8 0
       31 LOADN                            R9 0
       32 LOADN                            R10 0
       33 LOADN                            R11 0
       34 CALL                             R7 4 -1
       35 CALL                             R6 -1 2
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K6 ["useRef"]
       39 LOADNIL                          R9
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 5
       42 CALL                             R9 0 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R9
       49 NEWTABLE                         R12 0 1
       51 MOVE                             R13 R9
       52 SETLIST                          R12 R13 1 [1]
       54 CALL                             R10 2 1
       55 GETUPVAL                         R11 7
       56 CALL                             R11 0 0
       57 GETUPVAL                         R11 1
       58 GETTABLEKS                       R11 R11 K8 ["useEffect"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R10
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R10
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 0
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R11 R11 K0 ["useContext"]
       71 GETUPVAL                         R12 8
       72 GETTABLEKS                       R12 R12 K1 ["Context"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R11 R11 K9 ["instanceRegistry"]
       77 GETUPVAL                         R13 3
       78 CALL                             R13 0 1
       79 JUMPIFNOT                        R13 ; [+2]
       80 LOADNIL                          R12
       81 JUMP                             ; [+12]
       82 GETUPVAL                         R12 1
       83 GETTABLEKS                       R12 R12 K7 ["useMemo"]
       85 NEWCLOSURE                       R13 P2
       86 CAPTURE                          UPVAL U9
       87 CAPTURE                          VAL R9
       88 NEWTABLE                         R14 0 1
       90 MOVE                             R15 R9
       91 SETLIST                          R14 R15 1 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 1
       95 GETTABLEKS                       R13 R13 K7 ["useMemo"]
       97 NEWCLOSURE                       R14 P3
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R10
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R12
      104 NEWTABLE                         R15 0 3
      106 MOVE                             R16 R11
      107 MOVE                             R17 R10
      108 GETUPVAL                         R19 3
      109 CALL                             R19 0 1
      110 JUMPIFNOT                        R19 ; [+3]
      111 GETTABLEKS                       R18 R5 K10 ["observeSelectedGraphInstance"]
      113 JUMP                             ; [+1]
      114 MOVE                             R18 R12
      115 SETLIST                          R15 R16 3 [1]
      117 CALL                             R13 2 1
      118 GETUPVAL                         R14 1
      119 GETTABLEKS                       R14 R14 K2 ["useState"]
      121 LOADNIL                          R15
      122 CALL                             R14 1 2
      123 GETUPVAL                         R16 1
      124 GETTABLEKS                       R16 R16 K2 ["useState"]
      126 NEWTABLE                         R17 0 0
      128 CALL                             R16 1 2
      129 GETUPVAL                         R18 1
      130 GETTABLEKS                       R18 R18 K2 ["useState"]
      132 NEWTABLE                         R19 0 0
      134 CALL                             R18 1 2
      135 GETUPVAL                         R20 10
      136 GETTABLEKS                       R20 R20 K11 ["useRefToState"]
      138 MOVE                             R21 R14
      139 CALL                             R20 1 1
      140 GETUPVAL                         R21 1
      141 GETTABLEKS                       R21 R21 K8 ["useEffect"]
      143 NEWCLOSURE                       R22 P4
      144 CAPTURE                          UPVAL U11
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R7
      148 CAPTURE                          UPVAL U9
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 NEWTABLE                         R23 0 6
      157 MOVE                             R24 R13
      158 GETTABLEKS                       R25 R0 K12 ["testOverrideGraphPayloadMap"]
      160 MOVE                             R26 R15
      161 MOVE                             R27 R7
      162 GETTABLEKS                       R28 R1 K13 ["setMap"]
      164 GETTABLEKS                       R29 R2 K13 ["setMap"]
      166 SETLIST                          R23 R24 6 [1]
      168 CALL                             R21 2 0
      169 GETUPVAL                         R21 1
      170 GETTABLEKS                       R21 R21 K14 ["useCallback"]
      172 NEWCLOSURE                       R22 P5
      173 CAPTURE                          VAL R11
      174 CAPTURE                          UPVAL U9
      175 NEWTABLE                         R23 0 1
      177 MOVE                             R24 R11
      178 SETLIST                          R23 R24 1 [1]
      180 CALL                             R21 2 1
      181 GETUPVAL                         R22 1
      182 GETTABLEKS                       R22 R22 K14 ["useCallback"]
      184 NEWCLOSURE                       R23 P6
      185 CAPTURE                          VAL R11
      186 CAPTURE                          UPVAL U9
      187 NEWTABLE                         R24 0 1
      189 MOVE                             R25 R11
      190 SETLIST                          R24 R25 1 [1]
      192 CALL                             R22 2 1
      193 GETUPVAL                         R23 1
      194 GETTABLEKS                       R23 R23 K14 ["useCallback"]
      196 NEWCLOSURE                       R24 P7
      197 CAPTURE                          UPVAL U12
      198 CAPTURE                          VAL R11
      199 CAPTURE                          UPVAL U9
      200 NEWTABLE                         R25 0 1
      202 MOVE                             R26 R11
      203 SETLIST                          R25 R26 1 [1]
      205 CALL                             R23 2 1
      206 GETUPVAL                         R24 1
      207 GETTABLEKS                       R24 R24 K14 ["useCallback"]
      209 NEWCLOSURE                       R25 P8
      210 CAPTURE                          VAL R11
      211 CAPTURE                          UPVAL U9
      212 NEWTABLE                         R26 0 1
      214 MOVE                             R27 R11
      215 SETLIST                          R26 R27 1 [1]
      217 CALL                             R24 2 1
      218 GETUPVAL                         R25 1
      219 GETTABLEKS                       R25 R25 K14 ["useCallback"]
      221 NEWCLOSURE                       R26 P9
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R11
      224 NEWTABLE                         R27 0 3
      226 MOVE                             R28 R11
      227 GETTABLEKS                       R29 R4 K15 ["selectionService"]
      229 MOVE                             R30 R10
      230 SETLIST                          R27 R28 3 [1]
      232 CALL                             R25 2 1
      233 GETUPVAL                         R26 1
      234 GETTABLEKS                       R26 R26 K14 ["useCallback"]
      236 NEWCLOSURE                       R27 P10
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R11
      241 NEWTABLE                         R28 0 4
      243 GETTABLEKS                       R29 R2 K16 ["get"]
      245 GETTABLEKS                       R30 R4 K15 ["selectionService"]
      247 MOVE                             R31 R11
      248 MOVE                             R32 R14
      249 SETLIST                          R28 R29 4 [1]
      251 CALL                             R26 2 1
      252 GETUPVAL                         R27 1
      253 GETTABLEKS                       R27 R27 K2 ["useState"]
      255 LOADK                            R28 K17 [""]
      256 CALL                             R27 1 2
      257 GETUPVAL                         R29 1
      258 GETTABLEKS                       R29 R29 K2 ["useState"]
      260 LOADNIL                          R30
      261 CALL                             R29 1 2
      262 GETUPVAL                         R32 13
      263 CALL                             R32 0 1
      264 JUMPIFNOT                        R32 ; [+16]
      265 GETUPVAL                         R32 3
      266 CALL                             R32 0 1
      267 JUMPIFNOT                        R32 ; [+7]
      268 GETUPVAL                         R31 14
      269 GETTABLEKS                       R31 R31 K18 ["useSignalState"]
      271 GETTABLEKS                       R32 R5 K10 ["observeSelectedGraphInstance"]
      273 CALL                             R31 1 1
      274 JUMP                             ; [+7]
      275 GETUPVAL                         R31 14
      276 GETTABLEKS                       R31 R31 K18 ["useSignalState"]
      278 MOVE                             R32 R12
      279 CALL                             R31 1 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R31
      282 GETUPVAL                         R33 13
      283 CALL                             R33 0 1
      284 JUMPIFNOT                        R33 ; [+12]
      285 GETUPVAL                         R32 1
      286 GETTABLEKS                       R32 R32 K7 ["useMemo"]
      288 NEWCLOSURE                       R33 P11
      289 CAPTURE                          VAL R31
      290 NEWTABLE                         R34 0 1
      292 MOVE                             R35 R31
      293 SETLIST                          R34 R35 1 [1]
      295 CALL                             R32 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R32
      298 GETUPVAL                         R34 3
      299 CALL                             R34 0 1
      300 JUMPIFNOT                        R34 ; [+7]
      301 GETUPVAL                         R33 14
      302 GETTABLEKS                       R33 R33 K18 ["useSignalState"]
      304 GETTABLEKS                       R34 R5 K10 ["observeSelectedGraphInstance"]
      306 CALL                             R33 1 1
      307 JUMP                             ; [+5]
      308 GETUPVAL                         R33 14
      309 GETTABLEKS                       R33 R33 K18 ["useSignalState"]
      311 MOVE                             R34 R12
      312 CALL                             R33 1 1
      313 GETUPVAL                         R34 1
      314 GETTABLEKS                       R34 R34 K8 ["useEffect"]
      316 NEWCLOSURE                       R35 P12
      317 CAPTURE                          VAL R33
      318 CAPTURE                          UPVAL U13
      319 CAPTURE                          VAL R28
      320 CAPTURE                          VAL R30
      321 CAPTURE                          UPVAL U15
      322 NEWTABLE                         R36 0 1
      324 MOVE                             R37 R33
      325 SETLIST                          R36 R37 1 [1]
      327 CALL                             R34 2 0
      328 GETUPVAL                         R34 13
      329 CALL                             R34 0 1
      330 JUMPIF                           R34 ; [+14]
      331 GETUPVAL                         R34 1
      332 GETTABLEKS                       R34 R34 K8 ["useEffect"]
      334 NEWCLOSURE                       R35 P13
      335 CAPTURE                          VAL R27
      336 CAPTURE                          VAL R33
      337 CAPTURE                          UPVAL U16
      338 NEWTABLE                         R36 0 2
      340 MOVE                             R37 R27
      341 MOVE                             R38 R33
      342 SETLIST                          R36 R37 2 [1]
      344 CALL                             R34 2 0
      345 GETUPVAL                         R33 1
      346 GETTABLEKS                       R33 R33 K14 ["useCallback"]
      348 NEWCLOSURE                       R34 P14
      349 CAPTURE                          UPVAL U3
      350 CAPTURE                          VAL R5
      351 CAPTURE                          VAL R12
      352 CAPTURE                          VAL R14
      353 CAPTURE                          UPVAL U17
      354 CAPTURE                          UPVAL U12
      355 CAPTURE                          UPVAL U9
      356 CAPTURE                          UPVAL U18
      357 CAPTURE                          VAL R2
      358 CAPTURE                          VAL R11
      359 CAPTURE                          UPVAL U19
      360 CAPTURE                          UPVAL U20
      361 CAPTURE                          VAL R4
      362 NEWTABLE                         R35 0 5
      364 GETTABLEKS                       R36 R4 K15 ["selectionService"]
      366 GETUPVAL                         R38 3
      367 CALL                             R38 0 1
      368 JUMPIFNOT                        R38 ; [+3]
      369 GETTABLEKS                       R37 R5 K10 ["observeSelectedGraphInstance"]
      371 JUMP                             ; [+1]
      372 MOVE                             R37 R12
      373 MOVE                             R38 R14
      374 MOVE                             R39 R11
      375 MOVE                             R40 R2
      376 SETLIST                          R35 R36 5 [1]
      378 CALL                             R33 2 1
      379 GETUPVAL                         R34 21
      380 GETTABLEKS                       R34 R34 K19 ["useProducer"]
      382 GETUPVAL                         R35 1
      383 GETTABLEKS                       R35 R35 K14 ["useCallback"]
      385 NEWCLOSURE                       R36 P15
      386 CAPTURE                          VAL R33
      387 NEWTABLE                         R37 0 1
      389 MOVE                             R38 R33
      390 SETLIST                          R37 R38 1 [1]
      392 CALL                             R35 2 -1
      393 CALL                             R34 -1 0
      394 GETUPVAL                         R34 22
      395 GETTABLEKS                       R34 R34 K19 ["useProducer"]
      397 NEWCLOSURE                       R35 P16
      398 CAPTURE                          UPVAL U23
      399 CAPTURE                          VAL R4
      400 CAPTURE                          UPVAL U12
      401 CALL                             R34 1 0
      402 GETUPVAL                         R34 1
      403 GETTABLEKS                       R34 R34 K14 ["useCallback"]
      405 NEWCLOSURE                       R35 P17
      406 CAPTURE                          UPVAL U3
      407 CAPTURE                          VAL R5
      408 CAPTURE                          VAL R12
      409 CAPTURE                          UPVAL U9
      410 CAPTURE                          VAL R4
      411 NEWTABLE                         R36 0 2
      413 GETUPVAL                         R38 3
      414 CALL                             R38 0 1
      415 JUMPIFNOT                        R38 ; [+3]
      416 GETTABLEKS                       R37 R5 K10 ["observeSelectedGraphInstance"]
      418 JUMP                             ; [+1]
      419 MOVE                             R37 R12
      420 GETTABLEKS                       R38 R4 K15 ["selectionService"]
      422 SETLIST                          R36 R37 2 [1]
      424 CALL                             R34 2 1
      425 GETUPVAL                         R35 1
      426 GETTABLEKS                       R35 R35 K14 ["useCallback"]
      428 NEWCLOSURE                       R36 P18
      429 CAPTURE                          UPVAL U3
      430 CAPTURE                          VAL R5
      431 CAPTURE                          VAL R12
      432 CAPTURE                          VAL R14
      433 CAPTURE                          UPVAL U12
      434 CAPTURE                          UPVAL U9
      435 CAPTURE                          VAL R11
      436 CAPTURE                          UPVAL U18
      437 CAPTURE                          VAL R2
      438 CAPTURE                          UPVAL U24
      439 CAPTURE                          VAL R4
      440 NEWTABLE                         R37 0 5
      442 GETTABLEKS                       R38 R4 K15 ["selectionService"]
      444 GETUPVAL                         R40 3
      445 CALL                             R40 0 1
      446 JUMPIFNOT                        R40 ; [+3]
      447 GETTABLEKS                       R39 R5 K10 ["observeSelectedGraphInstance"]
      449 JUMP                             ; [+1]
      450 MOVE                             R39 R12
      451 MOVE                             R40 R11
      452 MOVE                             R41 R2
      453 MOVE                             R42 R14
      454 SETLIST                          R37 R38 5 [1]
      456 CALL                             R35 2 1
      457 GETUPVAL                         R36 1
      458 GETTABLEKS                       R36 R36 K14 ["useCallback"]
      460 NEWCLOSURE                       R37 P19
      461 CAPTURE                          UPVAL U3
      462 CAPTURE                          VAL R5
      463 CAPTURE                          VAL R12
      464 CAPTURE                          VAL R14
      465 CAPTURE                          UPVAL U9
      466 CAPTURE                          UPVAL U24
      467 CAPTURE                          UPVAL U12
      468 CAPTURE                          VAL R11
      469 CAPTURE                          VAL R35
      470 CAPTURE                          VAL R4
      471 NEWTABLE                         R38 0 5
      473 GETTABLEKS                       R39 R4 K15 ["selectionService"]
      475 GETUPVAL                         R41 3
      476 CALL                             R41 0 1
      477 JUMPIFNOT                        R41 ; [+3]
      478 GETTABLEKS                       R40 R5 K10 ["observeSelectedGraphInstance"]
      480 JUMP                             ; [+1]
      481 MOVE                             R40 R12
      482 MOVE                             R41 R11
      483 MOVE                             R42 R14
      484 MOVE                             R43 R35
      485 SETLIST                          R38 R39 5 [1]
      487 CALL                             R36 2 1
      488 GETUPVAL                         R37 1
      489 GETTABLEKS                       R37 R37 K14 ["useCallback"]
      491 NEWCLOSURE                       R38 P20
      492 CAPTURE                          VAL R14
      493 CAPTURE                          UPVAL U12
      494 CAPTURE                          UPVAL U9
      495 CAPTURE                          VAL R11
      496 CAPTURE                          UPVAL U25
      497 NEWTABLE                         R39 0 2
      499 MOVE                             R40 R11
      500 MOVE                             R41 R14
      501 SETLIST                          R39 R40 2 [1]
      503 CALL                             R37 2 1
      504 GETUPVAL                         R38 1
      505 GETTABLEKS                       R38 R38 K14 ["useCallback"]
      507 NEWCLOSURE                       R39 P21
      508 CAPTURE                          VAL R14
      509 CAPTURE                          UPVAL U12
      510 CAPTURE                          UPVAL U9
      511 CAPTURE                          VAL R11
      512 CAPTURE                          UPVAL U25
      513 NEWTABLE                         R40 0 2
      515 MOVE                             R41 R11
      516 MOVE                             R42 R14
      517 SETLIST                          R40 R41 2 [1]
      519 CALL                             R38 2 1
      520 GETUPVAL                         R39 26
      521 MOVE                             R40 R11
      522 GETUPVAL                         R42 3
      523 CALL                             R42 0 1
      524 JUMPIFNOT                        R42 ; [+3]
      525 GETTABLEKS                       R41 R5 K10 ["observeSelectedGraphInstance"]
      527 JUMP                             ; [+1]
      528 MOVE                             R41 R12
      529 CALL                             R39 2 1
      530 GETUPVAL                         R40 27
      531 MOVE                             R41 R11
      532 GETUPVAL                         R43 3
      533 CALL                             R43 0 1
      534 JUMPIFNOT                        R43 ; [+3]
      535 GETTABLEKS                       R42 R5 K10 ["observeSelectedGraphInstance"]
      537 JUMP                             ; [+1]
      538 MOVE                             R42 R12
      539 CALL                             R40 2 1
      540 GETUPVAL                         R41 1
      541 GETTABLEKS                       R41 R41 K14 ["useCallback"]
      543 NEWCLOSURE                       R42 P22
      544 CAPTURE                          VAL R14
      545 CAPTURE                          UPVAL U12
      546 CAPTURE                          UPVAL U9
      547 CAPTURE                          VAL R11
      548 NEWTABLE                         R43 0 2
      550 MOVE                             R44 R11
      551 MOVE                             R45 R14
      552 SETLIST                          R43 R44 2 [1]
      554 CALL                             R41 2 1
      555 GETUPVAL                         R42 1
      556 GETTABLEKS                       R42 R42 K14 ["useCallback"]
      558 NEWCLOSURE                       R43 P23
      559 CAPTURE                          VAL R14
      560 CAPTURE                          UPVAL U12
      561 CAPTURE                          UPVAL U9
      562 CAPTURE                          VAL R11
      563 CAPTURE                          UPVAL U25
      564 CAPTURE                          VAL R39
      565 NEWTABLE                         R44 0 3
      567 MOVE                             R45 R11
      568 MOVE                             R46 R14
      569 GETTABLEKS                       R47 R39 K20 ["setNodeOutputInfoInDestroyMapRef"]
      571 SETLIST                          R44 R45 3 [1]
      573 CALL                             R42 2 1
      574 GETUPVAL                         R43 1
      575 GETTABLEKS                       R43 R43 K14 ["useCallback"]
      577 NEWCLOSURE                       R44 P24
      578 CAPTURE                          UPVAL U3
      579 CAPTURE                          VAL R5
      580 CAPTURE                          VAL R12
      581 CAPTURE                          UPVAL U12
      582 CAPTURE                          VAL R11
      583 CAPTURE                          UPVAL U9
      584 CAPTURE                          VAL R35
      585 CAPTURE                          VAL R36
      586 CAPTURE                          VAL R42
      587 CAPTURE                          UPVAL U25
      588 NEWTABLE                         R45 0 7
      590 GETTABLEKS                       R46 R4 K15 ["selectionService"]
      592 GETUPVAL                         R48 3
      593 CALL                             R48 0 1
      594 JUMPIFNOT                        R48 ; [+3]
      595 GETTABLEKS                       R47 R5 K10 ["observeSelectedGraphInstance"]
      597 JUMP                             ; [+1]
      598 MOVE                             R47 R12
      599 MOVE                             R48 R14
      600 MOVE                             R49 R11
      601 MOVE                             R50 R35
      602 MOVE                             R51 R36
      603 MOVE                             R52 R42
      604 SETLIST                          R45 R46 7 [1]
      606 CALL                             R43 2 1
      607 GETUPVAL                         R44 1
      608 GETTABLEKS                       R44 R44 K14 ["useCallback"]
      610 NEWCLOSURE                       R45 P25
      611 CAPTURE                          VAL R8
      612 CAPTURE                          UPVAL U12
      613 NEWTABLE                         R46 0 0
      615 CALL                             R44 2 1
      616 GETUPVAL                         R45 1
      617 GETTABLEKS                       R45 R45 K14 ["useCallback"]
      619 NEWCLOSURE                       R46 P26
      620 CAPTURE                          VAL R8
      621 CAPTURE                          UPVAL U12
      622 NEWTABLE                         R47 0 0
      624 CALL                             R45 2 1
      625 GETUPVAL                         R46 1
      626 GETTABLEKS                       R46 R46 K8 ["useEffect"]
      628 NEWCLOSURE                       R47 P27
      629 CAPTURE                          VAL R8
      630 CAPTURE                          UPVAL U12
      631 NEWTABLE                         R48 0 0
      633 CALL                             R46 2 0
      634 GETUPVAL                         R46 1
      635 GETTABLEKS                       R46 R46 K14 ["useCallback"]
      637 NEWCLOSURE                       R47 P28
      638 CAPTURE                          UPVAL U12
      639 CAPTURE                          VAL R11
      640 CAPTURE                          UPVAL U15
      641 CAPTURE                          UPVAL U18
      642 NEWTABLE                         R48 0 1
      644 MOVE                             R49 R11
      645 SETLIST                          R48 R49 1 [1]
      647 CALL                             R46 2 1
      648 GETUPVAL                         R47 1
      649 GETTABLEKS                       R47 R47 K14 ["useCallback"]
      651 NEWCLOSURE                       R48 P29
      652 CAPTURE                          UPVAL U12
      653 CAPTURE                          VAL R11
      654 NEWTABLE                         R49 0 1
      656 MOVE                             R50 R11
      657 SETLIST                          R49 R50 1 [1]
      659 CALL                             R47 2 1
      660 GETUPVAL                         R48 1
      661 GETTABLEKS                       R48 R48 K14 ["useCallback"]
      663 NEWCLOSURE                       R49 P30
      664 CAPTURE                          UPVAL U12
      665 CAPTURE                          VAL R11
      666 CAPTURE                          UPVAL U28
      667 CAPTURE                          UPVAL U9
      668 CAPTURE                          UPVAL U24
      669 CAPTURE                          VAL R1
      670 CAPTURE                          VAL R14
      671 NEWTABLE                         R50 0 3
      673 MOVE                             R51 R11
      674 MOVE                             R52 R14
      675 GETTABLEKS                       R53 R1 K21 ["observe"]
      677 SETLIST                          R50 R51 3 [1]
      679 CALL                             R48 2 1
      680 GETUPVAL                         R49 1
      681 GETTABLEKS                       R49 R49 K14 ["useCallback"]
      683 NEWCLOSURE                       R50 P31
      684 CAPTURE                          UPVAL U12
      685 CAPTURE                          UPVAL U9
      686 CAPTURE                          VAL R11
      687 NEWTABLE                         R51 0 1
      689 MOVE                             R52 R11
      690 SETLIST                          R51 R52 1 [1]
      692 CALL                             R49 2 1
      693 GETUPVAL                         R50 1
      694 GETTABLEKS                       R50 R50 K14 ["useCallback"]
      696 NEWCLOSURE                       R51 P32
      697 CAPTURE                          UPVAL U3
      698 CAPTURE                          VAL R5
      699 CAPTURE                          VAL R12
      700 CAPTURE                          VAL R14
      701 CAPTURE                          VAL R11
      702 CAPTURE                          UPVAL U9
      703 CAPTURE                          UPVAL U12
      704 CAPTURE                          UPVAL U16
      705 NEWTABLE                         R52 0 3
      707 MOVE                             R53 R12
      708 MOVE                             R54 R11
      709 MOVE                             R55 R14
      710 SETLIST                          R52 R53 3 [1]
      712 CALL                             R50 2 1
      713 GETUPVAL                         R51 1
      714 GETTABLEKS                       R51 R51 K14 ["useCallback"]
      716 NEWCLOSURE                       R52 P33
      717 CAPTURE                          UPVAL U18
      718 CAPTURE                          UPVAL U29
      719 CAPTURE                          UPVAL U3
      720 CAPTURE                          VAL R5
      721 CAPTURE                          VAL R12
      722 CAPTURE                          VAL R11
      723 CAPTURE                          UPVAL U9
      724 CAPTURE                          UPVAL U12
      725 CAPTURE                          VAL R40
      726 CAPTURE                          UPVAL U24
      727 NEWTABLE                         R53 0 4
      729 MOVE                             R54 R11
      730 MOVE                             R55 R12
      731 MOVE                             R56 R14
      732 GETTABLEKS                       R57 R40 K22 ["parameterDestroyConnectionMapRef"]
      734 SETLIST                          R53 R54 4 [1]
      736 CALL                             R51 2 1
      737 GETUPVAL                         R52 1
      738 GETTABLEKS                       R52 R52 K14 ["useCallback"]
      740 NEWCLOSURE                       R53 P34
      741 CAPTURE                          UPVAL U3
      742 CAPTURE                          VAL R5
      743 CAPTURE                          VAL R12
      744 CAPTURE                          UPVAL U9
      745 CAPTURE                          UPVAL U12
      746 CAPTURE                          UPVAL U24
      747 NEWTABLE                         R54 0 1
      749 GETUPVAL                         R56 3
      750 CALL                             R56 0 1
      751 JUMPIFNOT                        R56 ; [+3]
      752 GETTABLEKS                       R55 R5 K10 ["observeSelectedGraphInstance"]
      754 JUMP                             ; [+1]
      755 MOVE                             R55 R12
      756 SETLIST                          R54 R55 1 [1]
      758 CALL                             R52 2 1
      759 GETUPVAL                         R53 1
      760 GETTABLEKS                       R53 R53 K14 ["useCallback"]
      762 NEWCLOSURE                       R54 P35
      763 CAPTURE                          VAL R11
      764 CAPTURE                          UPVAL U12
      765 CAPTURE                          UPVAL U16
      766 NEWTABLE                         R55 0 1
      768 MOVE                             R56 R11
      769 SETLIST                          R55 R56 1 [1]
      771 CALL                             R53 2 1
      772 GETUPVAL                         R54 1
      773 GETTABLEKS                       R54 R54 K8 ["useEffect"]
      775 NEWCLOSURE                       R55 P36
      776 CAPTURE                          UPVAL U11
      777 CAPTURE                          VAL R39
      778 CAPTURE                          VAL R11
      779 CAPTURE                          VAL R20
      780 CAPTURE                          UPVAL U9
      781 CAPTURE                          UPVAL U16
      782 NEWTABLE                         R56 0 2
      784 MOVE                             R57 R11
      785 GETTABLEKS                       R58 R39 K23 ["nodeDestroyConnectionMapRef"]
      787 SETLIST                          R56 R57 2 [1]
      789 CALL                             R54 2 0
      790 GETUPVAL                         R54 1
      791 GETTABLEKS                       R54 R54 K8 ["useEffect"]
      793 NEWCLOSURE                       R55 P37
      794 CAPTURE                          UPVAL U11
      795 CAPTURE                          VAL R40
      796 CAPTURE                          VAL R11
      797 CAPTURE                          VAL R50
      798 CAPTURE                          UPVAL U24
      799 NEWTABLE                         R56 0 3
      801 MOVE                             R57 R11
      802 GETTABLEKS                       R58 R40 K22 ["parameterDestroyConnectionMapRef"]
      804 MOVE                             R59 R50
      805 SETLIST                          R56 R57 3 [1]
      807 CALL                             R54 2 0
      808 GETUPVAL                         R54 30
      809 MOVE                             R55 R2
      810 MOVE                             R56 R1
      811 CALL                             R54 2 1
      812 NEWTABLE                         R55 64 0
      814 GETUPVAL                         R57 3
      815 CALL                             R57 0 1
      816 JUMPIF                           R57 ; [+4]
      817 JUMPIFNOT                        R14 ; [+3]
      818 GETTABLEKS                       R56 R14 K24 ["graphInstanceId"]
      820 JUMP                             ; [+1]
      821 LOADNIL                          R56
      822 SETTABLEKS                       R56 R55 K25 ["selectedGraphInstanceId_DEPRECATED"]
      824 SETTABLEKS                       R49 R55 K26 ["reorderPinsAsync"]
      826 SETTABLEKS                       R33 R55 K27 ["createNodeAsync"]
      828 SETTABLEKS                       R35 R55 K28 ["createParameterAsync"]
      830 SETTABLEKS                       R36 R55 K29 ["createExistingParameterAsync"]
      832 SETTABLEKS                       R43 R55 K30 ["createConnectedParameterAsync"]
      834 SETTABLEKS                       R6 R55 K31 ["graphRect"]
      836 SETTABLEKS                       R34 R55 K32 ["selectAllParameterNodesWithNameAsync"]
      838 SETTABLEKS                       R25 R55 K33 ["selectNodesAsync"]
      840 SETTABLEKS                       R26 R55 K34 ["selectNodesFromRectAsync"]
      842 SETTABLEKS                       R23 R55 K35 ["setNodePositionsAsync"]
      844 SETTABLEKS                       R24 R55 K36 ["setNodeSizeAsync"]
      846 SETTABLEKS                       R42 R55 K37 ["setNodeConnectionAsync"]
      848 SETTABLEKS                       R37 R55 K38 ["deleteNodeInput"]
      850 SETTABLEKS                       R41 R55 K39 ["removeNodeOutputConnectionAsync"]
      852 SETTABLEKS                       R38 R55 K40 ["removeNodeInputConnectionAsync"]
      854 SETTABLEKS                       R50 R55 K41 ["removeParameterAsync"]
      856 SETTABLEKS                       R48 R55 K42 ["renameNodeAsync"]
      858 SETTABLEKS                       R51 R55 K43 ["renameParameterAsync"]
      860 SETTABLEKS                       R53 R55 K44 ["deleteNodeInstanceAsync"]
      862 SETTABLEKS                       R21 R55 K45 ["setCollapsedAsync"]
      864 SETTABLEKS                       R46 R55 K46 ["setNodePropertyAsync"]
      866 SETTABLEKS                       R47 R55 K47 ["setInputPinNodePropertyAsync"]
      868 SETTABLEKS                       R52 R55 K48 ["setParameterNodeTypeAsync"]
      870 SETTABLEKS                       R27 R55 K49 ["currentAnimationId"]
      872 SETTABLEKS                       R29 R55 K50 ["sourceAssetId"]
      874 SETTABLEKS                       R32 R55 K51 ["selectedGraphKey"]
      876 GETUPVAL                         R57 3
      877 CALL                             R57 0 1
      878 JUMPIFNOT                        R57 ; [+2]
      879 LOADNIL                          R56
      880 JUMP                             ; [+1]
      881 MOVE                             R56 R12
      882 SETTABLEKS                       R56 R55 K52 ["observeSelectedGraphInstance_DEPRECATED"]
      884 GETTABLEKS                       R56 R1 K21 ["observe"]
      886 SETTABLEKS                       R56 R55 K53 ["observeGraphNodeById"]
      888 GETTABLEKS                       R56 R2 K21 ["observe"]
      890 SETTABLEKS                       R56 R55 K54 ["observeNodeRenderInfoById"]
      892 SETTABLEKS                       R44 R55 K55 ["beginUndoTransaction"]
      894 SETTABLEKS                       R45 R55 K56 ["finishUndoTransaction"]
      896 GETTABLEKS                       R56 R1 K57 ["observeMap"]
      898 SETTABLEKS                       R56 R55 K58 ["observeGraphNodeMap"]
      900 GETTABLEKS                       R56 R2 K57 ["observeMap"]
      902 SETTABLEKS                       R56 R55 K59 ["observeRenderInfoMap"]
      904 GETTABLEKS                       R56 R54 K60 ["hasGraphOutput"]
      906 SETTABLEKS                       R56 R55 K60 ["hasGraphOutput"]
      908 GETTABLEKS                       R56 R3 K21 ["observe"]
      910 SETTABLEKS                       R56 R55 K61 ["observeNodePropsById"]
      912 GETUPVAL                         R56 1
      913 GETTABLEKS                       R56 R56 K7 ["useMemo"]
      915 DUPCLOSURE                       R57 K62 [PROTO_55]
      916 NEWTABLE                         R58 0 0
      918 CALL                             R56 2 1
      919 GETUPVAL                         R57 1
      920 GETTABLEKS                       R57 R57 K7 ["useMemo"]
      922 NEWCLOSURE                       R58 P39
      923 CAPTURE                          UPVAL U31
      924 CAPTURE                          UPVAL U3
      925 CAPTURE                          VAL R5
      926 CAPTURE                          VAL R12
      927 NEWTABLE                         R59 0 2
      929 GETUPVAL                         R61 3
      930 CALL                             R61 0 1
      931 JUMPIFNOT                        R61 ; [+3]
      932 GETTABLEKS                       R60 R5 K10 ["observeSelectedGraphInstance"]
      934 JUMP                             ; [+1]
      935 MOVE                             R60 R12
      936 MOVE                             R61 R14
      937 SETLIST                          R59 R60 2 [1]
      939 CALL                             R57 2 1
      940 GETUPVAL                         R58 32
      941 GETTABLEKS                       R58 R58 K63 ["usePasteHooks"]
      943 GETUPVAL                         R60 3
      944 CALL                             R60 0 1
      945 JUMPIFNOT                        R60 ; [+3]
      946 GETTABLEKS                       R59 R5 K10 ["observeSelectedGraphInstance"]
      948 JUMP                             ; [+1]
      949 MOVE                             R59 R12
      950 CALL                             R58 1 0
      951 GETUPVAL                         R58 14
      952 GETTABLEKS                       R58 R58 K18 ["useSignalState"]
      954 MOVE                             R59 R57
      955 CALL                             R58 1 1
      956 GETUPVAL                         R59 33
      957 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      959 LOADK                            R60 K65 ["NativeGraphContext_GraphPayloadMap"]
      960 MOVE                             R61 R14
      961 CALL                             R59 2 0
      962 GETUPVAL                         R59 33
      963 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      965 LOADK                            R60 K66 ["NativeGraphContext_GraphRenderInfo"]
      966 MOVE                             R61 R16
      967 CALL                             R59 2 0
      968 GETUPVAL                         R59 33
      969 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      971 LOADK                            R60 K67 ["NativeGraphContext_GraphNodeProps"]
      972 MOVE                             R61 R18
      973 CALL                             R59 2 0
      974 GETUPVAL                         R59 33
      975 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      977 LOADK                            R60 K68 ["NativeGraphContext_TimeRange"]
      978 MOVE                             R61 R56
      979 CALL                             R59 2 0
      980 GETUPVAL                         R59 33
      981 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      983 LOADK                            R60 K69 ["NativeGraphContext_GraphPayloadGraphRect"]
      984 MOVE                             R61 R6
      985 CALL                             R59 2 0
      986 GETUPVAL                         R59 33
      987 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      989 LOADK                            R60 K70 ["NativeGraphContext_SourceAssetId"]
      990 MOVE                             R61 R29
      991 CALL                             R59 2 0
      992 GETUPVAL                         R59 13
      993 CALL                             R59 0 1
      994 JUMPIF                           R59 ; [+6]
      995 GETUPVAL                         R59 33
      996 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
      998 LOADK                            R60 K71 ["NativeGraphContext_CurrentAnimationId"]
      999 MOVE                             R61 R27
     1000 CALL                             R59 2 0
     1001 GETUPVAL                         R59 13
     1002 CALL                             R59 0 1
     1003 JUMPIFNOT                        R59 ; [+6]
     1004 GETUPVAL                         R59 33
     1005 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
     1007 LOADK                            R60 K72 ["NativeGraphContext_SelectedGraphKey"]
     1008 MOVE                             R61 R32
     1009 CALL                             R59 2 0
     1010 GETUPVAL                         R59 33
     1011 GETTABLEKS                       R59 R59 K64 ["useReplicatedState"]
     1013 LOADK                            R60 K73 ["NativeGraphContext_UndoTransaction"]
     1014 MOVE                             R61 R8
     1015 CALL                             R59 2 0
     1016 GETUPVAL                         R59 33
     1017 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1019 LOADK                            R60 K75 ["NativeGraphContext_CreateNode"]
     1020 MOVE                             R61 R33
     1021 CALL                             R59 2 0
     1022 GETUPVAL                         R59 33
     1023 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1025 LOADK                            R60 K76 ["NativeGraphContext_CreateParameterAsync"]
     1026 MOVE                             R61 R35
     1027 CALL                             R59 2 0
     1028 GETUPVAL                         R59 33
     1029 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1031 LOADK                            R60 K77 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1032 MOVE                             R61 R43
     1033 CALL                             R59 2 0
     1034 GETUPVAL                         R59 33
     1035 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1037 LOADK                            R60 K78 ["NativeGraphContext_CreateExistingParameterAsync"]
     1038 MOVE                             R61 R36
     1039 CALL                             R59 2 0
     1040 GETUPVAL                         R59 33
     1041 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1043 LOADK                            R60 K79 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1044 MOVE                             R61 R34
     1045 CALL                             R59 2 0
     1046 GETUPVAL                         R59 33
     1047 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1049 LOADK                            R60 K80 ["NativeGraphContext_SelectNodes"]
     1050 MOVE                             R61 R25
     1051 CALL                             R59 2 0
     1052 GETUPVAL                         R59 33
     1053 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1055 LOADK                            R60 K81 ["NativeGraphContext_SelectNodesFromRect"]
     1056 MOVE                             R61 R26
     1057 CALL                             R59 2 0
     1058 GETUPVAL                         R59 33
     1059 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1061 LOADK                            R60 K82 ["NativeGraphContext_SetNodePositionsAsync"]
     1062 MOVE                             R61 R23
     1063 CALL                             R59 2 0
     1064 GETUPVAL                         R59 33
     1065 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1067 LOADK                            R60 K83 ["NativeGraphContext_SetNodeSizeAsync"]
     1068 MOVE                             R61 R24
     1069 CALL                             R59 2 0
     1070 GETUPVAL                         R59 33
     1071 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1073 LOADK                            R60 K84 ["NativeGraphContext_SetNodeConnectionAsync"]
     1074 MOVE                             R61 R42
     1075 CALL                             R59 2 0
     1076 GETUPVAL                         R59 33
     1077 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1079 LOADK                            R60 K85 ["NativeGraphContext_DeleteNodeInput"]
     1080 MOVE                             R61 R37
     1081 CALL                             R59 2 0
     1082 GETUPVAL                         R59 33
     1083 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1085 LOADK                            R60 K86 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1086 MOVE                             R61 R41
     1087 CALL                             R59 2 0
     1088 GETUPVAL                         R59 33
     1089 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1091 LOADK                            R60 K87 ["NativeGraphContext_RemoveNodeInputConnection"]
     1092 MOVE                             R61 R38
     1093 CALL                             R59 2 0
     1094 GETUPVAL                         R59 33
     1095 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1097 LOADK                            R60 K88 ["NativeGraphContext_RemoveParameterAsync"]
     1098 MOVE                             R61 R50
     1099 CALL                             R59 2 0
     1100 GETUPVAL                         R59 33
     1101 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1103 LOADK                            R60 K89 ["NativeGraphContext_RenameNodeAsync"]
     1104 MOVE                             R61 R48
     1105 CALL                             R59 2 0
     1106 GETUPVAL                         R59 33
     1107 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1109 LOADK                            R60 K90 ["NativeGraphContext_RenameParameterAsync"]
     1110 MOVE                             R61 R51
     1111 CALL                             R59 2 0
     1112 GETUPVAL                         R59 33
     1113 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1115 LOADK                            R60 K91 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1116 MOVE                             R61 R53
     1117 CALL                             R59 2 0
     1118 GETUPVAL                         R59 33
     1119 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1121 LOADK                            R60 K92 ["NativeGraphContext_SetCollapsedAsync"]
     1122 MOVE                             R61 R21
     1123 CALL                             R59 2 0
     1124 GETUPVAL                         R59 33
     1125 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1127 LOADK                            R60 K93 ["NativeGraphContext_setNodePropertyAsync"]
     1128 MOVE                             R61 R46
     1129 CALL                             R59 2 0
     1130 GETUPVAL                         R59 33
     1131 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1133 LOADK                            R60 K94 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1134 MOVE                             R61 R47
     1135 CALL                             R59 2 0
     1136 GETUPVAL                         R59 33
     1137 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1139 LOADK                            R60 K95 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1140 MOVE                             R61 R52
     1141 CALL                             R59 2 0
     1142 GETUPVAL                         R59 33
     1143 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1145 LOADK                            R60 K96 ["NativeGraphContext_ReorderPinsAsync"]
     1146 MOVE                             R61 R49
     1147 CALL                             R59 2 0
     1148 GETUPVAL                         R59 33
     1149 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1151 LOADK                            R60 K97 ["NativeGraphContext_beginUndoTransaction"]
     1152 MOVE                             R61 R44
     1153 CALL                             R59 2 0
     1154 GETUPVAL                         R59 33
     1155 GETTABLEKS                       R59 R59 K74 ["useBoundAction"]
     1157 LOADK                            R60 K98 ["NativeGraphContext_finishUndoTransaction"]
     1158 MOVE                             R61 R45
     1159 CALL                             R59 2 0
     1160 GETUPVAL                         R59 18
     1161 GETTABLEKS                       R59 R59 K99 ["FFlagAnimGraphUI_DynamicZIndex"]
     1163 JUMPIFNOT                        R59 ; [+5]
     1164 GETUPVAL                         R59 34
     1165 GETTABLEKS                       R59 R59 K19 ["useProducer"]
     1167 MOVE                             R60 R22
     1168 CALL                             R59 1 0
     1169 GETUPVAL                         R59 1
     1170 GETTABLEKS                       R59 R59 K100 ["createElement"]
     1172 GETUPVAL                         R60 35
     1173 GETTABLEKS                       R60 R60 K101 ["Provider"]
     1175 DUPTABLE                         R61 K103 [{"value"}]
     1176 SETTABLEKS                       R55 R61 K102 ["value"]
     1178 DUPTABLE                         R62 K105 [{"ContextStack"}]
     1179 GETUPVAL                         R63 1
     1180 GETTABLEKS                       R63 R63 K100 ["createElement"]
     1182 GETUPVAL                         R64 10
     1183 GETTABLEKS                       R64 R64 K104 ["ContextStack"]
     1185 DUPTABLE                         R65 K107 [{"providers"}]
     1186 NEWTABLE                         R66 0 2
     1188 GETUPVAL                         R67 1
     1189 GETTABLEKS                       R67 R67 K100 ["createElement"]
     1191 GETUPVAL                         R68 36
     1192 GETTABLEKS                       R68 R68 K101 ["Provider"]
     1194 DUPTABLE                         R69 K109 [{"timeRange"}]
     1195 SETTABLEKS                       R56 R69 K108 ["timeRange"]
     1197 CALL                             R67 2 1
     1198 GETUPVAL                         R68 1
     1199 GETTABLEKS                       R68 R68 K100 ["createElement"]
     1201 GETUPVAL                         R69 37
     1202 GETTABLEKS                       R69 R69 K101 ["Provider"]
     1204 DUPTABLE                         R70 K111 [{"animationClipsList"}]
     1205 SETTABLEKS                       R58 R70 K110 ["animationClipsList"]
     1207 CALL                             R68 2 -1
     1208 SETLIST                          R66 R67 -1 [1]
     1210 SETTABLEKS                       R66 R65 K106 ["providers"]
     1212 GETTABLEKS                       R66 R0 K112 ["children"]
     1214 CALL                             R63 3 1
     1215 SETTABLEKS                       R63 R62 K104 ["ContextStack"]
     1217 CALL                             R59 3 -1
     1218 RETURN                           R59 -1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_60:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["setMap"]
        4 GETTABLEKS                       R2 R0 K1 ["lookup"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+17]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R2 R0 K2 ["graphInstanceId"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["setMap"]
       18 NEWTABLE                         R2 0 0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 1
       22 CALL                             R1 0 1
       23 JUMPIF                           R1 ; [+3]
       24 GETUPVAL                         R1 2
       25 LOADNIL                          R2
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testOverrideGraphPayloadMap"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setMap"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["testOverrideGraphPayloadMap"]
       10 GETTABLEKS                       R1 R1 K2 ["lookup"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_62:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_63:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_64:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_65:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["observeDebugData"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_67:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["observeActiveDebugTargetIdentifier"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 JUMP                             ; [+6]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["observeDebugData_DEPRECATED"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 MOVE                             R1 R2
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          REF R1
       28 CALL                             R2 1 -1
       29 CLOSEUPVALS                      R1
       30 RETURN                           R2 -1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_69:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["observeDebugData"]
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_70:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R1 R0 K0 ["data"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["data"]
        6 GETTABLEKS                       R1 R1 K1 ["parent"]
        8 JUMPIF                           R1 ; [+6]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["of"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["observeDebugData"]
       18 GETTABLEKS                       R2 R0 K4 ["activeDebugTargetIdentifier"]
       20 GETTABLEKS                       R3 R0 K0 ["data"]
       22 GETTABLEKS                       R3 R3 K1 ["parent"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["switchMap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["observeActiveDebugTargetIdentifier"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["switchMap"]
       15 MOVE                             R3 R1
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_72:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+22]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["observeDebugData_DEPRECATED"]
       12 GETUPVAL                         R3 3
       13 CALL                             R2 1 1
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLEKS                       R3 R2 K1 ["parent"]
       19 JUMPIF                           R3 ; [+2]
       20 LOADN                            R3 1
       21 RETURN                           R3 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K0 ["observeDebugData_DEPRECATED"]
       25 GETTABLEKS                       R4 R2 K1 ["parent"]
       27 CALL                             R3 1 1
       28 MOVE                             R4 R0
       29 CALL                             R3 1 1
       30 MOVE                             R1 R3
       31 JUMPIFNOT                        R1 ; [+3]
       32 GETTABLEKS                       R2 R1 K2 ["children"]
       34 JUMPIF                           R2 ; [+2]
       35 LOADN                            R2 1
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R1 K2 ["children"]
       39 LOADNIL                          R3
       40 LOADNIL                          R4
       41 FORGPREP                         R2
       42 GETTABLEKS                       R7 R6 K3 ["id"]
       44 GETUPVAL                         R8 3
       45 JUMPIFNOTEQ                      R7 R8 ; [+25]
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K4 ["FFlagAnimGraphUI_NoodleColorLerping"]
       50 JUMPIFNOT                        R7 ; [+4]
       51 GETTABLEKS                       R8 R6 K6 ["weight"]
       53 ORK                              R7 R8 K5 [1]
       54 RETURN                           R7 1
       55 GETTABLEKS                       R7 R6 K6 ["weight"]
       57 JUMPIFNOTEQKNIL                  R7 ; [+3]
       59 LOADN                            R7 1
       60 RETURN                           R7 1
       61 GETIMPORT                        R7 K9 [math.map]
       63 GETTABLEKS                       R8 R6 K6 ["weight"]
       65 LOADN                            R9 0
       66 LOADN                            R10 1
       67 LOADK                            R11 K10 [0.5]
       68 LOADN                            R12 1
       69 CALL                             R7 5 -1
       70 RETURN                           R7 -1
       71 FORGLOOP                         R2 2 ; [-30]
       73 LOADN                            R2 1
       74 RETURN                           R2 1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_74:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+22]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["observeDebugData_DEPRECATED"]
       12 GETUPVAL                         R3 3
       13 CALL                             R2 1 1
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLEKS                       R3 R2 K1 ["parent"]
       19 JUMPIF                           R3 ; [+2]
       20 LOADB                            R3 0
       21 RETURN                           R3 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K0 ["observeDebugData_DEPRECATED"]
       25 GETTABLEKS                       R4 R2 K1 ["parent"]
       27 CALL                             R3 1 1
       28 MOVE                             R4 R0
       29 CALL                             R3 1 1
       30 MOVE                             R1 R3
       31 JUMPIFNOT                        R1 ; [+3]
       32 GETTABLEKS                       R2 R1 K2 ["children"]
       34 JUMPIF                           R2 ; [+2]
       35 LOADB                            R2 0
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R1 K2 ["children"]
       39 LOADNIL                          R3
       40 LOADNIL                          R4
       41 FORGPREP                         R2
       42 GETTABLEKS                       R7 R6 K3 ["id"]
       44 GETUPVAL                         R8 3
       45 JUMPIFNOTEQ                      R7 R8 ; [+8]
       47 GETTABLEKS                       R8 R6 K4 ["weight"]
       49 JUMPIFEQKN                       R8 K5 [0] ; [+2]
       51 LOADB                            R7 0 +1
       52 LOADB                            R7 1
       53 RETURN                           R7 1
       54 FORGLOOP                         R2 2 ; [-13]
       56 LOADB                            R2 0
       57 RETURN                           R2 1

PROTO_75:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_76:
        0 DUPTABLE                         R0 K29 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "setZIndex", "deleteNodeInput", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "DEPRECATED_observeIsDisabledByNodeId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodePayloadDispatcher"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["nodeRenderInfoDispatcher"]
        7 GETUPVAL                         R2 2
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R1 R0 K2 ["createNode"]
       12 GETUPVAL                         R2 3
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R1 R0 K3 ["reorderPins"]
       17 GETUPVAL                         R2 4
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R1 R0 K4 ["createParameter"]
       22 GETUPVAL                         R1 5
       23 SETTABLEKS                       R1 R0 K5 ["createExistingParameterAsync"]
       25 GETUPVAL                         R1 6
       26 SETTABLEKS                       R1 R0 K6 ["createConnectedParameterAsync"]
       28 GETUPVAL                         R2 7
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R1 R0 K7 ["selectAllParameterNodesWithName"]
       33 GETUPVAL                         R2 8
       34 NEWCLOSURE                       R1 P0
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R1 R0 K8 ["selectNodes"]
       38 GETUPVAL                         R2 9
       39 NEWCLOSURE                       R1 P0
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R1 R0 K9 ["setCollapsed"]
       43 GETUPVAL                         R2 10
       44 GETTABLEKS                       R2 R2 K30 ["FFlagAnimGraphUI_DynamicZIndex"]
       46 JUMPIFNOT                        R2 ; [+4]
       47 GETUPVAL                         R2 11
       48 NEWCLOSURE                       R1 P0
       49 CAPTURE                          VAL R2
       50 JUMP                             ; [+1]
       51 LOADNIL                          R1
       52 SETTABLEKS                       R1 R0 K10 ["setZIndex"]
       54 GETUPVAL                         R1 12
       55 SETTABLEKS                       R1 R0 K11 ["deleteNodeInput"]
       57 GETUPVAL                         R1 13
       58 SETTABLEKS                       R1 R0 K12 ["removeNodeInputConnectionAsync"]
       60 GETUPVAL                         R1 14
       61 SETTABLEKS                       R1 R0 K13 ["removeNodeOutputConnectionAsync"]
       63 GETUPVAL                         R2 15
       64 NEWCLOSURE                       R1 P0
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R1 R0 K14 ["removeParameter"]
       68 GETUPVAL                         R2 16
       69 NEWCLOSURE                       R1 P0
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R1 R0 K15 ["renameNode"]
       73 GETUPVAL                         R2 17
       74 NEWCLOSURE                       R1 P0
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R1 R0 K16 ["renameParameter"]
       78 GETUPVAL                         R2 18
       79 NEWCLOSURE                       R1 P0
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R1 R0 K17 ["deleteNodeInstance"]
       83 GETUPVAL                         R2 19
       84 NEWCLOSURE                       R1 P0
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R1 R0 K18 ["removeNodes"]
       88 GETUPVAL                         R2 20
       89 NEWCLOSURE                       R1 P0
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R1 R0 K19 ["setNodeConnection"]
       93 GETUPVAL                         R2 21
       94 NEWCLOSURE                       R1 P0
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R1 R0 K20 ["setNodePositions"]
       98 GETUPVAL                         R2 22
       99 NEWCLOSURE                       R1 P0
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R1 R0 K21 ["setNodeProperty"]
      103 GETUPVAL                         R2 23
      104 NEWCLOSURE                       R1 P0
      105 CAPTURE                          VAL R2
      106 SETTABLEKS                       R1 R0 K22 ["setInputPinNodeProperty"]
      108 GETUPVAL                         R2 24
      109 NEWCLOSURE                       R1 P0
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R1 R0 K23 ["setNodeSize"]
      113 GETUPVAL                         R2 25
      114 NEWCLOSURE                       R1 P0
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R1 R0 K24 ["setParameterNodeType"]
      118 GETUPVAL                         R1 26
      119 GETTABLEKS                       R1 R1 K31 ["observe"]
      121 SETTABLEKS                       R1 R0 K25 ["observeNodePropsById"]
      123 GETUPVAL                         R1 27
      124 SETTABLEKS                       R1 R0 K26 ["observeNodeStateById"]
      126 GETUPVAL                         R1 28
      127 SETTABLEKS                       R1 R0 K27 ["observeFadeByNodeId"]
      129 GETUPVAL                         R1 29
      130 SETTABLEKS                       R1 R0 K28 ["DEPRECATED_observeIsDisabledByNodeId"]
      132 RETURN                           R0 1

PROTO_77:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 GETUPVAL                         R6 1
        9 CALL                             R6 0 1
       10 JUMPIF                           R6 ; [+10]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       14 DUPCLOSURE                       R7 K1 [PROTO_59]
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R8 0 0
       18 CALL                             R6 2 2
       19 MOVE                             R4 R6
       20 MOVE                             R5 R7
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       24 LOADK                            R7 K3 ["NativeGraphContext_GraphPayloadMap"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          REF R5
       32 NEWTABLE                         R10 0 2
       34 GETTABLEKS                       R11 R1 K5 ["setMap"]
       36 GETUPVAL                         R13 1
       37 CALL                             R13 0 1
       38 JUMPIFNOT                        R13 ; [+2]
       39 LOADNIL                          R12
       40 JUMP                             ; [+1]
       41 MOVE                             R12 R5
       42 SETLIST                          R10 R11 2 [1]
       44 CALL                             R8 2 -1
       45 CALL                             R6 -1 0
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       49 LOADK                            R7 K6 ["NativeGraphContext_GraphRenderInfo"]
       50 GETTABLEKS                       R8 R2 K5 ["setMap"]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       56 LOADK                            R7 K7 ["NativeGraphContext_GraphNodeProps"]
       57 GETTABLEKS                       R8 R3 K5 ["setMap"]
       59 CALL                             R6 2 0
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R6 R6 K8 ["useEffect"]
       63 NEWCLOSURE                       R7 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 NEWTABLE                         R8 0 1
       68 GETTABLEKS                       R9 R0 K9 ["testOverrideGraphPayloadMap"]
       70 SETLIST                          R8 R9 1 [1]
       72 CALL                             R6 2 0
       73 GETUPVAL                         R6 4
       74 GETTABLEKS                       R6 R6 K10 ["useReplicatedStateListener"]
       76 LOADK                            R7 K11 ["NativeGraphContext_TimeRange"]
       77 GETIMPORT                        R8 K14 [NumberRange.new]
       79 LOADN                            R9 0
       80 LOADN                            R10 10
       81 CALL                             R8 2 -1
       82 CALL                             R6 -1 1
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R7 R7 K10 ["useReplicatedStateListener"]
       86 LOADK                            R8 K15 ["NativeGraphContext_GraphPayloadGraphRect"]
       87 GETIMPORT                        R9 K17 [Rect.new]
       89 LOADN                            R10 0
       90 LOADN                            R11 0
       91 LOADN                            R12 0
       92 LOADN                            R13 0
       93 CALL                             R9 4 -1
       94 CALL                             R7 -1 1
       95 GETUPVAL                         R8 4
       96 GETTABLEKS                       R8 R8 K10 ["useReplicatedStateListener"]
       98 LOADK                            R9 K18 ["NativeGraphContext_SourceAssetId"]
       99 LOADNIL                          R10
      100 CALL                             R8 2 1
      101 GETUPVAL                         R10 5
      102 CALL                             R10 0 1
      103 JUMPIFNOT                        R10 ; [+2]
      104 LOADK                            R9 K19 [""]
      105 JUMP                             ; [+6]
      106 GETUPVAL                         R9 4
      107 GETTABLEKS                       R9 R9 K10 ["useReplicatedStateListener"]
      109 LOADK                            R10 K20 ["NativeGraphContext_CurrentAnimationId"]
      110 LOADK                            R11 K19 [""]
      111 CALL                             R9 2 1
      112 GETUPVAL                         R11 5
      113 CALL                             R11 0 1
      114 JUMPIFNOT                        R11 ; [+7]
      115 GETUPVAL                         R10 4
      116 GETTABLEKS                       R10 R10 K10 ["useReplicatedStateListener"]
      118 LOADK                            R11 K21 ["NativeGraphContext_SelectedGraphKey"]
      119 LOADNIL                          R12
      120 CALL                             R10 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R10
      123 GETUPVAL                         R11 6
      124 GETTABLEKS                       R11 R11 K22 ["createComputed"]
      126 DUPCLOSURE                       R12 K23 [PROTO_62]
      127 CALL                             R11 1 1
      128 GETUPVAL                         R12 7
      129 MOVE                             R13 R2
      130 MOVE                             R14 R1
      131 CALL                             R12 2 1
      132 GETUPVAL                         R14 1
      133 CALL                             R14 0 1
      134 JUMPIFNOT                        R14 ; [+2]
      135 LOADNIL                          R13
      136 JUMP                             ; [+5]
      137 GETUPVAL                         R13 8
      138 GETTABLEKS                       R13 R13 K24 ["useSignalState"]
      140 MOVE                             R14 R4
      141 CALL                             R13 1 1
      142 GETUPVAL                         R14 4
      143 GETTABLEKS                       R14 R14 K25 ["useBoundAction"]
      145 LOADK                            R15 K26 ["NativeGraphContext_ReorderPinsAsync"]
      146 CALL                             R14 1 1
      147 GETUPVAL                         R15 4
      148 GETTABLEKS                       R15 R15 K25 ["useBoundAction"]
      150 LOADK                            R16 K27 ["NativeGraphContext_CreateNode"]
      151 CALL                             R15 1 1
      152 GETUPVAL                         R16 4
      153 GETTABLEKS                       R16 R16 K25 ["useBoundAction"]
      155 LOADK                            R17 K28 ["NativeGraphContext_CreateParameterAsync"]
      156 CALL                             R16 1 1
      157 GETUPVAL                         R17 4
      158 GETTABLEKS                       R17 R17 K25 ["useBoundAction"]
      160 LOADK                            R18 K29 ["NativeGraphContext_CreateConnectedParameterAsync"]
      161 CALL                             R17 1 1
      162 GETUPVAL                         R18 4
      163 GETTABLEKS                       R18 R18 K25 ["useBoundAction"]
      165 LOADK                            R19 K30 ["NativeGraphContext_CreateExistingParameterAsync"]
      166 CALL                             R18 1 1
      167 GETUPVAL                         R19 4
      168 GETTABLEKS                       R19 R19 K25 ["useBoundAction"]
      170 LOADK                            R20 K31 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      171 CALL                             R19 1 1
      172 GETUPVAL                         R20 4
      173 GETTABLEKS                       R20 R20 K25 ["useBoundAction"]
      175 LOADK                            R21 K32 ["NativeGraphContext_SelectNodes"]
      176 CALL                             R20 1 1
      177 GETUPVAL                         R21 4
      178 GETTABLEKS                       R21 R21 K25 ["useBoundAction"]
      180 LOADK                            R22 K33 ["NativeGraphContext_SetNodePositionsAsync"]
      181 CALL                             R21 1 1
      182 GETUPVAL                         R22 4
      183 GETTABLEKS                       R22 R22 K25 ["useBoundAction"]
      185 LOADK                            R23 K34 ["NativeGraphContext_SetNodeSizeAsync"]
      186 CALL                             R22 1 1
      187 GETUPVAL                         R23 4
      188 GETTABLEKS                       R23 R23 K25 ["useBoundAction"]
      190 LOADK                            R24 K35 ["NativeGraphContext_SetNodeConnectionAsync"]
      191 CALL                             R23 1 1
      192 GETUPVAL                         R24 4
      193 GETTABLEKS                       R24 R24 K25 ["useBoundAction"]
      195 LOADK                            R25 K36 ["NativeGraphContext_DeleteNodeInput"]
      196 CALL                             R24 1 1
      197 GETUPVAL                         R25 4
      198 GETTABLEKS                       R25 R25 K25 ["useBoundAction"]
      200 LOADK                            R26 K37 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      201 CALL                             R25 1 1
      202 GETUPVAL                         R26 4
      203 GETTABLEKS                       R26 R26 K25 ["useBoundAction"]
      205 LOADK                            R27 K38 ["NativeGraphContext_RemoveNodeInputConnection"]
      206 CALL                             R26 1 1
      207 GETUPVAL                         R27 4
      208 GETTABLEKS                       R27 R27 K25 ["useBoundAction"]
      210 LOADK                            R28 K39 ["NativeGraphContext_RemoveParameterAsync"]
      211 CALL                             R27 1 1
      212 GETUPVAL                         R28 4
      213 GETTABLEKS                       R28 R28 K25 ["useBoundAction"]
      215 LOADK                            R29 K40 ["NativeGraphContext_RenameNodeAsync"]
      216 CALL                             R28 1 1
      217 GETUPVAL                         R29 4
      218 GETTABLEKS                       R29 R29 K25 ["useBoundAction"]
      220 LOADK                            R30 K41 ["NativeGraphContext_RenameParameterAsync"]
      221 CALL                             R29 1 1
      222 GETUPVAL                         R30 4
      223 GETTABLEKS                       R30 R30 K25 ["useBoundAction"]
      225 LOADK                            R31 K42 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      226 CALL                             R30 1 1
      227 GETUPVAL                         R31 4
      228 GETTABLEKS                       R31 R31 K25 ["useBoundAction"]
      230 LOADK                            R32 K43 ["NativeGraphContext_SetCollapsedAsync"]
      231 CALL                             R31 1 1
      232 GETUPVAL                         R33 9
      233 GETTABLEKS                       R33 R33 K44 ["FFlagAnimGraphUI_DynamicZIndex"]
      235 JUMPIFNOT                        R33 ; [+5]
      236 GETUPVAL                         R32 10
      237 GETTABLEKS                       R32 R32 K45 ["useConsumer"]
      239 CALL                             R32 0 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R32
      242 GETUPVAL                         R33 4
      243 GETTABLEKS                       R33 R33 K25 ["useBoundAction"]
      245 LOADK                            R34 K46 ["NativeGraphContext_setNodePropertyAsync"]
      246 CALL                             R33 1 1
      247 GETUPVAL                         R34 4
      248 GETTABLEKS                       R34 R34 K25 ["useBoundAction"]
      250 LOADK                            R35 K47 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      251 CALL                             R34 1 1
      252 GETUPVAL                         R35 4
      253 GETTABLEKS                       R35 R35 K25 ["useBoundAction"]
      255 LOADK                            R36 K48 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      256 CALL                             R35 1 1
      257 GETUPVAL                         R36 4
      258 GETTABLEKS                       R36 R36 K25 ["useBoundAction"]
      260 LOADK                            R37 K49 ["NativeGraphContext_SelectNodesFromRect"]
      261 CALL                             R36 1 1
      262 GETUPVAL                         R37 4
      263 GETTABLEKS                       R37 R37 K25 ["useBoundAction"]
      265 LOADK                            R38 K50 ["NativeGraphContext_beginUndoTransaction"]
      266 CALL                             R37 1 1
      267 GETUPVAL                         R38 4
      268 GETTABLEKS                       R38 R38 K25 ["useBoundAction"]
      270 LOADK                            R39 K51 ["NativeGraphContext_finishUndoTransaction"]
      271 CALL                             R38 1 1
      272 NEWTABLE                         R39 64 0
      274 GETUPVAL                         R41 1
      275 CALL                             R41 0 1
      276 JUMPIFNOT                        R41 ; [+2]
      277 LOADNIL                          R40
      278 JUMP                             ; [+1]
      279 MOVE                             R40 R13
      280 SETTABLEKS                       R40 R39 K52 ["selectedGraphInstanceId_DEPRECATED"]
      282 SETTABLEKS                       R14 R39 K53 ["reorderPinsAsync"]
      284 SETTABLEKS                       R15 R39 K54 ["createNodeAsync"]
      286 SETTABLEKS                       R16 R39 K55 ["createParameterAsync"]
      288 SETTABLEKS                       R17 R39 K56 ["createConnectedParameterAsync"]
      290 SETTABLEKS                       R18 R39 K57 ["createExistingParameterAsync"]
      292 SETTABLEKS                       R7 R39 K58 ["graphRect"]
      294 SETTABLEKS                       R19 R39 K59 ["selectAllParameterNodesWithNameAsync"]
      296 SETTABLEKS                       R20 R39 K60 ["selectNodesAsync"]
      298 SETTABLEKS                       R36 R39 K61 ["selectNodesFromRectAsync"]
      300 SETTABLEKS                       R21 R39 K62 ["setNodePositionsAsync"]
      302 SETTABLEKS                       R22 R39 K63 ["setNodeSizeAsync"]
      304 SETTABLEKS                       R23 R39 K64 ["setNodeConnectionAsync"]
      306 SETTABLEKS                       R24 R39 K65 ["deleteNodeInput"]
      308 SETTABLEKS                       R25 R39 K66 ["removeNodeOutputConnectionAsync"]
      310 SETTABLEKS                       R26 R39 K67 ["removeNodeInputConnectionAsync"]
      312 SETTABLEKS                       R27 R39 K68 ["removeParameterAsync"]
      314 SETTABLEKS                       R28 R39 K69 ["renameNodeAsync"]
      316 SETTABLEKS                       R29 R39 K70 ["renameParameterAsync"]
      318 SETTABLEKS                       R30 R39 K71 ["deleteNodeInstanceAsync"]
      320 SETTABLEKS                       R31 R39 K72 ["setCollapsedAsync"]
      322 SETTABLEKS                       R33 R39 K73 ["setNodePropertyAsync"]
      324 SETTABLEKS                       R34 R39 K74 ["setInputPinNodePropertyAsync"]
      326 SETTABLEKS                       R35 R39 K75 ["setParameterNodeTypeAsync"]
      328 SETTABLEKS                       R9 R39 K76 ["currentAnimationId"]
      330 SETTABLEKS                       R8 R39 K77 ["sourceAssetId"]
      332 SETTABLEKS                       R10 R39 K78 ["selectedGraphKey"]
      334 GETUPVAL                         R41 1
      335 CALL                             R41 0 1
      336 JUMPIFNOT                        R41 ; [+2]
      337 LOADNIL                          R40
      338 JUMP                             ; [+1]
      339 MOVE                             R40 R11
      340 SETTABLEKS                       R40 R39 K79 ["observeSelectedGraphInstance_DEPRECATED"]
      342 GETTABLEKS                       R40 R1 K80 ["observe"]
      344 SETTABLEKS                       R40 R39 K81 ["observeGraphNodeById"]
      346 GETTABLEKS                       R40 R2 K80 ["observe"]
      348 SETTABLEKS                       R40 R39 K82 ["observeNodeRenderInfoById"]
      350 SETTABLEKS                       R37 R39 K83 ["beginUndoTransaction"]
      352 SETTABLEKS                       R38 R39 K84 ["finishUndoTransaction"]
      354 GETTABLEKS                       R40 R1 K85 ["observeMap"]
      356 SETTABLEKS                       R40 R39 K86 ["observeGraphNodeMap"]
      358 GETTABLEKS                       R40 R2 K85 ["observeMap"]
      360 SETTABLEKS                       R40 R39 K87 ["observeRenderInfoMap"]
      362 GETTABLEKS                       R40 R12 K88 ["hasGraphOutput"]
      364 SETTABLEKS                       R40 R39 K88 ["hasGraphOutput"]
      366 GETTABLEKS                       R40 R3 K80 ["observe"]
      368 SETTABLEKS                       R40 R39 K89 ["observeNodePropsById"]
      370 DUPCLOSURE                       R40 K90 [PROTO_64]
      371 GETUPVAL                         R41 2
      372 GETTABLEKS                       R41 R41 K91 ["useContext"]
      374 GETUPVAL                         R42 11
      375 GETTABLEKS                       R42 R42 K92 ["Context"]
      377 CALL                             R41 1 1
      378 GETUPVAL                         R42 2
      379 GETTABLEKS                       R42 R42 K4 ["useCallback"]
      381 NEWCLOSURE                       R43 P5
      382 CAPTURE                          UPVAL U1
      383 CAPTURE                          UPVAL U12
      384 CAPTURE                          VAL R41
      385 CAPTURE                          UPVAL U13
      386 NEWTABLE                         R44 0 2
      388 GETUPVAL                         R46 1
      389 CALL                             R46 0 1
      390 JUMPIFNOT                        R46 ; [+3]
      391 GETTABLEKS                       R45 R41 K93 ["observeDebugData"]
      393 JUMP                             ; [+2]
      394 GETTABLEKS                       R45 R41 K94 ["observeDebugData_DEPRECATED"]
      396 GETUPVAL                         R47 1
      397 CALL                             R47 0 1
      398 JUMPIFNOT                        R47 ; [+3]
      399 GETTABLEKS                       R46 R41 K95 ["observeActiveDebugTargetIdentifier"]
      401 JUMP                             ; [+1]
      402 LOADNIL                          R46
      403 SETLIST                          R44 R45 2 [1]
      405 CALL                             R42 2 1
      406 GETUPVAL                         R43 2
      407 GETTABLEKS                       R43 R43 K4 ["useCallback"]
      409 NEWCLOSURE                       R44 P6
      410 CAPTURE                          UPVAL U12
      411 CAPTURE                          VAL R41
      412 CAPTURE                          UPVAL U13
      413 NEWTABLE                         R45 0 2
      415 GETTABLEKS                       R46 R41 K93 ["observeDebugData"]
      417 GETTABLEKS                       R47 R41 K95 ["observeActiveDebugTargetIdentifier"]
      419 SETLIST                          R45 R46 2 [1]
      421 CALL                             R43 2 1
      422 GETUPVAL                         R44 2
      423 GETTABLEKS                       R44 R44 K4 ["useCallback"]
      425 NEWCLOSURE                       R45 P7
      426 CAPTURE                          UPVAL U1
      427 CAPTURE                          VAL R43
      428 CAPTURE                          UPVAL U6
      429 CAPTURE                          VAL R41
      430 CAPTURE                          UPVAL U9
      431 NEWTABLE                         R46 0 2
      433 GETUPVAL                         R48 1
      434 CALL                             R48 0 1
      435 JUMPIFNOT                        R48 ; [+2]
      436 LOADNIL                          R47
      437 JUMP                             ; [+2]
      438 GETTABLEKS                       R47 R41 K94 ["observeDebugData_DEPRECATED"]
      440 GETUPVAL                         R49 1
      441 CALL                             R49 0 1
      442 JUMPIFNOT                        R49 ; [+2]
      443 MOVE                             R48 R43
      444 JUMP                             ; [+1]
      445 LOADNIL                          R48
      446 SETLIST                          R46 R47 2 [1]
      448 CALL                             R44 2 1
      449 GETUPVAL                         R45 2
      450 GETTABLEKS                       R45 R45 K4 ["useCallback"]
      452 NEWCLOSURE                       R46 P8
      453 CAPTURE                          UPVAL U1
      454 CAPTURE                          VAL R43
      455 CAPTURE                          UPVAL U6
      456 CAPTURE                          VAL R41
      457 NEWTABLE                         R47 0 2
      459 GETUPVAL                         R49 1
      460 CALL                             R49 0 1
      461 JUMPIFNOT                        R49 ; [+2]
      462 LOADNIL                          R48
      463 JUMP                             ; [+2]
      464 GETTABLEKS                       R48 R41 K94 ["observeDebugData_DEPRECATED"]
      466 GETUPVAL                         R50 1
      467 CALL                             R50 0 1
      468 JUMPIFNOT                        R50 ; [+2]
      469 MOVE                             R49 R43
      470 JUMP                             ; [+1]
      471 LOADNIL                          R49
      472 SETLIST                          R47 R48 2 [1]
      474 CALL                             R45 2 1
      475 GETUPVAL                         R46 14
      476 GETTABLEKS                       R46 R46 K45 ["useConsumer"]
      478 CALL                             R46 0 1
      479 GETUPVAL                         R47 15
      480 GETTABLEKS                       R47 R47 K45 ["useConsumer"]
      482 CALL                             R47 0 1
      483 GETUPVAL                         R48 2
      484 GETTABLEKS                       R48 R48 K0 ["useMemo"]
      486 NEWCLOSURE                       R49 P9
      487 CAPTURE                          VAL R1
      488 CAPTURE                          VAL R2
      489 CAPTURE                          VAL R46
      490 CAPTURE                          VAL R14
      491 CAPTURE                          VAL R16
      492 CAPTURE                          VAL R18
      493 CAPTURE                          VAL R17
      494 CAPTURE                          VAL R19
      495 CAPTURE                          VAL R20
      496 CAPTURE                          VAL R31
      497 CAPTURE                          UPVAL U9
      498 CAPTURE                          VAL R32
      499 CAPTURE                          VAL R24
      500 CAPTURE                          VAL R26
      501 CAPTURE                          VAL R25
      502 CAPTURE                          VAL R27
      503 CAPTURE                          VAL R28
      504 CAPTURE                          VAL R29
      505 CAPTURE                          VAL R30
      506 CAPTURE                          VAL R47
      507 CAPTURE                          VAL R23
      508 CAPTURE                          VAL R21
      509 CAPTURE                          VAL R33
      510 CAPTURE                          VAL R34
      511 CAPTURE                          VAL R22
      512 CAPTURE                          VAL R35
      513 CAPTURE                          VAL R3
      514 CAPTURE                          VAL R42
      515 CAPTURE                          VAL R44
      516 CAPTURE                          VAL R45
      517 NEWTABLE                         R50 0 29
      519 MOVE                             R51 R1
      520 MOVE                             R52 R2
      521 MOVE                             R53 R46
      522 MOVE                             R54 R14
      523 MOVE                             R55 R16
      524 MOVE                             R56 R18
      525 MOVE                             R57 R17
      526 MOVE                             R58 R19
      527 MOVE                             R59 R20
      528 MOVE                             R60 R31
      529 MOVE                             R61 R32
      530 MOVE                             R62 R24
      531 MOVE                             R63 R26
      532 MOVE                             R64 R25
      533 MOVE                             R65 R27
      534 MOVE                             R66 R28
      535 SETLIST                          R50 R51 16 [1]
      537 MOVE                             R51 R29
      538 MOVE                             R52 R30
      539 MOVE                             R53 R47
      540 MOVE                             R54 R23
      541 MOVE                             R55 R21
      542 MOVE                             R56 R33
      543 MOVE                             R57 R34
      544 MOVE                             R58 R22
      545 MOVE                             R59 R35
      546 GETTABLEKS                       R60 R3 K80 ["observe"]
      548 MOVE                             R61 R42
      549 MOVE                             R62 R44
      550 MOVE                             R63 R45
      551 SETLIST                          R50 R51 13 [17]
      553 CALL                             R48 2 1
      554 GETUPVAL                         R49 2
      555 GETTABLEKS                       R49 R49 K96 ["createElement"]
      557 GETUPVAL                         R50 16
      558 GETTABLEKS                       R50 R50 K97 ["Provider"]
      560 DUPTABLE                         R51 K99 [{"value"}]
      561 SETTABLEKS                       R39 R51 K98 ["value"]
      563 DUPTABLE                         R52 K101 [{"ContextStack"}]
      564 GETUPVAL                         R53 2
      565 GETTABLEKS                       R53 R53 K96 ["createElement"]
      567 GETUPVAL                         R54 17
      568 GETTABLEKS                       R54 R54 K100 ["ContextStack"]
      570 DUPTABLE                         R55 K103 [{"providers"}]
      571 NEWTABLE                         R56 0 3
      573 GETUPVAL                         R57 2
      574 GETTABLEKS                       R57 R57 K96 ["createElement"]
      576 GETUPVAL                         R58 9
      577 GETTABLEKS                       R58 R58 K104 ["GraphContext"]
      579 GETTABLEKS                       R58 R58 K97 ["Provider"]
      581 DUPTABLE                         R59 K99 [{"value"}]
      582 SETTABLEKS                       R48 R59 K98 ["value"]
      584 CALL                             R57 2 1
      585 GETUPVAL                         R59 18
      586 CALL                             R59 0 1
      587 JUMPIFNOT                        R59 ; [+8]
      588 GETUPVAL                         R58 2
      589 GETTABLEKS                       R58 R58 K96 ["createElement"]
      591 GETUPVAL                         R59 19
      592 GETTABLEKS                       R59 R59 K105 ["UIDataModelProvider"]
      594 CALL                             R58 1 1
      595 JUMP                             ; [+7]
      596 GETUPVAL                         R58 2
      597 GETTABLEKS                       R58 R58 K96 ["createElement"]
      599 GETUPVAL                         R59 2
      600 GETTABLEKS                       R59 R59 K106 ["Fragment"]
      602 CALL                             R58 1 1
      603 GETUPVAL                         R59 2
      604 GETTABLEKS                       R59 R59 K96 ["createElement"]
      606 GETUPVAL                         R60 20
      607 GETTABLEKS                       R60 R60 K97 ["Provider"]
      609 DUPTABLE                         R61 K108 [{"timeRange"}]
      610 SETTABLEKS                       R6 R61 K107 ["timeRange"]
      612 CALL                             R59 2 -1
      613 SETLIST                          R56 R57 -1 [1]
      615 SETTABLEKS                       R56 R55 K102 ["providers"]
      617 GETTABLEKS                       R56 R0 K109 ["children"]
      619 CALL                             R53 3 1
      620 SETTABLEKS                       R53 R52 K100 ["ContextStack"]
      622 CALL                             R49 3 -1
      623 CLOSEUPVALS                      R5
      624 RETURN                           R49 -1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_79:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CollectionService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K1 [game]
        8 LOADK                            R3 K4 ["ReplicatedStorage"]
        9 NAMECALL                         R1 R1 K3 ["GetService"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K1 [game]
       14 LOADK                            R4 K5 ["ServerStorage"]
       15 NAMECALL                         R2 R2 K3 ["GetService"]
       17 CALL                             R2 2 1
       18 LOADK                            R5 K6 ["RBX_ANIMSAVES"]
       19 NAMECALL                         R3 R2 K7 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+2]
       23 LOADNIL                          R4
       24 RETURN                           R4 1
       25 GETIMPORT                        R4 K10 [Instance.new]
       27 LOADK                            R5 K11 ["Folder"]
       28 CALL                             R4 1 1
       29 LOADK                            R5 K12 ["AnimationGraphEditor"]
       30 SETTABLEKS                       R5 R4 K13 ["Name"]
       32 SETTABLEKS                       R1 R4 K14 ["Parent"]
       34 NEWTABLE                         R5 0 0
       36 LOADK                            R8 K15 ["AnimationEditor_AnimateScript"]
       37 NAMECALL                         R6 R0 K16 ["GetTagged"]
       39 CALL                             R6 2 3
       40 FORGPREP                         R6
       41 LOADK                            R13 K17 ["GraphName"]
       42 NAMECALL                         R11 R10 K7 ["FindFirstChild"]
       44 CALL                             R11 2 1
       45 LOADK                            R14 K18 ["CharacterName"]
       46 NAMECALL                         R12 R10 K7 ["FindFirstChild"]
       48 CALL                             R12 2 1
       49 JUMPIFNOT                        R11 ; [+34]
       50 JUMPIFNOT                        R12 ; [+33]
       51 GETTABLEKS                       R13 R11 K19 ["Value"]
       53 GETTABLEKS                       R14 R12 K19 ["Value"]
       55 JUMPIFEQKS                       R13 K20 [""] ; [+28]
       57 JUMPIFEQKS                       R14 K20 [""] ; [+26]
       59 MOVE                             R16 R14
       60 LOADK                            R17 K21 ["_"]
       61 MOVE                             R18 R13
       62 CONCAT                           R15 R16 R18
       63 GETTABLE                         R16 R5 R15
       64 JUMPIF                           R16 ; [+19]
       65 MOVE                             R18 R14
       66 NAMECALL                         R16 R3 K7 ["FindFirstChild"]
       68 CALL                             R16 2 1
       69 JUMPIFNOT                        R16 ; [+14]
       70 MOVE                             R19 R13
       71 NAMECALL                         R17 R16 K7 ["FindFirstChild"]
       73 CALL                             R17 2 1
       74 JUMPIFNOT                        R17 ; [+9]
       75 NAMECALL                         R18 R17 K22 ["Clone"]
       77 CALL                             R18 1 1
       78 SETTABLEKS                       R15 R18 K13 ["Name"]
       80 SETTABLEKS                       R4 R18 K14 ["Parent"]
       82 LOADB                            R19 1
       83 SETTABLE                         R19 R5 R15
       84 FORGLOOP                         R6 2 ; [-44]
       86 NEWCLOSURE                       R6 P0
       87 CAPTURE                          VAL R4
       88 RETURN                           R6 1

PROTO_80:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["IsServer"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 1
       14 RETURN                           R0 1

PROTO_81:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_80]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWTABLE                         R3 0 0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["createElement"]
       13 GETUPVAL                         R2 4
       14 MOVE                             R3 R0
       15 GETTABLEKS                       R4 R0 K3 ["children"]
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

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
       15 LOADK                            R4 K8 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["RunService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["AnimationNodeWrapper"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       36 GETTABLEKS                       R6 R6 K15 ["AnimationPreviewClipsContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["Constants"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R0 K17 ["Flags"]
       50 GETTABLEKS                       R8 R8 K18 ["FFlagAnimGraphUI_RemoveAnyway"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       57 GETTABLEKS                       R9 R9 K19 ["GraphDebugDataContext"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K11 [require]
       62 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       64 GETTABLEKS                       R10 R10 K19 ["GraphDebugDataContext"]
       66 GETTABLEKS                       R10 R10 K20 ["GraphDebugDataUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Contexts"]
       73 GETTABLEKS                       R11 R11 K21 ["InstanceRegistryContext"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K11 [require]
       78 GETTABLEKS                       R12 R0 K12 ["Util"]
       80 GETTABLEKS                       R12 R12 K22 ["Instances"]
       82 GETTABLEKS                       R12 R12 K23 ["InstanceSelectionRegistry"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R13 R0 K14 ["Contexts"]
       89 GETTABLEKS                       R13 R13 K24 ["NativeGraphContext"]
       91 GETTABLEKS                       R13 R13 K25 ["NativeGraphUtils"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K11 [require]
       96 GETTABLEKS                       R14 R0 K12 ["Util"]
       98 GETTABLEKS                       R14 R14 K26 ["Networking"]
      100 GETTABLEKS                       R14 R14 K27 ["NetworkUtils"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K11 [require]
      105 GETTABLEKS                       R15 R0 K28 ["Parent"]
      107 GETTABLEKS                       R15 R15 K29 ["NodeGraphing"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K11 [require]
      112 GETTABLEKS                       R16 R0 K30 ["NodeViewTypes"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K11 [require]
      117 GETTABLEKS                       R17 R0 K14 ["Contexts"]
      119 GETTABLEKS                       R17 R17 K31 ["PasteHookContext"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K11 [require]
      124 GETTABLEKS                       R18 R0 K28 ["Parent"]
      126 GETTABLEKS                       R18 R18 K32 ["React"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K11 [require]
      131 GETTABLEKS                       R19 R0 K28 ["Parent"]
      133 GETTABLEKS                       R19 R19 K33 ["ReactUtils"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K11 [require]
      138 GETTABLEKS                       R20 R0 K14 ["Contexts"]
      140 GETTABLEKS                       R20 R20 K34 ["SelectedGraphContext"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K11 [require]
      145 GETTABLEKS                       R21 R0 K14 ["Contexts"]
      147 GETTABLEKS                       R21 R21 K35 ["SelectionServiceContext"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K11 [require]
      152 GETTABLEKS                       R22 R0 K12 ["Util"]
      154 GETTABLEKS                       R22 R22 K36 ["Signals"]
      156 GETTABLEKS                       R22 R22 K37 ["Experimental"]
      158 GETTABLEKS                       R22 R22 K38 ["SignalExperimentalUtils"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K11 [require]
      163 GETTABLEKS                       R23 R0 K28 ["Parent"]
      165 GETTABLEKS                       R23 R23 K36 ["Signals"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K11 [require]
      170 GETTABLEKS                       R24 R0 K12 ["Util"]
      172 GETTABLEKS                       R24 R24 K36 ["Signals"]
      174 GETTABLEKS                       R24 R24 K37 ["Experimental"]
      176 GETTABLEKS                       R24 R24 K38 ["SignalExperimentalUtils"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K11 [require]
      181 GETTABLEKS                       R25 R0 K12 ["Util"]
      183 GETTABLEKS                       R25 R25 K36 ["Signals"]
      185 GETTABLEKS                       R25 R25 K39 ["SignalsInstanceUtils"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K11 [require]
      190 GETTABLEKS                       R26 R0 K28 ["Parent"]
      192 GETTABLEKS                       R26 R26 K40 ["SignalsReact"]
      194 CALL                             R25 1 1
      195 GETIMPORT                        R26 K11 [require]
      197 GETTABLEKS                       R27 R0 K14 ["Contexts"]
      199 GETTABLEKS                       R27 R27 K41 ["SpotlightedNodeContext"]
      201 CALL                             R26 1 1
      202 GETIMPORT                        R27 K11 [require]
      204 GETTABLEKS                       R28 R0 K14 ["Contexts"]
      206 GETTABLEKS                       R28 R28 K42 ["TimeRangeContext"]
      208 CALL                             R27 1 1
      209 GETIMPORT                        R28 K11 [require]
      211 GETTABLEKS                       R29 R0 K17 ["Flags"]
      213 GETTABLEKS                       R29 R29 K43 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      215 CALL                             R28 1 1
      216 GETIMPORT                        R29 K11 [require]
      218 GETTABLEKS                       R30 R0 K17 ["Flags"]
      220 GETTABLEKS                       R30 R30 K44 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      222 CALL                             R29 1 1
      223 GETIMPORT                        R30 K11 [require]
      225 GETTABLEKS                       R31 R0 K17 ["Flags"]
      227 GETTABLEKS                       R31 R31 K45 ["getFFlagAnimGraphUI_RunTimeDebug"]
      229 CALL                             R30 1 1
      230 GETIMPORT                        R31 K11 [require]
      232 GETTABLEKS                       R32 R0 K17 ["Flags"]
      234 GETTABLEKS                       R32 R32 K46 ["getFFlagAnimGraphUI_SpotlightNodes"]
      236 CALL                             R31 1 1
      237 GETIMPORT                        R32 K11 [require]
      239 GETTABLEKS                       R33 R0 K17 ["Flags"]
      241 GETTABLEKS                       R33 R33 K47 ["getFFlagAnimGraphUseRemove"]
      243 CALL                             R32 1 1
      244 GETIMPORT                        R33 K11 [require]
      246 GETTABLEKS                       R34 R0 K17 ["Flags"]
      248 GETTABLEKS                       R34 R34 K48 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      250 CALL                             R33 1 1
      251 GETIMPORT                        R34 K11 [require]
      253 GETTABLEKS                       R35 R0 K12 ["Util"]
      255 GETTABLEKS                       R35 R35 K49 ["parseAnimationNodeType"]
      257 CALL                             R34 1 1
      258 GETIMPORT                        R35 K11 [require]
      260 GETTABLEKS                       R36 R0 K12 ["Util"]
      262 GETTABLEKS                       R36 R36 K50 ["sanitizeParameterNames"]
      264 CALL                             R35 1 1
      265 GETIMPORT                        R36 K11 [require]
      267 GETIMPORT                        R37 K1 [script]
      269 GETTABLEKS                       R37 R37 K51 ["useGraphAnalytics"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K11 [require]
      274 GETTABLEKS                       R38 R0 K52 ["Hooks"]
      276 GETTABLEKS                       R38 R38 K53 ["useNodeDefinitionDestroyHelper"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K11 [require]
      281 GETTABLEKS                       R39 R0 K52 ["Hooks"]
      283 GETTABLEKS                       R39 R39 K54 ["useObserveSelection"]
      285 CALL                             R38 1 1
      286 GETIMPORT                        R39 K11 [require]
      288 GETTABLEKS                       R40 R0 K52 ["Hooks"]
      290 GETTABLEKS                       R40 R40 K55 ["useParameterDestroyHelper"]
      292 CALL                             R39 1 1
      293 GETIMPORT                        R40 K11 [require]
      295 GETTABLEKS                       R41 R0 K52 ["Hooks"]
      297 GETTABLEKS                       R41 R41 K56 ["useSignalDispatcher"]
      299 CALL                             R40 1 1
      300 GETTABLEKS                       R41 R14 K57 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      302 NEWTABLE                         R42 64 0
      304 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      306 LOADK                            R44 K59 ["observeGraphNodeMap"]
      307 CALL                             R43 1 1
      308 SETTABLEKS                       R43 R42 K59 ["observeGraphNodeMap"]
      310 GETIMPORT                        R43 K62 [Rect.new]
      312 LOADN                            R44 0
      313 LOADN                            R45 0
      314 LOADN                            R46 0
      315 LOADN                            R47 0
      316 CALL                             R43 4 1
      317 SETTABLEKS                       R43 R42 K63 ["graphRect"]
      319 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      321 LOADK                            R44 K64 ["reorderPinsAsync"]
      322 CALL                             R43 1 1
      323 SETTABLEKS                       R43 R42 K64 ["reorderPinsAsync"]
      325 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      327 LOADK                            R44 K65 ["createNodeAsync"]
      328 CALL                             R43 1 1
      329 SETTABLEKS                       R43 R42 K65 ["createNodeAsync"]
      331 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      333 LOADK                            R44 K66 ["createParameterAsync"]
      334 CALL                             R43 1 1
      335 SETTABLEKS                       R43 R42 K66 ["createParameterAsync"]
      337 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      339 LOADK                            R44 K67 ["createConnectedParameterAsync"]
      340 CALL                             R43 1 1
      341 SETTABLEKS                       R43 R42 K67 ["createConnectedParameterAsync"]
      343 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      345 LOADK                            R44 K68 ["createExistingParameterAsync"]
      346 CALL                             R43 1 1
      347 SETTABLEKS                       R43 R42 K68 ["createExistingParameterAsync"]
      349 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      351 LOADK                            R44 K69 ["selectAllParameterNodesWithNameAsync"]
      352 CALL                             R43 1 1
      353 SETTABLEKS                       R43 R42 K69 ["selectAllParameterNodesWithNameAsync"]
      355 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      357 LOADK                            R44 K70 ["selectNodesAsync"]
      358 CALL                             R43 1 1
      359 SETTABLEKS                       R43 R42 K70 ["selectNodesAsync"]
      361 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      363 LOADK                            R44 K71 ["selectNodesFromRectAsync"]
      364 CALL                             R43 1 1
      365 SETTABLEKS                       R43 R42 K71 ["selectNodesFromRectAsync"]
      367 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      369 LOADK                            R44 K72 ["setNodePositionsAsync"]
      370 CALL                             R43 1 1
      371 SETTABLEKS                       R43 R42 K72 ["setNodePositionsAsync"]
      373 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      375 LOADK                            R44 K73 ["setNodeSizeAsync"]
      376 CALL                             R43 1 1
      377 SETTABLEKS                       R43 R42 K73 ["setNodeSizeAsync"]
      379 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      381 LOADK                            R44 K74 ["deleteNodeInput"]
      382 CALL                             R43 1 1
      383 SETTABLEKS                       R43 R42 K74 ["deleteNodeInput"]
      385 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      387 LOADK                            R44 K75 ["removeNodeInputConnectionAsync"]
      388 CALL                             R43 1 1
      389 SETTABLEKS                       R43 R42 K75 ["removeNodeInputConnectionAsync"]
      391 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      393 LOADK                            R44 K76 ["removeNodeOutputConnectionAsync"]
      394 CALL                             R43 1 1
      395 SETTABLEKS                       R43 R42 K76 ["removeNodeOutputConnectionAsync"]
      397 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      399 LOADK                            R44 K77 ["removeParameterAsync"]
      400 CALL                             R43 1 1
      401 SETTABLEKS                       R43 R42 K77 ["removeParameterAsync"]
      403 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      405 LOADK                            R44 K78 ["renameNodeAsync"]
      406 CALL                             R43 1 1
      407 SETTABLEKS                       R43 R42 K78 ["renameNodeAsync"]
      409 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      411 LOADK                            R44 K79 ["renameParameterAsync"]
      412 CALL                             R43 1 1
      413 SETTABLEKS                       R43 R42 K79 ["renameParameterAsync"]
      415 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      417 LOADK                            R44 K80 ["deleteNodeInstanceAsync"]
      418 CALL                             R43 1 1
      419 SETTABLEKS                       R43 R42 K80 ["deleteNodeInstanceAsync"]
      421 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      423 LOADK                            R44 K81 ["setNewConnection"]
      424 CALL                             R43 1 1
      425 SETTABLEKS                       R43 R42 K82 ["setNodeConnectionAsync"]
      427 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      429 LOADK                            R44 K83 ["setCollapsedAsync"]
      430 CALL                             R43 1 1
      431 SETTABLEKS                       R43 R42 K83 ["setCollapsedAsync"]
      433 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      435 LOADK                            R44 K84 ["setNodePropertyAsync"]
      436 CALL                             R43 1 1
      437 SETTABLEKS                       R43 R42 K84 ["setNodePropertyAsync"]
      439 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      441 LOADK                            R44 K85 ["setInputPinNodePropertyAsync"]
      442 CALL                             R43 1 1
      443 SETTABLEKS                       R43 R42 K85 ["setInputPinNodePropertyAsync"]
      445 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      447 LOADK                            R44 K86 ["setParameterNodeTypeAsync"]
      448 CALL                             R43 1 1
      449 SETTABLEKS                       R43 R42 K86 ["setParameterNodeTypeAsync"]
      451 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      453 LOADK                            R44 K87 ["hasGraphOutput"]
      454 CALL                             R43 1 1
      455 SETTABLEKS                       R43 R42 K87 ["hasGraphOutput"]
      457 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      459 LOADK                            R44 K88 ["observeGraphNodeById"]
      460 CALL                             R43 1 1
      461 SETTABLEKS                       R43 R42 K88 ["observeGraphNodeById"]
      463 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      465 LOADK                            R44 K89 ["observeNodeRenderInfoById"]
      466 CALL                             R43 1 1
      467 SETTABLEKS                       R43 R42 K89 ["observeNodeRenderInfoById"]
      469 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      471 LOADK                            R44 K90 ["observeRenderInfoMap"]
      472 CALL                             R43 1 1
      473 SETTABLEKS                       R43 R42 K90 ["observeRenderInfoMap"]
      475 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      477 LOADK                            R44 K91 ["observeNodePropsById"]
      478 CALL                             R43 1 1
      479 SETTABLEKS                       R43 R42 K91 ["observeNodePropsById"]
      481 GETTABLEKS                       R43 R22 K92 ["createSignal"]
      483 LOADNIL                          R44
      484 CALL                             R43 1 1
      485 SETTABLEKS                       R43 R42 K93 ["observeSelectedGraphInstance_DEPRECATED"]
      487 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      489 LOADK                            R44 K94 ["beginUndoTransaction"]
      490 CALL                             R43 1 1
      491 SETTABLEKS                       R43 R42 K94 ["beginUndoTransaction"]
      493 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      495 LOADK                            R44 K95 ["finishUndoTransaction"]
      496 CALL                             R43 1 1
      497 SETTABLEKS                       R43 R42 K95 ["finishUndoTransaction"]
      499 LOADNIL                          R43
      500 SETTABLEKS                       R43 R42 K96 ["currentAnimationId"]
      502 LOADNIL                          R43
      503 SETTABLEKS                       R43 R42 K97 ["sourceAssetId"]
      505 LOADNIL                          R43
      506 SETTABLEKS                       R43 R42 K98 ["selectedGraphKey"]
      508 GETTABLEKS                       R43 R17 K99 ["createContext"]
      510 MOVE                             R44 R42
      511 CALL                             R43 1 1
      512 DUPTABLE                         R44 K118 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction"}]
      513 DUPTABLE                         R45 K169 [{["CREATE_NODE"] = "NativeGraphContext_CreateNode", ["CREATE_PARAMETER"] = "NativeGraphContext_CreateParameterAsync", ["CREATE_CONNECTED_PARAMETER"] = "NativeGraphContext_CreateConnectedParameterAsync", ["CREATE_EXISTING_PARAMETER"] = "NativeGraphContext_CreateExistingParameterAsync", ["GET_SELECTED_GRAPH_INSTANCE"] = "NativeGraphContext_GetSelectedGraphInstance", ["SET_NODE_CONNECTION"] = "NativeGraphContext_SetNodeConnectionAsync", ["SET_NODE_PROPERTY"] = "NativeGraphContext_setNodePropertyAsync", ["SET_INPUT_PIN_NODE_PROPERTY"] = "NativeGraphContext_SetInputPinNodePropertyAsync", ["REORDER_PINS"] = "NativeGraphContext_ReorderPinsAsync", ["DELETE_NODE_INPUT"] = "NativeGraphContext_DeleteNodeInput", ["REMOVE_NODE_INPUT_CONNECTION"] = "NativeGraphContext_RemoveNodeInputConnection", ["REMOVE_NODE_OUTPUT_CONNECTION"] = "NativeGraphContext_RemoveNodeOutputConnectionAsync", ["REMOVE_PARAMETER"] = "NativeGraphContext_RemoveParameterAsync", ["RENAME_NODE"] = "NativeGraphContext_RenameNodeAsync", ["RENAME_PARAMETER"] = "NativeGraphContext_RenameParameterAsync", ["DELETE_NODE_INSTANCE"] = "NativeGraphContext_DeleteNodeInstanceAsync", ["SET_NODE_SIZE"] = "NativeGraphContext_SetNodeSizeAsync", ["SET_COLLAPSED"] = "NativeGraphContext_SetCollapsedAsync", ["SET_NODE_POSITIONS"] = "NativeGraphContext_SetNodePositionsAsync", ["SET_PARAMETER_NODE_TYPE"] = "NativeGraphContext_SetParameterNodeTypeAsync", ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"] = "NativeGraphContext_SelectAllParameterNodesWithNameAsync", ["SELECT_NODES"] = "NativeGraphContext_SelectNodes", ["SELECT_NODES_FROM_RECT"] = "NativeGraphContext_SelectNodesFromRect", ["BEGIN_UNDO_TRANSACTION"] = "NativeGraphContext_beginUndoTransaction", ["FINISH_UNDO_TRANSACTION"] = "NativeGraphContext_finishUndoTransaction"}]
      514 GETTABLEKS                       R46 R13 K170 ["createBoundAction"]
      516 LOADK                            R47 K171 ["NativeGraphContext_createNode"]
      517 CALL                             R46 1 1
      518 GETTABLEKS                       R47 R13 K170 ["createBoundAction"]
      520 LOADK                            R48 K172 ["NativeGraphContext_setZIndex"]
      521 CALL                             R47 1 1
      522 GETTABLEKS                       R48 R13 K170 ["createBoundAction"]
      524 LOADK                            R49 K173 ["NativeGraphContext_removeNodes"]
      525 CALL                             R48 1 1
      526 DUPCLOSURE                       R49 K174 [PROTO_1]
      527 CAPTURE                          VAL R17
      528 DUPCLOSURE                       R50 K175 [PROTO_58]
      529 CAPTURE                          VAL R40
      530 CAPTURE                          VAL R17
      531 CAPTURE                          VAL R20
      532 CAPTURE                          VAL R30
      533 CAPTURE                          VAL R19
      534 CAPTURE                          VAL R38
      535 CAPTURE                          VAL R11
      536 CAPTURE                          VAL R36
      537 CAPTURE                          VAL R10
      538 CAPTURE                          VAL R12
      539 CAPTURE                          VAL R18
      540 CAPTURE                          VAL R22
      541 CAPTURE                          VAL R2
      542 CAPTURE                          VAL R28
      543 CAPTURE                          VAL R25
      544 CAPTURE                          VAL R1
      545 CAPTURE                          VAL R32
      546 CAPTURE                          VAL R34
      547 CAPTURE                          VAL R14
      548 CAPTURE                          VAL R41
      549 CAPTURE                          VAL R4
      550 CAPTURE                          VAL R46
      551 CAPTURE                          VAL R48
      552 CAPTURE                          VAL R7
      553 CAPTURE                          VAL R6
      554 CAPTURE                          VAL R29
      555 CAPTURE                          VAL R37
      556 CAPTURE                          VAL R39
      557 CAPTURE                          VAL R33
      558 CAPTURE                          VAL R35
      559 CAPTURE                          VAL R49
      560 CAPTURE                          VAL R21
      561 CAPTURE                          VAL R16
      562 CAPTURE                          VAL R13
      563 CAPTURE                          VAL R47
      564 CAPTURE                          VAL R43
      565 CAPTURE                          VAL R27
      566 CAPTURE                          VAL R5
      567 DUPCLOSURE                       R51 K176 [PROTO_77]
      568 CAPTURE                          VAL R40
      569 CAPTURE                          VAL R30
      570 CAPTURE                          VAL R17
      571 CAPTURE                          VAL R22
      572 CAPTURE                          VAL R13
      573 CAPTURE                          VAL R28
      574 CAPTURE                          VAL R21
      575 CAPTURE                          VAL R49
      576 CAPTURE                          VAL R25
      577 CAPTURE                          VAL R14
      578 CAPTURE                          VAL R47
      579 CAPTURE                          VAL R8
      580 CAPTURE                          VAL R24
      581 CAPTURE                          VAL R23
      582 CAPTURE                          VAL R46
      583 CAPTURE                          VAL R48
      584 CAPTURE                          VAL R43
      585 CAPTURE                          VAL R18
      586 CAPTURE                          VAL R31
      587 CAPTURE                          VAL R26
      588 CAPTURE                          VAL R27
      589 DUPCLOSURE                       R52 K177 [PROTO_79]
      590 DUPCLOSURE                       R53 K178 [PROTO_81]
      591 CAPTURE                          VAL R17
      592 CAPTURE                          VAL R28
      593 CAPTURE                          VAL R3
      594 CAPTURE                          VAL R52
      595 CAPTURE                          VAL R50
      596 DUPTABLE                         R54 K184 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      597 SETTABLEKS                       R43 R54 K179 ["Context"]
      599 SETTABLEKS                       R50 R54 K180 ["EditableDataModelProvider"]
      601 SETTABLEKS                       R53 R54 K181 ["PreviewDataModelProvider"]
      603 SETTABLEKS                       R51 R54 K182 ["UIDataModelProvider"]
      605 SETTABLEKS                       R52 R54 K183 ["_setupEditorFolderForPreview"]
      607 RETURN                           R54 1
