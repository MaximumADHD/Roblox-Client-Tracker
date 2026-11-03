PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        9 NAMECALL                         R8 R7 K1 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+14]
       13 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       15 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       17 JUMPIFNOTEQ                      R8 R9 ; [+9]
       19 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K9 [table.insert]
       25 CALL                             R8 2 0
       26 JUMP                             ; [+7]
       27 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R7
       31 GETIMPORT                        R8 K9 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R3 2 ; [-27]
       36 RETURN                           R1 2

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+3]
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 NEWTABLE                         R3 0 0
       11 NAMECALL                         R1 R1 K0 ["Set"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createEffect"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          REF R1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R2 1 -1
       12 CLOSEUPVALS                      R1
       13 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphState"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K1 ["observeSelectedGraphInstance"]
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeExpressionNodes"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["observeSelectedGraphInstance"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_10:
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
       36 GETUPVAL                         R4 8
       37 MOVE                             R5 R0
       38 CALL                             R4 1 -1
       39 CALL                             R3 -1 0
       40 GETUPVAL                         R3 9
       41 GETTABLEKS                       R3 R3 K5 ["setMap"]
       43 JUMPIFNOT                        R2 ; [+3]
       44 GETTABLEKS                       R4 R2 K6 ["lookup"]
       46 JUMP                             ; [+2]
       47 NEWTABLE                         R4 0 0
       49 CALL                             R3 1 0
       50 GETUPVAL                         R3 10
       51 GETTABLEKS                       R3 R3 K5 ["setMap"]
       53 GETTABLEKS                       R4 R1 K3 ["renderInfoMap"]
       55 CALL                             R3 1 0
       56 GETUPVAL                         R3 11
       57 GETTABLEKS                       R3 R3 K5 ["setMap"]
       59 GETTABLEKS                       R4 R1 K4 ["graphNodeProps"]
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

PROTO_11:
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
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CALL                             R0 1 1
       17 RETURN                           R0 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETIMPORT                        R2 K2 [table.clone]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R3 R3 K3 ["Get"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 1
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 1
       16 MOVE                             R10 R6
       17 NAMECALL                         R8 R8 K4 ["idToInstance"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       23 MOVE                             R10 R2
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K6 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R3 2 ; [-14]
       30 GETUPVAL                         R3 0
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R3 K7 ["Set"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Get"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETIMPORT                        R3 K3 [table.clone]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMP                             ; [+2]
       14 NEWTABLE                         R3 0 0
       16 NEWTABLE                         R4 0 0
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["lookup"]
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K5 ["get"]
       27 GETTABLEKS                       R11 R9 K6 ["id"]
       29 CALL                             R10 1 1
       30 JUMPIFEQKNIL                     R10 ; [+45]
       32 GETTABLEKS                       R11 R10 K7 ["position"]
       34 GETTABLEKS                       R12 R10 K8 ["size"]
       36 GETTABLEKS                       R13 R11 K9 ["X"]
       38 GETTABLEKS                       R14 R0 K10 ["Max"]
       40 GETTABLEKS                       R14 R14 K9 ["X"]
       42 JUMPIFLT                         R14 R13 ; [+33]
       44 GETTABLEKS                       R14 R11 K9 ["X"]
       46 GETTABLEKS                       R15 R12 K9 ["X"]
       48 ADD                              R13 R14 R15
       49 GETTABLEKS                       R14 R0 K11 ["Min"]
       51 GETTABLEKS                       R14 R14 K9 ["X"]
       53 JUMPIFLT                         R13 R14 ; [+22]
       55 GETTABLEKS                       R13 R11 K12 ["Y"]
       57 GETTABLEKS                       R14 R0 K11 ["Min"]
       59 GETTABLEKS                       R14 R14 K12 ["Y"]
       61 JUMPIFLT                         R13 R14 ; [+14]
       63 GETTABLEKS                       R14 R11 K12 ["Y"]
       65 GETTABLEKS                       R15 R12 K12 ["Y"]
       67 SUB                              R13 R14 R15
       68 GETTABLEKS                       R14 R0 K10 ["Max"]
       70 GETTABLEKS                       R14 R14 K12 ["Y"]
       72 JUMPIFLT                         R14 R13 ; [+3]
       74 LOADB                            R13 1
       75 SETTABLE                         R13 R4 R8
       76 FORGLOOP                         R5 2 ; [-53]
       78 MOVE                             R5 R4
       79 LOADNIL                          R6
       80 LOADNIL                          R7
       81 FORGPREP                         R5
       82 GETUPVAL                         R10 3
       83 MOVE                             R12 R8
       84 NAMECALL                         R10 R10 K13 ["idToInstance"]
       86 CALL                             R10 2 1
       87 JUMPIFNOT                        R10 ; [+13]
       88 GETIMPORT                        R11 K15 [table.find]
       90 MOVE                             R12 R3
       91 MOVE                             R13 R10
       92 CALL                             R11 2 1
       93 JUMPIF                           R11 ; [+7]
       94 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       96 MOVE                             R12 R3
       97 MOVE                             R13 R10
       98 GETIMPORT                        R11 K17 [table.insert]
      100 CALL                             R11 2 0
      101 FORGLOOP                         R5 2 ; [-20]
      103 GETUPVAL                         R5 0
      104 MOVE                             R7 R3
      105 NAMECALL                         R5 R5 K18 ["Set"]
      107 CALL                             R5 2 0
      108 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_SourceAssetId"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+23]
        6 JUMPIFEQKS                       R0 K2 [""] ; [+22]
        8 GETUPVAL                         R1 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K4 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K5 ["number"] ; [+7]
       16 LOADK                            R2 K6 ["rbxassetid://%*"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R2 R2 K7 ["format"]
       20 CALL                             R2 2 1
       21 JUMP                             ; [+5]
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R2 K9 [tostring]
       26 CALL                             R2 1 1
       27 CALL                             R1 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 1
       30 LOADNIL                          R2
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_20:
        0 JUMPIFNOTEQKS                    R0 K0 ["RBX_SourceAssetId"] ; [+33]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["RBX_SourceAssetId"]
        4 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+23]
        8 JUMPIFEQKS                       R1 K2 [""] ; [+22]
       10 GETUPVAL                         R2 1
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K4 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+7]
       18 LOADK                            R3 K6 ["rbxassetid://%*"]
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R3 K7 ["format"]
       22 CALL                             R3 2 1
       23 JUMP                             ; [+5]
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R3 K9 [tostring]
       28 CALL                             R3 1 1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 1
       32 LOADNIL                          R3
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
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
       16 JUMPIFNOT                        R0 ; [+47]
       17 NEWCLOSURE                       R0 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U3
       20 GETUPVAL                         R1 0
       21 LOADK                            R3 K1 ["RBX_SourceAssetId"]
       22 NAMECALL                         R1 R1 K2 ["GetAttribute"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+23]
       26 JUMPIFEQKS                       R1 K0 [""] ; [+22]
       28 GETUPVAL                         R2 3
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R5 R1
       31 GETIMPORT                        R4 K4 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+7]
       36 LOADK                            R3 K6 ["rbxassetid://%*"]
       37 MOVE                             R5 R1
       38 NAMECALL                         R3 R3 K7 ["format"]
       40 CALL                             R3 2 1
       41 JUMP                             ; [+5]
       42 FASTCALL1                        TOSTRING R1 ; [+3]
       43 MOVE                             R4 R1
       44 GETIMPORT                        R3 K9 [tostring]
       46 CALL                             R3 1 1
       47 CALL                             R2 1 0
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R2 3
       50 LOADNIL                          R3
       51 CALL                             R2 1 0
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K10 ["AttributeChanged"]
       55 NEWCLOSURE                       R3 P1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U3
       58 NAMECALL                         R1 R1 K11 ["Connect"]
       60 CALL                             R1 2 1
       61 NEWCLOSURE                       R2 P2
       62 CAPTURE                          VAL R1
       63 RETURN                           R2 1
       64 NEWCLOSURE                       R0 P3
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U4
       69 MOVE                             R1 R0
       70 CALL                             R1 0 0
       71 GETUPVAL                         R1 0
       72 GETTABLEKS                       R1 R1 K10 ["AttributeChanged"]
       74 NEWCLOSURE                       R3 P4
       75 CAPTURE                          VAL R0
       76 NAMECALL                         R1 R1 K11 ["Connect"]
       78 CALL                             R1 2 1
       79 NEWCLOSURE                       R2 P5
       80 CAPTURE                          VAL R1
       81 RETURN                           R2 1

PROTO_26:
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
       40 JUMPIFNOT                        R3 ; [+29]
       41 GETUPVAL                         R3 1
       42 LOADK                            R5 K15 ["ObjectValue"]
       43 NAMECALL                         R3 R3 K16 ["FindFirstAncestorWhichIsA"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+23]
       47 GETTABLEKS                       R5 R3 K10 ["Name"]
       49 LOADK                            R6 K17 ["_"]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K10 ["Name"]
       53 CONCAT                           R4 R5 R7
       54 MOVE                             R7 R4
       55 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+3]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K11 ["Parent"]
       62 GETUPVAL                         R6 1
       63 NAMECALL                         R6 R6 K18 ["Clone"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R4 R6 K10 ["Name"]
       68 SETTABLEKS                       R1 R6 K11 ["Parent"]
       70 LOADNIL                          R3
       71 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 1
        5 LOADB                            R4 0
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+31]
        9 JUMPIFNOTEQKNIL                  R3 ; [+30]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K1 ["canCreateGraph"]
       14 JUMPIFNOT                        R5 ; [+25]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K2 ["createNewGraphAsync"]
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+6]
       20 GETUPVAL                         R6 3
       21 MOVE                             R8 R5
       22 NAMECALL                         R6 R6 K3 ["idToInstance"]
       24 CALL                             R6 2 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 JUMPIFNOT                        R6 ; [+7]
       28 LOADK                            R9 K4 ["AnimationGraphDefinition"]
       29 NAMECALL                         R7 R6 K5 ["IsA"]
       31 CALL                             R7 2 1
       32 JUMPIFNOT                        R7 ; [+2]
       33 MOVE                             R3 R6
       34 JUMP                             ; [+1]
       35 LOADNIL                          R3
       36 JUMPIFNOTEQKNIL                  R3 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 JUMPIFNOTEQKNIL                  R3 ; [+3]
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 JUMPIF                           R4 ; [+5]
       45 GETUPVAL                         R5 4
       46 JUMPIFNOTEQKNIL                  R5 ; [+3]
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETUPVAL                         R5 5
       51 MOVE                             R6 R0
       52 CALL                             R5 1 1
       53 JUMPIFNOTEQKNIL                  R5 ; [+8]
       55 GETIMPORT                        R6 K7 [warn]
       57 LOADK                            R7 K8 ["Failed to parse animation node type:"]
       58 MOVE                             R8 R0
       59 CALL                             R6 2 0
       60 LOADNIL                          R6
       61 RETURN                           R6 1
       62 GETUPVAL                         R6 6
       63 LOADK                            R8 K9 ["NativeGraphContext"]
       64 LOADK                            R9 K10 ["createNodeAsync"]
       65 NAMECALL                         R6 R6 K11 ["TryBeginRecording"]
       67 CALL                             R6 3 1
       68 GETUPVAL                         R7 7
       69 GETTABLEKS                       R7 R7 K12 ["createNodeOfType"]
       71 MOVE                             R8 R5
       72 MOVE                             R9 R1
       73 MOVE                             R10 R3
       74 CALL                             R7 3 1
       75 GETUPVAL                         R8 7
       76 GETTABLEKS                       R8 R8 K13 ["setZIndex"]
       78 MOVE                             R9 R7
       79 GETUPVAL                         R10 8
       80 GETTABLEKS                       R10 R10 K14 ["getNextNodeZIndex"]
       82 GETUPVAL                         R11 9
       83 CALL                             R10 1 -1
       84 CALL                             R8 -1 0
       85 JUMPIFNOT                        R7 ; [+6]
       86 GETUPVAL                         R8 3
       87 MOVE                             R10 R7
       88 NAMECALL                         R8 R8 K15 ["instanceToId"]
       90 CALL                             R8 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R8
       93 FASTCALL2K                       ASSERT R8 K16 ; [+5]
       95 MOVE                             R10 R8
       96 LOADK                            R11 K16 ["Failed to get new node ID after creation"]
       97 GETIMPORT                        R9 K18 [assert]
       99 CALL                             R9 2 0
      100 JUMPIFNOT                        R4 ; [+16]
      101 GETUPVAL                         R9 7
      102 GETTABLEKS                       R9 R9 K19 ["observeGraphState"]
      104 GETUPVAL                         R10 3
      105 GETUPVAL                         R11 10
      106 GETUPVAL                         R12 11
      107 GETTABLEKS                       R12 R12 K20 ["of"]
      109 MOVE                             R13 R3
      110 CALL                             R12 1 -1
      111 CALL                             R9 -1 1
      112 LOADB                            R10 0
      113 CALL                             R9 1 1
      114 GETTABLEKS                       R9 R9 K21 ["graphPayloadMap"]
      116 JUMP                             ; [+1]
      117 GETUPVAL                         R9 4
      118 FASTCALL2K                       ASSERT R9 K22 ; [+5]
      120 MOVE                             R11 R9
      121 LOADK                            R12 K22 ["Failed to resolve graph payload map after node creation"]
      122 GETIMPORT                        R10 K18 [assert]
      124 CALL                             R10 2 0
      125 GETIMPORT                        R10 K26 [Enum.AnimationNodeType.Blend1DNode]
      127 JUMPIFNOTEQ                      R5 R10 ; [+9]
      129 GETUPVAL                         R10 7
      130 GETTABLEKS                       R10 R10 K27 ["seedBlend1dInputs"]
      132 GETUPVAL                         R11 3
      133 MOVE                             R12 R9
      134 MOVE                             R13 R7
      135 CALL                             R10 3 0
      136 JUMP                             ; [+14]
      137 GETUPVAL                         R10 12
      138 CALL                             R10 0 1
      139 JUMPIFNOT                        R10 ; [+11]
      140 GETUPVAL                         R10 13
      141 JUMPIFNOT                        R10 ; [+9]
      142 GETIMPORT                        R10 K29 [Enum.AnimationNodeType.StateMachineNode]
      144 JUMPIFNOTEQ                      R5 R10 ; [+6]
      146 GETUPVAL                         R10 14
      147 GETTABLEKS                       R10 R10 K30 ["seedPoseDefaults"]
      149 MOVE                             R11 R7
      150 CALL                             R10 1 0
      151 JUMPIFNOT                        R2 ; [+94]
      152 GETTABLEKS                       R10 R2 K31 ["sourcePinSide"]
      154 JUMPIFNOTEQKS                    R10 K32 ["Input"] ; [+24]
      156 JUMPIFEQKNIL                     R8 ; [+89]
      158 GETUPVAL                         R10 7
      159 GETTABLEKS                       R10 R10 K33 ["setNodeConnection"]
      161 GETUPVAL                         R11 3
      162 MOVE                             R12 R9
      163 GETTABLEKS                       R13 R2 K34 ["sourcePinNodeId"]
      165 GETTABLEKS                       R14 R2 K35 ["sourcePinName"]
      167 MOVE                             R15 R8
      168 LOADK                            R16 K36 ["Output"]
      169 LOADNIL                          R17
      170 GETUPVAL                         R19 15
      171 CALL                             R19 0 1
      172 JUMPIFNOT                        R19 ; [+3]
      173 GETTABLEKS                       R18 R2 K37 ["sourcePinInputId"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R18
      177 CALL                             R10 8 0
      178 JUMP                             ; [+67]
      179 GETTABLEKS                       R10 R2 K31 ["sourcePinSide"]
      181 JUMPIFNOTEQKS                    R10 K36 ["Output"] ; [+60]
      183 GETUPVAL                         R10 16
      184 MOVE                             R12 R5
      185 NAMECALL                         R10 R10 K38 ["GetAnimationNodeDefinition"]
      187 CALL                             R10 2 1
      188 LOADNIL                          R11
      189 GETUPVAL                         R12 7
      190 GETTABLEKS                       R12 R12 K39 ["hasDynamicInputPins"]
      192 MOVE                             R13 R9
      193 GETTABLEKS                       R14 R2 K34 ["sourcePinNodeId"]
      195 CALL                             R12 2 1
      196 JUMPIFNOT                        R12 ; [+9]
      197 GETUPVAL                         R12 7
      198 GETTABLEKS                       R12 R12 K40 ["getDynamicInputPinNameFromInputNode"]
      200 MOVE                             R13 R7
      201 GETTABLEKS                       R14 R2 K35 ["sourcePinName"]
      203 CALL                             R12 2 1
      204 MOVE                             R11 R12
      205 JUMP                             ; [+13]
      206 JUMPIFNOT                        R10 ; [+12]
      207 GETTABLEKS                       R12 R10 K41 ["Inputs"]
      209 JUMPIFNOT                        R12 ; [+9]
      210 GETTABLEKS                       R13 R10 K41 ["Inputs"]
      212 GETTABLEN                        R12 R13 1
      213 JUMPIFNOT                        R12 ; [+5]
      214 GETTABLEKS                       R13 R10 K41 ["Inputs"]
      216 GETTABLEN                        R12 R13 1
      217 GETTABLEKS                       R11 R12 K42 ["InputName"]
      219 JUMPIFEQKNIL                     R11 ; [+16]
      221 JUMPIFEQKNIL                     R8 ; [+24]
      223 GETUPVAL                         R12 7
      224 GETTABLEKS                       R12 R12 K33 ["setNodeConnection"]
      226 GETUPVAL                         R13 3
      227 MOVE                             R14 R9
      228 MOVE                             R15 R8
      229 MOVE                             R16 R11
      230 GETTABLEKS                       R17 R2 K34 ["sourcePinNodeId"]
      232 GETTABLEKS                       R18 R2 K35 ["sourcePinName"]
      234 CALL                             R12 6 0
      235 JUMP                             ; [+10]
      236 GETIMPORT                        R12 K7 [warn]
      238 LOADK                            R13 K43 ["Failed to find input pin name for node type:"]
      239 MOVE                             R14 R0
      240 CALL                             R12 2 0
      241 JUMP                             ; [+4]
      242 GETIMPORT                        R10 K45 [error]
      244 LOADK                            R11 K46 ["Bad sourcePinSide state"]
      245 CALL                             R10 1 0
      246 GETUPVAL                         R10 17
      247 NEWTABLE                         R12 0 1
      249 MOVE                             R13 R7
      250 SETLIST                          R12 R13 1 [1]
      252 NAMECALL                         R10 R10 K47 ["Set"]
      254 CALL                             R10 2 0
      255 JUMPIFNOT                        R6 ; [+7]
      256 GETUPVAL                         R10 6
      257 MOVE                             R12 R6
      258 GETIMPORT                        R13 K50 [Enum.FinishRecordingOperation.Commit]
      260 NAMECALL                         R10 R10 K51 ["FinishRecording"]
      262 CALL                             R10 3 0
      263 RETURN                           R8 1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 2
        8 LOADK                            R5 K1 ["Remove nodes"]
        9 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
       11 CALL                             R3 2 1
       12 MOVE                             R4 R1
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 LOADNIL                          R9
       17 SETTABLEKS                       R9 R8 K3 ["Parent"]
       19 FORGLOOP                         R4 2 ; [-4]
       21 JUMPIFEQKNIL                     R3 ; [+8]
       23 GETUPVAL                         R4 2
       24 MOVE                             R6 R3
       25 GETIMPORT                        R7 K7 [Enum.FinishRecordingOperation.Commit]
       27 NAMECALL                         R4 R4 K8 ["FinishRecording"]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R4 0
       31 MOVE                             R6 R2
       32 NAMECALL                         R4 R4 K9 ["Set"]
       34 CALL                             R4 2 0
       35 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K1 ["Get"]
       11 CALL                             R1 1 1
       12 LENGTH                           R2 R1
       13 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 LOADK                            R4 K3 ["NativeGraphContext"]
       18 LOADK                            R5 K4 ["duplicateSelectedNodesAsync"]
       19 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       21 CALL                             R2 3 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["duplicateNodes"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R4 2
       30 MOVE                             R6 R2
       31 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       33 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       35 CALL                             R4 3 0
       36 LENGTH                           R4 R3
       37 LOADN                            R5 0
       38 JUMPIFNOTLT                      R5 R4 ; [+6]
       40 GETUPVAL                         R4 1
       41 MOVE                             R6 R3
       42 NAMECALL                         R4 R4 K12 ["Set"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 NEWTABLE                         R1 0 0
       10 NAMECALL                         R2 R0 K1 ["GetChildren"]
       12 CALL                             R2 1 3
       13 FORGPREP                         R2
       14 LOADK                            R9 K2 ["AnimationNodeDefinition"]
       15 NAMECALL                         R7 R6 K3 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K6 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-13]
       28 GETUPVAL                         R2 1
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R2 K7 ["Set"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["copyInstancesToClipboardAsync"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 LENGTH                           R3 R1
        8 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["copyInstancesToClipboardAsync"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 3
       17 LOADK                            R5 K3 ["Cut nodes"]
       18 NAMECALL                         R3 R3 K4 ["TryBeginRecording"]
       20 CALL                             R3 2 1
       21 MOVE                             R4 R1
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 LOADNIL                          R9
       26 SETTABLEKS                       R9 R8 K5 ["Parent"]
       28 FORGLOOP                         R4 2 ; [-4]
       30 JUMPIFEQKNIL                     R3 ; [+8]
       32 GETUPVAL                         R4 3
       33 MOVE                             R6 R3
       34 GETIMPORT                        R7 K9 [Enum.FinishRecordingOperation.Commit]
       36 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       38 CALL                             R4 3 0
       39 GETUPVAL                         R4 0
       40 MOVE                             R6 R2
       41 NAMECALL                         R4 R4 K11 ["Set"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["getInstancesOnClipboardAsync"]
       11 CALL                             R1 0 1
       12 LENGTH                           R2 R1
       13 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 LOADK                            R4 K3 ["NativeGraphContext"]
       18 LOADK                            R5 K4 ["pasteNodesAsync"]
       19 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       21 CALL                             R2 3 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["pasteInstancesIntoGraph"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R4 2
       30 MOVE                             R6 R2
       31 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       33 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       35 CALL                             R4 3 0
       36 LENGTH                           R4 R3
       37 LOADN                            R5 0
       38 JUMPIFNOTLT                      R5 R4 ; [+6]
       40 GETUPVAL                         R4 4
       41 MOVE                             R6 R3
       42 NAMECALL                         R4 R4 K12 ["Set"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["getParameterInstanceName"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 0 0
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+8]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["getAllParameterInstancesFromName"]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R0
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 JUMP                             ; [+17]
       25 NAMECALL                         R4 R1 K3 ["GetChildren"]
       27 CALL                             R4 1 3
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K4 ["Name"]
       31 JUMPIFNOTEQ                      R9 R2 ; [+8]
       33 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       35 MOVE                             R10 R3
       36 MOVE                             R11 R8
       37 GETIMPORT                        R9 K7 [table.insert]
       39 CALL                             R9 2 0
       40 FORGLOOP                         R4 2 ; [-12]
       42 LENGTH                           R4 R3
       43 LOADN                            R5 0
       44 JUMPIFNOTLT                      R5 R4 ; [+6]
       46 GETUPVAL                         R4 3
       47 MOVE                             R6 R3
       48 NAMECALL                         R4 R4 K8 ["Set"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+4]
        7 GETUPVAL                         R2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 2
       13 LOADK                            R4 K1 ["NativeGraphContext"]
       14 LOADK                            R5 K2 ["createParameterAsync"]
       15 NAMECALL                         R2 R2 K3 ["TryBeginRecording"]
       17 CALL                             R2 3 1
       18 LOADK                            R5 K4 ["AnimationGraphDefinition"]
       19 NAMECALL                         R3 R1 K5 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+6]
       23 GETIMPORT                        R3 K7 [warn]
       25 LOADK                            R4 K8 ["Selected graph instance is not an AnimationGraphDefinition"]
       26 CALL                             R3 1 0
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 LOADNIL                          R3
       30 GETUPVAL                         R4 3
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+26]
       33 GETTABLEKS                       R4 R0 K9 ["parameterClass"]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K10 ["EXPRESSION_NODE_CLASSNAME"]
       38 JUMPIFNOTEQ                      R4 R5 ; [+10]
       40 GETUPVAL                         R4 5
       41 GETTABLEKS                       R4 R4 K11 ["getOrCreateExpressionInstance"]
       43 GETUPVAL                         R5 6
       44 MOVE                             R6 R1
       45 MOVE                             R7 R0
       46 CALL                             R4 3 1
       47 MOVE                             R3 R4
       48 JUMP                             ; [+19]
       49 GETUPVAL                         R4 5
       50 GETTABLEKS                       R4 R4 K12 ["getOrCreateParameterInstance"]
       52 GETUPVAL                         R5 6
       53 MOVE                             R6 R1
       54 MOVE                             R7 R0
       55 LOADB                            R8 0
       56 CALL                             R4 4 1
       57 MOVE                             R3 R4
       58 JUMP                             ; [+9]
       59 GETUPVAL                         R4 5
       60 GETTABLEKS                       R4 R4 K12 ["getOrCreateParameterInstance"]
       62 GETUPVAL                         R5 6
       63 MOVE                             R6 R1
       64 MOVE                             R7 R0
       65 LOADB                            R8 0
       66 CALL                             R4 4 1
       67 MOVE                             R3 R4
       68 GETUPVAL                         R4 5
       69 GETTABLEKS                       R4 R4 K13 ["setZIndex"]
       71 MOVE                             R5 R3
       72 GETUPVAL                         R6 7
       73 GETTABLEKS                       R6 R6 K14 ["getNextNodeZIndex"]
       75 GETUPVAL                         R7 8
       76 CALL                             R6 1 -1
       77 CALL                             R4 -1 0
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R6 R6 K15 ["NODE_ATTRIBUTES"]
       81 GETTABLEKS                       R6 R6 K16 ["BindingName"]
       83 NAMECALL                         R4 R3 K17 ["GetAttribute"]
       85 CALL                             R4 2 1
       86 GETUPVAL                         R5 3
       87 CALL                             R5 0 1
       88 JUMPIFNOT                        R5 ; [+9]
       89 GETTABLEKS                       R6 R0 K9 ["parameterClass"]
       91 GETUPVAL                         R7 4
       92 GETTABLEKS                       R7 R7 K10 ["EXPRESSION_NODE_CLASSNAME"]
       94 JUMPIFEQ                         R6 R7 ; [+2]
       96 LOADB                            R5 0 +1
       97 LOADB                            R5 1
       98 GETUPVAL                         R6 9
       99 CALL                             R6 0 1
      100 JUMPIFNOT                        R6 ; [+43]
      101 JUMPIF                           R5 ; [+111]
      102 GETUPVAL                         R6 5
      103 GETTABLEKS                       R6 R6 K18 ["getParameterBindingName"]
      105 MOVE                             R7 R3
      106 CALL                             R6 1 1
      107 FASTCALL2K                       ASSERT R6 K19 ; [+5]
      109 MOVE                             R8 R6
      110 LOADK                            R9 K19 ["New parameter node has no binding name"]
      111 GETIMPORT                        R7 K21 [assert]
      113 CALL                             R7 2 0
      114 MOVE                             R9 R6
      115 NAMECALL                         R7 R1 K17 ["GetAttribute"]
      117 CALL                             R7 2 1
      118 JUMPIFNOTEQKNIL                  R7 ; [+94]
      120 GETTABLEKS                       R7 R0 K22 ["initializeWithValue"]
      122 JUMPIFEQKNIL                     R7 ; [+90]
      124 GETTABLEKS                       R8 R0 K22 ["initializeWithValue"]
      126 FASTCALL1                        TYPE R8 ; [+2]
      127 GETIMPORT                        R7 K24 [type]
      129 CALL                             R7 1 1
      130 JUMPIFNOTEQKS                    R7 K25 ["table"] ; [+6]
      132 GETIMPORT                        R7 K7 [warn]
      134 LOADK                            R8 K26 ["TODO: JSONEncode initial value to support safely"]
      135 CALL                             R7 1 0
      136 JUMP                             ; [+76]
      137 MOVE                             R9 R6
      138 GETTABLEKS                       R10 R0 K22 ["initializeWithValue"]
      140 NAMECALL                         R7 R1 K27 ["SetAttribute"]
      142 CALL                             R7 3 0
      143 JUMP                             ; [+69]
      144 GETUPVAL                         R6 3
      145 CALL                             R6 0 1
      146 JUMPIFNOT                        R6 ; [+37]
      147 GETTABLEKS                       R6 R0 K9 ["parameterClass"]
      149 GETUPVAL                         R7 4
      150 GETTABLEKS                       R7 R7 K10 ["EXPRESSION_NODE_CLASSNAME"]
      152 JUMPIFEQ                         R6 R7 ; [+60]
      154 MOVE                             R8 R4
      155 NAMECALL                         R6 R1 K17 ["GetAttribute"]
      157 CALL                             R6 2 1
      158 JUMPIFNOTEQKNIL                  R6 ; [+54]
      160 GETTABLEKS                       R6 R0 K22 ["initializeWithValue"]
      162 JUMPIFEQKNIL                     R6 ; [+50]
      164 GETTABLEKS                       R7 R0 K22 ["initializeWithValue"]
      166 FASTCALL1                        TYPE R7 ; [+2]
      167 GETIMPORT                        R6 K24 [type]
      169 CALL                             R6 1 1
      170 JUMPIFNOTEQKS                    R6 K25 ["table"] ; [+6]
      172 GETIMPORT                        R6 K7 [warn]
      174 LOADK                            R7 K26 ["TODO: JSONEncode initial value to support safely"]
      175 CALL                             R6 1 0
      176 JUMP                             ; [+36]
      177 MOVE                             R8 R4
      178 GETTABLEKS                       R9 R0 K22 ["initializeWithValue"]
      180 NAMECALL                         R6 R1 K27 ["SetAttribute"]
      182 CALL                             R6 3 0
      183 JUMP                             ; [+29]
      184 MOVE                             R8 R4
      185 NAMECALL                         R6 R1 K17 ["GetAttribute"]
      187 CALL                             R6 2 1
      188 JUMPIFNOTEQKNIL                  R6 ; [+24]
      190 GETTABLEKS                       R6 R0 K22 ["initializeWithValue"]
      192 JUMPIFEQKNIL                     R6 ; [+20]
      194 GETTABLEKS                       R7 R0 K22 ["initializeWithValue"]
      196 FASTCALL1                        TYPE R7 ; [+2]
      197 GETIMPORT                        R6 K24 [type]
      199 CALL                             R6 1 1
      200 JUMPIFNOTEQKS                    R6 K25 ["table"] ; [+6]
      202 GETIMPORT                        R6 K7 [warn]
      204 LOADK                            R7 K26 ["TODO: JSONEncode initial value to support safely"]
      205 CALL                             R6 1 0
      206 JUMP                             ; [+6]
      207 MOVE                             R8 R4
      208 GETTABLEKS                       R9 R0 K22 ["initializeWithValue"]
      210 NAMECALL                         R6 R1 K27 ["SetAttribute"]
      212 CALL                             R6 3 0
      213 GETUPVAL                         R6 10
      214 NEWTABLE                         R8 0 1
      216 MOVE                             R9 R3
      217 SETLIST                          R8 R9 1 [1]
      219 NAMECALL                         R6 R6 K28 ["Set"]
      221 CALL                             R6 2 0
      222 GETTABLEKS                       R6 R0 K29 ["pinPosition"]
      224 JUMPIFNOT                        R6 ; [+11]
      225 GETUPVAL                         R6 5
      226 GETTABLEKS                       R6 R6 K30 ["setNodePosition"]
      228 MOVE                             R7 R3
      229 GETUPVAL                         R8 5
      230 GETTABLEKS                       R8 R8 K31 ["predictOutputPosition"]
      232 GETTABLEKS                       R9 R0 K29 ["pinPosition"]
      234 CALL                             R8 1 -1
      235 CALL                             R6 -1 0
      236 GETUPVAL                         R6 6
      237 MOVE                             R8 R3
      238 NAMECALL                         R6 R6 K32 ["instanceToId"]
      240 CALL                             R6 2 1
      241 JUMPIFNOT                        R2 ; [+7]
      242 GETUPVAL                         R7 2
      243 MOVE                             R9 R2
      244 GETIMPORT                        R10 K36 [Enum.FinishRecordingOperation.Commit]
      246 NAMECALL                         R7 R7 K37 ["FinishRecording"]
      248 CALL                             R7 3 0
      249 RETURN                           R6 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["parameterType"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["observeSelectedGraphInstance"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 JUMPIFEQKNIL                     R2 ; [+4]
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+3]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       15 NAMECALL                         R3 R2 K3 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+6]
       19 GETIMPORT                        R3 K5 [warn]
       21 LOADK                            R4 K6 ["Selected graph instance is not an AnimationGraphDefinition"]
       22 CALL                             R3 1 0
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 JUMPIF                           R1 ; [+33]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K7 ["getParameterInstanceName"]
       29 GETTABLEKS                       R4 R0 K8 ["parameterName"]
       31 CALL                             R3 1 1
       32 GETUPVAL                         R5 3
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+8]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K9 ["getParameterDefinitionInstance"]
       38 MOVE                             R5 R2
       39 GETTABLEKS                       R6 R0 K8 ["parameterName"]
       41 CALL                             R4 2 1
       42 JUMP                             ; [+4]
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R2 K10 ["FindFirstChild"]
       46 CALL                             R4 2 1
       47 JUMPIF                           R4 ; [+2]
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R7 R7 K11 ["NODE_ATTRIBUTES"]
       53 GETTABLEKS                       R7 R7 K12 ["ParameterType"]
       55 NAMECALL                         R5 R4 K13 ["GetAttribute"]
       57 CALL                             R5 2 1
       58 MOVE                             R1 R5
       59 FASTCALL2K                       ASSERT R1 K14 ; [+5]
       61 MOVE                             R4 R1
       62 LOADK                            R5 K14 ["Parameter type must be provided or inferable for createExistingParameterAsync"]
       63 GETIMPORT                        R3 K16 [assert]
       65 CALL                             R3 2 0
       66 GETUPVAL                         R3 5
       67 LOADK                            R5 K17 ["NativeGraphContext"]
       68 LOADK                            R6 K18 ["createParameterAsync"]
       69 NAMECALL                         R3 R3 K19 ["TryBeginRecording"]
       71 CALL                             R3 3 1
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R4 R4 K20 ["createExistingParameterInstance"]
       75 GETUPVAL                         R5 6
       76 MOVE                             R6 R2
       77 DUPTABLE                         R7 K21 [{"parameterType", "parameterName"}]
       78 SETTABLEKS                       R1 R7 K0 ["parameterType"]
       80 GETTABLEKS                       R8 R0 K8 ["parameterName"]
       82 SETTABLEKS                       R8 R7 K8 ["parameterName"]
       84 CALL                             R4 3 1
       85 LOADNIL                          R5
       86 JUMPIF                           R4 ; [+19]
       87 GETUPVAL                         R6 7
       88 DUPTABLE                         R7 K24 [{"parameterType", "pinPosition", "initializeWithValue", "parameterName"}]
       89 SETTABLEKS                       R1 R7 K0 ["parameterType"]
       91 GETTABLEKS                       R8 R0 K22 ["pinPosition"]
       93 SETTABLEKS                       R8 R7 K22 ["pinPosition"]
       95 GETTABLEKS                       R8 R0 K23 ["initializeWithValue"]
       97 SETTABLEKS                       R8 R7 K23 ["initializeWithValue"]
       99 GETTABLEKS                       R8 R0 K8 ["parameterName"]
      101 SETTABLEKS                       R8 R7 K8 ["parameterName"]
      103 CALL                             R6 1 1
      104 MOVE                             R5 R6
      105 JUMP                             ; [+29]
      106 GETUPVAL                         R6 6
      107 MOVE                             R8 R4
      108 NAMECALL                         R6 R6 K25 ["instanceToId"]
      110 CALL                             R6 2 1
      111 MOVE                             R5 R6
      112 GETUPVAL                         R6 8
      113 NEWTABLE                         R8 0 1
      115 MOVE                             R9 R4
      116 SETLIST                          R8 R9 1 [1]
      118 NAMECALL                         R6 R6 K26 ["Set"]
      120 CALL                             R6 2 0
      121 GETTABLEKS                       R6 R0 K22 ["pinPosition"]
      123 JUMPIFNOT                        R6 ; [+11]
      124 GETUPVAL                         R6 2
      125 GETTABLEKS                       R6 R6 K27 ["setNodePosition"]
      127 MOVE                             R7 R4
      128 GETUPVAL                         R8 2
      129 GETTABLEKS                       R8 R8 K28 ["predictOutputPosition"]
      131 GETTABLEKS                       R9 R0 K22 ["pinPosition"]
      133 CALL                             R8 1 -1
      134 CALL                             R6 -1 0
      135 JUMPIFNOT                        R3 ; [+7]
      136 GETUPVAL                         R6 5
      137 MOVE                             R8 R3
      138 GETIMPORT                        R9 K32 [Enum.FinishRecordingOperation.Commit]
      140 NAMECALL                         R6 R6 K33 ["FinishRecording"]
      142 CALL                             R6 3 0
      143 RETURN                           R5 1

PROTO_39:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+7]
        3 GETIMPORT                        R4 K1 [warn]
        5 LOADK                            R5 K2 ["No graph payload map available for deleteNodeInput"]
        6 CALL                             R4 1 0
        7 LOADB                            R4 0
        8 RETURN                           R4 1
        9 GETUPVAL                         R4 1
       10 LOADK                            R6 K3 ["NativeGraphContext"]
       11 LOADK                            R7 K4 ["deleteNodeInput"]
       12 NAMECALL                         R4 R4 K5 ["TryBeginRecording"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["deleteNodeInput"]
       18 GETUPVAL                         R6 3
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 MOVE                             R10 R2
       23 MOVE                             R11 R3
       24 CALL                             R5 6 1
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETUPVAL                         R6 1
       27 MOVE                             R8 R4
       28 GETIMPORT                        R9 K9 [Enum.FinishRecordingOperation.Commit]
       30 NAMECALL                         R6 R6 K10 ["FinishRecording"]
       32 CALL                             R6 3 0
       33 RETURN                           R5 1

PROTO_40:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+6]
        3 GETIMPORT                        R3 K1 [warn]
        5 LOADK                            R4 K2 ["No graph payload map available for renameNodeInputAsync"]
        6 CALL                             R3 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 LOADK                            R5 K3 ["NativeGraphContext"]
       10 LOADK                            R6 K4 ["renameNodeInput"]
       11 NAMECALL                         R3 R3 K5 ["TryBeginRecording"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K6 ["renameInputPin"]
       17 GETUPVAL                         R5 3
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 CALL                             R4 4 0
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETUPVAL                         R4 1
       24 MOVE                             R6 R3
       25 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       27 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       29 CALL                             R4 3 0
       30 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+7]
        3 GETIMPORT                        R4 K1 [warn]
        5 LOADK                            R5 K2 ["No graph payload map available for removeNodeInputConnectionAsync"]
        6 CALL                             R4 1 0
        7 LOADB                            R4 0
        8 RETURN                           R4 1
        9 GETUPVAL                         R4 1
       10 LOADK                            R6 K3 ["NativeGraphContext"]
       11 LOADK                            R7 K4 ["removeNodeInputConnectionAsync"]
       12 NAMECALL                         R4 R4 K5 ["TryBeginRecording"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K6 ["removeNodeInputConnection"]
       18 GETUPVAL                         R6 3
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 MOVE                             R10 R2
       23 MOVE                             R11 R3
       24 CALL                             R5 6 1
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETUPVAL                         R6 1
       27 MOVE                             R8 R4
       28 GETIMPORT                        R9 K10 [Enum.FinishRecordingOperation.Commit]
       30 NAMECALL                         R6 R6 K11 ["FinishRecording"]
       32 CALL                             R6 3 0
       33 RETURN                           R5 1

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R6 0
        1 JUMPIFNOTEQKNIL                  R6 ; [+6]
        3 GETIMPORT                        R6 K1 [warn]
        5 LOADK                            R7 K2 ["No graph payload map available for setNodeConnectionAsync"]
        6 CALL                             R6 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R6 1
        9 LOADK                            R8 K3 ["NativeGraphContext"]
       10 LOADK                            R9 K4 ["addNodeConnection"]
       11 NAMECALL                         R6 R6 K5 ["TryBeginRecording"]
       13 CALL                             R6 3 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K6 ["setNodeConnection"]
       17 GETUPVAL                         R8 3
       18 GETUPVAL                         R9 0
       19 MOVE                             R10 R0
       20 MOVE                             R11 R1
       21 MOVE                             R12 R2
       22 MOVE                             R13 R3
       23 MOVE                             R14 R4
       24 MOVE                             R15 R5
       25 CALL                             R7 8 2
       26 GETUPVAL                         R9 4
       27 CALL                             R9 0 1
       28 JUMPIF                           R9 ; [+33]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K7 ["lookup"]
       32 GETTABLE                         R9 R10 R2
       33 JUMPIFNOT                        R9 ; [+28]
       34 GETTABLEKS                       R10 R9 K8 ["className"]
       36 JUMPIFEQKS                       R10 K9 ["Parameter"] ; [+25]
       38 JUMPIFNOT                        R7 ; [+23]
       39 JUMPIFNOT                        R8 ; [+22]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K10 ["setNodeOutputInfoInDestroyMapRef"]
       43 GETTABLEKS                       R10 R10 K11 ["current"]
       45 MOVE                             R11 R2
       46 DUPTABLE                         R12 K18 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       47 SETTABLEKS                       R0 R12 K12 ["inputNodeId"]
       49 SETTABLEKS                       R8 R12 K13 ["inputNodePinId"]
       51 SETTABLEKS                       R3 R12 K14 ["outputNodePinId"]
       53 SETTABLEKS                       R7 R12 K15 ["wireId"]
       55 SETTABLEKS                       R2 R12 K16 ["outputNodeId"]
       57 NEWTABLE                         R13 0 0
       59 SETTABLEKS                       R13 R12 K17 ["properties"]
       61 CALL                             R10 2 0
       62 JUMPIFNOT                        R6 ; [+7]
       63 GETUPVAL                         R9 1
       64 MOVE                             R11 R6
       65 GETIMPORT                        R12 K22 [Enum.FinishRecordingOperation.Commit]
       67 NAMECALL                         R9 R9 K23 ["FinishRecording"]
       69 CALL                             R9 3 0
       70 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+20]
        5 GETTABLEKS                       R1 R0 K1 ["parameterClass"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["EXPRESSION_NODE_CLASSNAME"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+14]
       12 GETTABLEKS                       R1 R0 K3 ["sourcePinInfo"]
       14 GETTABLEKS                       R1 R1 K4 ["sourcePinDynamicIndex"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+7]
       18 GETTABLEKS                       R1 R0 K3 ["sourcePinInfo"]
       20 GETTABLEKS                       R1 R1 K5 ["sourcePinInputId"]
       22 JUMPIFEQKNIL                     R1 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K6 ["observeSelectedGraphInstance"]
       28 LOADB                            R2 0
       29 CALL                             R1 1 1
       30 JUMPIFNOTEQKNIL                  R1 ; [+2]
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 3
       34 LOADK                            R4 K7 ["NativeGraphContext"]
       35 LOADK                            R5 K8 ["createParameterAsync"]
       36 NAMECALL                         R2 R2 K9 ["TryBeginRecording"]
       38 CALL                             R2 3 1
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R5 R0 K3 ["sourcePinInfo"]
       42 GETTABLEKS                       R5 R5 K10 ["sourcePinNodeId"]
       44 NAMECALL                         R3 R3 K11 ["idToInstance"]
       46 CALL                             R3 2 1
       47 JUMPIFEQKNIL                     R3 ; [+6]
       49 LOADK                            R6 K12 ["AnimationNodeDefinition"]
       50 NAMECALL                         R4 R3 K13 ["IsA"]
       52 CALL                             R4 2 1
       53 JUMPIF                           R4 ; [+5]
       54 GETIMPORT                        R4 K15 [warn]
       56 LOADK                            R5 K16 ["Failed to find node definition instance for createParameterAsync"]
       57 CALL                             R4 1 0
       58 RETURN                           R0 0
       59 LOADK                            R6 K12 ["AnimationNodeDefinition"]
       60 NAMECALL                         R4 R3 K13 ["IsA"]
       62 CALL                             R4 2 1
       63 JUMPIF                           R4 ; [+5]
       64 GETIMPORT                        R4 K15 [warn]
       66 LOADK                            R5 K17 ["Instance is not an AnimationNodeDefinition"]
       67 CALL                             R4 1 0
       68 RETURN                           R0 0
       69 LOADK                            R6 K18 ["AnimationGraphDefinition"]
       70 NAMECALL                         R4 R1 K13 ["IsA"]
       72 CALL                             R4 2 1
       73 JUMPIF                           R4 ; [+5]
       74 GETIMPORT                        R4 K15 [warn]
       76 LOADK                            R5 K19 ["Selected graph instance is not an AnimationGraphDefinition"]
       77 CALL                             R4 1 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R5 5
       80 GETTABLEKS                       R5 R5 K21 ["getParameterType"]
       82 GETTABLEKS                       R6 R3 K22 ["NodeType"]
       84 GETTABLEKS                       R7 R0 K3 ["sourcePinInfo"]
       86 GETTABLEKS                       R7 R7 K23 ["sourcePinName"]
       88 CALL                             R5 2 1
       89 ORK                              R4 R5 K20 ["unknown"]
       90 LOADNIL                          R5
       91 GETTABLEKS                       R6 R0 K24 ["parameterName"]
       93 GETUPVAL                         R7 6
       94 CALL                             R7 0 1
       95 JUMPIFNOT                        R7 ; [+9]
       96 GETTABLEKS                       R8 R0 K1 ["parameterClass"]
       98 GETUPVAL                         R9 1
       99 GETTABLEKS                       R9 R9 K2 ["EXPRESSION_NODE_CLASSNAME"]
      101 JUMPIFEQ                         R8 R9 ; [+2]
      103 LOADB                            R7 0 +1
      104 LOADB                            R7 1
      105 JUMPIFNOT                        R6 ; [+1]
      106 JUMPIFNOT                        R7 ; [+24]
      107 GETUPVAL                         R8 7
      108 DUPTABLE                         R9 K29 [{["parameterType"], ["pinPosition"], ["initializeWithValue"], ["parameterName"] = "", ["parameterClass"]}]
      109 SETTABLEKS                       R4 R9 K25 ["parameterType"]
      111 GETTABLEKS                       R10 R0 K26 ["pinPosition"]
      113 SETTABLEKS                       R10 R9 K26 ["pinPosition"]
      115 GETTABLEKS                       R10 R0 K30 ["existingValue"]
      117 SETTABLEKS                       R10 R9 K27 ["initializeWithValue"]
      119 GETUPVAL                         R11 6
      120 CALL                             R11 0 1
      121 JUMPIFNOT                        R11 ; [+3]
      122 GETTABLEKS                       R10 R0 K1 ["parameterClass"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R10
      126 SETTABLEKS                       R10 R9 K1 ["parameterClass"]
      128 CALL                             R8 1 1
      129 MOVE                             R5 R8
      130 JUMP                             ; [+57]
      131 GETUPVAL                         R8 8
      132 DUPTABLE                         R9 K31 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
      133 SETTABLEKS                       R4 R9 K25 ["parameterType"]
      135 SETTABLEKS                       R6 R9 K24 ["parameterName"]
      137 GETTABLEKS                       R10 R0 K26 ["pinPosition"]
      139 SETTABLEKS                       R10 R9 K26 ["pinPosition"]
      141 GETTABLEKS                       R10 R0 K30 ["existingValue"]
      143 SETTABLEKS                       R10 R9 K27 ["initializeWithValue"]
      145 CALL                             R8 1 1
      146 MOVE                             R5 R8
      147 GETUPVAL                         R8 6
      148 CALL                             R8 0 1
      149 JUMPIFNOT                        R8 ; [+23]
      150 GETTABLEKS                       R8 R0 K1 ["parameterClass"]
      152 GETUPVAL                         R9 1
      153 GETTABLEKS                       R9 R9 K2 ["EXPRESSION_NODE_CLASSNAME"]
      155 JUMPIFEQ                         R8 R9 ; [+32]
      157 GETTABLEKS                       R8 R0 K30 ["existingValue"]
      159 JUMPIFNOT                        R8 ; [+28]
      160 MOVE                             R10 R6
      161 NAMECALL                         R8 R1 K32 ["GetAttribute"]
      163 CALL                             R8 2 1
      164 JUMPIFNOTEQKNIL                  R8 ; [+23]
      166 MOVE                             R10 R6
      167 GETTABLEKS                       R11 R0 K30 ["existingValue"]
      169 NAMECALL                         R8 R1 K33 ["SetAttribute"]
      171 CALL                             R8 3 0
      172 JUMP                             ; [+15]
      173 GETTABLEKS                       R8 R0 K30 ["existingValue"]
      175 JUMPIFNOT                        R8 ; [+12]
      176 MOVE                             R10 R6
      177 NAMECALL                         R8 R1 K32 ["GetAttribute"]
      179 CALL                             R8 2 1
      180 JUMPIFNOTEQKNIL                  R8 ; [+7]
      182 MOVE                             R10 R6
      183 GETTABLEKS                       R11 R0 K30 ["existingValue"]
      185 NAMECALL                         R8 R1 K33 ["SetAttribute"]
      187 CALL                             R8 3 0
      188 JUMPIFNOT                        R5 ; [+35]
      189 GETTABLEKS                       R8 R0 K3 ["sourcePinInfo"]
      191 GETTABLEKS                       R8 R8 K10 ["sourcePinNodeId"]
      193 GETTABLEKS                       R9 R0 K3 ["sourcePinInfo"]
      195 GETTABLEKS                       R9 R9 K23 ["sourcePinName"]
      197 GETUPVAL                         R10 4
      198 MOVE                             R12 R5
      199 NAMECALL                         R10 R10 K11 ["idToInstance"]
      201 CALL                             R10 2 1
      202 JUMPIFNOT                        R10 ; [+21]
      203 GETUPVAL                         R11 5
      204 GETTABLEKS                       R11 R11 K34 ["setNodePosition"]
      206 MOVE                             R12 R10
      207 GETUPVAL                         R13 5
      208 GETTABLEKS                       R13 R13 K35 ["predictOutputPosition"]
      210 GETTABLEKS                       R14 R0 K26 ["pinPosition"]
      212 CALL                             R13 1 -1
      213 CALL                             R11 -1 0
      214 GETUPVAL                         R11 9
      215 MOVE                             R12 R8
      216 MOVE                             R13 R9
      217 MOVE                             R14 R5
      218 LOADK                            R15 K36 ["Output"]
      219 GETTABLEKS                       R16 R0 K3 ["sourcePinInfo"]
      221 GETTABLEKS                       R16 R16 K4 ["sourcePinDynamicIndex"]
      223 CALL                             R11 5 0
      224 JUMPIFNOT                        R2 ; [+7]
      225 GETUPVAL                         R8 3
      226 MOVE                             R10 R2
      227 GETIMPORT                        R11 K40 [Enum.FinishRecordingOperation.Commit]
      229 NAMECALL                         R8 R8 K41 ["FinishRecording"]
      231 CALL                             R8 3 0
      232 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_49:
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
       88 JUMPIFNOT                        R4 ; [+12]
       89 GETUPVAL                         R6 0
       90 MOVE                             R8 R4
       91 JUMPIFNOTEQKS                    R3 K23 ["Drag"] ; [+4]
       93 GETIMPORT                        R9 K27 [Enum.FinishRecordingOperation.Append]
       95 JUMP                             ; [+2]
       96 GETIMPORT                        R9 K29 [Enum.FinishRecordingOperation.Commit]
       98 NAMECALL                         R6 R6 K30 ["FinishRecording"]
      100 CALL                             R6 3 0
      101 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETIMPORT                        R1 K1 [warn]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K2 ["Common"]
        7 LOADK                            R5 K3 ["AnimationEditor"]
        8 LOADK                            R6 K4 ["Output"]
        9 LOADK                            R7 K5 ["RenameFailed"]
       10 DUPTABLE                         R8 K7 [{"problem"}]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R10 R0
       13 GETIMPORT                        R9 K9 [tostring]
       15 CALL                             R9 1 1
       16 SETTABLEKS                       R9 R8 K6 ["problem"]
       18 NAMECALL                         R2 R2 K10 ["getExternalText"]
       20 CALL                             R2 6 -1
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R1 K1 [warn]
       25 LOADK                            R2 K11 ["Couldn't rename instance: %*"]
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R2 K12 ["format"]
       29 CALL                             R2 2 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+78]
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
       24 JUMPIFNOT                        R5 ; [+6]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K8 ["isValueNode"]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 1
       30 JUMPIF                           R5 ; [+26]
       31 GETUPVAL                         R5 4
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+10]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K9 ["setDisplayName"]
       37 MOVE                             R6 R3
       38 JUMPIFNOT                        R4 ; [+2]
       39 LOADNIL                          R7
       40 JUMP                             ; [+1]
       41 MOVE                             R7 R1
       42 CALL                             R5 2 0
       43 JUMP                             ; [+36]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K10 ["NODE_ATTRIBUTES"]
       47 GETTABLEKS                       R7 R7 K11 ["DisplayName"]
       49 JUMPIFNOT                        R4 ; [+2]
       50 LOADNIL                          R8
       51 JUMP                             ; [+1]
       52 MOVE                             R8 R1
       53 NAMECALL                         R5 R3 K12 ["SetAttribute"]
       55 CALL                             R5 3 0
       56 JUMP                             ; [+23]
       57 JUMPIF                           R4 ; [+22]
       58 GETTABLEKS                       R5 R3 K13 ["Parent"]
       60 JUMPIFNOT                        R5 ; [+6]
       61 GETTABLEKS                       R5 R3 K13 ["Parent"]
       63 MOVE                             R7 R1
       64 NAMECALL                         R5 R5 K14 ["FindFirstChild"]
       66 CALL                             R5 2 1
       67 JUMPIFEQKNIL                     R5 ; [+12]
       69 JUMPIFEQ                         R5 R3 ; [+10]
       71 JUMPIFNOT                        R2 ; [+7]
       72 GETUPVAL                         R6 0
       73 MOVE                             R8 R2
       74 GETIMPORT                        R9 K18 [Enum.FinishRecordingOperation.Cancel]
       76 NAMECALL                         R6 R6 K19 ["FinishRecording"]
       78 CALL                             R6 3 0
       79 RETURN                           R0 0
       80 JUMPIF                           R4 ; [+9]
       81 GETIMPORT                        R5 K21 [xpcall]
       83 NEWCLOSURE                       R6 P0
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R1
       86 NEWCLOSURE                       R7 P1
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U7
       89 CALL                             R5 2 0
       90 GETUPVAL                         R4 8
       91 CALL                             R4 0 1
       92 JUMPIF                           R4 ; [+38]
       93 GETUPVAL                         R4 9
       94 GETTABLEKS                       R4 R4 K22 ["observe"]
       96 MOVE                             R5 R0
       97 CALL                             R4 1 1
       98 LOADB                            R5 0
       99 CALL                             R4 1 1
      100 JUMPIFNOT                        R4 ; [+30]
      101 GETUPVAL                         R5 10
      102 JUMPIFNOT                        R5 ; [+28]
      103 GETTABLEKS                       R5 R4 K23 ["outputPinToConnectionMap"]
      105 LOADNIL                          R6
      106 LOADNIL                          R7
      107 FORGPREP                         R5
      108 JUMPIFEQKNIL                     R9 ; [+20]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R10 R10 K24 ["hasDynamicInputPins"]
      113 GETUPVAL                         R11 10
      114 GETTABLEKS                       R12 R9 K25 ["inputNodeId"]
      116 CALL                             R10 2 1
      117 JUMPIFNOT                        R10 ; [+11]
      118 GETUPVAL                         R10 3
      119 GETTABLEKS                       R10 R10 K26 ["renameDynamicInputPin"]
      121 GETUPVAL                         R11 1
      122 GETUPVAL                         R12 10
      123 GETTABLEKS                       R13 R9 K25 ["inputNodeId"]
      125 GETTABLEKS                       R14 R9 K27 ["inputNodePinId"]
      127 MOVE                             R15 R1
      128 CALL                             R10 5 0
      129 FORGLOOP                         R5 2 ; [-22]
      131 JUMPIFNOT                        R2 ; [+7]
      132 GETUPVAL                         R4 0
      133 MOVE                             R6 R2
      134 GETIMPORT                        R7 K29 [Enum.FinishRecordingOperation.Commit]
      136 NAMECALL                         R4 R4 K19 ["FinishRecording"]
      138 CALL                             R4 3 0
      139 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETUPVAL                         R3 1
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R3 2
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K1 ["idToInstance"]
       14 CALL                             R3 2 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIFEQKNIL                     R1 ; [+3]
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 3
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+72]
       24 JUMPIFNOT                        R3 ; [+6]
       25 NEWTABLE                         R4 0 1
       27 MOVE                             R5 R3
       28 SETLIST                          R4 R5 1 [1]
       30 JUMP                             ; [+6]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K2 ["getAllParameterInstancesFromName"]
       34 MOVE                             R5 R2
       35 MOVE                             R6 R0
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 5
       38 LOADK                            R7 K3 ["NativeGraphContext"]
       39 LOADK                            R8 K4 ["removeParameterAsync"]
       40 NAMECALL                         R5 R5 K5 ["TryBeginRecording"]
       42 CALL                             R5 3 1
       43 MOVE                             R6 R4
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R11 R11 K6 ["clearParameterNodeBindings"]
       50 MOVE                             R12 R10
       51 CALL                             R11 1 0
       52 MOVE                             R13 R2
       53 NAMECALL                         R11 R10 K7 ["IsDescendantOf"]
       55 CALL                             R11 2 1
       56 JUMPIFNOT                        R11 ; [+3]
       57 LOADNIL                          R11
       58 SETTABLEKS                       R11 R10 K8 ["Parent"]
       60 FORGLOOP                         R6 2 ; [-14]
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K9 ["getParameterDefinitionInstance"]
       65 MOVE                             R7 R2
       66 MOVE                             R8 R0
       67 CALL                             R6 2 1
       68 JUMPIFNOTEQKNIL                  R1 ; [+6]
       70 JUMPIFNOT                        R6 ; [+4]
       71 LOADNIL                          R7
       72 SETTABLEKS                       R7 R6 K8 ["Parent"]
       74 LOADNIL                          R6
       75 JUMPIF                           R6 ; [+11]
       76 MOVE                             R9 R0
       77 NAMECALL                         R7 R2 K10 ["GetAttribute"]
       79 CALL                             R7 2 1
       80 JUMPIFEQKNIL                     R7 ; [+6]
       82 MOVE                             R9 R0
       83 LOADNIL                          R10
       84 NAMECALL                         R7 R2 K11 ["SetAttribute"]
       86 CALL                             R7 3 0
       87 JUMPIFNOT                        R5 ; [+7]
       88 GETUPVAL                         R7 5
       89 MOVE                             R9 R5
       90 GETIMPORT                        R10 K15 [Enum.FinishRecordingOperation.Commit]
       92 NAMECALL                         R7 R7 K16 ["FinishRecording"]
       94 CALL                             R7 3 0
       95 RETURN                           R0 0
       96 JUMPIFNOT                        R3 ; [+10]
       97 LOADK                            R7 K17 ["Folder"]
       98 NAMECALL                         R5 R3 K18 ["IsA"]
      100 CALL                             R5 2 1
      101 FASTCALL2K                       ASSERT R5 K19 ; [+4]
      103 LOADK                            R6 K19 ["Expected parameter instance to be a Folder"]
      104 GETIMPORT                        R4 K21 [assert]
      106 CALL                             R4 2 0
      107 LOADNIL                          R4
      108 JUMPIFNOT                        R3 ; [+17]
      109 LOADK                            R8 K17 ["Folder"]
      110 NAMECALL                         R6 R3 K18 ["IsA"]
      112 CALL                             R6 2 1
      113 FASTCALL2K                       ASSERT R6 K19 ; [+4]
      115 LOADK                            R7 K19 ["Expected parameter instance to be a Folder"]
      116 GETIMPORT                        R5 K21 [assert]
      118 CALL                             R5 2 0
      119 NEWTABLE                         R5 0 1
      121 MOVE                             R6 R3
      122 SETLIST                          R5 R6 1 [1]
      124 MOVE                             R4 R5
      125 JUMP                             ; [+7]
      126 GETUPVAL                         R5 4
      127 GETTABLEKS                       R5 R5 K2 ["getAllParameterInstancesFromName"]
      129 MOVE                             R6 R2
      130 MOVE                             R7 R0
      131 CALL                             R5 2 1
      132 MOVE                             R4 R5
      133 GETUPVAL                         R5 5
      134 LOADK                            R7 K3 ["NativeGraphContext"]
      135 LOADK                            R8 K4 ["removeParameterAsync"]
      136 NAMECALL                         R5 R5 K5 ["TryBeginRecording"]
      138 CALL                             R5 3 1
      139 MOVE                             R6 R4
      140 LOADNIL                          R7
      141 LOADNIL                          R8
      142 FORGPREP                         R6
      143 NAMECALL                         R11 R10 K22 ["GetChildren"]
      145 CALL                             R11 1 3
      146 FORGPREP                         R11
      147 LOADK                            R18 K23 ["ObjectValue"]
      148 NAMECALL                         R16 R15 K18 ["IsA"]
      150 CALL                             R16 2 1
      151 JUMPIFNOT                        R16 ; [+15]
      152 GETTABLEKS                       R16 R15 K24 ["Value"]
      154 JUMPIFNOT                        R16 ; [+12]
      155 GETUPVAL                         R17 4
      156 GETTABLEKS                       R17 R17 K25 ["getParameterWireInputPinId"]
      158 GETTABLEKS                       R18 R15 K26 ["Name"]
      160 CALL                             R17 1 1
      161 JUMPIFNOT                        R17 ; [+5]
      162 MOVE                             R20 R17
      163 LOADNIL                          R21
      164 NAMECALL                         R18 R16 K11 ["SetAttribute"]
      166 CALL                             R18 3 0
      167 FORGLOOP                         R11 2 ; [-21]
      169 LOADNIL                          R11
      170 SETTABLEKS                       R11 R10 K8 ["Parent"]
      172 FORGLOOP                         R6 2 ; [-30]
      174 GETUPVAL                         R8 4
      175 GETTABLEKS                       R8 R8 K27 ["getParameterInstanceName"]
      177 MOVE                             R9 R0
      178 CALL                             R8 1 -1
      179 NAMECALL                         R6 R2 K28 ["FindFirstChild"]
      181 CALL                             R6 -1 1
      182 JUMPIF                           R6 ; [+11]
      183 MOVE                             R8 R0
      184 NAMECALL                         R6 R2 K10 ["GetAttribute"]
      186 CALL                             R6 2 1
      187 JUMPIFEQKNIL                     R6 ; [+6]
      189 MOVE                             R8 R0
      190 LOADNIL                          R9
      191 NAMECALL                         R6 R2 K11 ["SetAttribute"]
      193 CALL                             R6 3 0
      194 JUMPIFNOT                        R5 ; [+7]
      195 GETUPVAL                         R6 5
      196 MOVE                             R8 R5
      197 GETIMPORT                        R9 K15 [Enum.FinishRecordingOperation.Commit]
      199 NAMECALL                         R6 R6 K16 ["FinishRecording"]
      201 CALL                             R6 3 0
      202 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAnimGraphUI_NodesHaveSpaces"]
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 MOVE                             R1 R3
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 JUMPIFNOTEQ                      R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K1 ["observeSelectedGraphInstance"]
       19 LOADB                            R4 0
       20 CALL                             R3 1 1
       21 JUMPIF                           R3 ; [+1]
       22 RETURN                           R0 0
       23 JUMPIFNOT                        R2 ; [+6]
       24 GETUPVAL                         R4 4
       25 MOVE                             R6 R2
       26 NAMECALL                         R4 R4 K2 ["idToInstance"]
       28 CALL                             R4 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 JUMPIFEQKNIL                     R2 ; [+3]
       33 JUMPIF                           R4 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R5 2
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+153]
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R5 R5 K3 ["getParameterDefinitionInstance"]
       41 MOVE                             R6 R3
       42 MOVE                             R7 R0
       43 CALL                             R5 2 1
       44 JUMPIF                           R5 ; [+1]
       45 RETURN                           R0 0
       46 JUMPIFNOT                        R4 ; [+6]
       47 NEWTABLE                         R6 0 1
       49 MOVE                             R7 R4
       50 SETLIST                          R6 R7 1 [1]
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R6 5
       54 GETTABLEKS                       R6 R6 K4 ["getAllParameterInstancesFromName"]
       56 MOVE                             R7 R3
       57 MOVE                             R8 R0
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 6
       60 LOADK                            R9 K5 ["NativeGraphContext"]
       61 LOADK                            R10 K6 ["renameParameterAsync"]
       62 NAMECALL                         R7 R7 K7 ["TryBeginRecording"]
       64 CALL                             R7 3 1
       65 MOVE                             R10 R1
       66 NAMECALL                         R8 R3 K8 ["GetAttribute"]
       68 CALL                             R8 2 1
       69 JUMPIFNOTEQKNIL                  R8 ; [+9]
       71 MOVE                             R10 R1
       72 MOVE                             R13 R0
       73 NAMECALL                         R11 R3 K8 ["GetAttribute"]
       75 CALL                             R11 2 -1
       76 NAMECALL                         R8 R3 K9 ["SetAttribute"]
       78 CALL                             R8 -1 0
       79 LOADNIL                          R8
       80 JUMPIF                           R4 ; [+25]
       81 GETUPVAL                         R9 5
       82 GETTABLEKS                       R9 R9 K3 ["getParameterDefinitionInstance"]
       84 MOVE                             R10 R3
       85 MOVE                             R11 R1
       86 CALL                             R9 2 1
       87 JUMPIF                           R9 ; [+18]
       88 GETUPVAL                         R9 5
       89 GETTABLEKS                       R9 R9 K10 ["getParameterInstanceName"]
       91 MOVE                             R10 R1
       92 CALL                             R9 1 1
       93 SETTABLEKS                       R9 R5 K11 ["Name"]
       95 GETUPVAL                         R11 7
       96 GETTABLEKS                       R11 R11 K12 ["NODE_ATTRIBUTES"]
       98 GETTABLEKS                       R11 R11 K13 ["BindingName"]
      100 MOVE                             R12 R1
      101 NAMECALL                         R9 R5 K9 ["SetAttribute"]
      103 CALL                             R9 3 0
      104 MOVE                             R8 R5
      105 JUMP                             ; [+15]
      106 GETUPVAL                         R9 5
      107 GETTABLEKS                       R9 R9 K14 ["getOrCreateParameterDefinition"]
      109 MOVE                             R10 R3
      110 MOVE                             R11 R1
      111 GETUPVAL                         R14 7
      112 GETTABLEKS                       R14 R14 K12 ["NODE_ATTRIBUTES"]
      114 GETTABLEKS                       R14 R14 K15 ["ParameterType"]
      116 NAMECALL                         R12 R5 K8 ["GetAttribute"]
      118 CALL                             R12 2 -1
      119 CALL                             R9 -1 1
      120 MOVE                             R8 R9
      121 JUMPIFNOTEQ                      R8 R5 ; [+2]
      123 LOADB                            R9 0 +1
      124 LOADB                            R9 1
      125 GETUPVAL                         R10 8
      126 GETTABLEKS                       R10 R10 K16 ["parameterDestroyConnectionMapRef"]
      128 GETTABLEKS                       R10 R10 K17 ["current"]
      130 GETIMPORT                        R11 K20 [table.clone]
      132 MOVE                             R12 R10
      133 CALL                             R11 1 1
      134 MOVE                             R12 R6
      135 LOADNIL                          R13
      136 LOADNIL                          R14
      137 FORGPREP                         R12
      138 GETUPVAL                         R17 5
      139 GETTABLEKS                       R17 R17 K21 ["setParameterNodeBindingNames"]
      141 MOVE                             R18 R16
      142 MOVE                             R19 R1
      143 CALL                             R17 2 0
      144 JUMPIFNOT                        R9 ; [+2]
      145 SETTABLEKS                       R8 R16 K22 ["Parent"]
      147 GETUPVAL                         R17 4
      148 MOVE                             R19 R16
      149 NAMECALL                         R17 R17 K23 ["instanceToId"]
      151 CALL                             R17 2 1
      152 GETTABLE                         R18 R10 R17
      153 JUMPIFNOT                        R18 ; [+11]
      154 DUPTABLE                         R18 K27 [{"connection", "nodeId", "parameterName"}]
      155 GETTABLE                         R19 R10 R17
      156 GETTABLEKS                       R19 R19 K24 ["connection"]
      158 SETTABLEKS                       R19 R18 K24 ["connection"]
      160 SETTABLEKS                       R17 R18 K25 ["nodeId"]
      162 SETTABLEKS                       R1 R18 K26 ["parameterName"]
      164 SETTABLE                         R18 R11 R17
      165 FORGLOOP                         R12 2 ; [-28]
      167 GETUPVAL                         R12 8
      168 GETTABLEKS                       R12 R12 K28 ["setParameterDestroyConnectionMap"]
      170 MOVE                             R13 R11
      171 CALL                             R12 1 0
      172 JUMPIF                           R4 ; [+9]
      173 JUMPIFNOT                        R9 ; [+3]
      174 LOADNIL                          R12
      175 SETTABLEKS                       R12 R5 K22 ["Parent"]
      177 MOVE                             R14 R0
      178 LOADNIL                          R15
      179 NAMECALL                         R12 R3 K9 ["SetAttribute"]
      181 CALL                             R12 3 0
      182 JUMPIFNOT                        R7 ; [+7]
      183 GETUPVAL                         R12 6
      184 MOVE                             R14 R7
      185 GETIMPORT                        R15 K32 [Enum.FinishRecordingOperation.Commit]
      187 NAMECALL                         R12 R12 K33 ["FinishRecording"]
      189 CALL                             R12 3 0
      190 RETURN                           R0 0
      191 NEWTABLE                         R5 0 0
      193 JUMPIFNOT                        R4 ; [+18]
      194 LOADK                            R9 K34 ["Folder"]
      195 NAMECALL                         R7 R4 K35 ["IsA"]
      197 CALL                             R7 2 1
      198 FASTCALL2K                       ASSERT R7 K36 ; [+4]
      200 LOADK                            R8 K36 ["Expected specified parameterNodeInstance to be a Folder"]
      201 GETIMPORT                        R6 K38 [assert]
      203 CALL                             R6 2 0
      204 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
      206 MOVE                             R7 R5
      207 MOVE                             R8 R4
      208 GETIMPORT                        R6 K40 [table.insert]
      210 CALL                             R6 2 0
      211 JUMP                             ; [+7]
      212 GETUPVAL                         R6 5
      213 GETTABLEKS                       R6 R6 K4 ["getAllParameterInstancesFromName"]
      215 MOVE                             R7 R3
      216 MOVE                             R8 R0
      217 CALL                             R6 2 1
      218 MOVE                             R5 R6
      219 LENGTH                           R6 R5
      220 JUMPIFNOTEQKN                    R6 K41 [0] ; [+2]
      222 RETURN                           R0 0
      223 GETUPVAL                         R6 6
      224 LOADK                            R8 K5 ["NativeGraphContext"]
      225 LOADK                            R9 K6 ["renameParameterAsync"]
      226 NAMECALL                         R6 R6 K7 ["TryBeginRecording"]
      228 CALL                             R6 3 1
      229 MOVE                             R9 R1
      230 NAMECALL                         R7 R3 K8 ["GetAttribute"]
      232 CALL                             R7 2 1
      233 JUMPIF                           R7 ; [+8]
      234 MOVE                             R9 R1
      235 MOVE                             R12 R0
      236 NAMECALL                         R10 R3 K8 ["GetAttribute"]
      238 CALL                             R10 2 -1
      239 NAMECALL                         R7 R3 K9 ["SetAttribute"]
      241 CALL                             R7 -1 0
      242 GETUPVAL                         R7 8
      243 GETTABLEKS                       R7 R7 K16 ["parameterDestroyConnectionMapRef"]
      245 GETTABLEKS                       R7 R7 K17 ["current"]
      247 GETIMPORT                        R8 K20 [table.clone]
      249 MOVE                             R9 R7
      250 CALL                             R8 1 1
      251 MOVE                             R9 R5
      252 LOADNIL                          R10
      253 LOADNIL                          R11
      254 FORGPREP                         R9
      255 NAMECALL                         R14 R13 K42 ["GetChildren"]
      257 CALL                             R14 1 3
      258 FORGPREP                         R14
      259 LOADK                            R21 K43 ["ObjectValue"]
      260 NAMECALL                         R19 R18 K35 ["IsA"]
      262 CALL                             R19 2 1
      263 JUMPIFNOT                        R19 ; [+17]
      264 GETTABLEKS                       R19 R18 K44 ["Value"]
      266 JUMPIFNOT                        R19 ; [+14]
      267 GETUPVAL                         R20 5
      268 GETTABLEKS                       R20 R20 K45 ["getParameterWireInputPinId"]
      270 GETTABLEKS                       R21 R18 K11 ["Name"]
      272 CALL                             R20 1 1
      273 JUMPIFNOT                        R20 ; [+7]
      274 GETUPVAL                         R21 5
      275 GETTABLEKS                       R21 R21 K46 ["setParameterBindingName"]
      277 MOVE                             R22 R19
      278 MOVE                             R23 R20
      279 MOVE                             R24 R1
      280 CALL                             R21 3 0
      281 FORGLOOP                         R14 2 ; [-23]
      283 GETUPVAL                         R14 5
      284 GETTABLEKS                       R14 R14 K10 ["getParameterInstanceName"]
      286 MOVE                             R15 R1
      287 CALL                             R14 1 1
      288 SETTABLEKS                       R14 R13 K11 ["Name"]
      290 GETUPVAL                         R16 7
      291 GETTABLEKS                       R16 R16 K12 ["NODE_ATTRIBUTES"]
      293 GETTABLEKS                       R16 R16 K13 ["BindingName"]
      295 MOVE                             R17 R1
      296 NAMECALL                         R14 R13 K9 ["SetAttribute"]
      298 CALL                             R14 3 0
      299 GETUPVAL                         R14 4
      300 MOVE                             R16 R13
      301 NAMECALL                         R14 R14 K23 ["instanceToId"]
      303 CALL                             R14 2 1
      304 GETTABLE                         R15 R7 R14
      305 JUMPIFNOT                        R15 ; [+11]
      306 DUPTABLE                         R15 K27 [{"connection", "nodeId", "parameterName"}]
      307 GETTABLE                         R16 R7 R14
      308 GETTABLEKS                       R16 R16 K24 ["connection"]
      310 SETTABLEKS                       R16 R15 K24 ["connection"]
      312 SETTABLEKS                       R14 R15 K25 ["nodeId"]
      314 SETTABLEKS                       R1 R15 K26 ["parameterName"]
      316 SETTABLE                         R15 R8 R14
      317 FORGLOOP                         R9 2 ; [-63]
      319 GETUPVAL                         R9 8
      320 GETTABLEKS                       R9 R9 K28 ["setParameterDestroyConnectionMap"]
      322 MOVE                             R10 R8
      323 CALL                             R9 1 0
      324 LOADB                            R9 0
      325 JUMPIFEQKNIL                     R2 ; [+9]
      327 GETUPVAL                         R11 5
      328 GETTABLEKS                       R11 R11 K10 ["getParameterInstanceName"]
      330 MOVE                             R12 R0
      331 CALL                             R11 1 -1
      332 NAMECALL                         R9 R3 K47 ["FindFirstChild"]
      334 CALL                             R9 -1 1
      335 JUMPIF                           R9 ; [+5]
      336 MOVE                             R12 R0
      337 LOADNIL                          R13
      338 NAMECALL                         R10 R3 K9 ["SetAttribute"]
      340 CALL                             R10 3 0
      341 JUMPIFNOT                        R6 ; [+7]
      342 GETUPVAL                         R10 6
      343 MOVE                             R12 R6
      344 GETIMPORT                        R13 K32 [Enum.FinishRecordingOperation.Commit]
      346 NAMECALL                         R10 R10 K33 ["FinishRecording"]
      348 CALL                             R10 3 0
      349 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["getAllParameterInstancesFromName"]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R0
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 2
       14 LOADK                            R7 K2 ["NativeGraphContext"]
       15 LOADK                            R8 K3 ["setParameterNodeTypeAsync"]
       16 NAMECALL                         R5 R5 K4 ["TryBeginRecording"]
       18 CALL                             R5 3 1
       19 MOVE                             R8 R0
       20 MOVE                             R9 R2
       21 NAMECALL                         R6 R3 K5 ["SetAttribute"]
       23 CALL                             R6 3 0
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+17]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K6 ["getParameterDefinitionInstance"]
       30 MOVE                             R7 R3
       31 MOVE                             R8 R0
       32 CALL                             R6 2 1
       33 JUMPIFNOT                        R6 ; [+25]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K7 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R9 R9 K8 ["ParameterType"]
       39 MOVE                             R10 R1
       40 NAMECALL                         R7 R6 K5 ["SetAttribute"]
       42 CALL                             R7 3 0
       43 JUMP                             ; [+15]
       44 MOVE                             R6 R4
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 FORGPREP                         R6
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R13 R13 K7 ["NODE_ATTRIBUTES"]
       51 GETTABLEKS                       R13 R13 K8 ["ParameterType"]
       53 MOVE                             R14 R1
       54 NAMECALL                         R11 R10 K5 ["SetAttribute"]
       56 CALL                             R11 3 0
       57 FORGLOOP                         R6 2 ; [-10]
       59 JUMPIFNOT                        R5 ; [+7]
       60 GETUPVAL                         R6 2
       61 MOVE                             R8 R5
       62 GETIMPORT                        R9 K12 [Enum.FinishRecordingOperation.Commit]
       64 NAMECALL                         R6 R6 K13 ["FinishRecording"]
       66 CALL                             R6 3 0
       67 RETURN                           R0 0

PROTO_58:
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
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R1 K4 ["Parent"]
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R3 1
       18 MOVE                             R5 R2
       19 GETIMPORT                        R6 K8 [Enum.FinishRecordingOperation.Commit]
       21 NAMECALL                         R3 R3 K9 ["FinishRecording"]
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["selectionService"]
        9 NEWTABLE                         R4 0 1
       11 MOVE                             R5 R1
       12 SETLIST                          R4 R5 1 [1]
       14 NAMECALL                         R2 R2 K2 ["Set"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["observeSelectedGraphInstance"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+5]
       10 GETIMPORT                        R3 K2 [warn]
       12 LOADK                            R4 K3 ["[NativeGraphContext] No graph selected, cannot set expression"]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 MOVE                             R5 R1
       17 NAMECALL                         R3 R3 K4 ["idToInstance"]
       19 CALL                             R3 2 1
       20 JUMPIFEQKNIL                     R3 ; [+7]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["isValueNode"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 JUMPIF                           R4 ; [+6]
       28 GETIMPORT                        R4 K2 [warn]
       30 LOADK                            R5 K6 ["[NativeGraphContext] No expression value node found for nodeId:"]
       31 MOVE                             R6 R1
       32 CALL                             R4 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K7 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R6 R6 K8 ["Expression"]
       39 NAMECALL                         R4 R3 K9 ["GetAttribute"]
       41 CALL                             R4 2 1
       42 JUMPIFNOTEQ                      R4 R0 ; [+2]
       44 RETURN                           R0 0
       45 GETUPVAL                         R5 5
       46 LOADK                            R7 K10 ["NativeGraphContext"]
       47 LOADK                            R8 K11 ["setExpressionNodeValueAsync"]
       48 NAMECALL                         R5 R5 K12 ["TryBeginRecording"]
       50 CALL                             R5 3 1
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K13 ["setExpressionNodeValue"]
       54 MOVE                             R7 R3
       55 MOVE                             R8 R0
       56 CALL                             R6 2 0
       57 JUMPIFNOT                        R5 ; [+7]
       58 GETUPVAL                         R6 5
       59 MOVE                             R8 R5
       60 GETIMPORT                        R9 K17 [Enum.FinishRecordingOperation.Commit]
       62 NAMECALL                         R6 R6 K18 ["FinishRecording"]
       64 CALL                             R6 3 0
       65 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+70]
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
       27 JUMPIFNOT                        R4 ; [+38]
       28 JUMPIFNOT                        R3 ; [+10]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K7 ["removeOrderedInputPin"]
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R3
       34 GETTABLEKS                       R8 R4 K8 ["inputNodeId"]
       36 GETTABLEKS                       R9 R4 K9 ["inputNodePinId"]
       38 CALL                             R5 4 0
       39 GETTABLEKS                       R5 R4 K10 ["wireId"]
       41 JUMPIFNOT                        R5 ; [+24]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R7 R4 K10 ["wireId"]
       45 NAMECALL                         R5 R5 K11 ["idToInstance"]
       47 CALL                             R5 2 1
       48 JUMPIFNOT                        R5 ; [+17]
       49 LOADK                            R8 K12 ["ObjectValue"]
       50 NAMECALL                         R6 R5 K13 ["IsA"]
       52 CALL                             R6 2 1
       53 JUMPIFNOT                        R6 ; [+12]
       54 GETTABLEKS                       R6 R5 K14 ["Value"]
       56 JUMPIFEQKNIL                     R6 ; [+6]
       58 GETTABLEKS                       R6 R5 K14 ["Value"]
       60 GETUPVAL                         R7 0
       61 JUMPIFNOTEQ                      R6 R7 ; [+4]
       63 LOADNIL                          R6
       64 SETTABLEKS                       R6 R5 K15 ["Parent"]
       66 GETIMPORT                        R5 K18 [table.clone]
       68 MOVE                             R6 R1
       69 CALL                             R5 1 1
       70 LOADNIL                          R6
       71 SETTABLE                         R6 R5 R0
       72 GETUPVAL                         R6 2
       73 GETTABLEKS                       R6 R6 K19 ["setNodeDestroyConnectionMap"]
       75 MOVE                             R7 R5
       76 CALL                             R6 1 0
       77 RETURN                           R0 0

PROTO_62:
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
       24 JUMPIF                           R10 ; [+29]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+22]
       32 GETTABLEKS                       R11 R10 K8 ["AncestryChanged"]
       34 NEWCLOSURE                       R13 P0
       35 CAPTURE                          VAL R10
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 NAMECALL                         R11 R11 K9 ["Connect"]
       42 CALL                             R11 2 1
       43 LOADB                            R4 1
       44 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       46 DUPTABLE                         R13 K11 [{"connection", "nodeId"}]
       47 SETTABLEKS                       R11 R13 K10 ["connection"]
       49 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       51 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       53 SETTABLE                         R13 R3 R12
       54 FORGLOOP                         R5 2 ; [-34]
       56 JUMPIFNOT                        R4 ; [+5]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K12 ["setNodeDestroyConnectionMap"]
       60 MOVE                             R6 R3
       61 CALL                             R5 1 0
       62 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+78]
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
       20 GETUPVAL                         R4 3
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R3 R2 K6 ["parameterName"]
       25 JUMP                             ; [+18]
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+13]
       29 GETUPVAL                         R3 0
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K7 ["NODE_ATTRIBUTES"]
       33 GETTABLEKS                       R5 R5 K8 ["BindingName"]
       35 NAMECALL                         R3 R3 K9 ["GetAttribute"]
       37 CALL                             R3 2 1
       38 JUMPIF                           R3 ; [+5]
       39 GETTABLEKS                       R3 R2 K6 ["parameterName"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R3 R2 K6 ["parameterName"]
       44 GETUPVAL                         R4 4
       45 CALL                             R4 0 1
       46 JUMPIFNOT                        R4 ; [+7]
       47 FASTCALL1                        TYPE R3 ; [+3]
       48 MOVE                             R5 R3
       49 GETIMPORT                        R4 K11 [type]
       51 CALL                             R4 1 1
       52 JUMPIFNOTEQKS                    R4 K12 ["string"] ; [+7]
       54 GETUPVAL                         R4 6
       55 MOVE                             R5 R3
       56 GETTABLEKS                       R6 R2 K13 ["nodeId"]
       58 CALL                             R4 2 0
       59 JUMP                             ; [+7]
       60 GETIMPORT                        R4 K15 [warn]
       62 LOADK                            R5 K16 ["Failed to remove parameter for nodeId "]
       63 GETTABLEKS                       R6 R2 K13 ["nodeId"]
       65 LOADK                            R7 K17 [" because parameter name is not a string"]
       66 CALL                             R4 3 0
       67 GETTABLEKS                       R4 R2 K18 ["connection"]
       69 NAMECALL                         R4 R4 K19 ["Disconnect"]
       71 CALL                             R4 1 0
       72 GETIMPORT                        R4 K22 [table.clone]
       74 MOVE                             R5 R1
       75 CALL                             R4 1 1
       76 GETTABLEKS                       R5 R2 K13 ["nodeId"]
       78 LOADNIL                          R6
       79 SETTABLE                         R6 R4 R5
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R5 R5 K23 ["setParameterDestroyConnectionMap"]
       83 MOVE                             R6 R4
       84 CALL                             R5 1 0
       85 RETURN                           R0 0

PROTO_65:
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
       24 JUMPIF                           R10 ; [+59]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+52]
       32 GETUPVAL                         R11 2
       33 CALL                             R11 0 1
       34 JUMPIFNOT                        R11 ; [+6]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K8 ["isValueNode"]
       38 MOVE                             R12 R10
       39 CALL                             R11 1 1
       40 JUMPIF                           R11 ; [+43]
       41 GETTABLEKS                       R11 R10 K9 ["AncestryChanged"]
       43 NEWCLOSURE                       R13 P0
       44 CAPTURE                          VAL R10
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 NAMECALL                         R11 R11 K10 ["Connect"]
       53 CALL                             R11 2 1
       54 LOADB                            R4 1
       55 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       57 DUPTABLE                         R13 K13 [{"connection", "nodeId", "parameterName"}]
       58 SETTABLEKS                       R11 R13 K11 ["connection"]
       60 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       62 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       64 GETUPVAL                         R15 4
       65 CALL                             R15 0 1
       66 JUMPIFNOT                        R15 ; [+6]
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R14 R14 K14 ["getParameterBindingName"]
       70 MOVE                             R15 R10
       71 CALL                             R14 1 1
       72 JUMP                             ; [+8]
       73 GETUPVAL                         R16 5
       74 GETTABLEKS                       R16 R16 K15 ["NODE_ATTRIBUTES"]
       76 GETTABLEKS                       R16 R16 K16 ["BindingName"]
       78 NAMECALL                         R14 R10 K17 ["GetAttribute"]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K12 ["parameterName"]
       83 SETTABLE                         R13 R3 R12
       84 FORGLOOP                         R5 2 ; [-64]
       86 JUMPIFNOT                        R4 ; [+5]
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R5 R5 K18 ["setParameterDestroyConnectionMap"]
       90 MOVE                             R6 R3
       91 CALL                             R5 1 0
       92 RETURN                           R0 0

PROTO_66:
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
       12 RETURN                           R0 1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["current"]
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K4 ["cleanUpWiresForDeletedNode"]
       19 GETUPVAL                         R2 4
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 5
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 6
       24 NAMECALL                         R1 R1 K5 ["Disconnect"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 7
       28 CALL                             R1 0 0
       29 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["idToInstance"]
        4 CALL                             R3 2 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 LOADNIL                          R4
        9 GETTABLEKS                       R5 R3 K1 ["AncestryChanged"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R4
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R5 R5 K2 ["Connect"]
       22 CALL                             R5 2 1
       23 MOVE                             R4 R5
       24 CLOSEUPVALS                      R4
       25 RETURN                           R4 1

PROTO_69:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeDestroyConnectionMapRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_70:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["nodeDestroyConnectionMapRef"]
        5 GETTABLEKS                       R1 R1 K4 ["current"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R0 R1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["setNodeDestroyConnectionMap"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_71:
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
       21 GETTABLEKS                       R10 R9 K6 ["nodeId"]
       23 GETTABLE                         R11 R2 R10
       24 JUMPIF                           R11 ; [+40]
       25 NEWCLOSURE                       R12 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R10
       28 NEWCLOSURE                       R13 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R10
       31 GETUPVAL                         R14 1
       32 MOVE                             R16 R10
       33 NAMECALL                         R14 R14 K7 ["idToInstance"]
       35 CALL                             R14 2 1
       36 JUMPIF                           R14 ; [+2]
       37 LOADNIL                          R11
       38 JUMP                             ; [+18]
       39 LOADNIL                          R15
       40 GETTABLEKS                       R16 R14 K8 ["AncestryChanged"]
       42 NEWCLOSURE                       R18 P2
       43 CAPTURE                          VAL R14
       44 CAPTURE                          VAL R12
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R10
       49 CAPTURE                          REF R15
       50 CAPTURE                          VAL R13
       51 NAMECALL                         R16 R16 K9 ["Connect"]
       53 CALL                             R16 2 1
       54 MOVE                             R15 R16
       55 MOVE                             R11 R15
       56 CLOSEUPVALS                      R15
       57 JUMPIFNOT                        R11 ; [+7]
       58 LOADB                            R4 1
       59 DUPTABLE                         R12 K11 [{"connection", "nodeId"}]
       60 SETTABLEKS                       R11 R12 K10 ["connection"]
       62 SETTABLEKS                       R10 R12 K6 ["nodeId"]
       64 SETTABLE                         R12 R3 R10
       65 FORGLOOP                         R5 2 ; [-45]
       67 JUMPIFNOT                        R4 ; [+5]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K12 ["setNodeDestroyConnectionMap"]
       71 MOVE                             R6 R3
       72 CALL                             R5 1 0
       73 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["destroyConnectionMapRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_74:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["destroyConnectionMapRef"]
        5 GETTABLEKS                       R1 R1 K4 ["current"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R0 R1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["setDestroyConnectionMap"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeValueNodeInfoLookupListRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["destroyConnectionMapRef"]
       10 GETTABLEKS                       R2 R2 K1 ["current"]
       12 GETIMPORT                        R3 K5 [table.clone]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 LOADB                            R4 0
       17 MOVE                             R5 R1
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLEKS                       R10 R9 K6 ["nodeId"]
       23 GETTABLE                         R11 R2 R10
       24 JUMPIF                           R11 ; [+40]
       25 NEWCLOSURE                       R12 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R10
       28 NEWCLOSURE                       R13 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R10
       31 GETUPVAL                         R14 1
       32 MOVE                             R16 R10
       33 NAMECALL                         R14 R14 K7 ["idToInstance"]
       35 CALL                             R14 2 1
       36 JUMPIF                           R14 ; [+2]
       37 LOADNIL                          R11
       38 JUMP                             ; [+18]
       39 LOADNIL                          R15
       40 GETTABLEKS                       R16 R14 K8 ["AncestryChanged"]
       42 NEWCLOSURE                       R18 P2
       43 CAPTURE                          VAL R14
       44 CAPTURE                          VAL R12
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R10
       49 CAPTURE                          REF R15
       50 CAPTURE                          VAL R13
       51 NAMECALL                         R16 R16 K9 ["Connect"]
       53 CALL                             R16 2 1
       54 MOVE                             R15 R16
       55 MOVE                             R11 R15
       56 CLOSEUPVALS                      R15
       57 JUMPIFNOT                        R11 ; [+7]
       58 LOADB                            R4 1
       59 DUPTABLE                         R12 K11 [{"connection", "nodeId"}]
       60 SETTABLEKS                       R11 R12 K10 ["connection"]
       62 SETTABLEKS                       R10 R12 K6 ["nodeId"]
       64 SETTABLE                         R12 R3 R10
       65 FORGLOOP                         R5 2 ; [-45]
       67 JUMPIFNOT                        R4 ; [+5]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K12 ["setDestroyConnectionMap"]
       71 MOVE                             R6 R3
       72 CALL                             R5 1 0
       73 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_77:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+4]
        7 NEWTABLE                         R2 0 0
        9 RETURN                           R2 1
       10 NEWTABLE                         R2 0 1
       12 MOVE                             R3 R1
       13 SETLIST                          R2 R3 1 [1]
       15 RETURN                           R2 1

PROTO_79:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["useContext"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K4 ["Context"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K3 ["useContext"]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K4 ["Context"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K3 ["useContext"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K4 ["Context"]
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R8 R5 K5 ["nodeSelection"]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K3 ["useContext"]
       40 GETUPVAL                         R10 6
       41 GETTABLEKS                       R10 R10 K4 ["Context"]
       43 CALL                             R9 1 1
       44 GETUPVAL                         R11 7
       45 CALL                             R11 0 1
       46 JUMPIFNOT                        R11 ; [+8]
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K3 ["useContext"]
       50 GETUPVAL                         R11 8
       51 GETTABLEKS                       R11 R11 K4 ["Context"]
       53 CALL                             R10 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R10
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K6 ["useState"]
       59 GETIMPORT                        R12 K9 [Rect.new]
       61 LOADN                            R13 0
       62 LOADN                            R14 0
       63 LOADN                            R15 0
       64 LOADN                            R16 0
       65 CALL                             R12 4 -1
       66 CALL                             R11 -1 2
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K10 ["useRef"]
       70 LOADNIL                          R14
       71 CALL                             R13 1 1
       72 GETUPVAL                         R14 9
       73 CALL                             R14 0 1
       74 GETUPVAL                         R15 2
       75 GETTABLEKS                       R15 R15 K11 ["useMemo"]
       77 NEWCLOSURE                       R16 P0
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          VAL R14
       80 NEWTABLE                         R17 0 1
       82 MOVE                             R18 R14
       83 SETLIST                          R17 R18 1 [1]
       85 CALL                             R15 2 1
       86 GETUPVAL                         R16 11
       87 CALL                             R16 0 0
       88 GETUPVAL                         R16 2
       89 GETTABLEKS                       R16 R16 K12 ["useEffect"]
       91 NEWCLOSURE                       R17 P1
       92 CAPTURE                          VAL R15
       93 NEWTABLE                         R18 0 1
       95 MOVE                             R19 R15
       96 SETLIST                          R18 R19 1 [1]
       98 CALL                             R16 2 0
       99 GETUPVAL                         R16 2
      100 GETTABLEKS                       R16 R16 K3 ["useContext"]
      102 GETUPVAL                         R17 12
      103 GETTABLEKS                       R17 R17 K4 ["Context"]
      105 CALL                             R16 1 1
      106 GETTABLEKS                       R16 R16 K13 ["instanceRegistry"]
      108 GETUPVAL                         R17 2
      109 GETTABLEKS                       R17 R17 K12 ["useEffect"]
      111 NEWCLOSURE                       R18 P2
      112 CAPTURE                          VAL R9
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          VAL R8
      115 NEWTABLE                         R19 0 2
      117 MOVE                             R20 R8
      118 GETTABLEKS                       R21 R9 K14 ["observeSelectedGraphInstance"]
      120 SETLIST                          R19 R20 2 [1]
      122 CALL                             R17 2 0
      123 GETUPVAL                         R17 2
      124 GETTABLEKS                       R17 R17 K11 ["useMemo"]
      126 NEWCLOSURE                       R18 P3
      127 CAPTURE                          UPVAL U14
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R9
      131 NEWTABLE                         R19 0 3
      133 MOVE                             R20 R16
      134 MOVE                             R21 R15
      135 GETTABLEKS                       R22 R9 K14 ["observeSelectedGraphInstance"]
      137 SETLIST                          R19 R20 3 [1]
      139 CALL                             R17 2 1
      140 GETUPVAL                         R18 2
      141 GETTABLEKS                       R18 R18 K11 ["useMemo"]
      143 NEWCLOSURE                       R19 P4
      144 CAPTURE                          UPVAL U14
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R9
      147 NEWTABLE                         R20 0 2
      149 GETTABLEKS                       R21 R9 K14 ["observeSelectedGraphInstance"]
      151 MOVE                             R22 R16
      152 SETLIST                          R20 R21 2 [1]
      154 CALL                             R18 2 1
      155 GETUPVAL                         R19 2
      156 GETTABLEKS                       R19 R19 K6 ["useState"]
      158 LOADNIL                          R20
      159 CALL                             R19 1 2
      160 GETUPVAL                         R21 2
      161 GETTABLEKS                       R21 R21 K6 ["useState"]
      163 NEWTABLE                         R22 0 0
      165 CALL                             R21 1 2
      166 GETUPVAL                         R23 2
      167 GETTABLEKS                       R23 R23 K6 ["useState"]
      169 NEWTABLE                         R24 0 0
      171 CALL                             R23 1 2
      172 GETUPVAL                         R25 2
      173 GETTABLEKS                       R25 R25 K6 ["useState"]
      175 NEWTABLE                         R26 0 0
      177 CALL                             R25 1 2
      178 GETUPVAL                         R27 15
      179 GETTABLEKS                       R27 R27 K15 ["useRefToState"]
      181 MOVE                             R28 R19
      182 CALL                             R27 1 1
      183 GETUPVAL                         R28 2
      184 GETTABLEKS                       R28 R28 K12 ["useEffect"]
      186 NEWCLOSURE                       R29 P5
      187 CAPTURE                          UPVAL U13
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R12
      191 CAPTURE                          UPVAL U14
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R26
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R4
      200 NEWTABLE                         R30 0 7
      202 MOVE                             R31 R17
      203 MOVE                             R32 R18
      204 GETTABLEKS                       R33 R0 K16 ["testOverrideGraphPayloadMap"]
      206 MOVE                             R34 R20
      207 MOVE                             R35 R12
      208 GETTABLEKS                       R36 R2 K17 ["setMap"]
      210 GETTABLEKS                       R37 R3 K17 ["setMap"]
      212 SETLIST                          R30 R31 7 [1]
      214 CALL                             R28 2 0
      215 GETUPVAL                         R28 2
      216 GETTABLEKS                       R28 R28 K18 ["useCallback"]
      218 NEWCLOSURE                       R29 P6
      219 CAPTURE                          VAL R16
      220 CAPTURE                          UPVAL U14
      221 NEWTABLE                         R30 0 1
      223 MOVE                             R31 R16
      224 SETLIST                          R30 R31 1 [1]
      226 CALL                             R28 2 1
      227 GETUPVAL                         R29 2
      228 GETTABLEKS                       R29 R29 K18 ["useCallback"]
      230 NEWCLOSURE                       R30 P7
      231 CAPTURE                          VAL R16
      232 CAPTURE                          UPVAL U14
      233 NEWTABLE                         R31 0 1
      235 MOVE                             R32 R16
      236 SETLIST                          R31 R32 1 [1]
      238 CALL                             R29 2 1
      239 GETUPVAL                         R30 2
      240 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      242 NEWCLOSURE                       R31 P8
      243 CAPTURE                          UPVAL U16
      244 CAPTURE                          VAL R16
      245 CAPTURE                          UPVAL U14
      246 NEWTABLE                         R32 0 1
      248 MOVE                             R33 R16
      249 SETLIST                          R32 R33 1 [1]
      251 CALL                             R30 2 1
      252 GETUPVAL                         R31 2
      253 GETTABLEKS                       R31 R31 K18 ["useCallback"]
      255 NEWCLOSURE                       R32 P9
      256 CAPTURE                          VAL R16
      257 CAPTURE                          UPVAL U14
      258 NEWTABLE                         R33 0 1
      260 MOVE                             R34 R16
      261 SETLIST                          R33 R34 1 [1]
      263 CALL                             R31 2 1
      264 GETUPVAL                         R32 2
      265 GETTABLEKS                       R32 R32 K18 ["useCallback"]
      267 NEWCLOSURE                       R33 P10
      268 CAPTURE                          VAL R8
      269 CAPTURE                          VAL R16
      270 NEWTABLE                         R34 0 3
      272 MOVE                             R35 R16
      273 MOVE                             R36 R8
      274 MOVE                             R37 R15
      275 SETLIST                          R34 R35 3 [1]
      277 CALL                             R32 2 1
      278 GETUPVAL                         R33 2
      279 GETTABLEKS                       R33 R33 K18 ["useCallback"]
      281 NEWCLOSURE                       R34 P11
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R19
      284 CAPTURE                          VAL R3
      285 CAPTURE                          VAL R16
      286 NEWTABLE                         R35 0 4
      288 GETTABLEKS                       R36 R3 K19 ["get"]
      290 MOVE                             R37 R8
      291 MOVE                             R38 R16
      292 MOVE                             R39 R19
      293 SETLIST                          R35 R36 4 [1]
      295 CALL                             R33 2 1
      296 GETUPVAL                         R34 2
      297 GETTABLEKS                       R34 R34 K6 ["useState"]
      299 LOADK                            R35 K20 [""]
      300 CALL                             R34 1 2
      301 GETUPVAL                         R36 2
      302 GETTABLEKS                       R36 R36 K6 ["useState"]
      304 LOADNIL                          R37
      305 CALL                             R36 1 2
      306 GETUPVAL                         R39 17
      307 CALL                             R39 0 1
      308 JUMPIFNOT                        R39 ; [+7]
      309 GETUPVAL                         R38 18
      310 GETTABLEKS                       R38 R38 K21 ["useSignalState"]
      312 GETTABLEKS                       R39 R9 K14 ["observeSelectedGraphInstance"]
      314 CALL                             R38 1 1
      315 JUMP                             ; [+1]
      316 LOADNIL                          R38
      317 GETUPVAL                         R40 17
      318 CALL                             R40 0 1
      319 JUMPIFNOT                        R40 ; [+12]
      320 GETUPVAL                         R39 2
      321 GETTABLEKS                       R39 R39 K11 ["useMemo"]
      323 NEWCLOSURE                       R40 P12
      324 CAPTURE                          VAL R38
      325 NEWTABLE                         R41 0 1
      327 MOVE                             R42 R38
      328 SETLIST                          R41 R42 1 [1]
      330 CALL                             R39 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R39
      333 GETUPVAL                         R40 18
      334 GETTABLEKS                       R40 R40 K21 ["useSignalState"]
      336 GETTABLEKS                       R41 R9 K14 ["observeSelectedGraphInstance"]
      338 CALL                             R40 1 1
      339 GETUPVAL                         R41 2
      340 GETTABLEKS                       R41 R41 K12 ["useEffect"]
      342 NEWCLOSURE                       R42 P13
      343 CAPTURE                          VAL R40
      344 CAPTURE                          UPVAL U17
      345 CAPTURE                          VAL R35
      346 CAPTURE                          VAL R37
      347 CAPTURE                          UPVAL U19
      348 NEWTABLE                         R43 0 1
      350 MOVE                             R44 R40
      351 SETLIST                          R43 R44 1 [1]
      353 CALL                             R41 2 0
      354 GETUPVAL                         R41 17
      355 CALL                             R41 0 1
      356 JUMPIF                           R41 ; [+13]
      357 GETUPVAL                         R41 2
      358 GETTABLEKS                       R41 R41 K12 ["useEffect"]
      360 NEWCLOSURE                       R42 P14
      361 CAPTURE                          VAL R34
      362 CAPTURE                          VAL R40
      363 NEWTABLE                         R43 0 2
      365 MOVE                             R44 R34
      366 MOVE                             R45 R40
      367 SETLIST                          R43 R44 2 [1]
      369 CALL                             R41 2 0
      370 GETUPVAL                         R41 2
      371 GETTABLEKS                       R41 R41 K18 ["useCallback"]
      373 NEWCLOSURE                       R42 P15
      374 CAPTURE                          VAL R9
      375 CAPTURE                          UPVAL U7
      376 CAPTURE                          VAL R10
      377 CAPTURE                          VAL R16
      378 CAPTURE                          VAL R19
      379 CAPTURE                          UPVAL U20
      380 CAPTURE                          UPVAL U16
      381 CAPTURE                          UPVAL U14
      382 CAPTURE                          UPVAL U21
      383 CAPTURE                          VAL R3
      384 CAPTURE                          VAL R15
      385 CAPTURE                          UPVAL U22
      386 CAPTURE                          UPVAL U23
      387 CAPTURE                          UPVAL U24
      388 CAPTURE                          UPVAL U25
      389 CAPTURE                          UPVAL U26
      390 CAPTURE                          UPVAL U19
      391 CAPTURE                          VAL R8
      392 NEWTABLE                         R43 0 8
      394 MOVE                             R44 R8
      395 GETTABLEKS                       R45 R9 K14 ["observeSelectedGraphInstance"]
      397 MOVE                             R46 R19
      398 MOVE                             R47 R16
      399 MOVE                             R48 R3
      400 MOVE                             R49 R15
      401 GETUPVAL                         R51 7
      402 CALL                             R51 0 1
      403 JUMPIFNOT                        R51 ; [+3]
      404 GETTABLEKS                       R50 R10 K22 ["canCreateGraph"]
      406 JUMP                             ; [+1]
      407 LOADNIL                          R50
      408 GETUPVAL                         R52 7
      409 CALL                             R52 0 1
      410 JUMPIFNOT                        R52 ; [+3]
      411 GETTABLEKS                       R51 R10 K23 ["createNewGraphAsync"]
      413 JUMP                             ; [+1]
      414 LOADNIL                          R51
      415 SETLIST                          R43 R44 8 [1]
      417 CALL                             R41 2 1
      418 GETUPVAL                         R42 27
      419 GETTABLEKS                       R42 R42 K24 ["useProducer"]
      421 GETUPVAL                         R43 2
      422 GETTABLEKS                       R43 R43 K18 ["useCallback"]
      424 NEWCLOSURE                       R44 P16
      425 CAPTURE                          VAL R41
      426 NEWTABLE                         R45 0 1
      428 MOVE                             R46 R41
      429 SETLIST                          R45 R46 1 [1]
      431 CALL                             R43 2 -1
      432 CALL                             R42 -1 0
      433 GETUPVAL                         R42 2
      434 GETTABLEKS                       R42 R42 K18 ["useCallback"]
      436 NEWCLOSURE                       R43 P17
      437 CAPTURE                          VAL R8
      438 CAPTURE                          UPVAL U28
      439 CAPTURE                          UPVAL U16
      440 NEWTABLE                         R44 0 1
      442 MOVE                             R45 R8
      443 SETLIST                          R44 R45 1 [1]
      445 CALL                             R42 2 1
      446 GETUPVAL                         R43 29
      447 GETTABLEKS                       R43 R43 K24 ["useProducer"]
      449 MOVE                             R44 R42
      450 CALL                             R43 1 0
      451 GETUPVAL                         R43 2
      452 GETTABLEKS                       R43 R43 K18 ["useCallback"]
      454 NEWCLOSURE                       R44 P18
      455 CAPTURE                          VAL R9
      456 CAPTURE                          VAL R8
      457 CAPTURE                          UPVAL U16
      458 CAPTURE                          UPVAL U14
      459 NEWTABLE                         R45 0 2
      461 MOVE                             R46 R8
      462 GETTABLEKS                       R47 R9 K14 ["observeSelectedGraphInstance"]
      464 SETLIST                          R45 R46 2 [1]
      466 CALL                             R43 2 1
      467 GETUPVAL                         R44 30
      468 GETTABLEKS                       R44 R44 K25 ["useBoundAction"]
      470 LOADK                            R45 K26 ["NativeGraphContext_DuplicateSelectedNodes"]
      471 MOVE                             R46 R43
      472 CALL                             R44 2 0
      473 GETUPVAL                         R44 2
      474 GETTABLEKS                       R44 R44 K18 ["useCallback"]
      476 NEWCLOSURE                       R45 P19
      477 CAPTURE                          VAL R8
      478 NEWTABLE                         R46 0 1
      480 MOVE                             R47 R8
      481 SETLIST                          R46 R47 1 [1]
      483 CALL                             R44 2 1
      484 GETUPVAL                         R45 30
      485 GETTABLEKS                       R45 R45 K25 ["useBoundAction"]
      487 LOADK                            R46 K27 ["NativeGraphContext_ClearNodeSelection"]
      488 MOVE                             R47 R44
      489 CALL                             R45 2 0
      490 GETUPVAL                         R45 2
      491 GETTABLEKS                       R45 R45 K18 ["useCallback"]
      493 NEWCLOSURE                       R46 P20
      494 CAPTURE                          VAL R9
      495 CAPTURE                          VAL R8
      496 NEWTABLE                         R47 0 2
      498 MOVE                             R48 R8
      499 GETTABLEKS                       R49 R9 K14 ["observeSelectedGraphInstance"]
      501 SETLIST                          R47 R48 2 [1]
      503 CALL                             R45 2 1
      504 GETUPVAL                         R46 30
      505 GETTABLEKS                       R46 R46 K25 ["useBoundAction"]
      507 LOADK                            R47 K28 ["NativeGraphContext_SelectAllNodes"]
      508 MOVE                             R48 R45
      509 CALL                             R46 2 0
      510 GETUPVAL                         R46 2
      511 GETTABLEKS                       R46 R46 K18 ["useCallback"]
      513 NEWCLOSURE                       R47 P21
      514 CAPTURE                          VAL R8
      515 CAPTURE                          VAL R7
      516 NEWTABLE                         R48 0 2
      518 MOVE                             R49 R8
      519 MOVE                             R50 R7
      520 SETLIST                          R48 R49 2 [1]
      522 CALL                             R46 2 1
      523 GETUPVAL                         R47 30
      524 GETTABLEKS                       R47 R47 K25 ["useBoundAction"]
      526 LOADK                            R48 K29 ["NativeGraphContext_CopySelectedNodes"]
      527 MOVE                             R49 R46
      528 CALL                             R47 2 0
      529 GETUPVAL                         R47 2
      530 GETTABLEKS                       R47 R47 K18 ["useCallback"]
      532 NEWCLOSURE                       R48 P22
      533 CAPTURE                          VAL R8
      534 CAPTURE                          UPVAL U28
      535 CAPTURE                          VAL R7
      536 CAPTURE                          UPVAL U16
      537 NEWTABLE                         R49 0 2
      539 MOVE                             R50 R8
      540 MOVE                             R51 R7
      541 SETLIST                          R49 R50 2 [1]
      543 CALL                             R47 2 1
      544 GETUPVAL                         R48 30
      545 GETTABLEKS                       R48 R48 K25 ["useBoundAction"]
      547 LOADK                            R49 K30 ["NativeGraphContext_CutSelectedNodes"]
      548 MOVE                             R50 R47
      549 CALL                             R48 2 0
      550 GETUPVAL                         R48 2
      551 GETTABLEKS                       R48 R48 K18 ["useCallback"]
      553 NEWCLOSURE                       R49 P23
      554 CAPTURE                          VAL R9
      555 CAPTURE                          VAL R7
      556 CAPTURE                          UPVAL U16
      557 CAPTURE                          UPVAL U14
      558 CAPTURE                          VAL R8
      559 NEWTABLE                         R50 0 3
      561 MOVE                             R51 R8
      562 MOVE                             R52 R7
      563 GETTABLEKS                       R53 R9 K14 ["observeSelectedGraphInstance"]
      565 SETLIST                          R50 R51 3 [1]
      567 CALL                             R48 2 1
      568 GETUPVAL                         R49 30
      569 GETTABLEKS                       R49 R49 K25 ["useBoundAction"]
      571 LOADK                            R50 K31 ["NativeGraphContext_PasteNodes"]
      572 MOVE                             R51 R48
      573 CALL                             R49 2 0
      574 GETUPVAL                         R49 2
      575 GETTABLEKS                       R49 R49 K18 ["useCallback"]
      577 NEWCLOSURE                       R50 P24
      578 CAPTURE                          VAL R9
      579 CAPTURE                          UPVAL U14
      580 CAPTURE                          UPVAL U31
      581 CAPTURE                          VAL R8
      582 NEWTABLE                         R51 0 2
      584 GETTABLEKS                       R52 R9 K14 ["observeSelectedGraphInstance"]
      586 MOVE                             R53 R8
      587 SETLIST                          R51 R52 2 [1]
      589 CALL                             R49 2 1
      590 GETUPVAL                         R50 2
      591 GETTABLEKS                       R50 R50 K18 ["useCallback"]
      593 NEWCLOSURE                       R51 P25
      594 CAPTURE                          VAL R9
      595 CAPTURE                          VAL R19
      596 CAPTURE                          UPVAL U16
      597 CAPTURE                          UPVAL U32
      598 CAPTURE                          UPVAL U33
      599 CAPTURE                          UPVAL U14
      600 CAPTURE                          VAL R16
      601 CAPTURE                          UPVAL U21
      602 CAPTURE                          VAL R3
      603 CAPTURE                          UPVAL U31
      604 CAPTURE                          VAL R8
      605 NEWTABLE                         R52 0 5
      607 MOVE                             R53 R8
      608 GETTABLEKS                       R54 R9 K14 ["observeSelectedGraphInstance"]
      610 MOVE                             R55 R16
      611 MOVE                             R56 R3
      612 MOVE                             R57 R19
      613 SETLIST                          R52 R53 5 [1]
      615 CALL                             R50 2 1
      616 GETUPVAL                         R51 2
      617 GETTABLEKS                       R51 R51 K18 ["useCallback"]
      619 NEWCLOSURE                       R52 P26
      620 CAPTURE                          VAL R9
      621 CAPTURE                          VAL R19
      622 CAPTURE                          UPVAL U14
      623 CAPTURE                          UPVAL U31
      624 CAPTURE                          UPVAL U33
      625 CAPTURE                          UPVAL U16
      626 CAPTURE                          VAL R16
      627 CAPTURE                          VAL R50
      628 CAPTURE                          VAL R8
      629 NEWTABLE                         R53 0 5
      631 MOVE                             R54 R8
      632 GETTABLEKS                       R55 R9 K14 ["observeSelectedGraphInstance"]
      634 MOVE                             R56 R16
      635 MOVE                             R57 R19
      636 MOVE                             R58 R50
      637 SETLIST                          R53 R54 5 [1]
      639 CALL                             R51 2 1
      640 GETUPVAL                         R52 2
      641 GETTABLEKS                       R52 R52 K18 ["useCallback"]
      643 NEWCLOSURE                       R53 P27
      644 CAPTURE                          VAL R19
      645 CAPTURE                          UPVAL U16
      646 CAPTURE                          UPVAL U14
      647 CAPTURE                          VAL R16
      648 NEWTABLE                         R54 0 2
      650 MOVE                             R55 R16
      651 MOVE                             R56 R19
      652 SETLIST                          R54 R55 2 [1]
      654 CALL                             R52 2 1
      655 GETUPVAL                         R53 2
      656 GETTABLEKS                       R53 R53 K18 ["useCallback"]
      658 NEWCLOSURE                       R54 P28
      659 CAPTURE                          VAL R19
      660 CAPTURE                          UPVAL U16
      661 CAPTURE                          UPVAL U14
      662 CAPTURE                          VAL R16
      663 NEWTABLE                         R55 0 2
      665 MOVE                             R56 R16
      666 MOVE                             R57 R19
      667 SETLIST                          R55 R56 2 [1]
      669 CALL                             R53 2 1
      670 GETUPVAL                         R54 2
      671 GETTABLEKS                       R54 R54 K18 ["useCallback"]
      673 NEWCLOSURE                       R55 P29
      674 CAPTURE                          VAL R19
      675 CAPTURE                          UPVAL U16
      676 CAPTURE                          UPVAL U14
      677 CAPTURE                          VAL R16
      678 NEWTABLE                         R56 0 2
      680 MOVE                             R57 R16
      681 MOVE                             R58 R19
      682 SETLIST                          R56 R57 2 [1]
      684 CALL                             R54 2 1
      685 GETUPVAL                         R55 34
      686 MOVE                             R56 R16
      687 GETTABLEKS                       R57 R9 K14 ["observeSelectedGraphInstance"]
      689 CALL                             R55 2 1
      690 GETUPVAL                         R56 35
      691 MOVE                             R57 R16
      692 GETTABLEKS                       R58 R9 K14 ["observeSelectedGraphInstance"]
      694 CALL                             R56 2 1
      695 GETUPVAL                         R57 36
      696 MOVE                             R58 R16
      697 GETTABLEKS                       R59 R9 K14 ["observeSelectedGraphInstance"]
      699 CALL                             R57 2 1
      700 GETUPVAL                         R58 2
      701 GETTABLEKS                       R58 R58 K18 ["useCallback"]
      703 NEWCLOSURE                       R59 P30
      704 CAPTURE                          VAL R19
      705 CAPTURE                          UPVAL U16
      706 CAPTURE                          UPVAL U14
      707 CAPTURE                          VAL R16
      708 NEWTABLE                         R60 0 2
      710 MOVE                             R61 R16
      711 MOVE                             R62 R19
      712 SETLIST                          R60 R61 2 [1]
      714 CALL                             R58 2 1
      715 GETUPVAL                         R59 2
      716 GETTABLEKS                       R59 R59 K18 ["useCallback"]
      718 NEWCLOSURE                       R60 P31
      719 CAPTURE                          VAL R19
      720 CAPTURE                          UPVAL U16
      721 CAPTURE                          UPVAL U14
      722 CAPTURE                          VAL R16
      723 CAPTURE                          UPVAL U37
      724 CAPTURE                          VAL R55
      725 NEWTABLE                         R61 0 3
      727 MOVE                             R62 R16
      728 MOVE                             R63 R19
      729 GETTABLEKS                       R64 R55 K32 ["setNodeOutputInfoInDestroyMapRef"]
      731 SETLIST                          R61 R62 3 [1]
      733 CALL                             R59 2 1
      734 GETUPVAL                         R60 2
      735 GETTABLEKS                       R60 R60 K18 ["useCallback"]
      737 NEWCLOSURE                       R61 P32
      738 CAPTURE                          UPVAL U21
      739 CAPTURE                          UPVAL U33
      740 CAPTURE                          VAL R9
      741 CAPTURE                          UPVAL U16
      742 CAPTURE                          VAL R16
      743 CAPTURE                          UPVAL U14
      744 CAPTURE                          UPVAL U32
      745 CAPTURE                          VAL R50
      746 CAPTURE                          VAL R51
      747 CAPTURE                          VAL R59
      748 NEWTABLE                         R62 0 6
      750 GETTABLEKS                       R63 R9 K14 ["observeSelectedGraphInstance"]
      752 MOVE                             R64 R19
      753 MOVE                             R65 R16
      754 MOVE                             R66 R50
      755 MOVE                             R67 R51
      756 MOVE                             R68 R59
      757 SETLIST                          R62 R63 6 [1]
      759 CALL                             R60 2 1
      760 GETUPVAL                         R61 2
      761 GETTABLEKS                       R61 R61 K18 ["useCallback"]
      763 NEWCLOSURE                       R62 P33
      764 CAPTURE                          VAL R13
      765 CAPTURE                          UPVAL U16
      766 NEWTABLE                         R63 0 0
      768 CALL                             R61 2 1
      769 GETUPVAL                         R62 2
      770 GETTABLEKS                       R62 R62 K18 ["useCallback"]
      772 NEWCLOSURE                       R63 P34
      773 CAPTURE                          VAL R13
      774 CAPTURE                          UPVAL U16
      775 NEWTABLE                         R64 0 0
      777 CALL                             R62 2 1
      778 GETUPVAL                         R63 2
      779 GETTABLEKS                       R63 R63 K12 ["useEffect"]
      781 NEWCLOSURE                       R64 P35
      782 CAPTURE                          VAL R13
      783 CAPTURE                          UPVAL U16
      784 NEWTABLE                         R65 0 0
      786 CALL                             R63 2 0
      787 GETUPVAL                         R63 2
      788 GETTABLEKS                       R63 R63 K18 ["useCallback"]
      790 NEWCLOSURE                       R64 P36
      791 CAPTURE                          UPVAL U16
      792 CAPTURE                          VAL R16
      793 CAPTURE                          UPVAL U19
      794 NEWTABLE                         R65 0 1
      796 MOVE                             R66 R16
      797 SETLIST                          R65 R66 1 [1]
      799 CALL                             R63 2 1
      800 GETUPVAL                         R64 2
      801 GETTABLEKS                       R64 R64 K18 ["useCallback"]
      803 NEWCLOSURE                       R65 P37
      804 CAPTURE                          UPVAL U16
      805 CAPTURE                          VAL R16
      806 NEWTABLE                         R66 0 1
      808 MOVE                             R67 R16
      809 SETLIST                          R66 R67 1 [1]
      811 CALL                             R64 2 1
      812 GETUPVAL                         R65 2
      813 GETTABLEKS                       R65 R65 K18 ["useCallback"]
      815 NEWCLOSURE                       R66 P38
      816 CAPTURE                          UPVAL U16
      817 CAPTURE                          VAL R16
      818 CAPTURE                          UPVAL U37
      819 CAPTURE                          UPVAL U14
      820 CAPTURE                          UPVAL U38
      821 CAPTURE                          UPVAL U33
      822 CAPTURE                          UPVAL U39
      823 CAPTURE                          VAL R1
      824 CAPTURE                          UPVAL U26
      825 CAPTURE                          VAL R2
      826 CAPTURE                          VAL R19
      827 NEWTABLE                         R67 0 4
      829 MOVE                             R68 R16
      830 MOVE                             R69 R19
      831 GETTABLEKS                       R70 R2 K33 ["observe"]
      833 MOVE                             R71 R1
      834 SETLIST                          R67 R68 4 [1]
      836 CALL                             R65 2 1
      837 GETUPVAL                         R66 2
      838 GETTABLEKS                       R66 R66 K18 ["useCallback"]
      840 NEWCLOSURE                       R67 P39
      841 CAPTURE                          UPVAL U16
      842 CAPTURE                          UPVAL U14
      843 CAPTURE                          VAL R16
      844 NEWTABLE                         R68 0 1
      846 MOVE                             R69 R16
      847 SETLIST                          R68 R69 1 [1]
      849 CALL                             R66 2 1
      850 GETUPVAL                         R67 2
      851 GETTABLEKS                       R67 R67 K18 ["useCallback"]
      853 NEWCLOSURE                       R68 P40
      854 CAPTURE                          VAL R9
      855 CAPTURE                          VAL R19
      856 CAPTURE                          VAL R16
      857 CAPTURE                          UPVAL U31
      858 CAPTURE                          UPVAL U14
      859 CAPTURE                          UPVAL U16
      860 NEWTABLE                         R69 0 3
      862 GETTABLEKS                       R70 R9 K14 ["observeSelectedGraphInstance"]
      864 MOVE                             R71 R16
      865 MOVE                             R72 R19
      866 SETLIST                          R69 R70 3 [1]
      868 CALL                             R67 2 1
      869 GETUPVAL                         R68 2
      870 GETTABLEKS                       R68 R68 K18 ["useCallback"]
      872 NEWCLOSURE                       R69 P41
      873 CAPTURE                          UPVAL U21
      874 CAPTURE                          UPVAL U40
      875 CAPTURE                          UPVAL U31
      876 CAPTURE                          VAL R9
      877 CAPTURE                          VAL R16
      878 CAPTURE                          UPVAL U14
      879 CAPTURE                          UPVAL U16
      880 CAPTURE                          UPVAL U33
      881 CAPTURE                          VAL R56
      882 NEWTABLE                         R70 0 5
      884 MOVE                             R71 R16
      885 GETTABLEKS                       R72 R9 K14 ["observeSelectedGraphInstance"]
      887 MOVE                             R73 R19
      888 GETTABLEKS                       R74 R56 K34 ["parameterDestroyConnectionMapRef"]
      890 GETTABLEKS                       R75 R56 K35 ["setParameterDestroyConnectionMap"]
      892 SETLIST                          R70 R71 5 [1]
      894 CALL                             R68 2 1
      895 GETUPVAL                         R69 2
      896 GETTABLEKS                       R69 R69 K18 ["useCallback"]
      898 NEWCLOSURE                       R70 P42
      899 CAPTURE                          VAL R9
      900 CAPTURE                          UPVAL U14
      901 CAPTURE                          UPVAL U16
      902 CAPTURE                          UPVAL U31
      903 CAPTURE                          UPVAL U33
      904 NEWTABLE                         R71 0 1
      906 GETTABLEKS                       R72 R9 K14 ["observeSelectedGraphInstance"]
      908 SETLIST                          R71 R72 1 [1]
      910 CALL                             R69 2 1
      911 GETUPVAL                         R70 2
      912 GETTABLEKS                       R70 R70 K18 ["useCallback"]
      914 NEWCLOSURE                       R71 P43
      915 CAPTURE                          VAL R16
      916 CAPTURE                          UPVAL U16
      917 NEWTABLE                         R72 0 1
      919 MOVE                             R73 R16
      920 SETLIST                          R72 R73 1 [1]
      922 CALL                             R70 2 1
      923 GETUPVAL                         R71 2
      924 GETTABLEKS                       R71 R71 K18 ["useCallback"]
      926 NEWCLOSURE                       R72 P44
      927 CAPTURE                          VAL R16
      928 CAPTURE                          VAL R6
      929 NEWTABLE                         R73 0 2
      931 MOVE                             R74 R16
      932 GETTABLEKS                       R75 R6 K36 ["selectionService"]
      934 SETLIST                          R73 R74 2 [1]
      936 CALL                             R71 2 1
      937 GETUPVAL                         R72 2
      938 GETTABLEKS                       R72 R72 K18 ["useCallback"]
      940 NEWCLOSURE                       R73 P45
      941 CAPTURE                          UPVAL U32
      942 CAPTURE                          VAL R9
      943 CAPTURE                          VAL R16
      944 CAPTURE                          UPVAL U14
      945 CAPTURE                          UPVAL U33
      946 CAPTURE                          UPVAL U16
      947 NEWTABLE                         R74 0 2
      949 GETTABLEKS                       R75 R9 K14 ["observeSelectedGraphInstance"]
      951 MOVE                             R76 R16
      952 SETLIST                          R74 R75 2 [1]
      954 CALL                             R72 2 1
      955 GETUPVAL                         R73 2
      956 GETTABLEKS                       R73 R73 K12 ["useEffect"]
      958 NEWCLOSURE                       R74 P46
      959 CAPTURE                          UPVAL U37
      960 CAPTURE                          UPVAL U13
      961 CAPTURE                          VAL R55
      962 CAPTURE                          VAL R16
      963 CAPTURE                          VAL R27
      964 CAPTURE                          UPVAL U14
      965 NEWTABLE                         R75 0 2
      967 MOVE                             R76 R16
      968 GETTABLEKS                       R77 R55 K37 ["nodeDestroyConnectionMapRef"]
      970 SETLIST                          R75 R76 2 [1]
      972 CALL                             R73 2 0
      973 GETUPVAL                         R73 2
      974 GETTABLEKS                       R73 R73 K12 ["useEffect"]
      976 NEWCLOSURE                       R74 P47
      977 CAPTURE                          UPVAL U13
      978 CAPTURE                          VAL R56
      979 CAPTURE                          VAL R16
      980 CAPTURE                          UPVAL U37
      981 CAPTURE                          UPVAL U14
      982 CAPTURE                          UPVAL U31
      983 CAPTURE                          UPVAL U33
      984 CAPTURE                          VAL R67
      985 NEWTABLE                         R75 0 3
      987 MOVE                             R76 R16
      988 GETTABLEKS                       R77 R56 K34 ["parameterDestroyConnectionMapRef"]
      990 MOVE                             R78 R67
      991 SETLIST                          R75 R76 3 [1]
      993 CALL                             R73 2 0
      994 NEWCLOSURE                       R73 P48
      995 CAPTURE                          VAL R16
      996 CAPTURE                          VAL R27
      997 CAPTURE                          UPVAL U14
      998 GETUPVAL                         R74 2
      999 GETTABLEKS                       R74 R74 K12 ["useEffect"]
     1001 NEWCLOSURE                       R75 P49
     1002 CAPTURE                          UPVAL U37
     1003 CAPTURE                          UPVAL U13
     1004 CAPTURE                          VAL R55
     1005 CAPTURE                          VAL R16
     1006 CAPTURE                          VAL R27
     1007 CAPTURE                          UPVAL U14
     1008 NEWTABLE                         R76 0 3
     1010 MOVE                             R77 R16
     1011 GETTABLEKS                       R78 R55 K37 ["nodeDestroyConnectionMapRef"]
     1013 GETTABLEKS                       R79 R55 K38 ["observeNodeInfoLookupListRef"]
     1015 SETLIST                          R76 R77 3 [1]
     1017 CALL                             R74 2 0
     1018 GETUPVAL                         R74 2
     1019 GETTABLEKS                       R74 R74 K12 ["useEffect"]
     1021 NEWCLOSURE                       R75 P50
     1022 CAPTURE                          UPVAL U37
     1023 CAPTURE                          UPVAL U13
     1024 CAPTURE                          VAL R57
     1025 CAPTURE                          VAL R16
     1026 CAPTURE                          VAL R27
     1027 CAPTURE                          UPVAL U14
     1028 NEWTABLE                         R76 0 3
     1030 MOVE                             R77 R16
     1031 GETTABLEKS                       R78 R57 K39 ["destroyConnectionMapRef"]
     1033 GETTABLEKS                       R79 R57 K40 ["observeValueNodeInfoLookupListRef"]
     1035 SETLIST                          R76 R77 3 [1]
     1037 CALL                             R74 2 0
     1038 GETUPVAL                         R74 41
     1039 MOVE                             R75 R3
     1040 MOVE                             R76 R2
     1041 CALL                             R74 2 1
     1042 GETUPVAL                         R75 18
     1043 GETTABLEKS                       R75 R75 K21 ["useSignalState"]
     1045 GETTABLEKS                       R76 R9 K41 ["observeSelectedGraphIsEphemeral"]
     1047 CALL                             R75 1 1
     1048 NEWTABLE                         R76 64 0
     1050 SETTABLEKS                       R75 R76 K42 ["isReadonly"]
     1052 SETTABLEKS                       R66 R76 K43 ["reorderPinsAsync"]
     1054 SETTABLEKS                       R41 R76 K44 ["createNodeAsync"]
     1056 SETTABLEKS                       R50 R76 K45 ["createParameterAsync"]
     1058 SETTABLEKS                       R51 R76 K46 ["createExistingParameterAsync"]
     1060 SETTABLEKS                       R60 R76 K47 ["createConnectedParameterAsync"]
     1062 SETTABLEKS                       R11 R76 K48 ["graphRect"]
     1064 SETTABLEKS                       R49 R76 K49 ["selectAllParameterNodesWithNameAsync"]
     1066 SETTABLEKS                       R32 R76 K50 ["selectNodesAsync"]
     1068 SETTABLEKS                       R33 R76 K51 ["selectNodesFromRectAsync"]
     1070 SETTABLEKS                       R42 R76 K52 ["removeSelectedNodesAsync"]
     1072 SETTABLEKS                       R43 R76 K53 ["duplicateSelectedNodesAsync"]
     1074 SETTABLEKS                       R45 R76 K54 ["selectAllNodesAsync"]
     1076 SETTABLEKS                       R44 R76 K55 ["clearNodeSelectionAsync"]
     1078 SETTABLEKS                       R46 R76 K56 ["copySelectedNodesAsync"]
     1080 SETTABLEKS                       R47 R76 K57 ["cutSelectedNodesAsync"]
     1082 SETTABLEKS                       R48 R76 K58 ["pasteNodesAsync"]
     1084 SETTABLEKS                       R30 R76 K59 ["setNodePositionsAsync"]
     1086 SETTABLEKS                       R31 R76 K60 ["setNodeSizeAsync"]
     1088 SETTABLEKS                       R59 R76 K61 ["setNodeConnectionAsync"]
     1090 SETTABLEKS                       R52 R76 K62 ["deleteNodeInput"]
     1092 SETTABLEKS                       R53 R76 K63 ["renameNodeInputAsync"]
     1094 SETTABLEKS                       R58 R76 K64 ["removeNodeOutputConnectionAsync"]
     1096 SETTABLEKS                       R54 R76 K65 ["removeNodeInputConnectionAsync"]
     1098 SETTABLEKS                       R67 R76 K66 ["removeParameterAsync"]
     1100 SETTABLEKS                       R65 R76 K67 ["renameNodeAsync"]
     1102 SETTABLEKS                       R68 R76 K68 ["renameParameterAsync"]
     1104 SETTABLEKS                       R70 R76 K69 ["deleteNodeInstanceAsync"]
     1106 SETTABLEKS                       R71 R76 K70 ["showNodeInExplorerAsync"]
     1108 SETTABLEKS                       R28 R76 K71 ["setCollapsedAsync"]
     1110 SETTABLEKS                       R63 R76 K72 ["setNodePropertyAsync"]
     1112 SETTABLEKS                       R64 R76 K73 ["setInputPinNodePropertyAsync"]
     1114 SETTABLEKS                       R69 R76 K74 ["setParameterNodeTypeAsync"]
     1116 SETTABLEKS                       R34 R76 K75 ["currentAnimationId"]
     1118 SETTABLEKS                       R36 R76 K76 ["sourceAssetId"]
     1120 SETTABLEKS                       R39 R76 K77 ["selectedGraphKey"]
     1122 GETTABLEKS                       R77 R2 K33 ["observe"]
     1124 SETTABLEKS                       R77 R76 K78 ["observeGraphNodeById"]
     1126 GETTABLEKS                       R77 R3 K33 ["observe"]
     1128 SETTABLEKS                       R77 R76 K79 ["observeNodeRenderInfoById"]
     1130 SETTABLEKS                       R61 R76 K80 ["beginUndoTransaction"]
     1132 SETTABLEKS                       R62 R76 K81 ["finishUndoTransaction"]
     1134 GETTABLEKS                       R77 R2 K82 ["observeMap"]
     1136 SETTABLEKS                       R77 R76 K83 ["observeGraphNodeMap"]
     1138 GETTABLEKS                       R77 R3 K82 ["observeMap"]
     1140 SETTABLEKS                       R77 R76 K84 ["observeRenderInfoMap"]
     1142 GETTABLEKS                       R77 R74 K85 ["hasGraphOutput"]
     1144 SETTABLEKS                       R77 R76 K85 ["hasGraphOutput"]
     1146 GETTABLEKS                       R77 R4 K33 ["observe"]
     1148 SETTABLEKS                       R77 R76 K86 ["observeNodePropsById"]
     1150 SETTABLEKS                       R72 R76 K87 ["setExpressionNodeValueAsync"]
     1152 SETTABLEKS                       R18 R76 K88 ["observeExpressionNodes"]
     1154 GETUPVAL                         R77 2
     1155 GETTABLEKS                       R77 R77 K11 ["useMemo"]
     1157 DUPCLOSURE                       R78 K89 [PROTO_77]
     1158 NEWTABLE                         R79 0 0
     1160 CALL                             R77 2 1
     1161 GETUPVAL                         R78 2
     1162 GETTABLEKS                       R78 R78 K11 ["useMemo"]
     1164 NEWCLOSURE                       R79 P52
     1165 CAPTURE                          UPVAL U42
     1166 CAPTURE                          VAL R9
     1167 NEWTABLE                         R80 0 2
     1169 GETTABLEKS                       R81 R9 K14 ["observeSelectedGraphInstance"]
     1171 MOVE                             R82 R19
     1172 SETLIST                          R80 R81 2 [1]
     1174 CALL                             R78 2 1
     1175 GETUPVAL                         R79 5
     1176 GETTABLEKS                       R79 R79 K90 ["usePasteHooks"]
     1178 GETTABLEKS                       R80 R9 K14 ["observeSelectedGraphInstance"]
     1180 CALL                             R79 1 0
     1181 GETUPVAL                         R79 18
     1182 GETTABLEKS                       R79 R79 K21 ["useSignalState"]
     1184 MOVE                             R80 R78
     1185 CALL                             R79 1 1
     1186 GETUPVAL                         R80 30
     1187 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1189 LOADK                            R81 K92 ["NativeGraphContext_GraphPayloadMap"]
     1190 MOVE                             R82 R19
     1191 CALL                             R80 2 0
     1192 GETUPVAL                         R80 30
     1193 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1195 LOADK                            R81 K93 ["NativeGraphContext_GraphRenderInfo"]
     1196 MOVE                             R82 R21
     1197 CALL                             R80 2 0
     1198 GETUPVAL                         R80 30
     1199 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1201 LOADK                            R81 K94 ["NativeGraphContext_GraphNodeProps"]
     1202 MOVE                             R82 R23
     1203 CALL                             R80 2 0
     1204 GETUPVAL                         R80 30
     1205 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1207 LOADK                            R81 K95 ["NativeGraphContext_ExpressionNodes"]
     1208 MOVE                             R82 R25
     1209 CALL                             R80 2 0
     1210 GETUPVAL                         R80 30
     1211 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1213 LOADK                            R81 K96 ["NativeGraphContext_TimeRange"]
     1214 MOVE                             R82 R77
     1215 CALL                             R80 2 0
     1216 GETUPVAL                         R80 30
     1217 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1219 LOADK                            R81 K97 ["NativeGraphContext_GraphPayloadGraphRect"]
     1220 MOVE                             R82 R11
     1221 CALL                             R80 2 0
     1222 GETUPVAL                         R80 30
     1223 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1225 LOADK                            R81 K98 ["NativeGraphContext_SourceAssetId"]
     1226 MOVE                             R82 R36
     1227 CALL                             R80 2 0
     1228 GETUPVAL                         R80 17
     1229 CALL                             R80 0 1
     1230 JUMPIF                           R80 ; [+6]
     1231 GETUPVAL                         R80 30
     1232 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1234 LOADK                            R81 K99 ["NativeGraphContext_CurrentAnimationId"]
     1235 MOVE                             R82 R34
     1236 CALL                             R80 2 0
     1237 GETUPVAL                         R80 17
     1238 CALL                             R80 0 1
     1239 JUMPIFNOT                        R80 ; [+6]
     1240 GETUPVAL                         R80 30
     1241 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1243 LOADK                            R81 K100 ["NativeGraphContext_SelectedGraphKey"]
     1244 MOVE                             R82 R39
     1245 CALL                             R80 2 0
     1246 GETUPVAL                         R80 30
     1247 GETTABLEKS                       R80 R80 K91 ["useReplicatedState"]
     1249 LOADK                            R81 K101 ["NativeGraphContext_UndoTransaction"]
     1250 MOVE                             R82 R13
     1251 CALL                             R80 2 0
     1252 GETUPVAL                         R80 30
     1253 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1255 LOADK                            R81 K102 ["NativeGraphContext_CreateNode"]
     1256 MOVE                             R82 R41
     1257 CALL                             R80 2 0
     1258 GETUPVAL                         R80 30
     1259 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1261 LOADK                            R81 K103 ["NativeGraphContext_CreateParameterAsync"]
     1262 MOVE                             R82 R50
     1263 CALL                             R80 2 0
     1264 GETUPVAL                         R80 30
     1265 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1267 LOADK                            R81 K104 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1268 MOVE                             R82 R60
     1269 CALL                             R80 2 0
     1270 GETUPVAL                         R80 30
     1271 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1273 LOADK                            R81 K105 ["NativeGraphContext_CreateExistingParameterAsync"]
     1274 MOVE                             R82 R51
     1275 CALL                             R80 2 0
     1276 GETUPVAL                         R80 30
     1277 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1279 LOADK                            R81 K106 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1280 MOVE                             R82 R49
     1281 CALL                             R80 2 0
     1282 GETUPVAL                         R80 30
     1283 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1285 LOADK                            R81 K107 ["NativeGraphContext_SelectNodes"]
     1286 MOVE                             R82 R32
     1287 CALL                             R80 2 0
     1288 GETUPVAL                         R80 30
     1289 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1291 LOADK                            R81 K108 ["NativeGraphContext_SelectNodesFromRect"]
     1292 MOVE                             R82 R33
     1293 CALL                             R80 2 0
     1294 GETUPVAL                         R80 30
     1295 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1297 LOADK                            R81 K109 ["NativeGraphContext_SetNodePositionsAsync"]
     1298 MOVE                             R82 R30
     1299 CALL                             R80 2 0
     1300 GETUPVAL                         R80 30
     1301 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1303 LOADK                            R81 K110 ["NativeGraphContext_SetNodeSizeAsync"]
     1304 MOVE                             R82 R31
     1305 CALL                             R80 2 0
     1306 GETUPVAL                         R80 30
     1307 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1309 LOADK                            R81 K111 ["NativeGraphContext_SetNodeConnectionAsync"]
     1310 MOVE                             R82 R59
     1311 CALL                             R80 2 0
     1312 GETUPVAL                         R80 30
     1313 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1315 LOADK                            R81 K112 ["NativeGraphContext_DeleteNodeInput"]
     1316 MOVE                             R82 R52
     1317 CALL                             R80 2 0
     1318 GETUPVAL                         R80 30
     1319 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1321 LOADK                            R81 K113 ["NativeGraphContext_RenameNodeInput"]
     1322 MOVE                             R82 R53
     1323 CALL                             R80 2 0
     1324 GETUPVAL                         R80 30
     1325 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1327 LOADK                            R81 K114 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1328 MOVE                             R82 R58
     1329 CALL                             R80 2 0
     1330 GETUPVAL                         R80 30
     1331 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1333 LOADK                            R81 K115 ["NativeGraphContext_RemoveNodeInputConnection"]
     1334 MOVE                             R82 R54
     1335 CALL                             R80 2 0
     1336 GETUPVAL                         R80 30
     1337 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1339 LOADK                            R81 K116 ["NativeGraphContext_RemoveParameterAsync"]
     1340 MOVE                             R82 R67
     1341 CALL                             R80 2 0
     1342 GETUPVAL                         R80 30
     1343 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1345 LOADK                            R81 K117 ["NativeGraphContext_RenameNodeAsync"]
     1346 MOVE                             R82 R65
     1347 CALL                             R80 2 0
     1348 GETUPVAL                         R80 30
     1349 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1351 LOADK                            R81 K118 ["NativeGraphContext_RenameParameterAsync"]
     1352 MOVE                             R82 R68
     1353 CALL                             R80 2 0
     1354 GETUPVAL                         R80 30
     1355 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1357 LOADK                            R81 K119 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1358 MOVE                             R82 R70
     1359 CALL                             R80 2 0
     1360 GETUPVAL                         R80 30
     1361 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1363 LOADK                            R81 K120 ["NativeGraphContext_ShowNodeInExplorer"]
     1364 MOVE                             R82 R71
     1365 CALL                             R80 2 0
     1366 GETUPVAL                         R80 30
     1367 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1369 LOADK                            R81 K121 ["NativeGraphContext_SetCollapsedAsync"]
     1370 MOVE                             R82 R28
     1371 CALL                             R80 2 0
     1372 GETUPVAL                         R80 30
     1373 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1375 LOADK                            R81 K122 ["NativeGraphContext_setNodePropertyAsync"]
     1376 MOVE                             R82 R63
     1377 CALL                             R80 2 0
     1378 GETUPVAL                         R80 30
     1379 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1381 LOADK                            R81 K123 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1382 MOVE                             R82 R64
     1383 CALL                             R80 2 0
     1384 GETUPVAL                         R80 30
     1385 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1387 LOADK                            R81 K124 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1388 MOVE                             R82 R69
     1389 CALL                             R80 2 0
     1390 GETUPVAL                         R80 30
     1391 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1393 LOADK                            R81 K125 ["NativeGraphContext_ReorderPinsAsync"]
     1394 MOVE                             R82 R66
     1395 CALL                             R80 2 0
     1396 GETUPVAL                         R80 30
     1397 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1399 LOADK                            R81 K126 ["NativeGraphContext_beginUndoTransaction"]
     1400 MOVE                             R82 R61
     1401 CALL                             R80 2 0
     1402 GETUPVAL                         R80 30
     1403 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1405 LOADK                            R81 K127 ["NativeGraphContext_finishUndoTransaction"]
     1406 MOVE                             R82 R62
     1407 CALL                             R80 2 0
     1408 GETUPVAL                         R80 30
     1409 GETTABLEKS                       R80 R80 K25 ["useBoundAction"]
     1411 LOADK                            R81 K128 ["NativeGraphContext_SetExpressionNodeValueAsync"]
     1412 MOVE                             R82 R72
     1413 CALL                             R80 2 0
     1414 GETUPVAL                         R80 43
     1415 GETTABLEKS                       R80 R80 K24 ["useProducer"]
     1417 MOVE                             R81 R29
     1418 CALL                             R80 1 0
     1419 GETUPVAL                         R80 2
     1420 GETTABLEKS                       R80 R80 K129 ["createElement"]
     1422 GETUPVAL                         R81 44
     1423 GETTABLEKS                       R81 R81 K130 ["Provider"]
     1425 DUPTABLE                         R82 K132 [{"value"}]
     1426 SETTABLEKS                       R76 R82 K131 ["value"]
     1428 DUPTABLE                         R83 K134 [{"ContextStack"}]
     1429 GETUPVAL                         R84 2
     1430 GETTABLEKS                       R84 R84 K129 ["createElement"]
     1432 GETUPVAL                         R85 15
     1433 GETTABLEKS                       R85 R85 K133 ["ContextStack"]
     1435 DUPTABLE                         R86 K136 [{"providers"}]
     1436 NEWTABLE                         R87 0 2
     1438 GETUPVAL                         R88 2
     1439 GETTABLEKS                       R88 R88 K129 ["createElement"]
     1441 GETUPVAL                         R89 45
     1442 GETTABLEKS                       R89 R89 K130 ["Provider"]
     1444 DUPTABLE                         R90 K138 [{"timeRange"}]
     1445 SETTABLEKS                       R77 R90 K137 ["timeRange"]
     1447 CALL                             R88 2 1
     1448 GETUPVAL                         R89 2
     1449 GETTABLEKS                       R89 R89 K129 ["createElement"]
     1451 GETUPVAL                         R90 46
     1452 GETTABLEKS                       R90 R90 K130 ["Provider"]
     1454 DUPTABLE                         R91 K140 [{"animationClipsList"}]
     1455 SETTABLEKS                       R79 R91 K139 ["animationClipsList"]
     1457 CALL                             R89 2 -1
     1458 SETLIST                          R87 R88 -1 [1]
     1460 SETTABLEKS                       R87 R86 K135 ["providers"]
     1462 GETTABLEKS                       R87 R0 K141 ["children"]
     1464 CALL                             R84 3 1
     1465 SETTABLEKS                       R84 R83 K133 ["ContextStack"]
     1467 CALL                             R80 3 -1
     1468 RETURN                           R80 -1

PROTO_81:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["setMap"]
        4 GETTABLEKS                       R2 R0 K1 ["lookup"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["setMap"]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_82:
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

PROTO_83:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_84:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_85:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_86:
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

PROTO_87:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["switchMap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["observeActiveDebugTargetIdentifier"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R1
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_89:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["children"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADN                            R2 1
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K0 ["children"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K1 ["id"]
       16 GETUPVAL                         R8 1
       17 JUMPIFNOTEQ                      R7 R8 ; [+5]
       19 GETTABLEKS                       R8 R6 K3 ["weight"]
       21 ORK                              R7 R8 K2 [1]
       22 RETURN                           R7 1
       23 FORGLOOP                         R2 2 ; [-10]
       25 LOADN                            R2 1
       26 RETURN                           R2 1

PROTO_94:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_95:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["inputPinToConnectionMap"]
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 FORGPREP                         R8
       16 JUMPIFNOT                        R12 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       19 MOVE                             R14 R2
       20 MOVE                             R15 R12
       21 GETIMPORT                        R13 K4 [table.insert]
       23 CALL                             R13 2 0
       24 FORGLOOP                         R8 2 ; [-9]
       26 FORGLOOP                         R3 2 ; [-16]
       28 RETURN                           R2 1

PROTO_96:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_97:
        0 DUPTABLE                         R0 K30 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "isReadonly", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "setZIndex", "deleteNodeInput", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "observeNodeInputBindings"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodePayloadDispatcher"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["nodeRenderInfoDispatcher"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["isReadonly"]
       10 GETUPVAL                         R2 3
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R1 R0 K3 ["createNode"]
       15 GETUPVAL                         R2 4
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R1 R0 K4 ["reorderPins"]
       20 GETUPVAL                         R2 5
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R1 R0 K5 ["createParameter"]
       25 GETUPVAL                         R1 6
       26 SETTABLEKS                       R1 R0 K6 ["createExistingParameterAsync"]
       28 GETUPVAL                         R1 7
       29 SETTABLEKS                       R1 R0 K7 ["createConnectedParameterAsync"]
       31 GETUPVAL                         R2 8
       32 NEWCLOSURE                       R1 P0
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R1 R0 K8 ["selectAllParameterNodesWithName"]
       36 GETUPVAL                         R2 9
       37 NEWCLOSURE                       R1 P0
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R1 R0 K9 ["selectNodes"]
       41 GETUPVAL                         R2 10
       42 NEWCLOSURE                       R1 P0
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R1 R0 K10 ["setCollapsed"]
       46 GETUPVAL                         R2 11
       47 NEWCLOSURE                       R1 P0
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R1 R0 K11 ["setZIndex"]
       51 GETUPVAL                         R1 12
       52 SETTABLEKS                       R1 R0 K12 ["deleteNodeInput"]
       54 GETUPVAL                         R1 13
       55 SETTABLEKS                       R1 R0 K13 ["removeNodeInputConnectionAsync"]
       57 GETUPVAL                         R1 14
       58 SETTABLEKS                       R1 R0 K14 ["removeNodeOutputConnectionAsync"]
       60 GETUPVAL                         R2 15
       61 NEWCLOSURE                       R1 P0
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R1 R0 K15 ["removeParameter"]
       65 GETUPVAL                         R2 16
       66 NEWCLOSURE                       R1 P0
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R1 R0 K16 ["renameNode"]
       70 GETUPVAL                         R2 17
       71 NEWCLOSURE                       R1 P0
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R1 R0 K17 ["renameParameter"]
       75 GETUPVAL                         R2 18
       76 NEWCLOSURE                       R1 P0
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R1 R0 K18 ["deleteNodeInstance"]
       80 GETUPVAL                         R2 19
       81 NEWCLOSURE                       R1 P0
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R1 R0 K19 ["removeNodes"]
       85 GETUPVAL                         R2 20
       86 NEWCLOSURE                       R1 P0
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R1 R0 K20 ["setNodeConnection"]
       90 GETUPVAL                         R2 21
       91 NEWCLOSURE                       R1 P0
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R1 R0 K21 ["setNodePositions"]
       95 GETUPVAL                         R2 22
       96 NEWCLOSURE                       R1 P0
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R1 R0 K22 ["setNodeProperty"]
      100 GETUPVAL                         R2 23
      101 NEWCLOSURE                       R1 P0
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R1 R0 K23 ["setInputPinNodeProperty"]
      105 GETUPVAL                         R2 24
      106 NEWCLOSURE                       R1 P0
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R1 R0 K24 ["setNodeSize"]
      110 GETUPVAL                         R2 25
      111 NEWCLOSURE                       R1 P0
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R1 R0 K25 ["setParameterNodeType"]
      115 GETUPVAL                         R1 26
      116 GETTABLEKS                       R1 R1 K31 ["observe"]
      118 SETTABLEKS                       R1 R0 K26 ["observeNodePropsById"]
      120 GETUPVAL                         R1 27
      121 SETTABLEKS                       R1 R0 K27 ["observeNodeStateById"]
      123 GETUPVAL                         R1 28
      124 SETTABLEKS                       R1 R0 K28 ["observeFadeByNodeId"]
      126 GETUPVAL                         R1 29
      127 SETTABLEKS                       R1 R0 K29 ["observeNodeInputBindings"]
      129 RETURN                           R0 1

PROTO_98:
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
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R7 0 1
       20 GETTABLEKS                       R8 R1 K3 ["setMap"]
       22 SETLIST                          R7 R8 1 [1]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K4 ["useReplicatedStateListenerCallback"]
       28 LOADK                            R7 K5 ["NativeGraphContext_GraphPayloadMap"]
       29 MOVE                             R8 R5
       30 CALL                             R6 2 0
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K4 ["useReplicatedStateListenerCallback"]
       34 LOADK                            R7 K6 ["NativeGraphContext_GraphRenderInfo"]
       35 GETTABLEKS                       R8 R2 K3 ["setMap"]
       37 CALL                             R6 2 0
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K4 ["useReplicatedStateListenerCallback"]
       41 LOADK                            R7 K7 ["NativeGraphContext_GraphNodeProps"]
       42 GETTABLEKS                       R8 R3 K3 ["setMap"]
       44 CALL                             R6 2 0
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K8 ["useObserveStateListener"]
       48 LOADK                            R7 K9 ["NativeGraphContext_ExpressionNodes"]
       49 NEWTABLE                         R8 0 0
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K10 ["useEffect"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R1
       58 NEWTABLE                         R9 0 1
       60 GETTABLEKS                       R10 R0 K11 ["testOverrideGraphPayloadMap"]
       62 SETLIST                          R9 R10 1 [1]
       64 CALL                             R7 2 0
       65 GETUPVAL                         R7 3
       66 GETTABLEKS                       R7 R7 K12 ["useReplicatedStateListener"]
       68 LOADK                            R8 K13 ["NativeGraphContext_TimeRange"]
       69 GETIMPORT                        R9 K16 [NumberRange.new]
       71 LOADN                            R10 0
       72 LOADN                            R11 10
       73 CALL                             R9 2 -1
       74 CALL                             R7 -1 1
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R8 R8 K12 ["useReplicatedStateListener"]
       78 LOADK                            R9 K17 ["NativeGraphContext_GraphPayloadGraphRect"]
       79 GETIMPORT                        R10 K19 [Rect.new]
       81 LOADN                            R11 0
       82 LOADN                            R12 0
       83 LOADN                            R13 0
       84 LOADN                            R14 0
       85 CALL                             R10 4 -1
       86 CALL                             R8 -1 1
       87 GETUPVAL                         R9 3
       88 GETTABLEKS                       R9 R9 K12 ["useReplicatedStateListener"]
       90 LOADK                            R10 K20 ["NativeGraphContext_SourceAssetId"]
       91 LOADNIL                          R11
       92 CALL                             R9 2 1
       93 GETUPVAL                         R11 4
       94 CALL                             R11 0 1
       95 JUMPIFNOT                        R11 ; [+2]
       96 LOADK                            R10 K21 [""]
       97 JUMP                             ; [+6]
       98 GETUPVAL                         R10 3
       99 GETTABLEKS                       R10 R10 K12 ["useReplicatedStateListener"]
      101 LOADK                            R11 K22 ["NativeGraphContext_CurrentAnimationId"]
      102 LOADK                            R12 K21 [""]
      103 CALL                             R10 2 1
      104 GETUPVAL                         R12 4
      105 CALL                             R12 0 1
      106 JUMPIFNOT                        R12 ; [+7]
      107 GETUPVAL                         R11 3
      108 GETTABLEKS                       R11 R11 K12 ["useReplicatedStateListener"]
      110 LOADK                            R12 K23 ["NativeGraphContext_SelectedGraphKey"]
      111 LOADNIL                          R13
      112 CALL                             R11 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R11
      115 GETUPVAL                         R12 5
      116 MOVE                             R13 R2
      117 MOVE                             R14 R1
      118 CALL                             R12 2 1
      119 GETUPVAL                         R13 3
      120 GETTABLEKS                       R13 R13 K24 ["useBoundAction"]
      122 LOADK                            R14 K25 ["NativeGraphContext_ReorderPinsAsync"]
      123 CALL                             R13 1 1
      124 GETUPVAL                         R14 3
      125 GETTABLEKS                       R14 R14 K24 ["useBoundAction"]
      127 LOADK                            R15 K26 ["NativeGraphContext_CreateNode"]
      128 CALL                             R14 1 1
      129 GETUPVAL                         R15 3
      130 GETTABLEKS                       R15 R15 K24 ["useBoundAction"]
      132 LOADK                            R16 K27 ["NativeGraphContext_CreateParameterAsync"]
      133 CALL                             R15 1 1
      134 GETUPVAL                         R16 3
      135 GETTABLEKS                       R16 R16 K24 ["useBoundAction"]
      137 LOADK                            R17 K28 ["NativeGraphContext_CreateConnectedParameterAsync"]
      138 CALL                             R16 1 1
      139 GETUPVAL                         R17 3
      140 GETTABLEKS                       R17 R17 K24 ["useBoundAction"]
      142 LOADK                            R18 K29 ["NativeGraphContext_CreateExistingParameterAsync"]
      143 CALL                             R17 1 1
      144 GETUPVAL                         R18 3
      145 GETTABLEKS                       R18 R18 K24 ["useBoundAction"]
      147 LOADK                            R19 K30 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      148 CALL                             R18 1 1
      149 GETUPVAL                         R19 3
      150 GETTABLEKS                       R19 R19 K24 ["useBoundAction"]
      152 LOADK                            R20 K31 ["NativeGraphContext_SelectNodes"]
      153 CALL                             R19 1 1
      154 GETUPVAL                         R20 3
      155 GETTABLEKS                       R20 R20 K24 ["useBoundAction"]
      157 LOADK                            R21 K32 ["NativeGraphContext_SetNodePositionsAsync"]
      158 CALL                             R20 1 1
      159 GETUPVAL                         R21 3
      160 GETTABLEKS                       R21 R21 K24 ["useBoundAction"]
      162 LOADK                            R22 K33 ["NativeGraphContext_SetNodeSizeAsync"]
      163 CALL                             R21 1 1
      164 GETUPVAL                         R22 3
      165 GETTABLEKS                       R22 R22 K24 ["useBoundAction"]
      167 LOADK                            R23 K34 ["NativeGraphContext_SetNodeConnectionAsync"]
      168 CALL                             R22 1 1
      169 GETUPVAL                         R23 3
      170 GETTABLEKS                       R23 R23 K24 ["useBoundAction"]
      172 LOADK                            R24 K35 ["NativeGraphContext_DeleteNodeInput"]
      173 CALL                             R23 1 1
      174 GETUPVAL                         R24 3
      175 GETTABLEKS                       R24 R24 K24 ["useBoundAction"]
      177 LOADK                            R25 K36 ["NativeGraphContext_RenameNodeInput"]
      178 CALL                             R24 1 1
      179 GETUPVAL                         R25 3
      180 GETTABLEKS                       R25 R25 K24 ["useBoundAction"]
      182 LOADK                            R26 K37 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      183 CALL                             R25 1 1
      184 GETUPVAL                         R26 3
      185 GETTABLEKS                       R26 R26 K24 ["useBoundAction"]
      187 LOADK                            R27 K38 ["NativeGraphContext_RemoveNodeInputConnection"]
      188 CALL                             R26 1 1
      189 GETUPVAL                         R27 3
      190 GETTABLEKS                       R27 R27 K24 ["useBoundAction"]
      192 LOADK                            R28 K39 ["NativeGraphContext_RemoveParameterAsync"]
      193 CALL                             R27 1 1
      194 GETUPVAL                         R28 3
      195 GETTABLEKS                       R28 R28 K24 ["useBoundAction"]
      197 LOADK                            R29 K40 ["NativeGraphContext_RenameNodeAsync"]
      198 CALL                             R28 1 1
      199 GETUPVAL                         R29 3
      200 GETTABLEKS                       R29 R29 K24 ["useBoundAction"]
      202 LOADK                            R30 K41 ["NativeGraphContext_RenameParameterAsync"]
      203 CALL                             R29 1 1
      204 GETUPVAL                         R30 3
      205 GETTABLEKS                       R30 R30 K24 ["useBoundAction"]
      207 LOADK                            R31 K42 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      208 CALL                             R30 1 1
      209 GETUPVAL                         R31 3
      210 GETTABLEKS                       R31 R31 K24 ["useBoundAction"]
      212 LOADK                            R32 K43 ["NativeGraphContext_ShowNodeInExplorer"]
      213 CALL                             R31 1 1
      214 GETUPVAL                         R32 3
      215 GETTABLEKS                       R32 R32 K24 ["useBoundAction"]
      217 LOADK                            R33 K44 ["NativeGraphContext_SetCollapsedAsync"]
      218 CALL                             R32 1 1
      219 GETUPVAL                         R33 6
      220 GETTABLEKS                       R33 R33 K45 ["useConsumer"]
      222 CALL                             R33 0 1
      223 GETUPVAL                         R34 3
      224 GETTABLEKS                       R34 R34 K24 ["useBoundAction"]
      226 LOADK                            R35 K46 ["NativeGraphContext_setNodePropertyAsync"]
      227 CALL                             R34 1 1
      228 GETUPVAL                         R35 3
      229 GETTABLEKS                       R35 R35 K24 ["useBoundAction"]
      231 LOADK                            R36 K47 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      232 CALL                             R35 1 1
      233 GETUPVAL                         R36 3
      234 GETTABLEKS                       R36 R36 K24 ["useBoundAction"]
      236 LOADK                            R37 K48 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      237 CALL                             R36 1 1
      238 GETUPVAL                         R37 3
      239 GETTABLEKS                       R37 R37 K24 ["useBoundAction"]
      241 LOADK                            R38 K49 ["NativeGraphContext_SelectNodesFromRect"]
      242 CALL                             R37 1 1
      243 GETUPVAL                         R38 3
      244 GETTABLEKS                       R38 R38 K24 ["useBoundAction"]
      246 LOADK                            R39 K50 ["NativeGraphContext_DuplicateSelectedNodes"]
      247 CALL                             R38 1 1
      248 GETUPVAL                         R39 3
      249 GETTABLEKS                       R39 R39 K24 ["useBoundAction"]
      251 LOADK                            R40 K51 ["NativeGraphContext_SelectAllNodes"]
      252 CALL                             R39 1 1
      253 GETUPVAL                         R40 3
      254 GETTABLEKS                       R40 R40 K24 ["useBoundAction"]
      256 LOADK                            R41 K52 ["NativeGraphContext_ClearNodeSelection"]
      257 CALL                             R40 1 1
      258 GETUPVAL                         R41 3
      259 GETTABLEKS                       R41 R41 K24 ["useBoundAction"]
      261 LOADK                            R42 K53 ["NativeGraphContext_CopySelectedNodes"]
      262 CALL                             R41 1 1
      263 GETUPVAL                         R42 3
      264 GETTABLEKS                       R42 R42 K24 ["useBoundAction"]
      266 LOADK                            R43 K54 ["NativeGraphContext_CutSelectedNodes"]
      267 CALL                             R42 1 1
      268 GETUPVAL                         R43 3
      269 GETTABLEKS                       R43 R43 K24 ["useBoundAction"]
      271 LOADK                            R44 K55 ["NativeGraphContext_PasteNodes"]
      272 CALL                             R43 1 1
      273 GETUPVAL                         R44 7
      274 GETTABLEKS                       R44 R44 K45 ["useConsumer"]
      276 CALL                             R44 0 1
      277 GETUPVAL                         R45 3
      278 GETTABLEKS                       R45 R45 K24 ["useBoundAction"]
      280 LOADK                            R46 K56 ["NativeGraphContext_beginUndoTransaction"]
      281 CALL                             R45 1 1
      282 GETUPVAL                         R46 3
      283 GETTABLEKS                       R46 R46 K24 ["useBoundAction"]
      285 LOADK                            R47 K57 ["NativeGraphContext_finishUndoTransaction"]
      286 CALL                             R46 1 1
      287 GETUPVAL                         R47 3
      288 GETTABLEKS                       R47 R47 K24 ["useBoundAction"]
      290 LOADK                            R48 K58 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      291 CALL                             R47 1 1
      292 NEWTABLE                         R48 64 0
      294 SETTABLEKS                       R13 R48 K59 ["reorderPinsAsync"]
      296 SETTABLEKS                       R14 R48 K60 ["createNodeAsync"]
      298 SETTABLEKS                       R15 R48 K61 ["createParameterAsync"]
      300 SETTABLEKS                       R16 R48 K62 ["createConnectedParameterAsync"]
      302 SETTABLEKS                       R17 R48 K63 ["createExistingParameterAsync"]
      304 SETTABLEKS                       R8 R48 K64 ["graphRect"]
      306 SETTABLEKS                       R18 R48 K65 ["selectAllParameterNodesWithNameAsync"]
      308 SETTABLEKS                       R19 R48 K66 ["selectNodesAsync"]
      310 SETTABLEKS                       R37 R48 K67 ["selectNodesFromRectAsync"]
      312 NEWCLOSURE                       R49 P2
      313 CAPTURE                          VAL R44
      314 SETTABLEKS                       R49 R48 K68 ["removeSelectedNodesAsync"]
      316 SETTABLEKS                       R38 R48 K69 ["duplicateSelectedNodesAsync"]
      318 SETTABLEKS                       R39 R48 K70 ["selectAllNodesAsync"]
      320 SETTABLEKS                       R40 R48 K71 ["clearNodeSelectionAsync"]
      322 SETTABLEKS                       R41 R48 K72 ["copySelectedNodesAsync"]
      324 SETTABLEKS                       R42 R48 K73 ["cutSelectedNodesAsync"]
      326 SETTABLEKS                       R43 R48 K74 ["pasteNodesAsync"]
      328 SETTABLEKS                       R20 R48 K75 ["setNodePositionsAsync"]
      330 SETTABLEKS                       R21 R48 K76 ["setNodeSizeAsync"]
      332 SETTABLEKS                       R22 R48 K77 ["setNodeConnectionAsync"]
      334 SETTABLEKS                       R23 R48 K78 ["deleteNodeInput"]
      336 SETTABLEKS                       R24 R48 K79 ["renameNodeInputAsync"]
      338 SETTABLEKS                       R25 R48 K80 ["removeNodeOutputConnectionAsync"]
      340 SETTABLEKS                       R26 R48 K81 ["removeNodeInputConnectionAsync"]
      342 SETTABLEKS                       R27 R48 K82 ["removeParameterAsync"]
      344 SETTABLEKS                       R28 R48 K83 ["renameNodeAsync"]
      346 SETTABLEKS                       R29 R48 K84 ["renameParameterAsync"]
      348 SETTABLEKS                       R30 R48 K85 ["deleteNodeInstanceAsync"]
      350 SETTABLEKS                       R31 R48 K86 ["showNodeInExplorerAsync"]
      352 SETTABLEKS                       R32 R48 K87 ["setCollapsedAsync"]
      354 SETTABLEKS                       R34 R48 K88 ["setNodePropertyAsync"]
      356 SETTABLEKS                       R35 R48 K89 ["setInputPinNodePropertyAsync"]
      358 SETTABLEKS                       R47 R48 K90 ["setExpressionNodeValueAsync"]
      360 SETTABLEKS                       R36 R48 K91 ["setParameterNodeTypeAsync"]
      362 SETTABLEKS                       R10 R48 K92 ["currentAnimationId"]
      364 SETTABLEKS                       R9 R48 K93 ["sourceAssetId"]
      366 SETTABLEKS                       R11 R48 K94 ["selectedGraphKey"]
      368 GETTABLEKS                       R49 R1 K95 ["observe"]
      370 SETTABLEKS                       R49 R48 K96 ["observeGraphNodeById"]
      372 GETTABLEKS                       R49 R2 K95 ["observe"]
      374 SETTABLEKS                       R49 R48 K97 ["observeNodeRenderInfoById"]
      376 SETTABLEKS                       R45 R48 K98 ["beginUndoTransaction"]
      378 SETTABLEKS                       R46 R48 K99 ["finishUndoTransaction"]
      380 GETTABLEKS                       R49 R1 K100 ["observeMap"]
      382 SETTABLEKS                       R49 R48 K101 ["observeGraphNodeMap"]
      384 GETTABLEKS                       R49 R2 K100 ["observeMap"]
      386 SETTABLEKS                       R49 R48 K102 ["observeRenderInfoMap"]
      388 GETTABLEKS                       R49 R12 K103 ["hasGraphOutput"]
      390 SETTABLEKS                       R49 R48 K103 ["hasGraphOutput"]
      392 GETTABLEKS                       R49 R3 K95 ["observe"]
      394 SETTABLEKS                       R49 R48 K104 ["observeNodePropsById"]
      396 SETTABLEKS                       R6 R48 K105 ["observeExpressionNodes"]
      398 DUPCLOSURE                       R49 K106 [PROTO_85]
      399 GETUPVAL                         R50 1
      400 GETTABLEKS                       R50 R50 K0 ["useContext"]
      402 GETUPVAL                         R51 8
      403 GETTABLEKS                       R51 R51 K1 ["Context"]
      405 CALL                             R50 1 1
      406 GETUPVAL                         R51 1
      407 GETTABLEKS                       R51 R51 K2 ["useCallback"]
      409 NEWCLOSURE                       R52 P4
      410 CAPTURE                          UPVAL U9
      411 CAPTURE                          VAL R50
      412 CAPTURE                          UPVAL U10
      413 NEWTABLE                         R53 0 2
      415 GETTABLEKS                       R54 R50 K107 ["observeDebugData"]
      417 GETTABLEKS                       R55 R50 K108 ["observeActiveDebugTargetIdentifier"]
      419 SETLIST                          R53 R54 2 [1]
      421 CALL                             R51 2 1
      422 GETUPVAL                         R52 1
      423 GETTABLEKS                       R52 R52 K2 ["useCallback"]
      425 NEWCLOSURE                       R53 P5
      426 CAPTURE                          UPVAL U9
      427 CAPTURE                          VAL R50
      428 CAPTURE                          UPVAL U10
      429 NEWTABLE                         R54 0 2
      431 GETTABLEKS                       R55 R50 K107 ["observeDebugData"]
      433 GETTABLEKS                       R56 R50 K108 ["observeActiveDebugTargetIdentifier"]
      435 SETLIST                          R54 R55 2 [1]
      437 CALL                             R52 2 1
      438 GETUPVAL                         R53 1
      439 GETTABLEKS                       R53 R53 K2 ["useCallback"]
      441 NEWCLOSURE                       R54 P6
      442 CAPTURE                          VAL R52
      443 CAPTURE                          UPVAL U11
      444 NEWTABLE                         R55 0 1
      446 MOVE                             R56 R52
      447 SETLIST                          R55 R56 1 [1]
      449 CALL                             R53 2 1
      450 GETUPVAL                         R54 1
      451 GETTABLEKS                       R54 R54 K2 ["useCallback"]
      453 NEWCLOSURE                       R55 P7
      454 CAPTURE                          UPVAL U11
      455 CAPTURE                          VAL R1
      456 NEWTABLE                         R56 0 1
      458 GETTABLEKS                       R57 R1 K100 ["observeMap"]
      460 SETLIST                          R56 R57 1 [1]
      462 CALL                             R54 2 1
      463 GETUPVAL                         R55 12
      464 GETTABLEKS                       R55 R55 K45 ["useConsumer"]
      466 CALL                             R55 0 1
      467 GETUPVAL                         R56 13
      468 GETTABLEKS                       R56 R56 K109 ["useSignalState"]
      470 GETTABLEKS                       R57 R4 K110 ["observeSelectedGraphIsEphemeral"]
      472 CALL                             R56 1 1
      473 GETUPVAL                         R57 1
      474 GETTABLEKS                       R57 R57 K111 ["useMemo"]
      476 NEWCLOSURE                       R58 P8
      477 CAPTURE                          VAL R1
      478 CAPTURE                          VAL R2
      479 CAPTURE                          VAL R56
      480 CAPTURE                          VAL R55
      481 CAPTURE                          VAL R13
      482 CAPTURE                          VAL R15
      483 CAPTURE                          VAL R17
      484 CAPTURE                          VAL R16
      485 CAPTURE                          VAL R18
      486 CAPTURE                          VAL R19
      487 CAPTURE                          VAL R32
      488 CAPTURE                          VAL R33
      489 CAPTURE                          VAL R23
      490 CAPTURE                          VAL R26
      491 CAPTURE                          VAL R25
      492 CAPTURE                          VAL R27
      493 CAPTURE                          VAL R28
      494 CAPTURE                          VAL R29
      495 CAPTURE                          VAL R30
      496 CAPTURE                          VAL R44
      497 CAPTURE                          VAL R22
      498 CAPTURE                          VAL R20
      499 CAPTURE                          VAL R34
      500 CAPTURE                          VAL R35
      501 CAPTURE                          VAL R21
      502 CAPTURE                          VAL R36
      503 CAPTURE                          VAL R3
      504 CAPTURE                          VAL R51
      505 CAPTURE                          VAL R53
      506 CAPTURE                          VAL R54
      507 NEWTABLE                         R59 0 30
      509 MOVE                             R60 R1
      510 MOVE                             R61 R2
      511 MOVE                             R62 R55
      512 MOVE                             R63 R13
      513 MOVE                             R64 R15
      514 MOVE                             R65 R17
      515 MOVE                             R66 R16
      516 MOVE                             R67 R18
      517 MOVE                             R68 R19
      518 MOVE                             R69 R32
      519 MOVE                             R70 R33
      520 MOVE                             R71 R23
      521 MOVE                             R72 R26
      522 MOVE                             R73 R25
      523 MOVE                             R74 R27
      524 MOVE                             R75 R28
      525 SETLIST                          R59 R60 16 [1]
      527 MOVE                             R60 R29
      528 MOVE                             R61 R30
      529 MOVE                             R62 R44
      530 MOVE                             R63 R22
      531 MOVE                             R64 R20
      532 MOVE                             R65 R34
      533 MOVE                             R66 R35
      534 MOVE                             R67 R21
      535 MOVE                             R68 R36
      536 GETTABLEKS                       R69 R3 K95 ["observe"]
      538 MOVE                             R70 R51
      539 MOVE                             R71 R53
      540 MOVE                             R72 R56
      541 MOVE                             R73 R54
      542 SETLIST                          R59 R60 14 [17]
      544 CALL                             R57 2 1
      545 GETUPVAL                         R58 1
      546 GETTABLEKS                       R58 R58 K112 ["createElement"]
      548 GETUPVAL                         R59 14
      549 GETTABLEKS                       R59 R59 K113 ["Provider"]
      551 DUPTABLE                         R60 K115 [{"value"}]
      552 SETTABLEKS                       R48 R60 K114 ["value"]
      554 DUPTABLE                         R61 K117 [{"ContextStack"}]
      555 GETUPVAL                         R62 1
      556 GETTABLEKS                       R62 R62 K112 ["createElement"]
      558 GETUPVAL                         R63 15
      559 GETTABLEKS                       R63 R63 K116 ["ContextStack"]
      561 DUPTABLE                         R64 K119 [{"providers"}]
      562 NEWTABLE                         R65 0 3
      564 GETUPVAL                         R66 1
      565 GETTABLEKS                       R66 R66 K112 ["createElement"]
      567 GETUPVAL                         R67 16
      568 GETTABLEKS                       R67 R67 K120 ["GraphContext"]
      570 GETTABLEKS                       R67 R67 K113 ["Provider"]
      572 DUPTABLE                         R68 K115 [{"value"}]
      573 SETTABLEKS                       R57 R68 K114 ["value"]
      575 CALL                             R66 2 1
      576 GETUPVAL                         R67 1
      577 GETTABLEKS                       R67 R67 K112 ["createElement"]
      579 GETUPVAL                         R68 17
      580 GETTABLEKS                       R68 R68 K121 ["UIDataModelProvider"]
      582 CALL                             R67 1 1
      583 GETUPVAL                         R68 1
      584 GETTABLEKS                       R68 R68 K112 ["createElement"]
      586 GETUPVAL                         R69 18
      587 GETTABLEKS                       R69 R69 K113 ["Provider"]
      589 DUPTABLE                         R70 K123 [{"timeRange"}]
      590 SETTABLEKS                       R7 R70 K122 ["timeRange"]
      592 CALL                             R68 2 -1
      593 SETLIST                          R65 R66 -1 [1]
      595 SETTABLEKS                       R65 R64 K118 ["providers"]
      597 GETTABLEKS                       R65 R0 K124 ["children"]
      599 CALL                             R62 3 1
      600 SETTABLEKS                       R62 R61 K116 ["ContextStack"]
      602 CALL                             R58 3 -1
      603 RETURN                           R58 -1

PROTO_99:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_100:
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
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 GETUPVAL                         R13 0
       44 CALL                             R13 0 1
       45 JUMPIFNOT                        R13 ; [+11]
       46 LOADK                            R15 K17 ["GraphName"]
       47 NAMECALL                         R13 R10 K18 ["GetAttribute"]
       49 CALL                             R13 2 1
       50 MOVE                             R11 R13
       51 LOADK                            R15 K19 ["CharacterName"]
       52 NAMECALL                         R13 R10 K18 ["GetAttribute"]
       54 CALL                             R13 2 1
       55 MOVE                             R12 R13
       56 JUMP                             ; [+18]
       57 LOADK                            R15 K17 ["GraphName"]
       58 NAMECALL                         R13 R10 K7 ["FindFirstChild"]
       60 CALL                             R13 2 1
       61 LOADK                            R16 K19 ["CharacterName"]
       62 NAMECALL                         R14 R10 K7 ["FindFirstChild"]
       64 CALL                             R14 2 1
       65 JUMPIFNOT                        R13 ; [+3]
       66 GETTABLEKS                       R11 R13 K20 ["Value"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R11
       70 JUMPIFNOT                        R14 ; [+3]
       71 GETTABLEKS                       R12 R14 K20 ["Value"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R12
       75 JUMPIFNOT                        R11 ; [+30]
       76 JUMPIFEQKS                       R11 K21 [""] ; [+29]
       78 JUMPIFNOT                        R12 ; [+27]
       79 JUMPIFEQKS                       R12 K21 [""] ; [+26]
       81 MOVE                             R14 R12
       82 LOADK                            R15 K22 ["_"]
       83 MOVE                             R16 R11
       84 CONCAT                           R13 R14 R16
       85 GETTABLE                         R14 R5 R13
       86 JUMPIF                           R14 ; [+19]
       87 MOVE                             R16 R12
       88 NAMECALL                         R14 R3 K7 ["FindFirstChild"]
       90 CALL                             R14 2 1
       91 JUMPIFNOT                        R14 ; [+14]
       92 MOVE                             R17 R11
       93 NAMECALL                         R15 R14 K7 ["FindFirstChild"]
       95 CALL                             R15 2 1
       96 JUMPIFNOT                        R15 ; [+9]
       97 NAMECALL                         R16 R15 K23 ["Clone"]
       99 CALL                             R16 1 1
      100 SETTABLEKS                       R13 R16 K13 ["Name"]
      102 SETTABLEKS                       R4 R16 K14 ["Parent"]
      104 LOADB                            R17 1
      105 SETTABLE                         R17 R5 R13
      106 FORGLOOP                         R6 2 ; [-66]
      108 NEWCLOSURE                       R6 P0
      109 CAPTURE                          VAL R4
      110 RETURN                           R6 1

PROTO_101:
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

PROTO_102:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_101]
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
       27 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R5 R5 K13 ["AnimationPreviewClipsContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["Constants"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       43 GETTABLEKS                       R7 R7 K16 ["CreateGraphContext"]
       45 GETTABLEKS                       R7 R7 K17 ["ContextDefinition"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R0 K18 ["Parent"]
       52 GETTABLEKS                       R8 R8 K19 ["Framework"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K20 ["GraphDebugDataContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K12 ["Contexts"]
       66 GETTABLEKS                       R10 R10 K20 ["GraphDebugDataContext"]
       68 GETTABLEKS                       R10 R10 K21 ["GraphDebugDataUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Contexts"]
       75 GETTABLEKS                       R11 R11 K22 ["InstanceRegistryContext"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Util"]
       82 GETTABLEKS                       R12 R12 K23 ["Instances"]
       84 GETTABLEKS                       R12 R12 K24 ["InstanceSelectionRegistry"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K11 [require]
       89 GETTABLEKS                       R13 R0 K12 ["Contexts"]
       91 GETTABLEKS                       R13 R13 K25 ["NativeGraphContext"]
       93 GETTABLEKS                       R13 R13 K26 ["NativeGraphUtils"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K11 [require]
       98 GETTABLEKS                       R14 R0 K14 ["Util"]
      100 GETTABLEKS                       R14 R14 K27 ["Networking"]
      102 GETTABLEKS                       R14 R14 K28 ["NetworkUtils"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K11 [require]
      107 GETTABLEKS                       R15 R0 K18 ["Parent"]
      109 GETTABLEKS                       R15 R15 K29 ["NodeGraphing"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K11 [require]
      114 GETTABLEKS                       R16 R0 K12 ["Contexts"]
      116 GETTABLEKS                       R16 R16 K30 ["NodeSelectionContext"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K11 [require]
      121 GETTABLEKS                       R17 R0 K31 ["NodeViewTypes"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K11 [require]
      126 GETTABLEKS                       R18 R0 K12 ["Contexts"]
      128 GETTABLEKS                       R18 R18 K32 ["PasteHookContext"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K11 [require]
      133 GETTABLEKS                       R19 R0 K18 ["Parent"]
      135 GETTABLEKS                       R19 R19 K33 ["React"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K11 [require]
      140 GETTABLEKS                       R20 R0 K18 ["Parent"]
      142 GETTABLEKS                       R20 R20 K34 ["ReactUtils"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K11 [require]
      147 GETTABLEKS                       R21 R0 K12 ["Contexts"]
      149 GETTABLEKS                       R21 R21 K35 ["SelectedGraphContext"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K11 [require]
      154 GETTABLEKS                       R22 R0 K12 ["Contexts"]
      156 GETTABLEKS                       R22 R22 K36 ["SelectionServiceContext"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K11 [require]
      161 GETTABLEKS                       R23 R0 K14 ["Util"]
      163 GETTABLEKS                       R23 R23 K37 ["Signals"]
      165 GETTABLEKS                       R23 R23 K38 ["Experimental"]
      167 GETTABLEKS                       R23 R23 K39 ["SignalExperimentalUtils"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K11 [require]
      172 GETTABLEKS                       R24 R0 K18 ["Parent"]
      174 GETTABLEKS                       R24 R24 K37 ["Signals"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K11 [require]
      179 GETTABLEKS                       R25 R0 K14 ["Util"]
      181 GETTABLEKS                       R25 R25 K37 ["Signals"]
      183 GETTABLEKS                       R25 R25 K38 ["Experimental"]
      185 GETTABLEKS                       R25 R25 K39 ["SignalExperimentalUtils"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K11 [require]
      190 GETTABLEKS                       R26 R0 K14 ["Util"]
      192 GETTABLEKS                       R26 R26 K37 ["Signals"]
      194 GETTABLEKS                       R26 R26 K40 ["SignalsInstanceUtils"]
      196 CALL                             R25 1 1
      197 GETIMPORT                        R26 K11 [require]
      199 GETTABLEKS                       R27 R0 K18 ["Parent"]
      201 GETTABLEKS                       R27 R27 K41 ["SignalsReact"]
      203 CALL                             R26 1 1
      204 GETIMPORT                        R27 K11 [require]
      206 GETTABLEKS                       R28 R0 K12 ["Contexts"]
      208 GETTABLEKS                       R28 R28 K42 ["SpotlightedNodeContext"]
      210 CALL                             R27 1 1
      211 GETIMPORT                        R28 K11 [require]
      213 GETTABLEKS                       R29 R0 K43 ["Components"]
      215 GETTABLEKS                       R29 R29 K44 ["NodeView"]
      217 GETTABLEKS                       R29 R29 K45 ["StateMachine"]
      219 GETTABLEKS                       R29 R29 K46 ["StateMachineMaterializer"]
      221 CALL                             R28 1 1
      222 GETIMPORT                        R29 K11 [require]
      224 GETTABLEKS                       R30 R0 K12 ["Contexts"]
      226 GETTABLEKS                       R30 R30 K47 ["TimeRangeContext"]
      228 CALL                             R29 1 1
      229 GETIMPORT                        R30 K11 [require]
      231 GETTABLEKS                       R31 R0 K48 ["Flags"]
      233 GETTABLEKS                       R31 R31 K49 ["getFFlagAnimGraphCreateSAScript"]
      235 CALL                             R30 1 1
      236 GETIMPORT                        R31 K11 [require]
      238 GETTABLEKS                       R32 R0 K48 ["Flags"]
      240 GETTABLEKS                       R32 R32 K50 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      242 CALL                             R31 1 1
      243 GETIMPORT                        R32 K11 [require]
      245 GETTABLEKS                       R33 R0 K48 ["Flags"]
      247 GETTABLEKS                       R33 R33 K51 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      249 CALL                             R32 1 1
      250 GETIMPORT                        R33 K11 [require]
      252 GETTABLEKS                       R34 R0 K48 ["Flags"]
      254 GETTABLEKS                       R34 R34 K52 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      256 CALL                             R33 1 1
      257 GETIMPORT                        R34 K11 [require]
      259 GETTABLEKS                       R35 R0 K48 ["Flags"]
      261 GETTABLEKS                       R35 R35 K53 ["getFFlagAnimGraphUIEnableValueNodes"]
      263 CALL                             R34 1 1
      264 GETIMPORT                        R35 K11 [require]
      266 GETTABLEKS                       R36 R0 K48 ["Flags"]
      268 GETTABLEKS                       R36 R36 K54 ["getFFlagAnimGraphUIInputIds"]
      270 CALL                             R35 1 1
      271 GETIMPORT                        R36 K11 [require]
      273 GETTABLEKS                       R37 R0 K48 ["Flags"]
      275 GETTABLEKS                       R37 R37 K55 ["getFFlagAnimGraphUI_Localization2"]
      277 CALL                             R36 1 1
      278 GETIMPORT                        R37 K11 [require]
      280 GETTABLEKS                       R38 R0 K48 ["Flags"]
      282 GETTABLEKS                       R38 R38 K56 ["getFFlagAnimGraphUI_NewGraphOnInsertNode"]
      284 CALL                             R37 1 1
      285 GETIMPORT                        R38 K11 [require]
      287 GETTABLEKS                       R39 R0 K48 ["Flags"]
      289 GETTABLEKS                       R39 R39 K57 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      291 CALL                             R38 1 1
      292 GETIMPORT                        R39 K11 [require]
      294 GETTABLEKS                       R40 R0 K48 ["Flags"]
      296 GETTABLEKS                       R40 R40 K58 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      298 CALL                             R39 1 1
      299 GETIMPORT                        R40 K11 [require]
      301 GETTABLEKS                       R41 R0 K14 ["Util"]
      303 GETTABLEKS                       R41 R41 K59 ["parseAnimationNodeType"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K11 [require]
      308 GETTABLEKS                       R42 R0 K14 ["Util"]
      310 GETTABLEKS                       R42 R42 K60 ["sanitizeParameterNames"]
      312 CALL                             R41 1 1
      313 GETIMPORT                        R42 K11 [require]
      315 GETTABLEKS                       R43 R0 K43 ["Components"]
      317 GETTABLEKS                       R43 R43 K44 ["NodeView"]
      319 GETTABLEKS                       R43 R43 K45 ["StateMachine"]
      321 GETTABLEKS                       R43 R43 K61 ["supportsStateMachineNode"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K11 [require]
      326 GETIMPORT                        R44 K1 [script]
      328 GETTABLEKS                       R44 R44 K62 ["useGraphAnalytics"]
      330 CALL                             R43 1 1
      331 GETIMPORT                        R44 K11 [require]
      333 GETTABLEKS                       R45 R0 K63 ["Hooks"]
      335 GETTABLEKS                       R45 R45 K64 ["useNodeDefinitionDestroyHelper"]
      337 CALL                             R44 1 1
      338 GETIMPORT                        R45 K11 [require]
      340 GETTABLEKS                       R46 R0 K63 ["Hooks"]
      342 GETTABLEKS                       R46 R46 K65 ["useObserveNodeSelection"]
      344 CALL                             R45 1 1
      345 GETIMPORT                        R46 K11 [require]
      347 GETTABLEKS                       R47 R0 K63 ["Hooks"]
      349 GETTABLEKS                       R47 R47 K66 ["useParameterDestroyHelper"]
      351 CALL                             R46 1 1
      352 GETIMPORT                        R47 K11 [require]
      354 GETTABLEKS                       R48 R0 K63 ["Hooks"]
      356 GETTABLEKS                       R48 R48 K67 ["useSignalDispatcher"]
      358 CALL                             R47 1 1
      359 GETIMPORT                        R48 K11 [require]
      361 GETTABLEKS                       R49 R0 K63 ["Hooks"]
      363 GETTABLEKS                       R49 R49 K68 ["useValueNodeDestroyHelper"]
      365 CALL                             R48 1 1
      366 NEWTABLE                         R49 64 0
      368 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      370 LOADK                            R51 K70 ["observeGraphNodeMap"]
      371 CALL                             R50 1 1
      372 SETTABLEKS                       R50 R49 K70 ["observeGraphNodeMap"]
      374 GETIMPORT                        R50 K73 [Rect.new]
      376 LOADN                            R51 0
      377 LOADN                            R52 0
      378 LOADN                            R53 0
      379 LOADN                            R54 0
      380 CALL                             R50 4 1
      381 SETTABLEKS                       R50 R49 K74 ["graphRect"]
      383 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      385 LOADK                            R51 K75 ["reorderPinsAsync"]
      386 CALL                             R50 1 1
      387 SETTABLEKS                       R50 R49 K75 ["reorderPinsAsync"]
      389 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      391 LOADK                            R51 K76 ["createNodeAsync"]
      392 CALL                             R50 1 1
      393 SETTABLEKS                       R50 R49 K76 ["createNodeAsync"]
      395 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      397 LOADK                            R51 K77 ["createParameterAsync"]
      398 CALL                             R50 1 1
      399 SETTABLEKS                       R50 R49 K77 ["createParameterAsync"]
      401 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      403 LOADK                            R51 K78 ["createConnectedParameterAsync"]
      404 CALL                             R50 1 1
      405 SETTABLEKS                       R50 R49 K78 ["createConnectedParameterAsync"]
      407 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      409 LOADK                            R51 K79 ["createExistingParameterAsync"]
      410 CALL                             R50 1 1
      411 SETTABLEKS                       R50 R49 K79 ["createExistingParameterAsync"]
      413 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      415 LOADK                            R51 K80 ["selectAllParameterNodesWithNameAsync"]
      416 CALL                             R50 1 1
      417 SETTABLEKS                       R50 R49 K80 ["selectAllParameterNodesWithNameAsync"]
      419 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      421 LOADK                            R51 K81 ["selectNodesAsync"]
      422 CALL                             R50 1 1
      423 SETTABLEKS                       R50 R49 K81 ["selectNodesAsync"]
      425 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      427 LOADK                            R51 K82 ["selectNodesFromRectAsync"]
      428 CALL                             R50 1 1
      429 SETTABLEKS                       R50 R49 K82 ["selectNodesFromRectAsync"]
      431 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      433 LOADK                            R51 K83 ["removeSelectedNodesAsync"]
      434 CALL                             R50 1 1
      435 SETTABLEKS                       R50 R49 K83 ["removeSelectedNodesAsync"]
      437 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      439 LOADK                            R51 K84 ["duplicateSelectedNodesAsync"]
      440 CALL                             R50 1 1
      441 SETTABLEKS                       R50 R49 K84 ["duplicateSelectedNodesAsync"]
      443 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      445 LOADK                            R51 K85 ["selectAllNodesAsync"]
      446 CALL                             R50 1 1
      447 SETTABLEKS                       R50 R49 K85 ["selectAllNodesAsync"]
      449 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      451 LOADK                            R51 K86 ["clearNodeSelectionAsync"]
      452 CALL                             R50 1 1
      453 SETTABLEKS                       R50 R49 K86 ["clearNodeSelectionAsync"]
      455 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      457 LOADK                            R51 K87 ["copySelectedNodesAsync"]
      458 CALL                             R50 1 1
      459 SETTABLEKS                       R50 R49 K87 ["copySelectedNodesAsync"]
      461 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      463 LOADK                            R51 K88 ["cutSelectedNodesAsync"]
      464 CALL                             R50 1 1
      465 SETTABLEKS                       R50 R49 K88 ["cutSelectedNodesAsync"]
      467 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      469 LOADK                            R51 K89 ["pasteNodesAsync"]
      470 CALL                             R50 1 1
      471 SETTABLEKS                       R50 R49 K89 ["pasteNodesAsync"]
      473 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      475 LOADK                            R51 K90 ["setNodePositionsAsync"]
      476 CALL                             R50 1 1
      477 SETTABLEKS                       R50 R49 K90 ["setNodePositionsAsync"]
      479 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      481 LOADK                            R51 K91 ["setNodeSizeAsync"]
      482 CALL                             R50 1 1
      483 SETTABLEKS                       R50 R49 K91 ["setNodeSizeAsync"]
      485 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      487 LOADK                            R51 K92 ["deleteNodeInput"]
      488 CALL                             R50 1 1
      489 SETTABLEKS                       R50 R49 K92 ["deleteNodeInput"]
      491 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      493 LOADK                            R51 K93 ["renameNodeInputAsync"]
      494 CALL                             R50 1 1
      495 SETTABLEKS                       R50 R49 K93 ["renameNodeInputAsync"]
      497 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      499 LOADK                            R51 K94 ["removeNodeInputConnectionAsync"]
      500 CALL                             R50 1 1
      501 SETTABLEKS                       R50 R49 K94 ["removeNodeInputConnectionAsync"]
      503 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      505 LOADK                            R51 K95 ["removeNodeOutputConnectionAsync"]
      506 CALL                             R50 1 1
      507 SETTABLEKS                       R50 R49 K95 ["removeNodeOutputConnectionAsync"]
      509 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      511 LOADK                            R51 K96 ["removeParameterAsync"]
      512 CALL                             R50 1 1
      513 SETTABLEKS                       R50 R49 K96 ["removeParameterAsync"]
      515 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      517 LOADK                            R51 K97 ["renameNodeAsync"]
      518 CALL                             R50 1 1
      519 SETTABLEKS                       R50 R49 K97 ["renameNodeAsync"]
      521 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      523 LOADK                            R51 K98 ["renameParameterAsync"]
      524 CALL                             R50 1 1
      525 SETTABLEKS                       R50 R49 K98 ["renameParameterAsync"]
      527 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      529 LOADK                            R51 K99 ["deleteNodeInstanceAsync"]
      530 CALL                             R50 1 1
      531 SETTABLEKS                       R50 R49 K99 ["deleteNodeInstanceAsync"]
      533 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      535 LOADK                            R51 K100 ["showNodeInExplorerAsync"]
      536 CALL                             R50 1 1
      537 SETTABLEKS                       R50 R49 K100 ["showNodeInExplorerAsync"]
      539 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      541 LOADK                            R51 K101 ["setNewConnection"]
      542 CALL                             R50 1 1
      543 SETTABLEKS                       R50 R49 K102 ["setNodeConnectionAsync"]
      545 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      547 LOADK                            R51 K103 ["setCollapsedAsync"]
      548 CALL                             R50 1 1
      549 SETTABLEKS                       R50 R49 K103 ["setCollapsedAsync"]
      551 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      553 LOADK                            R51 K104 ["setNodePropertyAsync"]
      554 CALL                             R50 1 1
      555 SETTABLEKS                       R50 R49 K104 ["setNodePropertyAsync"]
      557 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      559 LOADK                            R51 K105 ["setInputPinNodePropertyAsync"]
      560 CALL                             R50 1 1
      561 SETTABLEKS                       R50 R49 K105 ["setInputPinNodePropertyAsync"]
      563 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      565 LOADK                            R51 K106 ["setParameterNodeTypeAsync"]
      566 CALL                             R50 1 1
      567 SETTABLEKS                       R50 R49 K106 ["setParameterNodeTypeAsync"]
      569 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      571 LOADK                            R51 K107 ["setExpressionNodeValueAsync"]
      572 CALL                             R50 1 1
      573 SETTABLEKS                       R50 R49 K107 ["setExpressionNodeValueAsync"]
      575 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      577 LOADK                            R51 K108 ["hasGraphOutput"]
      578 CALL                             R50 1 1
      579 SETTABLEKS                       R50 R49 K108 ["hasGraphOutput"]
      581 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      583 LOADK                            R51 K109 ["observeGraphNodeById"]
      584 CALL                             R50 1 1
      585 SETTABLEKS                       R50 R49 K109 ["observeGraphNodeById"]
      587 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      589 LOADK                            R51 K110 ["observeNodeRenderInfoById"]
      590 CALL                             R50 1 1
      591 SETTABLEKS                       R50 R49 K110 ["observeNodeRenderInfoById"]
      593 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      595 LOADK                            R51 K111 ["observeRenderInfoMap"]
      596 CALL                             R50 1 1
      597 SETTABLEKS                       R50 R49 K111 ["observeRenderInfoMap"]
      599 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      601 LOADK                            R51 K112 ["observeNodePropsById"]
      602 CALL                             R50 1 1
      603 SETTABLEKS                       R50 R49 K112 ["observeNodePropsById"]
      605 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      607 LOADK                            R51 K113 ["observeExpressionNodes"]
      608 CALL                             R50 1 1
      609 SETTABLEKS                       R50 R49 K113 ["observeExpressionNodes"]
      611 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      613 LOADK                            R51 K114 ["beginUndoTransaction"]
      614 CALL                             R50 1 1
      615 SETTABLEKS                       R50 R49 K114 ["beginUndoTransaction"]
      617 GETTABLEKS                       R50 R19 K69 ["createUnimplemented"]
      619 LOADK                            R51 K115 ["finishUndoTransaction"]
      620 CALL                             R50 1 1
      621 SETTABLEKS                       R50 R49 K115 ["finishUndoTransaction"]
      623 LOADNIL                          R50
      624 SETTABLEKS                       R50 R49 K116 ["currentAnimationId"]
      626 LOADNIL                          R50
      627 SETTABLEKS                       R50 R49 K117 ["sourceAssetId"]
      629 LOADNIL                          R50
      630 SETTABLEKS                       R50 R49 K118 ["selectedGraphKey"]
      632 GETTABLEKS                       R50 R18 K119 ["createContext"]
      634 MOVE                             R51 R49
      635 CALL                             R50 1 1
      636 DUPTABLE                         R51 K140 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction", ["EXPRESSION_NODES"] = "NativeGraphContext_ExpressionNodes"}]
      637 NEWTABLE                         R52 64 0
      639 LOADK                            R53 K141 ["NativeGraphContext_CreateNode"]
      640 SETTABLEKS                       R53 R52 K142 ["CREATE_NODE"]
      642 LOADK                            R53 K143 ["NativeGraphContext_CreateParameterAsync"]
      643 SETTABLEKS                       R53 R52 K144 ["CREATE_PARAMETER"]
      645 LOADK                            R53 K145 ["NativeGraphContext_CreateConnectedParameterAsync"]
      646 SETTABLEKS                       R53 R52 K146 ["CREATE_CONNECTED_PARAMETER"]
      648 LOADK                            R53 K147 ["NativeGraphContext_CreateExistingParameterAsync"]
      649 SETTABLEKS                       R53 R52 K148 ["CREATE_EXISTING_PARAMETER"]
      651 LOADK                            R53 K149 ["NativeGraphContext_GetSelectedGraphInstance"]
      652 SETTABLEKS                       R53 R52 K150 ["GET_SELECTED_GRAPH_INSTANCE"]
      654 LOADK                            R53 K151 ["NativeGraphContext_SetNodeConnectionAsync"]
      655 SETTABLEKS                       R53 R52 K152 ["SET_NODE_CONNECTION"]
      657 LOADK                            R53 K153 ["NativeGraphContext_setNodePropertyAsync"]
      658 SETTABLEKS                       R53 R52 K154 ["SET_NODE_PROPERTY"]
      660 LOADK                            R53 K155 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      661 SETTABLEKS                       R53 R52 K156 ["SET_INPUT_PIN_NODE_PROPERTY"]
      663 LOADK                            R53 K157 ["NativeGraphContext_ReorderPinsAsync"]
      664 SETTABLEKS                       R53 R52 K158 ["REORDER_PINS"]
      666 LOADK                            R53 K159 ["NativeGraphContext_DeleteNodeInput"]
      667 SETTABLEKS                       R53 R52 K160 ["DELETE_NODE_INPUT"]
      669 LOADK                            R53 K161 ["NativeGraphContext_RenameNodeInput"]
      670 SETTABLEKS                       R53 R52 K162 ["RENAME_NODE_INPUT"]
      672 LOADK                            R53 K163 ["NativeGraphContext_RemoveNodeInputConnection"]
      673 SETTABLEKS                       R53 R52 K164 ["REMOVE_NODE_INPUT_CONNECTION"]
      675 LOADK                            R53 K165 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      676 SETTABLEKS                       R53 R52 K166 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      678 LOADK                            R53 K167 ["NativeGraphContext_RemoveParameterAsync"]
      679 SETTABLEKS                       R53 R52 K168 ["REMOVE_PARAMETER"]
      681 LOADK                            R53 K169 ["NativeGraphContext_RenameNodeAsync"]
      682 SETTABLEKS                       R53 R52 K170 ["RENAME_NODE"]
      684 LOADK                            R53 K171 ["NativeGraphContext_RenameParameterAsync"]
      685 SETTABLEKS                       R53 R52 K172 ["RENAME_PARAMETER"]
      687 LOADK                            R53 K173 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      688 SETTABLEKS                       R53 R52 K174 ["DELETE_NODE_INSTANCE"]
      690 LOADK                            R53 K175 ["NativeGraphContext_ShowNodeInExplorer"]
      691 SETTABLEKS                       R53 R52 K176 ["SHOW_NODE_IN_EXPLORER"]
      693 LOADK                            R53 K177 ["NativeGraphContext_SetNodeSizeAsync"]
      694 SETTABLEKS                       R53 R52 K178 ["SET_NODE_SIZE"]
      696 LOADK                            R53 K179 ["NativeGraphContext_SetCollapsedAsync"]
      697 SETTABLEKS                       R53 R52 K180 ["SET_COLLAPSED"]
      699 LOADK                            R53 K181 ["NativeGraphContext_SetNodePositionsAsync"]
      700 SETTABLEKS                       R53 R52 K182 ["SET_NODE_POSITIONS"]
      702 LOADK                            R53 K183 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      703 SETTABLEKS                       R53 R52 K184 ["SET_PARAMETER_NODE_TYPE"]
      705 LOADK                            R53 K185 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      706 SETTABLEKS                       R53 R52 K186 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      708 LOADK                            R53 K187 ["NativeGraphContext_SelectNodes"]
      709 SETTABLEKS                       R53 R52 K188 ["SELECT_NODES"]
      711 LOADK                            R53 K189 ["NativeGraphContext_SelectNodesFromRect"]
      712 SETTABLEKS                       R53 R52 K190 ["SELECT_NODES_FROM_RECT"]
      714 LOADK                            R53 K191 ["NativeGraphContext_DuplicateSelectedNodes"]
      715 SETTABLEKS                       R53 R52 K192 ["DUPLICATE_SELECTED_NODES"]
      717 LOADK                            R53 K193 ["NativeGraphContext_SelectAllNodes"]
      718 SETTABLEKS                       R53 R52 K194 ["SELECT_ALL_NODES"]
      720 LOADK                            R53 K195 ["NativeGraphContext_ClearNodeSelection"]
      721 SETTABLEKS                       R53 R52 K196 ["CLEAR_NODE_SELECTION"]
      723 LOADK                            R53 K197 ["NativeGraphContext_CopySelectedNodes"]
      724 SETTABLEKS                       R53 R52 K198 ["COPY_SELECTED_NODES"]
      726 LOADK                            R53 K199 ["NativeGraphContext_CutSelectedNodes"]
      727 SETTABLEKS                       R53 R52 K200 ["CUT_SELECTED_NODES"]
      729 LOADK                            R53 K201 ["NativeGraphContext_PasteNodes"]
      730 SETTABLEKS                       R53 R52 K202 ["PASTE_NODES"]
      732 LOADK                            R53 K203 ["NativeGraphContext_beginUndoTransaction"]
      733 SETTABLEKS                       R53 R52 K204 ["BEGIN_UNDO_TRANSACTION"]
      735 LOADK                            R53 K205 ["NativeGraphContext_finishUndoTransaction"]
      736 SETTABLEKS                       R53 R52 K206 ["FINISH_UNDO_TRANSACTION"]
      738 LOADK                            R53 K207 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      739 SETTABLEKS                       R53 R52 K208 ["SET_EXPRESSION_NODE_VALUE"]
      741 GETTABLEKS                       R53 R13 K209 ["createBoundAction"]
      743 LOADK                            R54 K210 ["NativeGraphContext_createNode"]
      744 CALL                             R53 1 1
      745 GETTABLEKS                       R54 R13 K209 ["createBoundAction"]
      747 LOADK                            R55 K211 ["NativeGraphContext_setZIndex"]
      748 CALL                             R54 1 1
      749 GETTABLEKS                       R55 R13 K209 ["createBoundAction"]
      751 LOADK                            R56 K212 ["NativeGraphContext_removeNodes"]
      752 CALL                             R55 1 1
      753 DUPCLOSURE                       R56 K213 [PROTO_0]
      754 DUPCLOSURE                       R57 K214 [PROTO_2]
      755 CAPTURE                          VAL R18
      756 DUPCLOSURE                       R58 K215 [PROTO_80]
      757 CAPTURE                          VAL R7
      758 CAPTURE                          VAL R47
      759 CAPTURE                          VAL R18
      760 CAPTURE                          VAL R15
      761 CAPTURE                          VAL R21
      762 CAPTURE                          VAL R17
      763 CAPTURE                          VAL R20
      764 CAPTURE                          VAL R37
      765 CAPTURE                          VAL R6
      766 CAPTURE                          VAL R45
      767 CAPTURE                          VAL R11
      768 CAPTURE                          VAL R43
      769 CAPTURE                          VAL R10
      770 CAPTURE                          VAL R23
      771 CAPTURE                          VAL R12
      772 CAPTURE                          VAL R19
      773 CAPTURE                          VAL R2
      774 CAPTURE                          VAL R31
      775 CAPTURE                          VAL R26
      776 CAPTURE                          VAL R1
      777 CAPTURE                          VAL R40
      778 CAPTURE                          VAL R14
      779 CAPTURE                          VAL R25
      780 CAPTURE                          VAL R38
      781 CAPTURE                          VAL R42
      782 CAPTURE                          VAL R28
      783 CAPTURE                          VAL R35
      784 CAPTURE                          VAL R53
      785 CAPTURE                          VAL R56
      786 CAPTURE                          VAL R55
      787 CAPTURE                          VAL R13
      788 CAPTURE                          VAL R32
      789 CAPTURE                          VAL R33
      790 CAPTURE                          VAL R5
      791 CAPTURE                          VAL R44
      792 CAPTURE                          VAL R46
      793 CAPTURE                          VAL R48
      794 CAPTURE                          VAL R34
      795 CAPTURE                          VAL R39
      796 CAPTURE                          VAL R36
      797 CAPTURE                          VAL R41
      798 CAPTURE                          VAL R57
      799 CAPTURE                          VAL R22
      800 CAPTURE                          VAL R54
      801 CAPTURE                          VAL R50
      802 CAPTURE                          VAL R29
      803 CAPTURE                          VAL R4
      804 DUPCLOSURE                       R59 K216 [PROTO_98]
      805 CAPTURE                          VAL R47
      806 CAPTURE                          VAL R18
      807 CAPTURE                          VAL R20
      808 CAPTURE                          VAL R13
      809 CAPTURE                          VAL R31
      810 CAPTURE                          VAL R57
      811 CAPTURE                          VAL R54
      812 CAPTURE                          VAL R55
      813 CAPTURE                          VAL R8
      814 CAPTURE                          VAL R25
      815 CAPTURE                          VAL R24
      816 CAPTURE                          VAL R22
      817 CAPTURE                          VAL R53
      818 CAPTURE                          VAL R26
      819 CAPTURE                          VAL R50
      820 CAPTURE                          VAL R19
      821 CAPTURE                          VAL R14
      822 CAPTURE                          VAL R27
      823 CAPTURE                          VAL R29
      824 DUPCLOSURE                       R60 K217 [PROTO_100]
      825 CAPTURE                          VAL R30
      826 DUPCLOSURE                       R61 K218 [PROTO_102]
      827 CAPTURE                          VAL R18
      828 CAPTURE                          VAL R31
      829 CAPTURE                          VAL R3
      830 CAPTURE                          VAL R60
      831 CAPTURE                          VAL R58
      832 DUPTABLE                         R62 K224 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      833 SETTABLEKS                       R50 R62 K219 ["Context"]
      835 SETTABLEKS                       R58 R62 K220 ["EditableDataModelProvider"]
      837 SETTABLEKS                       R61 R62 K221 ["PreviewDataModelProvider"]
      839 SETTABLEKS                       R59 R62 K222 ["UIDataModelProvider"]
      841 SETTABLEKS                       R60 R62 K223 ["_setupEditorFolderForPreview"]
      843 RETURN                           R62 1
