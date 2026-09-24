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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K1 ["createEffect"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R1
       15 CAPTURE                          UPVAL U4
       16 CALL                             R2 1 -1
       17 CLOSEUPVALS                      R1
       18 RETURN                           R2 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNonPromotedExpressionNodes"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["observeSelectedGraphInstance"]
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R2 4
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       73 GETIMPORT                        R8 K18 [Enum.AnimationNodeType.Blend1DNode]
       75 JUMPIFNOTEQ                      R4 R8 ; [+9]
       77 GETUPVAL                         R8 6
       78 GETTABLEKS                       R8 R8 K19 ["seedBlend1dInputs"]
       80 GETUPVAL                         R9 9
       81 GETUPVAL                         R10 3
       82 MOVE                             R11 R6
       83 CALL                             R8 3 0
       84 JUMP                             ; [+14]
       85 GETUPVAL                         R8 10
       86 CALL                             R8 0 1
       87 JUMPIFNOT                        R8 ; [+11]
       88 GETUPVAL                         R8 11
       89 JUMPIFNOT                        R8 ; [+9]
       90 GETIMPORT                        R8 K21 [Enum.AnimationNodeType.StateMachineNode]
       92 JUMPIFNOTEQ                      R4 R8 ; [+6]
       94 GETUPVAL                         R8 12
       95 GETTABLEKS                       R8 R8 K22 ["seedPoseDefaults"]
       97 MOVE                             R9 R6
       98 CALL                             R8 1 0
       99 JUMPIFNOT                        R2 ; [+86]
      100 GETTABLEKS                       R8 R2 K23 ["sourcePinSide"]
      102 JUMPIFNOTEQKS                    R8 K24 ["Input"] ; [+16]
      104 JUMPIFEQKNIL                     R7 ; [+81]
      106 GETUPVAL                         R8 6
      107 GETTABLEKS                       R8 R8 K25 ["setNodeConnection"]
      109 GETUPVAL                         R9 9
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R11 R2 K26 ["sourcePinNodeId"]
      113 GETTABLEKS                       R12 R2 K27 ["sourcePinName"]
      115 MOVE                             R13 R7
      116 LOADK                            R14 K28 ["Output"]
      117 CALL                             R8 6 0
      118 JUMP                             ; [+67]
      119 GETTABLEKS                       R8 R2 K23 ["sourcePinSide"]
      121 JUMPIFNOTEQKS                    R8 K28 ["Output"] ; [+60]
      123 GETUPVAL                         R8 13
      124 MOVE                             R10 R4
      125 NAMECALL                         R8 R8 K29 ["GetAnimationNodeDefinition"]
      127 CALL                             R8 2 1
      128 LOADNIL                          R9
      129 GETUPVAL                         R10 6
      130 GETTABLEKS                       R10 R10 K30 ["hasDynamicInputPins"]
      132 GETUPVAL                         R11 3
      133 GETTABLEKS                       R12 R2 K26 ["sourcePinNodeId"]
      135 CALL                             R10 2 1
      136 JUMPIFNOT                        R10 ; [+9]
      137 GETUPVAL                         R10 6
      138 GETTABLEKS                       R10 R10 K31 ["getDynamicInputPinNameFromInputNode"]
      140 MOVE                             R11 R6
      141 GETTABLEKS                       R12 R2 K27 ["sourcePinName"]
      143 CALL                             R10 2 1
      144 MOVE                             R9 R10
      145 JUMP                             ; [+13]
      146 JUMPIFNOT                        R8 ; [+12]
      147 GETTABLEKS                       R10 R8 K32 ["Inputs"]
      149 JUMPIFNOT                        R10 ; [+9]
      150 GETTABLEKS                       R11 R8 K32 ["Inputs"]
      152 GETTABLEN                        R10 R11 1
      153 JUMPIFNOT                        R10 ; [+5]
      154 GETTABLEKS                       R11 R8 K32 ["Inputs"]
      156 GETTABLEN                        R10 R11 1
      157 GETTABLEKS                       R9 R10 K33 ["InputName"]
      159 JUMPIFEQKNIL                     R9 ; [+16]
      161 JUMPIFEQKNIL                     R7 ; [+24]
      163 GETUPVAL                         R10 6
      164 GETTABLEKS                       R10 R10 K25 ["setNodeConnection"]
      166 GETUPVAL                         R11 9
      167 GETUPVAL                         R12 3
      168 MOVE                             R13 R7
      169 MOVE                             R14 R9
      170 GETTABLEKS                       R15 R2 K26 ["sourcePinNodeId"]
      172 GETTABLEKS                       R16 R2 K27 ["sourcePinName"]
      174 CALL                             R10 6 0
      175 JUMP                             ; [+10]
      176 GETIMPORT                        R10 K2 [warn]
      178 LOADK                            R11 K34 ["Failed to find input pin name for node type:"]
      179 MOVE                             R12 R0
      180 CALL                             R10 2 0
      181 JUMP                             ; [+4]
      182 GETIMPORT                        R8 K36 [error]
      184 LOADK                            R9 K37 ["Bad sourcePinSide state"]
      185 CALL                             R8 1 0
      186 GETUPVAL                         R8 14
      187 NEWTABLE                         R10 0 1
      189 MOVE                             R11 R6
      190 SETLIST                          R10 R11 1 [1]
      192 NAMECALL                         R8 R8 K38 ["Set"]
      194 CALL                             R8 2 0
      195 JUMPIFNOT                        R5 ; [+7]
      196 GETUPVAL                         R8 5
      197 MOVE                             R10 R5
      198 GETIMPORT                        R11 K41 [Enum.FinishRecordingOperation.Commit]
      200 NAMECALL                         R8 R8 K42 ["FinishRecording"]
      202 CALL                             R8 3 0
      203 RETURN                           R7 1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 3
       16 NAMECALL                         R1 R1 K1 ["Get"]
       18 CALL                             R1 1 1
       19 LENGTH                           R2 R1
       20 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 4
       24 LOADK                            R4 K3 ["NativeGraphContext"]
       25 LOADK                            R5 K4 ["duplicateSelectedNodesAsync"]
       26 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       28 CALL                             R2 3 1
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K6 ["duplicateNodes"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R2 ; [+7]
       36 GETUPVAL                         R4 4
       37 MOVE                             R6 R2
       38 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       40 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       42 CALL                             R4 3 0
       43 LENGTH                           R4 R3
       44 LOADN                            R5 0
       45 JUMPIFNOTLT                      R5 R4 ; [+6]
       47 GETUPVAL                         R4 3
       48 MOVE                             R6 R3
       49 NAMECALL                         R4 R4 K12 ["Set"]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 NEWTABLE                         R1 0 0
       17 NAMECALL                         R2 R0 K1 ["GetChildren"]
       19 CALL                             R2 1 3
       20 FORGPREP                         R2
       21 LOADK                            R9 K2 ["AnimationNodeDefinition"]
       22 NAMECALL                         R7 R6 K3 ["IsA"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+7]
       26 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       28 MOVE                             R8 R1
       29 MOVE                             R9 R6
       30 GETIMPORT                        R7 K6 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-13]
       35 GETUPVAL                         R2 3
       36 MOVE                             R4 R1
       37 NAMECALL                         R2 R2 K7 ["Set"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["getInstancesOnClipboardAsync"]
       18 CALL                             R1 0 1
       19 LENGTH                           R2 R1
       20 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 4
       24 LOADK                            R4 K3 ["NativeGraphContext"]
       25 LOADK                            R5 K4 ["pasteNodesAsync"]
       26 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       28 CALL                             R2 3 1
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K6 ["pasteInstancesIntoGraph"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R2 ; [+7]
       36 GETUPVAL                         R4 4
       37 MOVE                             R6 R2
       38 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       40 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       42 CALL                             R4 3 0
       43 LENGTH                           R4 R3
       44 LOADN                            R5 0
       45 JUMPIFNOTLT                      R5 R4 ; [+6]
       47 GETUPVAL                         R4 6
       48 MOVE                             R6 R3
       49 NAMECALL                         R4 R4 K12 ["Set"]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_37:
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
       40 JUMPIFNOTLT                      R5 R4 ; [+6]
       42 GETUPVAL                         R4 4
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R4 K7 ["Set"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0

PROTO_38:
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
       36 LOADNIL                          R3
       37 GETUPVAL                         R4 5
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+26]
       40 GETTABLEKS                       R4 R0 K9 ["parameterClass"]
       42 GETUPVAL                         R5 6
       43 GETTABLEKS                       R5 R5 K10 ["EXPRESSION_NODE_CLASSNAME"]
       45 JUMPIFNOTEQ                      R4 R5 ; [+10]
       47 GETUPVAL                         R4 7
       48 GETTABLEKS                       R4 R4 K11 ["getOrCreateExpressionInstance"]
       50 GETUPVAL                         R5 8
       51 MOVE                             R6 R1
       52 MOVE                             R7 R0
       53 CALL                             R4 3 1
       54 MOVE                             R3 R4
       55 JUMP                             ; [+19]
       56 GETUPVAL                         R4 7
       57 GETTABLEKS                       R4 R4 K12 ["getOrCreateParameterInstance"]
       59 GETUPVAL                         R5 8
       60 MOVE                             R6 R1
       61 MOVE                             R7 R0
       62 LOADB                            R8 0
       63 CALL                             R4 4 1
       64 MOVE                             R3 R4
       65 JUMP                             ; [+9]
       66 GETUPVAL                         R4 7
       67 GETTABLEKS                       R4 R4 K12 ["getOrCreateParameterInstance"]
       69 GETUPVAL                         R5 8
       70 MOVE                             R6 R1
       71 MOVE                             R7 R0
       72 LOADB                            R8 0
       73 CALL                             R4 4 1
       74 MOVE                             R3 R4
       75 GETUPVAL                         R4 9
       76 GETTABLEKS                       R4 R4 K13 ["FFlagAnimGraphUI_DynamicZIndex"]
       78 JUMPIFNOT                        R4 ; [+10]
       79 GETUPVAL                         R4 7
       80 GETTABLEKS                       R4 R4 K14 ["setZIndex"]
       82 MOVE                             R5 R3
       83 GETUPVAL                         R6 9
       84 GETTABLEKS                       R6 R6 K15 ["getNextNodeZIndex"]
       86 GETUPVAL                         R7 10
       87 CALL                             R6 1 -1
       88 CALL                             R4 -1 0
       89 GETUPVAL                         R6 6
       90 GETTABLEKS                       R6 R6 K16 ["NODE_ATTRIBUTES"]
       92 GETTABLEKS                       R6 R6 K17 ["BindingName"]
       94 NAMECALL                         R4 R3 K18 ["GetAttribute"]
       96 CALL                             R4 2 1
       97 GETUPVAL                         R5 5
       98 CALL                             R5 0 1
       99 JUMPIFNOT                        R5 ; [+37]
      100 GETTABLEKS                       R5 R0 K9 ["parameterClass"]
      102 GETUPVAL                         R6 6
      103 GETTABLEKS                       R6 R6 K10 ["EXPRESSION_NODE_CLASSNAME"]
      105 JUMPIFEQ                         R5 R6 ; [+60]
      107 MOVE                             R7 R4
      108 NAMECALL                         R5 R1 K18 ["GetAttribute"]
      110 CALL                             R5 2 1
      111 JUMPIFNOTEQKNIL                  R5 ; [+54]
      113 GETTABLEKS                       R5 R0 K19 ["initializeWithValue"]
      115 JUMPIFEQKNIL                     R5 ; [+50]
      117 GETTABLEKS                       R6 R0 K19 ["initializeWithValue"]
      119 FASTCALL1                        TYPE R6 ; [+2]
      120 GETIMPORT                        R5 K21 [type]
      122 CALL                             R5 1 1
      123 JUMPIFNOTEQKS                    R5 K22 ["table"] ; [+6]
      125 GETIMPORT                        R5 K7 [warn]
      127 LOADK                            R6 K23 ["TODO: JSONEncode initial value to support safely"]
      128 CALL                             R5 1 0
      129 JUMP                             ; [+36]
      130 MOVE                             R7 R4
      131 GETTABLEKS                       R8 R0 K19 ["initializeWithValue"]
      133 NAMECALL                         R5 R1 K24 ["SetAttribute"]
      135 CALL                             R5 3 0
      136 JUMP                             ; [+29]
      137 MOVE                             R7 R4
      138 NAMECALL                         R5 R1 K18 ["GetAttribute"]
      140 CALL                             R5 2 1
      141 JUMPIFNOTEQKNIL                  R5 ; [+24]
      143 GETTABLEKS                       R5 R0 K19 ["initializeWithValue"]
      145 JUMPIFEQKNIL                     R5 ; [+20]
      147 GETTABLEKS                       R6 R0 K19 ["initializeWithValue"]
      149 FASTCALL1                        TYPE R6 ; [+2]
      150 GETIMPORT                        R5 K21 [type]
      152 CALL                             R5 1 1
      153 JUMPIFNOTEQKS                    R5 K22 ["table"] ; [+6]
      155 GETIMPORT                        R5 K7 [warn]
      157 LOADK                            R6 K23 ["TODO: JSONEncode initial value to support safely"]
      158 CALL                             R5 1 0
      159 JUMP                             ; [+6]
      160 MOVE                             R7 R4
      161 GETTABLEKS                       R8 R0 K19 ["initializeWithValue"]
      163 NAMECALL                         R5 R1 K24 ["SetAttribute"]
      165 CALL                             R5 3 0
      166 GETUPVAL                         R5 11
      167 NEWTABLE                         R7 0 1
      169 MOVE                             R8 R3
      170 SETLIST                          R7 R8 1 [1]
      172 NAMECALL                         R5 R5 K25 ["Set"]
      174 CALL                             R5 2 0
      175 GETTABLEKS                       R5 R0 K26 ["pinPosition"]
      177 JUMPIFNOT                        R5 ; [+17]
      178 GETUPVAL                         R5 7
      179 GETTABLEKS                       R5 R5 K27 ["setNodePosition"]
      181 MOVE                             R6 R3
      182 GETUPVAL                         R8 0
      183 CALL                             R8 0 1
      184 JUMPIFNOT                        R8 ; [+7]
      185 GETUPVAL                         R7 7
      186 GETTABLEKS                       R7 R7 K28 ["predictOutputPosition"]
      188 GETTABLEKS                       R8 R0 K26 ["pinPosition"]
      190 CALL                             R7 1 1
      191 JUMP                             ; [+2]
      192 GETTABLEKS                       R7 R0 K26 ["pinPosition"]
      194 CALL                             R5 2 0
      195 GETUPVAL                         R5 8
      196 MOVE                             R7 R3
      197 NAMECALL                         R5 R5 K29 ["instanceToId"]
      199 CALL                             R5 2 1
      200 JUMPIFNOT                        R2 ; [+7]
      201 GETUPVAL                         R6 4
      202 MOVE                             R8 R2
      203 GETIMPORT                        R9 K33 [Enum.FinishRecordingOperation.Commit]
      205 NAMECALL                         R6 R6 K34 ["FinishRecording"]
      207 CALL                             R6 3 0
      208 RETURN                           R5 1

PROTO_39:
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
      101 JUMP                             ; [+35]
      102 GETUPVAL                         R6 7
      103 MOVE                             R8 R4
      104 NAMECALL                         R6 R6 K24 ["instanceToId"]
      106 CALL                             R6 2 1
      107 MOVE                             R5 R6
      108 GETUPVAL                         R6 9
      109 NEWTABLE                         R8 0 1
      111 MOVE                             R9 R4
      112 SETLIST                          R8 R9 1 [1]
      114 NAMECALL                         R6 R6 K25 ["Set"]
      116 CALL                             R6 2 0
      117 GETTABLEKS                       R6 R0 K21 ["pinPosition"]
      119 JUMPIFNOT                        R6 ; [+17]
      120 GETUPVAL                         R6 4
      121 GETTABLEKS                       R6 R6 K26 ["setNodePosition"]
      123 MOVE                             R7 R4
      124 GETUPVAL                         R9 0
      125 CALL                             R9 0 1
      126 JUMPIFNOT                        R9 ; [+7]
      127 GETUPVAL                         R8 4
      128 GETTABLEKS                       R8 R8 K27 ["predictOutputPosition"]
      130 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
      132 CALL                             R8 1 1
      133 JUMP                             ; [+2]
      134 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
      136 CALL                             R6 2 0
      137 JUMPIFNOT                        R3 ; [+7]
      138 GETUPVAL                         R6 6
      139 MOVE                             R8 R3
      140 GETIMPORT                        R9 K31 [Enum.FinishRecordingOperation.Commit]
      142 NAMECALL                         R6 R6 K32 ["FinishRecording"]
      144 CALL                             R6 3 0
      145 RETURN                           R5 1

PROTO_40:
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
       22 MOVE                             R9 R2
       23 CALL                             R4 5 1
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETUPVAL                         R5 1
       26 MOVE                             R7 R3
       27 GETIMPORT                        R8 K9 [Enum.FinishRecordingOperation.Commit]
       29 NAMECALL                         R5 R5 K10 ["FinishRecording"]
       31 CALL                             R5 3 0
       32 RETURN                           R4 1

PROTO_41:
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
       22 MOVE                             R9 R2
       23 CALL                             R4 5 1
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETUPVAL                         R5 1
       26 MOVE                             R7 R3
       27 GETIMPORT                        R8 K10 [Enum.FinishRecordingOperation.Commit]
       29 NAMECALL                         R5 R5 K11 ["FinishRecording"]
       31 CALL                             R5 3 0
       32 RETURN                           R4 1

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
       23 MOVE                             R13 R4
       24 CALL                             R6 7 2
       25 GETUPVAL                         R8 4
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+41]
       28 JUMPIFNOT                        R6 ; [+73]
       29 JUMPIFNOT                        R7 ; [+72]
       30 GETUPVAL                         R8 3
       31 MOVE                             R10 R2
       32 NAMECALL                         R8 R8 K7 ["idToInstance"]
       34 CALL                             R8 2 1
       35 LOADB                            R9 0
       36 JUMPIFEQKNIL                     R8 ; [+5]
       38 LOADK                            R11 K8 ["Folder"]
       39 NAMECALL                         R9 R8 K9 ["IsA"]
       41 CALL                             R9 2 1
       42 JUMPIFNOT                        R9 ; [+2]
       43 MOVE                             R10 R0
       44 JUMP                             ; [+1]
       45 MOVE                             R10 R2
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R11 R11 K10 ["registerIncomingWireInDestroyMapRef"]
       49 GETTABLEKS                       R11 R11 K11 ["current"]
       51 MOVE                             R12 R10
       52 DUPTABLE                         R13 K18 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       53 SETTABLEKS                       R0 R13 K12 ["inputNodeId"]
       55 SETTABLEKS                       R7 R13 K13 ["inputNodePinId"]
       57 SETTABLEKS                       R3 R13 K14 ["outputNodePinId"]
       59 SETTABLEKS                       R6 R13 K15 ["wireId"]
       61 SETTABLEKS                       R2 R13 K16 ["outputNodeId"]
       63 NEWTABLE                         R14 0 0
       65 SETTABLEKS                       R14 R13 K17 ["properties"]
       67 CALL                             R11 2 0
       68 JUMP                             ; [+33]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K19 ["lookup"]
       72 GETTABLE                         R8 R9 R2
       73 JUMPIFNOT                        R8 ; [+28]
       74 GETTABLEKS                       R9 R8 K20 ["className"]
       76 JUMPIFEQKS                       R9 K21 ["Parameter"] ; [+25]
       78 JUMPIFNOT                        R6 ; [+23]
       79 JUMPIFNOT                        R7 ; [+22]
       80 GETUPVAL                         R9 5
       81 GETTABLEKS                       R9 R9 K22 ["setNodeOutputInfoInDestroyMapRef"]
       83 GETTABLEKS                       R9 R9 K11 ["current"]
       85 MOVE                             R10 R2
       86 DUPTABLE                         R11 K18 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       87 SETTABLEKS                       R0 R11 K12 ["inputNodeId"]
       89 SETTABLEKS                       R7 R11 K13 ["inputNodePinId"]
       91 SETTABLEKS                       R3 R11 K14 ["outputNodePinId"]
       93 SETTABLEKS                       R6 R11 K15 ["wireId"]
       95 SETTABLEKS                       R2 R11 K16 ["outputNodeId"]
       97 NEWTABLE                         R12 0 0
       99 SETTABLEKS                       R12 R11 K17 ["properties"]
      101 CALL                             R9 2 0
      102 JUMPIFNOT                        R5 ; [+7]
      103 GETUPVAL                         R8 1
      104 MOVE                             R10 R5
      105 GETIMPORT                        R11 K26 [Enum.FinishRecordingOperation.Commit]
      107 NAMECALL                         R8 R8 K27 ["FinishRecording"]
      109 CALL                             R8 3 0
      110 RETURN                           R0 0

PROTO_44:
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
       75 GETUPVAL                         R7 6
       76 CALL                             R7 0 1
       77 JUMPIFNOT                        R7 ; [+9]
       78 GETTABLEKS                       R8 R0 K20 ["parameterClass"]
       80 GETUPVAL                         R9 7
       81 GETTABLEKS                       R9 R9 K21 ["EXPRESSION_NODE_CLASSNAME"]
       83 JUMPIFEQ                         R8 R9 ; [+2]
       85 LOADB                            R7 0 +1
       86 LOADB                            R7 1
       87 JUMPIFNOT                        R6 ; [+1]
       88 JUMPIFNOT                        R7 ; [+24]
       89 GETUPVAL                         R8 8
       90 DUPTABLE                         R9 K26 [{["parameterType"], ["pinPosition"], ["initializeWithValue"], ["parameterName"] = "", ["parameterClass"]}]
       91 SETTABLEKS                       R4 R9 K22 ["parameterType"]
       93 GETTABLEKS                       R10 R0 K23 ["pinPosition"]
       95 SETTABLEKS                       R10 R9 K23 ["pinPosition"]
       97 GETTABLEKS                       R10 R0 K27 ["existingValue"]
       99 SETTABLEKS                       R10 R9 K24 ["initializeWithValue"]
      101 GETUPVAL                         R11 6
      102 CALL                             R11 0 1
      103 JUMPIFNOT                        R11 ; [+3]
      104 GETTABLEKS                       R10 R0 K20 ["parameterClass"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R10
      108 SETTABLEKS                       R10 R9 K20 ["parameterClass"]
      110 CALL                             R8 1 1
      111 MOVE                             R5 R8
      112 JUMP                             ; [+57]
      113 GETUPVAL                         R8 9
      114 DUPTABLE                         R9 K28 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
      115 SETTABLEKS                       R4 R9 K22 ["parameterType"]
      117 SETTABLEKS                       R6 R9 K19 ["parameterName"]
      119 GETTABLEKS                       R10 R0 K23 ["pinPosition"]
      121 SETTABLEKS                       R10 R9 K23 ["pinPosition"]
      123 GETTABLEKS                       R10 R0 K27 ["existingValue"]
      125 SETTABLEKS                       R10 R9 K24 ["initializeWithValue"]
      127 CALL                             R8 1 1
      128 MOVE                             R5 R8
      129 GETUPVAL                         R8 6
      130 CALL                             R8 0 1
      131 JUMPIFNOT                        R8 ; [+23]
      132 GETTABLEKS                       R8 R0 K20 ["parameterClass"]
      134 GETUPVAL                         R9 7
      135 GETTABLEKS                       R9 R9 K21 ["EXPRESSION_NODE_CLASSNAME"]
      137 JUMPIFEQ                         R8 R9 ; [+32]
      139 GETTABLEKS                       R8 R0 K27 ["existingValue"]
      141 JUMPIFNOT                        R8 ; [+28]
      142 MOVE                             R10 R6
      143 NAMECALL                         R8 R1 K29 ["GetAttribute"]
      145 CALL                             R8 2 1
      146 JUMPIFNOTEQKNIL                  R8 ; [+23]
      148 MOVE                             R10 R6
      149 GETTABLEKS                       R11 R0 K27 ["existingValue"]
      151 NAMECALL                         R8 R1 K30 ["SetAttribute"]
      153 CALL                             R8 3 0
      154 JUMP                             ; [+15]
      155 GETTABLEKS                       R8 R0 K27 ["existingValue"]
      157 JUMPIFNOT                        R8 ; [+12]
      158 MOVE                             R10 R6
      159 NAMECALL                         R8 R1 K29 ["GetAttribute"]
      161 CALL                             R8 2 1
      162 JUMPIFNOTEQKNIL                  R8 ; [+7]
      164 MOVE                             R10 R6
      165 GETTABLEKS                       R11 R0 K27 ["existingValue"]
      167 NAMECALL                         R8 R1 K30 ["SetAttribute"]
      169 CALL                             R8 3 0
      170 JUMPIFNOT                        R5 ; [+41]
      171 GETTABLEKS                       R8 R0 K4 ["sourcePinInfo"]
      173 GETTABLEKS                       R8 R8 K5 ["sourcePinNodeId"]
      175 GETTABLEKS                       R9 R0 K4 ["sourcePinInfo"]
      177 GETTABLEKS                       R9 R9 K18 ["sourcePinName"]
      179 GETUPVAL                         R10 4
      180 MOVE                             R12 R5
      181 NAMECALL                         R10 R10 K6 ["idToInstance"]
      183 CALL                             R10 2 1
      184 JUMPIFNOT                        R10 ; [+27]
      185 GETUPVAL                         R11 5
      186 GETTABLEKS                       R11 R11 K31 ["setNodePosition"]
      188 MOVE                             R12 R10
      189 GETUPVAL                         R14 0
      190 CALL                             R14 0 1
      191 JUMPIFNOT                        R14 ; [+7]
      192 GETUPVAL                         R13 5
      193 GETTABLEKS                       R13 R13 K32 ["predictOutputPosition"]
      195 GETTABLEKS                       R14 R0 K23 ["pinPosition"]
      197 CALL                             R13 1 1
      198 JUMP                             ; [+2]
      199 GETTABLEKS                       R13 R0 K23 ["pinPosition"]
      201 CALL                             R11 2 0
      202 GETUPVAL                         R11 10
      203 MOVE                             R12 R8
      204 MOVE                             R13 R9
      205 MOVE                             R14 R5
      206 LOADK                            R15 K33 ["Output"]
      207 GETTABLEKS                       R16 R0 K4 ["sourcePinInfo"]
      209 GETTABLEKS                       R16 R16 K34 ["sourcePinDynamicIndex"]
      211 CALL                             R11 5 0
      212 JUMPIFNOT                        R2 ; [+7]
      213 GETUPVAL                         R8 3
      214 MOVE                             R10 R2
      215 GETIMPORT                        R11 K38 [Enum.FinishRecordingOperation.Commit]
      217 NAMECALL                         R8 R8 K39 ["FinishRecording"]
      219 CALL                             R8 3 0
      220 RETURN                           R0 0

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
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

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
       53 DUPCLOSURE                       R7 K14 [PROTO_52]
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
      101 LOADNIL                          R11
      102 SETTABLEKS                       R11 R10 K17 ["Parent"]
      104 FORGLOOP                         R6 2 ; [-30]
      106 GETUPVAL                         R8 5
      107 GETTABLEKS                       R8 R8 K18 ["getParameterInstanceName"]
      109 MOVE                             R9 R0
      110 CALL                             R8 1 -1
      111 NAMECALL                         R6 R2 K19 ["FindFirstChild"]
      113 CALL                             R6 -1 1
      114 JUMPIF                           R6 ; [+11]
      115 MOVE                             R8 R0
      116 NAMECALL                         R6 R2 K20 ["GetAttribute"]
      118 CALL                             R6 2 1
      119 JUMPIFEQKNIL                     R6 ; [+6]
      121 MOVE                             R8 R0
      122 LOADNIL                          R9
      123 NAMECALL                         R6 R2 K16 ["SetAttribute"]
      125 CALL                             R6 3 0
      126 JUMPIFNOT                        R5 ; [+7]
      127 GETUPVAL                         R6 6
      128 MOVE                             R8 R5
      129 GETIMPORT                        R9 K24 [Enum.FinishRecordingOperation.Commit]
      131 NAMECALL                         R6 R6 K25 ["FinishRecording"]
      133 CALL                             R6 3 0
      134 RETURN                           R0 0

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

PROTO_57:
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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
       10 LOADB                            R4 0
       11 CALL                             R3 1 1
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R3 3
       14 LOADB                            R4 0
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R4 K2 [warn]
       19 LOADK                            R5 K3 ["[NativeGraphContext] No graph selected, cannot set expression"]
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 4
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R4 K4 ["idToInstance"]
       26 CALL                             R4 2 1
       27 JUMPIFEQKNIL                     R4 ; [+6]
       29 LOADK                            R7 K5 ["Folder"]
       30 NAMECALL                         R5 R4 K6 ["IsA"]
       32 CALL                             R5 2 1
       33 JUMPIF                           R5 ; [+6]
       34 GETIMPORT                        R5 K2 [warn]
       36 LOADK                            R6 K7 ["[NativeGraphContext] No node instance found for nodeId:"]
       37 MOVE                             R7 R2
       38 CALL                             R5 2 0
       39 RETURN                           R0 0
       40 MOVE                             R7 R1
       41 NAMECALL                         R5 R3 K8 ["GetAttribute"]
       43 CALL                             R5 2 1
       44 JUMPIFEQKNIL                     R5 ; [+3]
       46 MOVE                             R6 R5
       47 JUMP                             ; [+8]
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R8 R8 K9 ["NODE_ATTRIBUTES"]
       51 GETTABLEKS                       R8 R8 K10 ["ExpressionValue"]
       53 NAMECALL                         R6 R4 K8 ["GetAttribute"]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R7 R7 K11 ["matchExpressionBindingValue"]
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 JUMPIFNOTEQ                      R7 R0 ; [+2]
       63 RETURN                           R0 0
       64 GETUPVAL                         R7 7
       65 LOADK                            R9 K12 ["NativeGraphContext"]
       66 LOADK                            R10 K13 ["setExpressionNodeValueAsync"]
       67 NAMECALL                         R7 R7 K14 ["TryBeginRecording"]
       69 CALL                             R7 3 1
       70 MOVE                             R10 R1
       71 NAMECALL                         R8 R3 K8 ["GetAttribute"]
       73 CALL                             R8 2 1
       74 JUMPIFEQKNIL                     R8 ; [+11]
       76 MOVE                             R10 R1
       77 GETUPVAL                         R11 6
       78 GETTABLEKS                       R11 R11 K15 ["getExpressionBindingValue"]
       80 MOVE                             R12 R0
       81 CALL                             R11 1 -1
       82 NAMECALL                         R8 R3 K16 ["SetAttribute"]
       84 CALL                             R8 -1 0
       85 JUMP                             ; [+6]
       86 GETUPVAL                         R8 6
       87 GETTABLEKS                       R8 R8 K17 ["setNonPromotedExpressionNodeValue"]
       89 MOVE                             R9 R4
       90 MOVE                             R10 R0
       91 CALL                             R8 2 0
       92 JUMPIFNOT                        R7 ; [+7]
       93 GETUPVAL                         R8 7
       94 MOVE                             R10 R7
       95 GETIMPORT                        R11 K21 [Enum.FinishRecordingOperation.Commit]
       97 NAMECALL                         R8 R8 K22 ["FinishRecording"]
       99 CALL                             R8 3 0
      100 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+128]
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
       23 GETUPVAL                         R4 4
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+55]
       26 MOVE                             R4 R2
       27 JUMPIFNOT                        R4 ; [+2]
       28 GETTABLEKS                       R4 R2 K6 ["incomingWires"]
       30 JUMPIFNOT                        R4 ; [+93]
       31 MOVE                             R5 R4
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 FORGPREP                         R5
       35 GETTABLEKS                       R11 R9 K7 ["wireId"]
       37 JUMPIFNOT                        R11 ; [+7]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R12 R9 K7 ["wireId"]
       41 NAMECALL                         R10 R10 K8 ["idToInstance"]
       43 CALL                             R10 2 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R10
       46 JUMPIFNOT                        R10 ; [+31]
       47 LOADK                            R13 K9 ["ObjectValue"]
       48 NAMECALL                         R11 R10 K10 ["IsA"]
       50 CALL                             R11 2 1
       51 JUMPIFNOT                        R11 ; [+26]
       52 GETTABLEKS                       R11 R10 K11 ["Value"]
       54 JUMPIFEQKNIL                     R11 ; [+9]
       56 GETUPVAL                         R12 0
       57 JUMPIFEQ                         R11 R12 ; [+6]
       59 GETUPVAL                         R14 0
       60 NAMECALL                         R12 R11 K2 ["IsDescendantOf"]
       62 CALL                             R12 2 1
       63 JUMPIFNOT                        R12 ; [+14]
       64 JUMPIFNOT                        R3 ; [+10]
       65 GETUPVAL                         R12 5
       66 GETTABLEKS                       R12 R12 K12 ["removeOrderedInputPin"]
       68 GETUPVAL                         R13 1
       69 MOVE                             R14 R3
       70 GETTABLEKS                       R15 R9 K13 ["inputNodeId"]
       72 GETTABLEKS                       R16 R9 K14 ["inputNodePinId"]
       74 CALL                             R12 4 0
       75 LOADNIL                          R12
       76 SETTABLEKS                       R12 R10 K15 ["Parent"]
       78 FORGLOOP                         R5 2 ; [-44]
       80 JUMP                             ; [+43]
       81 MOVE                             R4 R2
       82 JUMPIFNOT                        R4 ; [+2]
       83 GETTABLEKS                       R4 R2 K16 ["nodeOutputInfo"]
       85 JUMPIFNOT                        R4 ; [+38]
       86 JUMPIFNOT                        R3 ; [+10]
       87 GETUPVAL                         R5 5
       88 GETTABLEKS                       R5 R5 K12 ["removeOrderedInputPin"]
       90 GETUPVAL                         R6 1
       91 MOVE                             R7 R3
       92 GETTABLEKS                       R8 R4 K13 ["inputNodeId"]
       94 GETTABLEKS                       R9 R4 K14 ["inputNodePinId"]
       96 CALL                             R5 4 0
       97 GETTABLEKS                       R5 R4 K7 ["wireId"]
       99 JUMPIFNOT                        R5 ; [+24]
      100 GETUPVAL                         R5 1
      101 GETTABLEKS                       R7 R4 K7 ["wireId"]
      103 NAMECALL                         R5 R5 K8 ["idToInstance"]
      105 CALL                             R5 2 1
      106 JUMPIFNOT                        R5 ; [+17]
      107 LOADK                            R8 K9 ["ObjectValue"]
      108 NAMECALL                         R6 R5 K10 ["IsA"]
      110 CALL                             R6 2 1
      111 JUMPIFNOT                        R6 ; [+12]
      112 GETTABLEKS                       R6 R5 K11 ["Value"]
      114 JUMPIFEQKNIL                     R6 ; [+6]
      116 GETTABLEKS                       R6 R5 K11 ["Value"]
      118 GETUPVAL                         R7 0
      119 JUMPIFNOTEQ                      R6 R7 ; [+4]
      121 LOADNIL                          R6
      122 SETTABLEKS                       R6 R5 K15 ["Parent"]
      124 GETIMPORT                        R4 K19 [table.clone]
      126 MOVE                             R5 R1
      127 CALL                             R4 1 1
      128 LOADNIL                          R5
      129 SETTABLE                         R5 R4 R0
      130 GETUPVAL                         R5 2
      131 GETTABLEKS                       R5 R5 K20 ["setNodeDestroyConnectionMap"]
      133 MOVE                             R6 R4
      134 CALL                             R5 1 0
      135 RETURN                           R0 0

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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+72]
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
       22 JUMPIFNOT                        R4 ; [+13]
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K6 ["NODE_ATTRIBUTES"]
       27 GETTABLEKS                       R5 R5 K7 ["BindingName"]
       29 NAMECALL                         R3 R3 K8 ["GetAttribute"]
       31 CALL                             R3 2 1
       32 JUMPIF                           R3 ; [+5]
       33 GETTABLEKS                       R3 R2 K9 ["parameterName"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R3 R2 K9 ["parameterName"]
       38 GETUPVAL                         R4 3
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+7]
       41 FASTCALL1                        TYPE R3 ; [+3]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K11 [type]
       45 CALL                             R4 1 1
       46 JUMPIFNOTEQKS                    R4 K12 ["string"] ; [+7]
       48 GETUPVAL                         R4 5
       49 MOVE                             R5 R3
       50 GETTABLEKS                       R6 R2 K13 ["nodeId"]
       52 CALL                             R4 2 0
       53 JUMP                             ; [+7]
       54 GETIMPORT                        R4 K15 [warn]
       56 LOADK                            R5 K16 ["Failed to remove parameter for nodeId "]
       57 GETTABLEKS                       R6 R2 K13 ["nodeId"]
       59 LOADK                            R7 K17 [" because parameter name is not a string"]
       60 CALL                             R4 3 0
       61 GETTABLEKS                       R4 R2 K18 ["connection"]
       63 NAMECALL                         R4 R4 K19 ["Disconnect"]
       65 CALL                             R4 1 0
       66 GETIMPORT                        R4 K22 [table.clone]
       68 MOVE                             R5 R1
       69 CALL                             R4 1 1
       70 GETTABLEKS                       R5 R2 K13 ["nodeId"]
       72 LOADNIL                          R6
       73 SETTABLE                         R6 R4 R5
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K23 ["setParameterDestroyConnectionMap"]
       77 MOVE                             R6 R4
       78 CALL                             R5 1 0
       79 RETURN                           R0 0

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
       24 JUMPIF                           R10 ; [+40]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+33]
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
       47 DUPTABLE                         R13 K12 [{"connection", "nodeId", "parameterName"}]
       48 SETTABLEKS                       R11 R13 K10 ["connection"]
       50 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       52 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       54 GETUPVAL                         R16 3
       55 GETTABLEKS                       R16 R16 K13 ["NODE_ATTRIBUTES"]
       57 GETTABLEKS                       R16 R16 K14 ["BindingName"]
       59 NAMECALL                         R14 R10 K15 ["GetAttribute"]
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K11 ["parameterName"]
       64 SETTABLE                         R13 R3 R12
       65 FORGLOOP                         R5 2 ; [-45]
       67 JUMPIFNOT                        R4 ; [+5]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K16 ["setParameterDestroyConnectionMap"]
       71 MOVE                             R6 R3
       72 CALL                             R5 1 0
       73 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_68:
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

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_70:
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
       14 GETTABLEKS                       R5 R5 K0 ["useContext"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K1 ["Context"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K0 ["useContext"]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K1 ["Context"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R4 K2 ["nodeSelection"]
       29 GETUPVAL                         R9 5
       30 CALL                             R9 0 1
       31 JUMPIFNOT                        R9 ; [+8]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K0 ["useContext"]
       35 GETUPVAL                         R9 6
       36 GETTABLEKS                       R9 R9 K1 ["Context"]
       38 CALL                             R8 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R8
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K3 ["useState"]
       44 GETIMPORT                        R10 K6 [Rect.new]
       46 LOADN                            R11 0
       47 LOADN                            R12 0
       48 LOADN                            R13 0
       49 LOADN                            R14 0
       50 CALL                             R10 4 -1
       51 CALL                             R9 -1 2
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K7 ["useRef"]
       55 LOADNIL                          R12
       56 CALL                             R11 1 1
       57 GETUPVAL                         R12 7
       58 CALL                             R12 0 1
       59 GETUPVAL                         R13 8
       60 CALL                             R13 0 1
       61 GETUPVAL                         R14 1
       62 GETTABLEKS                       R14 R14 K8 ["useMemo"]
       64 NEWCLOSURE                       R15 P0
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          VAL R13
       67 NEWTABLE                         R16 0 1
       69 MOVE                             R17 R13
       70 SETLIST                          R16 R17 1 [1]
       72 CALL                             R14 2 1
       73 GETUPVAL                         R15 10
       74 CALL                             R15 0 0
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R15 R15 K9 ["useEffect"]
       78 NEWCLOSURE                       R16 P1
       79 CAPTURE                          VAL R14
       80 NEWTABLE                         R17 0 1
       82 MOVE                             R18 R14
       83 SETLIST                          R17 R18 1 [1]
       85 CALL                             R15 2 0
       86 GETUPVAL                         R15 1
       87 GETTABLEKS                       R15 R15 K0 ["useContext"]
       89 GETUPVAL                         R16 11
       90 GETTABLEKS                       R16 R16 K1 ["Context"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R15 R15 K10 ["instanceRegistry"]
       95 GETUPVAL                         R17 5
       96 CALL                             R17 0 1
       97 JUMPIFNOT                        R17 ; [+2]
       98 LOADNIL                          R16
       99 JUMP                             ; [+12]
      100 GETUPVAL                         R16 1
      101 GETTABLEKS                       R16 R16 K8 ["useMemo"]
      103 NEWCLOSURE                       R17 P2
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R12
      106 NEWTABLE                         R18 0 1
      108 MOVE                             R19 R12
      109 SETLIST                          R18 R19 1 [1]
      111 CALL                             R16 2 1
      112 GETUPVAL                         R17 1
      113 GETTABLEKS                       R17 R17 K9 ["useEffect"]
      115 NEWCLOSURE                       R18 P3
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R16
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          VAL R7
      121 NEWTABLE                         R19 0 2
      123 MOVE                             R20 R7
      124 GETUPVAL                         R22 5
      125 CALL                             R22 0 1
      126 JUMPIFNOT                        R22 ; [+3]
      127 GETTABLEKS                       R21 R8 K11 ["observeSelectedGraphInstance"]
      129 JUMP                             ; [+1]
      130 MOVE                             R21 R16
      131 SETLIST                          R19 R20 2 [1]
      133 CALL                             R17 2 0
      134 GETUPVAL                         R17 1
      135 GETTABLEKS                       R17 R17 K8 ["useMemo"]
      137 NEWCLOSURE                       R18 P4
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R14
      141 CAPTURE                          UPVAL U5
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R16
      144 NEWTABLE                         R19 0 3
      146 MOVE                             R20 R15
      147 MOVE                             R21 R14
      148 GETUPVAL                         R23 5
      149 CALL                             R23 0 1
      150 JUMPIFNOT                        R23 ; [+3]
      151 GETTABLEKS                       R22 R8 K11 ["observeSelectedGraphInstance"]
      153 JUMP                             ; [+1]
      154 MOVE                             R22 R16
      155 SETLIST                          R19 R20 3 [1]
      157 CALL                             R17 2 1
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R18 R18 K8 ["useMemo"]
      161 NEWCLOSURE                       R19 P5
      162 CAPTURE                          UPVAL U12
      163 CAPTURE                          VAL R15
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R16
      167 NEWTABLE                         R20 0 2
      169 GETUPVAL                         R22 5
      170 CALL                             R22 0 1
      171 JUMPIFNOT                        R22 ; [+3]
      172 GETTABLEKS                       R21 R8 K11 ["observeSelectedGraphInstance"]
      174 JUMP                             ; [+1]
      175 MOVE                             R21 R16
      176 MOVE                             R22 R15
      177 SETLIST                          R20 R21 2 [1]
      179 CALL                             R18 2 1
      180 GETUPVAL                         R19 1
      181 GETTABLEKS                       R19 R19 K3 ["useState"]
      183 LOADNIL                          R20
      184 CALL                             R19 1 2
      185 GETUPVAL                         R21 1
      186 GETTABLEKS                       R21 R21 K3 ["useState"]
      188 NEWTABLE                         R22 0 0
      190 CALL                             R21 1 2
      191 GETUPVAL                         R23 1
      192 GETTABLEKS                       R23 R23 K3 ["useState"]
      194 NEWTABLE                         R24 0 0
      196 CALL                             R23 1 2
      197 GETUPVAL                         R25 1
      198 GETTABLEKS                       R25 R25 K3 ["useState"]
      200 NEWTABLE                         R26 0 0
      202 CALL                             R25 1 2
      203 GETUPVAL                         R27 14
      204 GETTABLEKS                       R27 R27 K12 ["useRefToState"]
      206 MOVE                             R28 R19
      207 CALL                             R27 1 1
      208 GETUPVAL                         R28 1
      209 GETTABLEKS                       R28 R28 K9 ["useEffect"]
      211 NEWCLOSURE                       R29 P6
      212 CAPTURE                          UPVAL U13
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R10
      216 CAPTURE                          UPVAL U12
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R26
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R3
      225 NEWTABLE                         R30 0 7
      227 MOVE                             R31 R17
      228 MOVE                             R32 R18
      229 GETTABLEKS                       R33 R0 K13 ["testOverrideGraphPayloadMap"]
      231 MOVE                             R34 R20
      232 MOVE                             R35 R10
      233 GETTABLEKS                       R36 R1 K14 ["setMap"]
      235 GETTABLEKS                       R37 R2 K14 ["setMap"]
      237 SETLIST                          R30 R31 7 [1]
      239 CALL                             R28 2 0
      240 GETUPVAL                         R28 1
      241 GETTABLEKS                       R28 R28 K15 ["useCallback"]
      243 NEWCLOSURE                       R29 P7
      244 CAPTURE                          VAL R15
      245 CAPTURE                          UPVAL U12
      246 NEWTABLE                         R30 0 1
      248 MOVE                             R31 R15
      249 SETLIST                          R30 R31 1 [1]
      251 CALL                             R28 2 1
      252 GETUPVAL                         R29 1
      253 GETTABLEKS                       R29 R29 K15 ["useCallback"]
      255 NEWCLOSURE                       R30 P8
      256 CAPTURE                          VAL R15
      257 CAPTURE                          UPVAL U12
      258 NEWTABLE                         R31 0 1
      260 MOVE                             R32 R15
      261 SETLIST                          R31 R32 1 [1]
      263 CALL                             R29 2 1
      264 GETUPVAL                         R30 1
      265 GETTABLEKS                       R30 R30 K15 ["useCallback"]
      267 NEWCLOSURE                       R31 P9
      268 CAPTURE                          UPVAL U15
      269 CAPTURE                          VAL R15
      270 CAPTURE                          UPVAL U12
      271 NEWTABLE                         R32 0 1
      273 MOVE                             R33 R15
      274 SETLIST                          R32 R33 1 [1]
      276 CALL                             R30 2 1
      277 GETUPVAL                         R31 1
      278 GETTABLEKS                       R31 R31 K15 ["useCallback"]
      280 NEWCLOSURE                       R32 P10
      281 CAPTURE                          VAL R15
      282 CAPTURE                          UPVAL U12
      283 NEWTABLE                         R33 0 1
      285 MOVE                             R34 R15
      286 SETLIST                          R33 R34 1 [1]
      288 CALL                             R31 2 1
      289 GETUPVAL                         R32 1
      290 GETTABLEKS                       R32 R32 K15 ["useCallback"]
      292 NEWCLOSURE                       R33 P11
      293 CAPTURE                          VAL R7
      294 CAPTURE                          VAL R15
      295 NEWTABLE                         R34 0 3
      297 MOVE                             R35 R15
      298 MOVE                             R36 R7
      299 MOVE                             R37 R14
      300 SETLIST                          R34 R35 3 [1]
      302 CALL                             R32 2 1
      303 GETUPVAL                         R33 1
      304 GETTABLEKS                       R33 R33 K15 ["useCallback"]
      306 NEWCLOSURE                       R34 P12
      307 CAPTURE                          VAL R7
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R2
      310 CAPTURE                          VAL R15
      311 NEWTABLE                         R35 0 4
      313 GETTABLEKS                       R36 R2 K16 ["get"]
      315 MOVE                             R37 R7
      316 MOVE                             R38 R15
      317 MOVE                             R39 R19
      318 SETLIST                          R35 R36 4 [1]
      320 CALL                             R33 2 1
      321 GETUPVAL                         R34 1
      322 GETTABLEKS                       R34 R34 K3 ["useState"]
      324 LOADK                            R35 K17 [""]
      325 CALL                             R34 1 2
      326 GETUPVAL                         R36 1
      327 GETTABLEKS                       R36 R36 K3 ["useState"]
      329 LOADNIL                          R37
      330 CALL                             R36 1 2
      331 GETUPVAL                         R39 16
      332 CALL                             R39 0 1
      333 JUMPIFNOT                        R39 ; [+16]
      334 GETUPVAL                         R39 5
      335 CALL                             R39 0 1
      336 JUMPIFNOT                        R39 ; [+7]
      337 GETUPVAL                         R38 17
      338 GETTABLEKS                       R38 R38 K18 ["useSignalState"]
      340 GETTABLEKS                       R39 R8 K11 ["observeSelectedGraphInstance"]
      342 CALL                             R38 1 1
      343 JUMP                             ; [+7]
      344 GETUPVAL                         R38 17
      345 GETTABLEKS                       R38 R38 K18 ["useSignalState"]
      347 MOVE                             R39 R16
      348 CALL                             R38 1 1
      349 JUMP                             ; [+1]
      350 LOADNIL                          R38
      351 GETUPVAL                         R40 16
      352 CALL                             R40 0 1
      353 JUMPIFNOT                        R40 ; [+12]
      354 GETUPVAL                         R39 1
      355 GETTABLEKS                       R39 R39 K8 ["useMemo"]
      357 NEWCLOSURE                       R40 P13
      358 CAPTURE                          VAL R38
      359 NEWTABLE                         R41 0 1
      361 MOVE                             R42 R38
      362 SETLIST                          R41 R42 1 [1]
      364 CALL                             R39 2 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R39
      367 GETUPVAL                         R41 5
      368 CALL                             R41 0 1
      369 JUMPIFNOT                        R41 ; [+7]
      370 GETUPVAL                         R40 17
      371 GETTABLEKS                       R40 R40 K18 ["useSignalState"]
      373 GETTABLEKS                       R41 R8 K11 ["observeSelectedGraphInstance"]
      375 CALL                             R40 1 1
      376 JUMP                             ; [+5]
      377 GETUPVAL                         R40 17
      378 GETTABLEKS                       R40 R40 K18 ["useSignalState"]
      380 MOVE                             R41 R16
      381 CALL                             R40 1 1
      382 GETUPVAL                         R41 1
      383 GETTABLEKS                       R41 R41 K9 ["useEffect"]
      385 NEWCLOSURE                       R42 P14
      386 CAPTURE                          VAL R40
      387 CAPTURE                          UPVAL U16
      388 CAPTURE                          VAL R35
      389 CAPTURE                          VAL R37
      390 CAPTURE                          UPVAL U18
      391 NEWTABLE                         R43 0 1
      393 MOVE                             R44 R40
      394 SETLIST                          R43 R44 1 [1]
      396 CALL                             R41 2 0
      397 GETUPVAL                         R41 16
      398 CALL                             R41 0 1
      399 JUMPIF                           R41 ; [+13]
      400 GETUPVAL                         R41 1
      401 GETTABLEKS                       R41 R41 K9 ["useEffect"]
      403 NEWCLOSURE                       R42 P15
      404 CAPTURE                          VAL R34
      405 CAPTURE                          VAL R40
      406 NEWTABLE                         R43 0 2
      408 MOVE                             R44 R34
      409 MOVE                             R45 R40
      410 SETLIST                          R43 R44 2 [1]
      412 CALL                             R41 2 0
      413 GETUPVAL                         R40 1
      414 GETTABLEKS                       R40 R40 K15 ["useCallback"]
      416 NEWCLOSURE                       R41 P16
      417 CAPTURE                          UPVAL U5
      418 CAPTURE                          VAL R8
      419 CAPTURE                          VAL R16
      420 CAPTURE                          VAL R19
      421 CAPTURE                          UPVAL U19
      422 CAPTURE                          UPVAL U15
      423 CAPTURE                          UPVAL U12
      424 CAPTURE                          UPVAL U20
      425 CAPTURE                          VAL R2
      426 CAPTURE                          VAL R15
      427 CAPTURE                          UPVAL U21
      428 CAPTURE                          UPVAL U22
      429 CAPTURE                          UPVAL U23
      430 CAPTURE                          UPVAL U18
      431 CAPTURE                          VAL R7
      432 NEWTABLE                         R42 0 5
      434 MOVE                             R43 R7
      435 GETUPVAL                         R45 5
      436 CALL                             R45 0 1
      437 JUMPIFNOT                        R45 ; [+3]
      438 GETTABLEKS                       R44 R8 K11 ["observeSelectedGraphInstance"]
      440 JUMP                             ; [+1]
      441 MOVE                             R44 R16
      442 MOVE                             R45 R19
      443 MOVE                             R46 R15
      444 MOVE                             R47 R2
      445 SETLIST                          R42 R43 5 [1]
      447 CALL                             R40 2 1
      448 GETUPVAL                         R41 24
      449 GETTABLEKS                       R41 R41 K19 ["useProducer"]
      451 GETUPVAL                         R42 1
      452 GETTABLEKS                       R42 R42 K15 ["useCallback"]
      454 NEWCLOSURE                       R43 P17
      455 CAPTURE                          VAL R40
      456 NEWTABLE                         R44 0 1
      458 MOVE                             R45 R40
      459 SETLIST                          R44 R45 1 [1]
      461 CALL                             R42 2 -1
      462 CALL                             R41 -1 0
      463 GETUPVAL                         R41 1
      464 GETTABLEKS                       R41 R41 K15 ["useCallback"]
      466 NEWCLOSURE                       R42 P18
      467 CAPTURE                          VAL R7
      468 CAPTURE                          UPVAL U25
      469 CAPTURE                          UPVAL U15
      470 NEWTABLE                         R43 0 1
      472 MOVE                             R44 R7
      473 SETLIST                          R43 R44 1 [1]
      475 CALL                             R41 2 1
      476 GETUPVAL                         R42 26
      477 GETTABLEKS                       R42 R42 K19 ["useProducer"]
      479 MOVE                             R43 R41
      480 CALL                             R42 1 0
      481 GETUPVAL                         R42 1
      482 GETTABLEKS                       R42 R42 K15 ["useCallback"]
      484 NEWCLOSURE                       R43 P19
      485 CAPTURE                          UPVAL U5
      486 CAPTURE                          VAL R8
      487 CAPTURE                          VAL R16
      488 CAPTURE                          VAL R7
      489 CAPTURE                          UPVAL U15
      490 CAPTURE                          UPVAL U12
      491 NEWTABLE                         R44 0 2
      493 MOVE                             R45 R7
      494 GETUPVAL                         R47 5
      495 CALL                             R47 0 1
      496 JUMPIFNOT                        R47 ; [+3]
      497 GETTABLEKS                       R46 R8 K11 ["observeSelectedGraphInstance"]
      499 JUMP                             ; [+1]
      500 MOVE                             R46 R16
      501 SETLIST                          R44 R45 2 [1]
      503 CALL                             R42 2 1
      504 GETUPVAL                         R43 27
      505 GETTABLEKS                       R43 R43 K20 ["useBoundAction"]
      507 LOADK                            R44 K21 ["NativeGraphContext_DuplicateSelectedNodes"]
      508 MOVE                             R45 R42
      509 CALL                             R43 2 0
      510 GETUPVAL                         R43 1
      511 GETTABLEKS                       R43 R43 K15 ["useCallback"]
      513 NEWCLOSURE                       R44 P20
      514 CAPTURE                          VAL R7
      515 NEWTABLE                         R45 0 1
      517 MOVE                             R46 R7
      518 SETLIST                          R45 R46 1 [1]
      520 CALL                             R43 2 1
      521 GETUPVAL                         R44 27
      522 GETTABLEKS                       R44 R44 K20 ["useBoundAction"]
      524 LOADK                            R45 K22 ["NativeGraphContext_ClearNodeSelection"]
      525 MOVE                             R46 R43
      526 CALL                             R44 2 0
      527 GETUPVAL                         R44 1
      528 GETTABLEKS                       R44 R44 K15 ["useCallback"]
      530 NEWCLOSURE                       R45 P21
      531 CAPTURE                          UPVAL U5
      532 CAPTURE                          VAL R8
      533 CAPTURE                          VAL R16
      534 CAPTURE                          VAL R7
      535 NEWTABLE                         R46 0 2
      537 MOVE                             R47 R7
      538 GETUPVAL                         R49 5
      539 CALL                             R49 0 1
      540 JUMPIFNOT                        R49 ; [+3]
      541 GETTABLEKS                       R48 R8 K11 ["observeSelectedGraphInstance"]
      543 JUMP                             ; [+1]
      544 MOVE                             R48 R16
      545 SETLIST                          R46 R47 2 [1]
      547 CALL                             R44 2 1
      548 GETUPVAL                         R45 27
      549 GETTABLEKS                       R45 R45 K20 ["useBoundAction"]
      551 LOADK                            R46 K23 ["NativeGraphContext_SelectAllNodes"]
      552 MOVE                             R47 R44
      553 CALL                             R45 2 0
      554 GETUPVAL                         R45 1
      555 GETTABLEKS                       R45 R45 K15 ["useCallback"]
      557 NEWCLOSURE                       R46 P22
      558 CAPTURE                          VAL R7
      559 CAPTURE                          VAL R6
      560 NEWTABLE                         R47 0 2
      562 MOVE                             R48 R7
      563 MOVE                             R49 R6
      564 SETLIST                          R47 R48 2 [1]
      566 CALL                             R45 2 1
      567 GETUPVAL                         R46 27
      568 GETTABLEKS                       R46 R46 K20 ["useBoundAction"]
      570 LOADK                            R47 K24 ["NativeGraphContext_CopySelectedNodes"]
      571 MOVE                             R48 R45
      572 CALL                             R46 2 0
      573 GETUPVAL                         R46 1
      574 GETTABLEKS                       R46 R46 K15 ["useCallback"]
      576 NEWCLOSURE                       R47 P23
      577 CAPTURE                          VAL R7
      578 CAPTURE                          UPVAL U25
      579 CAPTURE                          VAL R6
      580 CAPTURE                          UPVAL U15
      581 NEWTABLE                         R48 0 2
      583 MOVE                             R49 R7
      584 MOVE                             R50 R6
      585 SETLIST                          R48 R49 2 [1]
      587 CALL                             R46 2 1
      588 GETUPVAL                         R47 27
      589 GETTABLEKS                       R47 R47 K20 ["useBoundAction"]
      591 LOADK                            R48 K25 ["NativeGraphContext_CutSelectedNodes"]
      592 MOVE                             R49 R46
      593 CALL                             R47 2 0
      594 GETUPVAL                         R47 1
      595 GETTABLEKS                       R47 R47 K15 ["useCallback"]
      597 NEWCLOSURE                       R48 P24
      598 CAPTURE                          UPVAL U5
      599 CAPTURE                          VAL R8
      600 CAPTURE                          VAL R16
      601 CAPTURE                          VAL R6
      602 CAPTURE                          UPVAL U15
      603 CAPTURE                          UPVAL U12
      604 CAPTURE                          VAL R7
      605 NEWTABLE                         R49 0 3
      607 MOVE                             R50 R7
      608 MOVE                             R51 R6
      609 GETUPVAL                         R53 5
      610 CALL                             R53 0 1
      611 JUMPIFNOT                        R53 ; [+3]
      612 GETTABLEKS                       R52 R8 K11 ["observeSelectedGraphInstance"]
      614 JUMP                             ; [+1]
      615 MOVE                             R52 R16
      616 SETLIST                          R49 R50 3 [1]
      618 CALL                             R47 2 1
      619 GETUPVAL                         R48 27
      620 GETTABLEKS                       R48 R48 K20 ["useBoundAction"]
      622 LOADK                            R49 K26 ["NativeGraphContext_PasteNodes"]
      623 MOVE                             R50 R47
      624 CALL                             R48 2 0
      625 GETUPVAL                         R48 1
      626 GETTABLEKS                       R48 R48 K15 ["useCallback"]
      628 NEWCLOSURE                       R49 P25
      629 CAPTURE                          UPVAL U5
      630 CAPTURE                          VAL R8
      631 CAPTURE                          VAL R16
      632 CAPTURE                          UPVAL U12
      633 CAPTURE                          VAL R7
      634 NEWTABLE                         R50 0 2
      636 GETUPVAL                         R52 5
      637 CALL                             R52 0 1
      638 JUMPIFNOT                        R52 ; [+3]
      639 GETTABLEKS                       R51 R8 K11 ["observeSelectedGraphInstance"]
      641 JUMP                             ; [+1]
      642 MOVE                             R51 R16
      643 MOVE                             R52 R7
      644 SETLIST                          R50 R51 2 [1]
      646 CALL                             R48 2 1
      647 GETUPVAL                         R49 1
      648 GETTABLEKS                       R49 R49 K15 ["useCallback"]
      650 NEWCLOSURE                       R50 P26
      651 CAPTURE                          UPVAL U5
      652 CAPTURE                          VAL R8
      653 CAPTURE                          VAL R16
      654 CAPTURE                          VAL R19
      655 CAPTURE                          UPVAL U15
      656 CAPTURE                          UPVAL U28
      657 CAPTURE                          UPVAL U29
      658 CAPTURE                          UPVAL U12
      659 CAPTURE                          VAL R15
      660 CAPTURE                          UPVAL U20
      661 CAPTURE                          VAL R2
      662 CAPTURE                          VAL R7
      663 NEWTABLE                         R51 0 5
      665 MOVE                             R52 R7
      666 GETUPVAL                         R54 5
      667 CALL                             R54 0 1
      668 JUMPIFNOT                        R54 ; [+3]
      669 GETTABLEKS                       R53 R8 K11 ["observeSelectedGraphInstance"]
      671 JUMP                             ; [+1]
      672 MOVE                             R53 R16
      673 MOVE                             R54 R15
      674 MOVE                             R55 R2
      675 MOVE                             R56 R19
      676 SETLIST                          R51 R52 5 [1]
      678 CALL                             R49 2 1
      679 GETUPVAL                         R50 1
      680 GETTABLEKS                       R50 R50 K15 ["useCallback"]
      682 NEWCLOSURE                       R51 P27
      683 CAPTURE                          UPVAL U5
      684 CAPTURE                          VAL R8
      685 CAPTURE                          VAL R16
      686 CAPTURE                          VAL R19
      687 CAPTURE                          UPVAL U12
      688 CAPTURE                          UPVAL U29
      689 CAPTURE                          UPVAL U15
      690 CAPTURE                          VAL R15
      691 CAPTURE                          VAL R49
      692 CAPTURE                          VAL R7
      693 NEWTABLE                         R52 0 5
      695 MOVE                             R53 R7
      696 GETUPVAL                         R55 5
      697 CALL                             R55 0 1
      698 JUMPIFNOT                        R55 ; [+3]
      699 GETTABLEKS                       R54 R8 K11 ["observeSelectedGraphInstance"]
      701 JUMP                             ; [+1]
      702 MOVE                             R54 R16
      703 MOVE                             R55 R15
      704 MOVE                             R56 R19
      705 MOVE                             R57 R49
      706 SETLIST                          R52 R53 5 [1]
      708 CALL                             R50 2 1
      709 GETUPVAL                         R51 1
      710 GETTABLEKS                       R51 R51 K15 ["useCallback"]
      712 NEWCLOSURE                       R52 P28
      713 CAPTURE                          VAL R19
      714 CAPTURE                          UPVAL U15
      715 CAPTURE                          UPVAL U12
      716 CAPTURE                          VAL R15
      717 NEWTABLE                         R53 0 2
      719 MOVE                             R54 R15
      720 MOVE                             R55 R19
      721 SETLIST                          R53 R54 2 [1]
      723 CALL                             R51 2 1
      724 GETUPVAL                         R52 1
      725 GETTABLEKS                       R52 R52 K15 ["useCallback"]
      727 NEWCLOSURE                       R53 P29
      728 CAPTURE                          VAL R19
      729 CAPTURE                          UPVAL U15
      730 CAPTURE                          UPVAL U12
      731 CAPTURE                          VAL R15
      732 NEWTABLE                         R54 0 2
      734 MOVE                             R55 R15
      735 MOVE                             R56 R19
      736 SETLIST                          R54 R55 2 [1]
      738 CALL                             R52 2 1
      739 GETUPVAL                         R53 30
      740 MOVE                             R54 R15
      741 GETUPVAL                         R56 5
      742 CALL                             R56 0 1
      743 JUMPIFNOT                        R56 ; [+3]
      744 GETTABLEKS                       R55 R8 K11 ["observeSelectedGraphInstance"]
      746 JUMP                             ; [+1]
      747 MOVE                             R55 R16
      748 CALL                             R53 2 1
      749 GETUPVAL                         R54 31
      750 MOVE                             R55 R15
      751 GETUPVAL                         R57 5
      752 CALL                             R57 0 1
      753 JUMPIFNOT                        R57 ; [+3]
      754 GETTABLEKS                       R56 R8 K11 ["observeSelectedGraphInstance"]
      756 JUMP                             ; [+1]
      757 MOVE                             R56 R16
      758 CALL                             R54 2 1
      759 GETUPVAL                         R55 1
      760 GETTABLEKS                       R55 R55 K15 ["useCallback"]
      762 NEWCLOSURE                       R56 P30
      763 CAPTURE                          VAL R19
      764 CAPTURE                          UPVAL U15
      765 CAPTURE                          UPVAL U12
      766 CAPTURE                          VAL R15
      767 NEWTABLE                         R57 0 2
      769 MOVE                             R58 R15
      770 MOVE                             R59 R19
      771 SETLIST                          R57 R58 2 [1]
      773 CALL                             R55 2 1
      774 GETUPVAL                         R56 1
      775 GETTABLEKS                       R56 R56 K15 ["useCallback"]
      777 NEWCLOSURE                       R57 P31
      778 CAPTURE                          VAL R19
      779 CAPTURE                          UPVAL U15
      780 CAPTURE                          UPVAL U12
      781 CAPTURE                          VAL R15
      782 CAPTURE                          UPVAL U28
      783 CAPTURE                          VAL R53
      784 NEWTABLE                         R58 0 4
      786 MOVE                             R59 R15
      787 MOVE                             R60 R19
      788 GETTABLEKS                       R61 R53 K27 ["setNodeOutputInfoInDestroyMapRef"]
      790 GETTABLEKS                       R62 R53 K28 ["registerIncomingWireInDestroyMapRef"]
      792 SETLIST                          R58 R59 4 [1]
      794 CALL                             R56 2 1
      795 GETUPVAL                         R57 1
      796 GETTABLEKS                       R57 R57 K15 ["useCallback"]
      798 NEWCLOSURE                       R58 P32
      799 CAPTURE                          UPVAL U5
      800 CAPTURE                          VAL R8
      801 CAPTURE                          VAL R16
      802 CAPTURE                          UPVAL U15
      803 CAPTURE                          VAL R15
      804 CAPTURE                          UPVAL U12
      805 CAPTURE                          UPVAL U28
      806 CAPTURE                          UPVAL U29
      807 CAPTURE                          VAL R49
      808 CAPTURE                          VAL R50
      809 CAPTURE                          VAL R56
      810 NEWTABLE                         R59 0 6
      812 GETUPVAL                         R61 5
      813 CALL                             R61 0 1
      814 JUMPIFNOT                        R61 ; [+3]
      815 GETTABLEKS                       R60 R8 K11 ["observeSelectedGraphInstance"]
      817 JUMP                             ; [+1]
      818 MOVE                             R60 R16
      819 MOVE                             R61 R19
      820 MOVE                             R62 R15
      821 MOVE                             R63 R49
      822 MOVE                             R64 R50
      823 MOVE                             R65 R56
      824 SETLIST                          R59 R60 6 [1]
      826 CALL                             R57 2 1
      827 GETUPVAL                         R58 1
      828 GETTABLEKS                       R58 R58 K15 ["useCallback"]
      830 NEWCLOSURE                       R59 P33
      831 CAPTURE                          VAL R11
      832 CAPTURE                          UPVAL U15
      833 NEWTABLE                         R60 0 0
      835 CALL                             R58 2 1
      836 GETUPVAL                         R59 1
      837 GETTABLEKS                       R59 R59 K15 ["useCallback"]
      839 NEWCLOSURE                       R60 P34
      840 CAPTURE                          VAL R11
      841 CAPTURE                          UPVAL U15
      842 NEWTABLE                         R61 0 0
      844 CALL                             R59 2 1
      845 GETUPVAL                         R60 1
      846 GETTABLEKS                       R60 R60 K9 ["useEffect"]
      848 NEWCLOSURE                       R61 P35
      849 CAPTURE                          VAL R11
      850 CAPTURE                          UPVAL U15
      851 NEWTABLE                         R62 0 0
      853 CALL                             R60 2 0
      854 GETUPVAL                         R60 1
      855 GETTABLEKS                       R60 R60 K15 ["useCallback"]
      857 NEWCLOSURE                       R61 P36
      858 CAPTURE                          UPVAL U15
      859 CAPTURE                          VAL R15
      860 CAPTURE                          UPVAL U18
      861 NEWTABLE                         R62 0 1
      863 MOVE                             R63 R15
      864 SETLIST                          R62 R63 1 [1]
      866 CALL                             R60 2 1
      867 GETUPVAL                         R61 1
      868 GETTABLEKS                       R61 R61 K15 ["useCallback"]
      870 NEWCLOSURE                       R62 P37
      871 CAPTURE                          UPVAL U15
      872 CAPTURE                          VAL R15
      873 NEWTABLE                         R63 0 1
      875 MOVE                             R64 R15
      876 SETLIST                          R63 R64 1 [1]
      878 CALL                             R61 2 1
      879 GETUPVAL                         R62 1
      880 GETTABLEKS                       R62 R62 K15 ["useCallback"]
      882 NEWCLOSURE                       R63 P38
      883 CAPTURE                          UPVAL U15
      884 CAPTURE                          VAL R15
      885 CAPTURE                          UPVAL U32
      886 CAPTURE                          UPVAL U12
      887 CAPTURE                          UPVAL U29
      888 CAPTURE                          VAL R1
      889 CAPTURE                          VAL R19
      890 NEWTABLE                         R64 0 3
      892 MOVE                             R65 R15
      893 MOVE                             R66 R19
      894 GETTABLEKS                       R67 R1 K29 ["observe"]
      896 SETLIST                          R64 R65 3 [1]
      898 CALL                             R62 2 1
      899 GETUPVAL                         R63 1
      900 GETTABLEKS                       R63 R63 K15 ["useCallback"]
      902 NEWCLOSURE                       R64 P39
      903 CAPTURE                          UPVAL U15
      904 CAPTURE                          UPVAL U12
      905 CAPTURE                          VAL R15
      906 NEWTABLE                         R65 0 1
      908 MOVE                             R66 R15
      909 SETLIST                          R65 R66 1 [1]
      911 CALL                             R63 2 1
      912 GETUPVAL                         R64 1
      913 GETTABLEKS                       R64 R64 K15 ["useCallback"]
      915 NEWCLOSURE                       R65 P40
      916 CAPTURE                          UPVAL U5
      917 CAPTURE                          VAL R8
      918 CAPTURE                          VAL R16
      919 CAPTURE                          VAL R19
      920 CAPTURE                          VAL R15
      921 CAPTURE                          UPVAL U12
      922 CAPTURE                          UPVAL U15
      923 NEWTABLE                         R66 0 3
      925 MOVE                             R67 R16
      926 MOVE                             R68 R15
      927 MOVE                             R69 R19
      928 SETLIST                          R66 R67 3 [1]
      930 CALL                             R64 2 1
      931 GETUPVAL                         R65 1
      932 GETTABLEKS                       R65 R65 K15 ["useCallback"]
      934 NEWCLOSURE                       R66 P41
      935 CAPTURE                          UPVAL U20
      936 CAPTURE                          UPVAL U33
      937 CAPTURE                          UPVAL U5
      938 CAPTURE                          VAL R8
      939 CAPTURE                          VAL R16
      940 CAPTURE                          VAL R15
      941 CAPTURE                          UPVAL U12
      942 CAPTURE                          UPVAL U15
      943 CAPTURE                          VAL R54
      944 CAPTURE                          UPVAL U29
      945 NEWTABLE                         R67 0 4
      947 MOVE                             R68 R15
      948 MOVE                             R69 R16
      949 MOVE                             R70 R19
      950 GETTABLEKS                       R71 R54 K30 ["parameterDestroyConnectionMapRef"]
      952 SETLIST                          R67 R68 4 [1]
      954 CALL                             R65 2 1
      955 GETUPVAL                         R66 1
      956 GETTABLEKS                       R66 R66 K15 ["useCallback"]
      958 NEWCLOSURE                       R67 P42
      959 CAPTURE                          UPVAL U5
      960 CAPTURE                          VAL R8
      961 CAPTURE                          VAL R16
      962 CAPTURE                          UPVAL U12
      963 CAPTURE                          UPVAL U15
      964 CAPTURE                          UPVAL U29
      965 NEWTABLE                         R68 0 1
      967 GETUPVAL                         R70 5
      968 CALL                             R70 0 1
      969 JUMPIFNOT                        R70 ; [+3]
      970 GETTABLEKS                       R69 R8 K11 ["observeSelectedGraphInstance"]
      972 JUMP                             ; [+1]
      973 MOVE                             R69 R16
      974 SETLIST                          R68 R69 1 [1]
      976 CALL                             R66 2 1
      977 GETUPVAL                         R67 1
      978 GETTABLEKS                       R67 R67 K15 ["useCallback"]
      980 NEWCLOSURE                       R68 P43
      981 CAPTURE                          VAL R15
      982 CAPTURE                          UPVAL U15
      983 NEWTABLE                         R69 0 1
      985 MOVE                             R70 R15
      986 SETLIST                          R69 R70 1 [1]
      988 CALL                             R67 2 1
      989 GETUPVAL                         R68 1
      990 GETTABLEKS                       R68 R68 K15 ["useCallback"]
      992 NEWCLOSURE                       R69 P44
      993 CAPTURE                          VAL R15
      994 CAPTURE                          VAL R5
      995 NEWTABLE                         R70 0 2
      997 MOVE                             R71 R15
      998 GETTABLEKS                       R72 R5 K31 ["selectionService"]
     1000 SETLIST                          R70 R71 2 [1]
     1002 CALL                             R68 2 1
     1003 GETUPVAL                         R69 1
     1004 GETTABLEKS                       R69 R69 K15 ["useCallback"]
     1006 NEWCLOSURE                       R70 P45
     1007 CAPTURE                          UPVAL U28
     1008 CAPTURE                          UPVAL U5
     1009 CAPTURE                          VAL R8
     1010 CAPTURE                          VAL R16
     1011 CAPTURE                          VAL R15
     1012 CAPTURE                          UPVAL U29
     1013 CAPTURE                          UPVAL U12
     1014 CAPTURE                          UPVAL U15
     1015 NEWTABLE                         R71 0 2
     1017 GETUPVAL                         R73 5
     1018 CALL                             R73 0 1
     1019 JUMPIFNOT                        R73 ; [+3]
     1020 GETTABLEKS                       R72 R8 K11 ["observeSelectedGraphInstance"]
     1022 JUMP                             ; [+1]
     1023 MOVE                             R72 R16
     1024 MOVE                             R73 R15
     1025 SETLIST                          R71 R72 2 [1]
     1027 CALL                             R69 2 1
     1028 GETUPVAL                         R70 1
     1029 GETTABLEKS                       R70 R70 K9 ["useEffect"]
     1031 NEWCLOSURE                       R71 P46
     1032 CAPTURE                          UPVAL U13
     1033 CAPTURE                          VAL R53
     1034 CAPTURE                          VAL R15
     1035 CAPTURE                          VAL R27
     1036 CAPTURE                          UPVAL U28
     1037 CAPTURE                          UPVAL U12
     1038 NEWTABLE                         R72 0 2
     1040 MOVE                             R73 R15
     1041 GETTABLEKS                       R74 R53 K32 ["nodeDestroyConnectionMapRef"]
     1043 SETLIST                          R72 R73 2 [1]
     1045 CALL                             R70 2 0
     1046 GETUPVAL                         R70 1
     1047 GETTABLEKS                       R70 R70 K9 ["useEffect"]
     1049 NEWCLOSURE                       R71 P47
     1050 CAPTURE                          UPVAL U13
     1051 CAPTURE                          VAL R54
     1052 CAPTURE                          VAL R15
     1053 CAPTURE                          UPVAL U28
     1054 CAPTURE                          UPVAL U29
     1055 CAPTURE                          VAL R64
     1056 NEWTABLE                         R72 0 3
     1058 MOVE                             R73 R15
     1059 GETTABLEKS                       R74 R54 K30 ["parameterDestroyConnectionMapRef"]
     1061 MOVE                             R75 R64
     1062 SETLIST                          R72 R73 3 [1]
     1064 CALL                             R70 2 0
     1065 GETUPVAL                         R70 34
     1066 MOVE                             R71 R2
     1067 MOVE                             R72 R1
     1068 CALL                             R70 2 1
     1069 GETUPVAL                         R72 5
     1070 CALL                             R72 0 1
     1071 JUMPIFNOT                        R72 ; [+7]
     1072 GETUPVAL                         R71 17
     1073 GETTABLEKS                       R71 R71 K18 ["useSignalState"]
     1075 GETTABLEKS                       R72 R8 K33 ["observeSelectedGraphIsEphemeral"]
     1077 CALL                             R71 1 1
     1078 JUMP                             ; [+1]
     1079 LOADB                            R71 0
     1080 NEWTABLE                         R72 64 0
     1082 GETUPVAL                         R74 5
     1083 CALL                             R74 0 1
     1084 JUMPIFNOT                        R74 ; [+2]
     1085 MOVE                             R73 R71
     1086 JUMP                             ; [+1]
     1087 LOADNIL                          R73
     1088 SETTABLEKS                       R73 R72 K34 ["isReadonly"]
     1090 GETUPVAL                         R74 5
     1091 CALL                             R74 0 1
     1092 JUMPIF                           R74 ; [+4]
     1093 JUMPIFNOT                        R19 ; [+3]
     1094 GETTABLEKS                       R73 R19 K35 ["graphInstanceId"]
     1096 JUMP                             ; [+1]
     1097 LOADNIL                          R73
     1098 SETTABLEKS                       R73 R72 K36 ["selectedGraphInstanceId_DEPRECATED"]
     1100 SETTABLEKS                       R63 R72 K37 ["reorderPinsAsync"]
     1102 SETTABLEKS                       R40 R72 K38 ["createNodeAsync"]
     1104 SETTABLEKS                       R49 R72 K39 ["createParameterAsync"]
     1106 SETTABLEKS                       R50 R72 K40 ["createExistingParameterAsync"]
     1108 SETTABLEKS                       R57 R72 K41 ["createConnectedParameterAsync"]
     1110 SETTABLEKS                       R9 R72 K42 ["graphRect"]
     1112 SETTABLEKS                       R48 R72 K43 ["selectAllParameterNodesWithNameAsync"]
     1114 SETTABLEKS                       R32 R72 K44 ["selectNodesAsync"]
     1116 SETTABLEKS                       R33 R72 K45 ["selectNodesFromRectAsync"]
     1118 SETTABLEKS                       R41 R72 K46 ["removeSelectedNodesAsync"]
     1120 SETTABLEKS                       R42 R72 K47 ["duplicateSelectedNodesAsync"]
     1122 SETTABLEKS                       R44 R72 K48 ["selectAllNodesAsync"]
     1124 SETTABLEKS                       R43 R72 K49 ["clearNodeSelectionAsync"]
     1126 SETTABLEKS                       R45 R72 K50 ["copySelectedNodesAsync"]
     1128 SETTABLEKS                       R46 R72 K51 ["cutSelectedNodesAsync"]
     1130 SETTABLEKS                       R47 R72 K52 ["pasteNodesAsync"]
     1132 SETTABLEKS                       R30 R72 K53 ["setNodePositionsAsync"]
     1134 SETTABLEKS                       R31 R72 K54 ["setNodeSizeAsync"]
     1136 SETTABLEKS                       R56 R72 K55 ["setNodeConnectionAsync"]
     1138 SETTABLEKS                       R51 R72 K56 ["deleteNodeInput"]
     1140 SETTABLEKS                       R55 R72 K57 ["removeNodeOutputConnectionAsync"]
     1142 SETTABLEKS                       R52 R72 K58 ["removeNodeInputConnectionAsync"]
     1144 SETTABLEKS                       R64 R72 K59 ["removeParameterAsync"]
     1146 SETTABLEKS                       R62 R72 K60 ["renameNodeAsync"]
     1148 SETTABLEKS                       R65 R72 K61 ["renameParameterAsync"]
     1150 SETTABLEKS                       R67 R72 K62 ["deleteNodeInstanceAsync"]
     1152 SETTABLEKS                       R68 R72 K63 ["showNodeInExplorerAsync"]
     1154 SETTABLEKS                       R28 R72 K64 ["setCollapsedAsync"]
     1156 SETTABLEKS                       R60 R72 K65 ["setNodePropertyAsync"]
     1158 SETTABLEKS                       R61 R72 K66 ["setInputPinNodePropertyAsync"]
     1160 SETTABLEKS                       R66 R72 K67 ["setParameterNodeTypeAsync"]
     1162 SETTABLEKS                       R34 R72 K68 ["currentAnimationId"]
     1164 SETTABLEKS                       R36 R72 K69 ["sourceAssetId"]
     1166 SETTABLEKS                       R39 R72 K70 ["selectedGraphKey"]
     1168 GETUPVAL                         R74 5
     1169 CALL                             R74 0 1
     1170 JUMPIFNOT                        R74 ; [+2]
     1171 LOADNIL                          R73
     1172 JUMP                             ; [+1]
     1173 MOVE                             R73 R16
     1174 SETTABLEKS                       R73 R72 K71 ["observeSelectedGraphInstance_DEPRECATED"]
     1176 GETTABLEKS                       R73 R1 K29 ["observe"]
     1178 SETTABLEKS                       R73 R72 K72 ["observeGraphNodeById"]
     1180 GETTABLEKS                       R73 R2 K29 ["observe"]
     1182 SETTABLEKS                       R73 R72 K73 ["observeNodeRenderInfoById"]
     1184 SETTABLEKS                       R58 R72 K74 ["beginUndoTransaction"]
     1186 SETTABLEKS                       R59 R72 K75 ["finishUndoTransaction"]
     1188 GETTABLEKS                       R73 R1 K76 ["observeMap"]
     1190 SETTABLEKS                       R73 R72 K77 ["observeGraphNodeMap"]
     1192 GETTABLEKS                       R73 R2 K76 ["observeMap"]
     1194 SETTABLEKS                       R73 R72 K78 ["observeRenderInfoMap"]
     1196 GETTABLEKS                       R73 R70 K79 ["hasGraphOutput"]
     1198 SETTABLEKS                       R73 R72 K79 ["hasGraphOutput"]
     1200 GETTABLEKS                       R73 R3 K29 ["observe"]
     1202 SETTABLEKS                       R73 R72 K80 ["observeNodePropsById"]
     1204 SETTABLEKS                       R69 R72 K81 ["setExpressionNodeValueAsync"]
     1206 SETTABLEKS                       R18 R72 K82 ["observeNonPromotedExpressionNodes"]
     1208 GETUPVAL                         R73 1
     1209 GETTABLEKS                       R73 R73 K8 ["useMemo"]
     1211 DUPCLOSURE                       R74 K83 [PROTO_67]
     1212 NEWTABLE                         R75 0 0
     1214 CALL                             R73 2 1
     1215 GETUPVAL                         R74 1
     1216 GETTABLEKS                       R74 R74 K8 ["useMemo"]
     1218 NEWCLOSURE                       R75 P49
     1219 CAPTURE                          UPVAL U35
     1220 CAPTURE                          UPVAL U5
     1221 CAPTURE                          VAL R8
     1222 CAPTURE                          VAL R16
     1223 NEWTABLE                         R76 0 2
     1225 GETUPVAL                         R78 5
     1226 CALL                             R78 0 1
     1227 JUMPIFNOT                        R78 ; [+3]
     1228 GETTABLEKS                       R77 R8 K11 ["observeSelectedGraphInstance"]
     1230 JUMP                             ; [+1]
     1231 MOVE                             R77 R16
     1232 MOVE                             R78 R19
     1233 SETLIST                          R76 R77 2 [1]
     1235 CALL                             R74 2 1
     1236 GETUPVAL                         R75 4
     1237 GETTABLEKS                       R75 R75 K84 ["usePasteHooks"]
     1239 GETUPVAL                         R77 5
     1240 CALL                             R77 0 1
     1241 JUMPIFNOT                        R77 ; [+3]
     1242 GETTABLEKS                       R76 R8 K11 ["observeSelectedGraphInstance"]
     1244 JUMP                             ; [+1]
     1245 MOVE                             R76 R16
     1246 CALL                             R75 1 0
     1247 GETUPVAL                         R75 17
     1248 GETTABLEKS                       R75 R75 K18 ["useSignalState"]
     1250 MOVE                             R76 R74
     1251 CALL                             R75 1 1
     1252 GETUPVAL                         R76 27
     1253 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1255 LOADK                            R77 K86 ["NativeGraphContext_GraphPayloadMap"]
     1256 MOVE                             R78 R19
     1257 CALL                             R76 2 0
     1258 GETUPVAL                         R76 27
     1259 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1261 LOADK                            R77 K87 ["NativeGraphContext_GraphRenderInfo"]
     1262 MOVE                             R78 R21
     1263 CALL                             R76 2 0
     1264 GETUPVAL                         R76 27
     1265 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1267 LOADK                            R77 K88 ["NativeGraphContext_GraphNodeProps"]
     1268 MOVE                             R78 R23
     1269 CALL                             R76 2 0
     1270 GETUPVAL                         R76 27
     1271 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1273 LOADK                            R77 K89 ["NativeGraphContext_NonPromotedExpressionNodes"]
     1274 MOVE                             R78 R25
     1275 CALL                             R76 2 0
     1276 GETUPVAL                         R76 27
     1277 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1279 LOADK                            R77 K90 ["NativeGraphContext_TimeRange"]
     1280 MOVE                             R78 R73
     1281 CALL                             R76 2 0
     1282 GETUPVAL                         R76 27
     1283 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1285 LOADK                            R77 K91 ["NativeGraphContext_GraphPayloadGraphRect"]
     1286 MOVE                             R78 R9
     1287 CALL                             R76 2 0
     1288 GETUPVAL                         R76 27
     1289 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1291 LOADK                            R77 K92 ["NativeGraphContext_SourceAssetId"]
     1292 MOVE                             R78 R36
     1293 CALL                             R76 2 0
     1294 GETUPVAL                         R76 16
     1295 CALL                             R76 0 1
     1296 JUMPIF                           R76 ; [+6]
     1297 GETUPVAL                         R76 27
     1298 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1300 LOADK                            R77 K93 ["NativeGraphContext_CurrentAnimationId"]
     1301 MOVE                             R78 R34
     1302 CALL                             R76 2 0
     1303 GETUPVAL                         R76 16
     1304 CALL                             R76 0 1
     1305 JUMPIFNOT                        R76 ; [+6]
     1306 GETUPVAL                         R76 27
     1307 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1309 LOADK                            R77 K94 ["NativeGraphContext_SelectedGraphKey"]
     1310 MOVE                             R78 R39
     1311 CALL                             R76 2 0
     1312 GETUPVAL                         R76 27
     1313 GETTABLEKS                       R76 R76 K85 ["useReplicatedState"]
     1315 LOADK                            R77 K95 ["NativeGraphContext_UndoTransaction"]
     1316 MOVE                             R78 R11
     1317 CALL                             R76 2 0
     1318 GETUPVAL                         R76 27
     1319 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1321 LOADK                            R77 K96 ["NativeGraphContext_CreateNode"]
     1322 MOVE                             R78 R40
     1323 CALL                             R76 2 0
     1324 GETUPVAL                         R76 27
     1325 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1327 LOADK                            R77 K97 ["NativeGraphContext_CreateParameterAsync"]
     1328 MOVE                             R78 R49
     1329 CALL                             R76 2 0
     1330 GETUPVAL                         R76 27
     1331 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1333 LOADK                            R77 K98 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1334 MOVE                             R78 R57
     1335 CALL                             R76 2 0
     1336 GETUPVAL                         R76 27
     1337 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1339 LOADK                            R77 K99 ["NativeGraphContext_CreateExistingParameterAsync"]
     1340 MOVE                             R78 R50
     1341 CALL                             R76 2 0
     1342 GETUPVAL                         R76 27
     1343 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1345 LOADK                            R77 K100 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1346 MOVE                             R78 R48
     1347 CALL                             R76 2 0
     1348 GETUPVAL                         R76 27
     1349 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1351 LOADK                            R77 K101 ["NativeGraphContext_SelectNodes"]
     1352 MOVE                             R78 R32
     1353 CALL                             R76 2 0
     1354 GETUPVAL                         R76 27
     1355 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1357 LOADK                            R77 K102 ["NativeGraphContext_SelectNodesFromRect"]
     1358 MOVE                             R78 R33
     1359 CALL                             R76 2 0
     1360 GETUPVAL                         R76 27
     1361 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1363 LOADK                            R77 K103 ["NativeGraphContext_SetNodePositionsAsync"]
     1364 MOVE                             R78 R30
     1365 CALL                             R76 2 0
     1366 GETUPVAL                         R76 27
     1367 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1369 LOADK                            R77 K104 ["NativeGraphContext_SetNodeSizeAsync"]
     1370 MOVE                             R78 R31
     1371 CALL                             R76 2 0
     1372 GETUPVAL                         R76 27
     1373 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1375 LOADK                            R77 K105 ["NativeGraphContext_SetNodeConnectionAsync"]
     1376 MOVE                             R78 R56
     1377 CALL                             R76 2 0
     1378 GETUPVAL                         R76 27
     1379 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1381 LOADK                            R77 K106 ["NativeGraphContext_DeleteNodeInput"]
     1382 MOVE                             R78 R51
     1383 CALL                             R76 2 0
     1384 GETUPVAL                         R76 27
     1385 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1387 LOADK                            R77 K107 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1388 MOVE                             R78 R55
     1389 CALL                             R76 2 0
     1390 GETUPVAL                         R76 27
     1391 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1393 LOADK                            R77 K108 ["NativeGraphContext_RemoveNodeInputConnection"]
     1394 MOVE                             R78 R52
     1395 CALL                             R76 2 0
     1396 GETUPVAL                         R76 27
     1397 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1399 LOADK                            R77 K109 ["NativeGraphContext_RemoveParameterAsync"]
     1400 MOVE                             R78 R64
     1401 CALL                             R76 2 0
     1402 GETUPVAL                         R76 27
     1403 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1405 LOADK                            R77 K110 ["NativeGraphContext_RenameNodeAsync"]
     1406 MOVE                             R78 R62
     1407 CALL                             R76 2 0
     1408 GETUPVAL                         R76 27
     1409 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1411 LOADK                            R77 K111 ["NativeGraphContext_RenameParameterAsync"]
     1412 MOVE                             R78 R65
     1413 CALL                             R76 2 0
     1414 GETUPVAL                         R76 27
     1415 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1417 LOADK                            R77 K112 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1418 MOVE                             R78 R67
     1419 CALL                             R76 2 0
     1420 GETUPVAL                         R76 27
     1421 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1423 LOADK                            R77 K113 ["NativeGraphContext_ShowNodeInExplorer"]
     1424 MOVE                             R78 R68
     1425 CALL                             R76 2 0
     1426 GETUPVAL                         R76 27
     1427 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1429 LOADK                            R77 K114 ["NativeGraphContext_SetCollapsedAsync"]
     1430 MOVE                             R78 R28
     1431 CALL                             R76 2 0
     1432 GETUPVAL                         R76 27
     1433 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1435 LOADK                            R77 K115 ["NativeGraphContext_setNodePropertyAsync"]
     1436 MOVE                             R78 R60
     1437 CALL                             R76 2 0
     1438 GETUPVAL                         R76 27
     1439 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1441 LOADK                            R77 K116 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1442 MOVE                             R78 R61
     1443 CALL                             R76 2 0
     1444 GETUPVAL                         R76 27
     1445 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1447 LOADK                            R77 K117 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1448 MOVE                             R78 R66
     1449 CALL                             R76 2 0
     1450 GETUPVAL                         R76 27
     1451 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1453 LOADK                            R77 K118 ["NativeGraphContext_ReorderPinsAsync"]
     1454 MOVE                             R78 R63
     1455 CALL                             R76 2 0
     1456 GETUPVAL                         R76 27
     1457 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1459 LOADK                            R77 K119 ["NativeGraphContext_beginUndoTransaction"]
     1460 MOVE                             R78 R58
     1461 CALL                             R76 2 0
     1462 GETUPVAL                         R76 27
     1463 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1465 LOADK                            R77 K120 ["NativeGraphContext_finishUndoTransaction"]
     1466 MOVE                             R78 R59
     1467 CALL                             R76 2 0
     1468 GETUPVAL                         R76 27
     1469 GETTABLEKS                       R76 R76 K20 ["useBoundAction"]
     1471 LOADK                            R77 K121 ["NativeGraphContext_SetExpressionNodeValueAsync"]
     1472 MOVE                             R78 R69
     1473 CALL                             R76 2 0
     1474 GETUPVAL                         R76 20
     1475 GETTABLEKS                       R76 R76 K122 ["FFlagAnimGraphUI_DynamicZIndex"]
     1477 JUMPIFNOT                        R76 ; [+5]
     1478 GETUPVAL                         R76 36
     1479 GETTABLEKS                       R76 R76 K19 ["useProducer"]
     1481 MOVE                             R77 R29
     1482 CALL                             R76 1 0
     1483 GETUPVAL                         R76 1
     1484 GETTABLEKS                       R76 R76 K123 ["createElement"]
     1486 GETUPVAL                         R77 37
     1487 GETTABLEKS                       R77 R77 K124 ["Provider"]
     1489 DUPTABLE                         R78 K126 [{"value"}]
     1490 SETTABLEKS                       R72 R78 K125 ["value"]
     1492 DUPTABLE                         R79 K128 [{"ContextStack"}]
     1493 GETUPVAL                         R80 1
     1494 GETTABLEKS                       R80 R80 K123 ["createElement"]
     1496 GETUPVAL                         R81 14
     1497 GETTABLEKS                       R81 R81 K127 ["ContextStack"]
     1499 DUPTABLE                         R82 K130 [{"providers"}]
     1500 NEWTABLE                         R83 0 2
     1502 GETUPVAL                         R84 1
     1503 GETTABLEKS                       R84 R84 K123 ["createElement"]
     1505 GETUPVAL                         R85 38
     1506 GETTABLEKS                       R85 R85 K124 ["Provider"]
     1508 DUPTABLE                         R86 K132 [{"timeRange"}]
     1509 SETTABLEKS                       R73 R86 K131 ["timeRange"]
     1511 CALL                             R84 2 1
     1512 GETUPVAL                         R85 1
     1513 GETTABLEKS                       R85 R85 K123 ["createElement"]
     1515 GETUPVAL                         R86 39
     1516 GETTABLEKS                       R86 R86 K124 ["Provider"]
     1518 DUPTABLE                         R87 K134 [{"animationClipsList"}]
     1519 SETTABLEKS                       R75 R87 K133 ["animationClipsList"]
     1521 CALL                             R85 2 -1
     1522 SETLIST                          R83 R84 -1 [1]
     1524 SETTABLEKS                       R83 R82 K129 ["providers"]
     1526 GETTABLEKS                       R83 R0 K135 ["children"]
     1528 CALL                             R80 3 1
     1529 SETTABLEKS                       R80 R79 K127 ["ContextStack"]
     1531 CALL                             R76 3 -1
     1532 RETURN                           R76 -1

PROTO_71:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_76:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_77:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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

PROTO_85:
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

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_91:
        0 DUPTABLE                         R0 K31 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "isReadonly", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "setZIndex", "deleteNodeInput", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "DEPRECATED_observeIsDisabledByNodeId", "observeNodeInputBindings"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodePayloadDispatcher"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["nodeRenderInfoDispatcher"]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R1 3
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K2 ["isReadonly"]
       15 GETUPVAL                         R2 4
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R1 R0 K3 ["createNode"]
       20 GETUPVAL                         R2 5
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R1 R0 K4 ["reorderPins"]
       25 GETUPVAL                         R2 6
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R1 R0 K5 ["createParameter"]
       30 GETUPVAL                         R1 7
       31 SETTABLEKS                       R1 R0 K6 ["createExistingParameterAsync"]
       33 GETUPVAL                         R1 8
       34 SETTABLEKS                       R1 R0 K7 ["createConnectedParameterAsync"]
       36 GETUPVAL                         R2 9
       37 NEWCLOSURE                       R1 P0
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R1 R0 K8 ["selectAllParameterNodesWithName"]
       41 GETUPVAL                         R2 10
       42 NEWCLOSURE                       R1 P0
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R1 R0 K9 ["selectNodes"]
       46 GETUPVAL                         R2 11
       47 NEWCLOSURE                       R1 P0
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R1 R0 K10 ["setCollapsed"]
       51 GETUPVAL                         R2 12
       52 GETTABLEKS                       R2 R2 K32 ["FFlagAnimGraphUI_DynamicZIndex"]
       54 JUMPIFNOT                        R2 ; [+4]
       55 GETUPVAL                         R2 13
       56 NEWCLOSURE                       R1 P0
       57 CAPTURE                          VAL R2
       58 JUMP                             ; [+1]
       59 LOADNIL                          R1
       60 SETTABLEKS                       R1 R0 K11 ["setZIndex"]
       62 GETUPVAL                         R1 14
       63 SETTABLEKS                       R1 R0 K12 ["deleteNodeInput"]
       65 GETUPVAL                         R1 15
       66 SETTABLEKS                       R1 R0 K13 ["removeNodeInputConnectionAsync"]
       68 GETUPVAL                         R1 16
       69 SETTABLEKS                       R1 R0 K14 ["removeNodeOutputConnectionAsync"]
       71 GETUPVAL                         R2 17
       72 NEWCLOSURE                       R1 P0
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R1 R0 K15 ["removeParameter"]
       76 GETUPVAL                         R2 18
       77 NEWCLOSURE                       R1 P0
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R1 R0 K16 ["renameNode"]
       81 GETUPVAL                         R2 19
       82 NEWCLOSURE                       R1 P0
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R1 R0 K17 ["renameParameter"]
       86 GETUPVAL                         R2 20
       87 NEWCLOSURE                       R1 P0
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R1 R0 K18 ["deleteNodeInstance"]
       91 GETUPVAL                         R2 21
       92 NEWCLOSURE                       R1 P0
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R1 R0 K19 ["removeNodes"]
       96 GETUPVAL                         R2 22
       97 NEWCLOSURE                       R1 P0
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R1 R0 K20 ["setNodeConnection"]
      101 GETUPVAL                         R2 23
      102 NEWCLOSURE                       R1 P0
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R1 R0 K21 ["setNodePositions"]
      106 GETUPVAL                         R2 24
      107 NEWCLOSURE                       R1 P0
      108 CAPTURE                          VAL R2
      109 SETTABLEKS                       R1 R0 K22 ["setNodeProperty"]
      111 GETUPVAL                         R2 25
      112 NEWCLOSURE                       R1 P0
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R1 R0 K23 ["setInputPinNodeProperty"]
      116 GETUPVAL                         R2 26
      117 NEWCLOSURE                       R1 P0
      118 CAPTURE                          VAL R2
      119 SETTABLEKS                       R1 R0 K24 ["setNodeSize"]
      121 GETUPVAL                         R2 27
      122 NEWCLOSURE                       R1 P0
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R1 R0 K25 ["setParameterNodeType"]
      126 GETUPVAL                         R1 28
      127 GETTABLEKS                       R1 R1 K33 ["observe"]
      129 SETTABLEKS                       R1 R0 K26 ["observeNodePropsById"]
      131 GETUPVAL                         R1 29
      132 SETTABLEKS                       R1 R0 K27 ["observeNodeStateById"]
      134 GETUPVAL                         R1 30
      135 SETTABLEKS                       R1 R0 K28 ["observeFadeByNodeId"]
      137 GETUPVAL                         R1 31
      138 SETTABLEKS                       R1 R0 K29 ["DEPRECATED_observeIsDisabledByNodeId"]
      140 GETUPVAL                         R1 32
      141 SETTABLEKS                       R1 R0 K30 ["observeNodeInputBindings"]
      143 RETURN                           R0 1

PROTO_92:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+8]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["useContext"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K1 ["Context"]
       15 CALL                             R4 1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 GETUPVAL                         R7 1
       21 CALL                             R7 0 1
       22 JUMPIF                           R7 ; [+10]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       26 DUPCLOSURE                       R8 K3 [PROTO_71]
       27 CAPTURE                          UPVAL U4
       28 NEWTABLE                         R9 0 0
       30 CALL                             R7 2 2
       31 MOVE                             R5 R7
       32 MOVE                             R6 R8
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K4 ["useReplicatedStateListenerCallback"]
       36 LOADK                            R8 K5 ["NativeGraphContext_GraphPayloadMap"]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          REF R6
       44 NEWTABLE                         R11 0 2
       46 GETTABLEKS                       R12 R1 K7 ["setMap"]
       48 GETUPVAL                         R14 1
       49 CALL                             R14 0 1
       50 JUMPIFNOT                        R14 ; [+2]
       51 LOADNIL                          R13
       52 JUMP                             ; [+1]
       53 MOVE                             R13 R6
       54 SETLIST                          R11 R12 2 [1]
       56 CALL                             R9 2 -1
       57 CALL                             R7 -1 0
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K4 ["useReplicatedStateListenerCallback"]
       61 LOADK                            R8 K8 ["NativeGraphContext_GraphRenderInfo"]
       62 GETTABLEKS                       R9 R2 K7 ["setMap"]
       64 CALL                             R7 2 0
       65 GETUPVAL                         R7 5
       66 GETTABLEKS                       R7 R7 K4 ["useReplicatedStateListenerCallback"]
       68 LOADK                            R8 K9 ["NativeGraphContext_GraphNodeProps"]
       69 GETTABLEKS                       R9 R3 K7 ["setMap"]
       71 CALL                             R7 2 0
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R7 R7 K10 ["useObserveStateListener"]
       75 LOADK                            R8 K11 ["NativeGraphContext_NonPromotedExpressionNodes"]
       76 NEWTABLE                         R9 0 0
       78 CALL                             R7 2 1
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R8 R8 K12 ["useEffect"]
       82 NEWCLOSURE                       R9 P2
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R1
       85 NEWTABLE                         R10 0 1
       87 GETTABLEKS                       R11 R0 K13 ["testOverrideGraphPayloadMap"]
       89 SETLIST                          R10 R11 1 [1]
       91 CALL                             R8 2 0
       92 GETUPVAL                         R8 5
       93 GETTABLEKS                       R8 R8 K14 ["useReplicatedStateListener"]
       95 LOADK                            R9 K15 ["NativeGraphContext_TimeRange"]
       96 GETIMPORT                        R10 K18 [NumberRange.new]
       98 LOADN                            R11 0
       99 LOADN                            R12 10
      100 CALL                             R10 2 -1
      101 CALL                             R8 -1 1
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R9 R9 K14 ["useReplicatedStateListener"]
      105 LOADK                            R10 K19 ["NativeGraphContext_GraphPayloadGraphRect"]
      106 GETIMPORT                        R11 K21 [Rect.new]
      108 LOADN                            R12 0
      109 LOADN                            R13 0
      110 LOADN                            R14 0
      111 LOADN                            R15 0
      112 CALL                             R11 4 -1
      113 CALL                             R9 -1 1
      114 GETUPVAL                         R10 5
      115 GETTABLEKS                       R10 R10 K14 ["useReplicatedStateListener"]
      117 LOADK                            R11 K22 ["NativeGraphContext_SourceAssetId"]
      118 LOADNIL                          R12
      119 CALL                             R10 2 1
      120 GETUPVAL                         R12 6
      121 CALL                             R12 0 1
      122 JUMPIFNOT                        R12 ; [+2]
      123 LOADK                            R11 K23 [""]
      124 JUMP                             ; [+6]
      125 GETUPVAL                         R11 5
      126 GETTABLEKS                       R11 R11 K14 ["useReplicatedStateListener"]
      128 LOADK                            R12 K24 ["NativeGraphContext_CurrentAnimationId"]
      129 LOADK                            R13 K23 [""]
      130 CALL                             R11 2 1
      131 GETUPVAL                         R13 6
      132 CALL                             R13 0 1
      133 JUMPIFNOT                        R13 ; [+7]
      134 GETUPVAL                         R12 5
      135 GETTABLEKS                       R12 R12 K14 ["useReplicatedStateListener"]
      137 LOADK                            R13 K25 ["NativeGraphContext_SelectedGraphKey"]
      138 LOADNIL                          R14
      139 CALL                             R12 2 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R12
      142 GETUPVAL                         R13 7
      143 GETTABLEKS                       R13 R13 K26 ["createComputed"]
      145 DUPCLOSURE                       R14 K27 [PROTO_74]
      146 CALL                             R13 1 1
      147 GETUPVAL                         R14 8
      148 MOVE                             R15 R2
      149 MOVE                             R16 R1
      150 CALL                             R14 2 1
      151 GETUPVAL                         R16 1
      152 CALL                             R16 0 1
      153 JUMPIFNOT                        R16 ; [+2]
      154 LOADNIL                          R15
      155 JUMP                             ; [+5]
      156 GETUPVAL                         R15 9
      157 GETTABLEKS                       R15 R15 K28 ["useSignalState"]
      159 MOVE                             R16 R5
      160 CALL                             R15 1 1
      161 GETUPVAL                         R16 5
      162 GETTABLEKS                       R16 R16 K29 ["useBoundAction"]
      164 LOADK                            R17 K30 ["NativeGraphContext_ReorderPinsAsync"]
      165 CALL                             R16 1 1
      166 GETUPVAL                         R17 5
      167 GETTABLEKS                       R17 R17 K29 ["useBoundAction"]
      169 LOADK                            R18 K31 ["NativeGraphContext_CreateNode"]
      170 CALL                             R17 1 1
      171 GETUPVAL                         R18 5
      172 GETTABLEKS                       R18 R18 K29 ["useBoundAction"]
      174 LOADK                            R19 K32 ["NativeGraphContext_CreateParameterAsync"]
      175 CALL                             R18 1 1
      176 GETUPVAL                         R19 5
      177 GETTABLEKS                       R19 R19 K29 ["useBoundAction"]
      179 LOADK                            R20 K33 ["NativeGraphContext_CreateConnectedParameterAsync"]
      180 CALL                             R19 1 1
      181 GETUPVAL                         R20 5
      182 GETTABLEKS                       R20 R20 K29 ["useBoundAction"]
      184 LOADK                            R21 K34 ["NativeGraphContext_CreateExistingParameterAsync"]
      185 CALL                             R20 1 1
      186 GETUPVAL                         R21 5
      187 GETTABLEKS                       R21 R21 K29 ["useBoundAction"]
      189 LOADK                            R22 K35 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      190 CALL                             R21 1 1
      191 GETUPVAL                         R22 5
      192 GETTABLEKS                       R22 R22 K29 ["useBoundAction"]
      194 LOADK                            R23 K36 ["NativeGraphContext_SelectNodes"]
      195 CALL                             R22 1 1
      196 GETUPVAL                         R23 5
      197 GETTABLEKS                       R23 R23 K29 ["useBoundAction"]
      199 LOADK                            R24 K37 ["NativeGraphContext_SetNodePositionsAsync"]
      200 CALL                             R23 1 1
      201 GETUPVAL                         R24 5
      202 GETTABLEKS                       R24 R24 K29 ["useBoundAction"]
      204 LOADK                            R25 K38 ["NativeGraphContext_SetNodeSizeAsync"]
      205 CALL                             R24 1 1
      206 GETUPVAL                         R25 5
      207 GETTABLEKS                       R25 R25 K29 ["useBoundAction"]
      209 LOADK                            R26 K39 ["NativeGraphContext_SetNodeConnectionAsync"]
      210 CALL                             R25 1 1
      211 GETUPVAL                         R26 5
      212 GETTABLEKS                       R26 R26 K29 ["useBoundAction"]
      214 LOADK                            R27 K40 ["NativeGraphContext_DeleteNodeInput"]
      215 CALL                             R26 1 1
      216 GETUPVAL                         R27 5
      217 GETTABLEKS                       R27 R27 K29 ["useBoundAction"]
      219 LOADK                            R28 K41 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      220 CALL                             R27 1 1
      221 GETUPVAL                         R28 5
      222 GETTABLEKS                       R28 R28 K29 ["useBoundAction"]
      224 LOADK                            R29 K42 ["NativeGraphContext_RemoveNodeInputConnection"]
      225 CALL                             R28 1 1
      226 GETUPVAL                         R29 5
      227 GETTABLEKS                       R29 R29 K29 ["useBoundAction"]
      229 LOADK                            R30 K43 ["NativeGraphContext_RemoveParameterAsync"]
      230 CALL                             R29 1 1
      231 GETUPVAL                         R30 5
      232 GETTABLEKS                       R30 R30 K29 ["useBoundAction"]
      234 LOADK                            R31 K44 ["NativeGraphContext_RenameNodeAsync"]
      235 CALL                             R30 1 1
      236 GETUPVAL                         R31 5
      237 GETTABLEKS                       R31 R31 K29 ["useBoundAction"]
      239 LOADK                            R32 K45 ["NativeGraphContext_RenameParameterAsync"]
      240 CALL                             R31 1 1
      241 GETUPVAL                         R32 5
      242 GETTABLEKS                       R32 R32 K29 ["useBoundAction"]
      244 LOADK                            R33 K46 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      245 CALL                             R32 1 1
      246 GETUPVAL                         R33 5
      247 GETTABLEKS                       R33 R33 K29 ["useBoundAction"]
      249 LOADK                            R34 K47 ["NativeGraphContext_ShowNodeInExplorer"]
      250 CALL                             R33 1 1
      251 GETUPVAL                         R34 5
      252 GETTABLEKS                       R34 R34 K29 ["useBoundAction"]
      254 LOADK                            R35 K48 ["NativeGraphContext_SetCollapsedAsync"]
      255 CALL                             R34 1 1
      256 GETUPVAL                         R36 10
      257 GETTABLEKS                       R36 R36 K49 ["FFlagAnimGraphUI_DynamicZIndex"]
      259 JUMPIFNOT                        R36 ; [+5]
      260 GETUPVAL                         R35 11
      261 GETTABLEKS                       R35 R35 K50 ["useConsumer"]
      263 CALL                             R35 0 1
      264 JUMP                             ; [+1]
      265 LOADNIL                          R35
      266 GETUPVAL                         R36 5
      267 GETTABLEKS                       R36 R36 K29 ["useBoundAction"]
      269 LOADK                            R37 K51 ["NativeGraphContext_setNodePropertyAsync"]
      270 CALL                             R36 1 1
      271 GETUPVAL                         R37 5
      272 GETTABLEKS                       R37 R37 K29 ["useBoundAction"]
      274 LOADK                            R38 K52 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      275 CALL                             R37 1 1
      276 GETUPVAL                         R38 5
      277 GETTABLEKS                       R38 R38 K29 ["useBoundAction"]
      279 LOADK                            R39 K53 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      280 CALL                             R38 1 1
      281 GETUPVAL                         R39 5
      282 GETTABLEKS                       R39 R39 K29 ["useBoundAction"]
      284 LOADK                            R40 K54 ["NativeGraphContext_SelectNodesFromRect"]
      285 CALL                             R39 1 1
      286 GETUPVAL                         R40 5
      287 GETTABLEKS                       R40 R40 K29 ["useBoundAction"]
      289 LOADK                            R41 K55 ["NativeGraphContext_DuplicateSelectedNodes"]
      290 CALL                             R40 1 1
      291 GETUPVAL                         R41 5
      292 GETTABLEKS                       R41 R41 K29 ["useBoundAction"]
      294 LOADK                            R42 K56 ["NativeGraphContext_SelectAllNodes"]
      295 CALL                             R41 1 1
      296 GETUPVAL                         R42 5
      297 GETTABLEKS                       R42 R42 K29 ["useBoundAction"]
      299 LOADK                            R43 K57 ["NativeGraphContext_ClearNodeSelection"]
      300 CALL                             R42 1 1
      301 GETUPVAL                         R43 5
      302 GETTABLEKS                       R43 R43 K29 ["useBoundAction"]
      304 LOADK                            R44 K58 ["NativeGraphContext_CopySelectedNodes"]
      305 CALL                             R43 1 1
      306 GETUPVAL                         R44 5
      307 GETTABLEKS                       R44 R44 K29 ["useBoundAction"]
      309 LOADK                            R45 K59 ["NativeGraphContext_CutSelectedNodes"]
      310 CALL                             R44 1 1
      311 GETUPVAL                         R45 5
      312 GETTABLEKS                       R45 R45 K29 ["useBoundAction"]
      314 LOADK                            R46 K60 ["NativeGraphContext_PasteNodes"]
      315 CALL                             R45 1 1
      316 GETUPVAL                         R46 12
      317 GETTABLEKS                       R46 R46 K50 ["useConsumer"]
      319 CALL                             R46 0 1
      320 GETUPVAL                         R47 5
      321 GETTABLEKS                       R47 R47 K29 ["useBoundAction"]
      323 LOADK                            R48 K61 ["NativeGraphContext_beginUndoTransaction"]
      324 CALL                             R47 1 1
      325 GETUPVAL                         R48 5
      326 GETTABLEKS                       R48 R48 K29 ["useBoundAction"]
      328 LOADK                            R49 K62 ["NativeGraphContext_finishUndoTransaction"]
      329 CALL                             R48 1 1
      330 GETUPVAL                         R49 5
      331 GETTABLEKS                       R49 R49 K29 ["useBoundAction"]
      333 LOADK                            R50 K63 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      334 CALL                             R49 1 1
      335 NEWTABLE                         R50 64 0
      337 GETUPVAL                         R52 1
      338 CALL                             R52 0 1
      339 JUMPIFNOT                        R52 ; [+2]
      340 LOADNIL                          R51
      341 JUMP                             ; [+1]
      342 MOVE                             R51 R15
      343 SETTABLEKS                       R51 R50 K64 ["selectedGraphInstanceId_DEPRECATED"]
      345 SETTABLEKS                       R16 R50 K65 ["reorderPinsAsync"]
      347 SETTABLEKS                       R17 R50 K66 ["createNodeAsync"]
      349 SETTABLEKS                       R18 R50 K67 ["createParameterAsync"]
      351 SETTABLEKS                       R19 R50 K68 ["createConnectedParameterAsync"]
      353 SETTABLEKS                       R20 R50 K69 ["createExistingParameterAsync"]
      355 SETTABLEKS                       R9 R50 K70 ["graphRect"]
      357 SETTABLEKS                       R21 R50 K71 ["selectAllParameterNodesWithNameAsync"]
      359 SETTABLEKS                       R22 R50 K72 ["selectNodesAsync"]
      361 SETTABLEKS                       R39 R50 K73 ["selectNodesFromRectAsync"]
      363 NEWCLOSURE                       R51 P4
      364 CAPTURE                          VAL R46
      365 SETTABLEKS                       R51 R50 K74 ["removeSelectedNodesAsync"]
      367 SETTABLEKS                       R40 R50 K75 ["duplicateSelectedNodesAsync"]
      369 SETTABLEKS                       R41 R50 K76 ["selectAllNodesAsync"]
      371 SETTABLEKS                       R42 R50 K77 ["clearNodeSelectionAsync"]
      373 SETTABLEKS                       R43 R50 K78 ["copySelectedNodesAsync"]
      375 SETTABLEKS                       R44 R50 K79 ["cutSelectedNodesAsync"]
      377 SETTABLEKS                       R45 R50 K80 ["pasteNodesAsync"]
      379 SETTABLEKS                       R23 R50 K81 ["setNodePositionsAsync"]
      381 SETTABLEKS                       R24 R50 K82 ["setNodeSizeAsync"]
      383 SETTABLEKS                       R25 R50 K83 ["setNodeConnectionAsync"]
      385 SETTABLEKS                       R26 R50 K84 ["deleteNodeInput"]
      387 SETTABLEKS                       R27 R50 K85 ["removeNodeOutputConnectionAsync"]
      389 SETTABLEKS                       R28 R50 K86 ["removeNodeInputConnectionAsync"]
      391 SETTABLEKS                       R29 R50 K87 ["removeParameterAsync"]
      393 SETTABLEKS                       R30 R50 K88 ["renameNodeAsync"]
      395 SETTABLEKS                       R31 R50 K89 ["renameParameterAsync"]
      397 SETTABLEKS                       R32 R50 K90 ["deleteNodeInstanceAsync"]
      399 SETTABLEKS                       R33 R50 K91 ["showNodeInExplorerAsync"]
      401 SETTABLEKS                       R34 R50 K92 ["setCollapsedAsync"]
      403 SETTABLEKS                       R36 R50 K93 ["setNodePropertyAsync"]
      405 SETTABLEKS                       R37 R50 K94 ["setInputPinNodePropertyAsync"]
      407 SETTABLEKS                       R49 R50 K95 ["setExpressionNodeValueAsync"]
      409 SETTABLEKS                       R38 R50 K96 ["setParameterNodeTypeAsync"]
      411 SETTABLEKS                       R11 R50 K97 ["currentAnimationId"]
      413 SETTABLEKS                       R10 R50 K98 ["sourceAssetId"]
      415 SETTABLEKS                       R12 R50 K99 ["selectedGraphKey"]
      417 GETUPVAL                         R52 1
      418 CALL                             R52 0 1
      419 JUMPIFNOT                        R52 ; [+2]
      420 LOADNIL                          R51
      421 JUMP                             ; [+1]
      422 MOVE                             R51 R13
      423 SETTABLEKS                       R51 R50 K100 ["observeSelectedGraphInstance_DEPRECATED"]
      425 GETTABLEKS                       R51 R1 K101 ["observe"]
      427 SETTABLEKS                       R51 R50 K102 ["observeGraphNodeById"]
      429 GETTABLEKS                       R51 R2 K101 ["observe"]
      431 SETTABLEKS                       R51 R50 K103 ["observeNodeRenderInfoById"]
      433 SETTABLEKS                       R47 R50 K104 ["beginUndoTransaction"]
      435 SETTABLEKS                       R48 R50 K105 ["finishUndoTransaction"]
      437 GETTABLEKS                       R51 R1 K106 ["observeMap"]
      439 SETTABLEKS                       R51 R50 K107 ["observeGraphNodeMap"]
      441 GETTABLEKS                       R51 R2 K106 ["observeMap"]
      443 SETTABLEKS                       R51 R50 K108 ["observeRenderInfoMap"]
      445 GETTABLEKS                       R51 R14 K109 ["hasGraphOutput"]
      447 SETTABLEKS                       R51 R50 K109 ["hasGraphOutput"]
      449 GETTABLEKS                       R51 R3 K101 ["observe"]
      451 SETTABLEKS                       R51 R50 K110 ["observeNodePropsById"]
      453 SETTABLEKS                       R7 R50 K111 ["observeNonPromotedExpressionNodes"]
      455 DUPCLOSURE                       R51 K112 [PROTO_77]
      456 GETUPVAL                         R52 2
      457 GETTABLEKS                       R52 R52 K0 ["useContext"]
      459 GETUPVAL                         R53 13
      460 GETTABLEKS                       R53 R53 K1 ["Context"]
      462 CALL                             R52 1 1
      463 GETUPVAL                         R53 2
      464 GETTABLEKS                       R53 R53 K6 ["useCallback"]
      466 NEWCLOSURE                       R54 P6
      467 CAPTURE                          UPVAL U1
      468 CAPTURE                          UPVAL U14
      469 CAPTURE                          VAL R52
      470 CAPTURE                          UPVAL U15
      471 NEWTABLE                         R55 0 2
      473 GETUPVAL                         R57 1
      474 CALL                             R57 0 1
      475 JUMPIFNOT                        R57 ; [+3]
      476 GETTABLEKS                       R56 R52 K113 ["observeDebugData"]
      478 JUMP                             ; [+2]
      479 GETTABLEKS                       R56 R52 K114 ["observeDebugData_DEPRECATED"]
      481 GETUPVAL                         R58 1
      482 CALL                             R58 0 1
      483 JUMPIFNOT                        R58 ; [+3]
      484 GETTABLEKS                       R57 R52 K115 ["observeActiveDebugTargetIdentifier"]
      486 JUMP                             ; [+1]
      487 LOADNIL                          R57
      488 SETLIST                          R55 R56 2 [1]
      490 CALL                             R53 2 1
      491 GETUPVAL                         R54 2
      492 GETTABLEKS                       R54 R54 K6 ["useCallback"]
      494 NEWCLOSURE                       R55 P7
      495 CAPTURE                          UPVAL U14
      496 CAPTURE                          VAL R52
      497 CAPTURE                          UPVAL U15
      498 NEWTABLE                         R56 0 2
      500 GETTABLEKS                       R57 R52 K113 ["observeDebugData"]
      502 GETTABLEKS                       R58 R52 K115 ["observeActiveDebugTargetIdentifier"]
      504 SETLIST                          R56 R57 2 [1]
      506 CALL                             R54 2 1
      507 GETUPVAL                         R55 2
      508 GETTABLEKS                       R55 R55 K6 ["useCallback"]
      510 NEWCLOSURE                       R56 P8
      511 CAPTURE                          UPVAL U1
      512 CAPTURE                          VAL R54
      513 CAPTURE                          UPVAL U7
      514 CAPTURE                          VAL R52
      515 CAPTURE                          UPVAL U10
      516 NEWTABLE                         R57 0 2
      518 GETUPVAL                         R59 1
      519 CALL                             R59 0 1
      520 JUMPIFNOT                        R59 ; [+2]
      521 LOADNIL                          R58
      522 JUMP                             ; [+2]
      523 GETTABLEKS                       R58 R52 K114 ["observeDebugData_DEPRECATED"]
      525 GETUPVAL                         R60 1
      526 CALL                             R60 0 1
      527 JUMPIFNOT                        R60 ; [+2]
      528 MOVE                             R59 R54
      529 JUMP                             ; [+1]
      530 LOADNIL                          R59
      531 SETLIST                          R57 R58 2 [1]
      533 CALL                             R55 2 1
      534 GETUPVAL                         R56 2
      535 GETTABLEKS                       R56 R56 K6 ["useCallback"]
      537 NEWCLOSURE                       R57 P9
      538 CAPTURE                          UPVAL U1
      539 CAPTURE                          VAL R54
      540 CAPTURE                          UPVAL U7
      541 CAPTURE                          VAL R52
      542 NEWTABLE                         R58 0 2
      544 GETUPVAL                         R60 1
      545 CALL                             R60 0 1
      546 JUMPIFNOT                        R60 ; [+2]
      547 LOADNIL                          R59
      548 JUMP                             ; [+2]
      549 GETTABLEKS                       R59 R52 K114 ["observeDebugData_DEPRECATED"]
      551 GETUPVAL                         R61 1
      552 CALL                             R61 0 1
      553 JUMPIFNOT                        R61 ; [+2]
      554 MOVE                             R60 R54
      555 JUMP                             ; [+1]
      556 LOADNIL                          R60
      557 SETLIST                          R58 R59 2 [1]
      559 CALL                             R56 2 1
      560 GETUPVAL                         R57 2
      561 GETTABLEKS                       R57 R57 K6 ["useCallback"]
      563 NEWCLOSURE                       R58 P10
      564 CAPTURE                          UPVAL U7
      565 CAPTURE                          VAL R1
      566 NEWTABLE                         R59 0 1
      568 GETTABLEKS                       R60 R1 K106 ["observeMap"]
      570 SETLIST                          R59 R60 1 [1]
      572 CALL                             R57 2 1
      573 GETUPVAL                         R58 16
      574 GETTABLEKS                       R58 R58 K50 ["useConsumer"]
      576 CALL                             R58 0 1
      577 GETUPVAL                         R60 1
      578 CALL                             R60 0 1
      579 JUMPIFNOT                        R60 ; [+7]
      580 GETUPVAL                         R59 9
      581 GETTABLEKS                       R59 R59 K28 ["useSignalState"]
      583 GETTABLEKS                       R60 R4 K116 ["observeSelectedGraphIsEphemeral"]
      585 CALL                             R59 1 1
      586 JUMP                             ; [+1]
      587 LOADNIL                          R59
      588 GETUPVAL                         R60 2
      589 GETTABLEKS                       R60 R60 K2 ["useMemo"]
      591 NEWCLOSURE                       R61 P11
      592 CAPTURE                          VAL R1
      593 CAPTURE                          VAL R2
      594 CAPTURE                          UPVAL U1
      595 CAPTURE                          VAL R59
      596 CAPTURE                          VAL R58
      597 CAPTURE                          VAL R16
      598 CAPTURE                          VAL R18
      599 CAPTURE                          VAL R20
      600 CAPTURE                          VAL R19
      601 CAPTURE                          VAL R21
      602 CAPTURE                          VAL R22
      603 CAPTURE                          VAL R34
      604 CAPTURE                          UPVAL U10
      605 CAPTURE                          VAL R35
      606 CAPTURE                          VAL R26
      607 CAPTURE                          VAL R28
      608 CAPTURE                          VAL R27
      609 CAPTURE                          VAL R29
      610 CAPTURE                          VAL R30
      611 CAPTURE                          VAL R31
      612 CAPTURE                          VAL R32
      613 CAPTURE                          VAL R46
      614 CAPTURE                          VAL R25
      615 CAPTURE                          VAL R23
      616 CAPTURE                          VAL R36
      617 CAPTURE                          VAL R37
      618 CAPTURE                          VAL R24
      619 CAPTURE                          VAL R38
      620 CAPTURE                          VAL R3
      621 CAPTURE                          VAL R53
      622 CAPTURE                          VAL R55
      623 CAPTURE                          VAL R56
      624 CAPTURE                          VAL R57
      625 NEWTABLE                         R62 0 31
      627 MOVE                             R63 R1
      628 MOVE                             R64 R2
      629 MOVE                             R65 R58
      630 MOVE                             R66 R16
      631 MOVE                             R67 R18
      632 MOVE                             R68 R20
      633 MOVE                             R69 R19
      634 MOVE                             R70 R21
      635 MOVE                             R71 R22
      636 MOVE                             R72 R34
      637 MOVE                             R73 R35
      638 MOVE                             R74 R26
      639 MOVE                             R75 R28
      640 MOVE                             R76 R27
      641 MOVE                             R77 R29
      642 MOVE                             R78 R30
      643 SETLIST                          R62 R63 16 [1]
      645 MOVE                             R63 R31
      646 MOVE                             R64 R32
      647 MOVE                             R65 R46
      648 MOVE                             R66 R25
      649 MOVE                             R67 R23
      650 MOVE                             R68 R36
      651 MOVE                             R69 R37
      652 MOVE                             R70 R24
      653 MOVE                             R71 R38
      654 GETTABLEKS                       R72 R3 K101 ["observe"]
      656 MOVE                             R73 R53
      657 MOVE                             R74 R55
      658 MOVE                             R75 R56
      659 MOVE                             R76 R59
      660 MOVE                             R77 R57
      661 SETLIST                          R62 R63 15 [17]
      663 CALL                             R60 2 1
      664 GETUPVAL                         R61 2
      665 GETTABLEKS                       R61 R61 K117 ["createElement"]
      667 GETUPVAL                         R62 17
      668 GETTABLEKS                       R62 R62 K118 ["Provider"]
      670 DUPTABLE                         R63 K120 [{"value"}]
      671 SETTABLEKS                       R50 R63 K119 ["value"]
      673 DUPTABLE                         R64 K122 [{"ContextStack"}]
      674 GETUPVAL                         R65 2
      675 GETTABLEKS                       R65 R65 K117 ["createElement"]
      677 GETUPVAL                         R66 18
      678 GETTABLEKS                       R66 R66 K121 ["ContextStack"]
      680 DUPTABLE                         R67 K124 [{"providers"}]
      681 NEWTABLE                         R68 0 3
      683 GETUPVAL                         R69 2
      684 GETTABLEKS                       R69 R69 K117 ["createElement"]
      686 GETUPVAL                         R70 10
      687 GETTABLEKS                       R70 R70 K125 ["GraphContext"]
      689 GETTABLEKS                       R70 R70 K118 ["Provider"]
      691 DUPTABLE                         R71 K120 [{"value"}]
      692 SETTABLEKS                       R60 R71 K119 ["value"]
      694 CALL                             R69 2 1
      695 GETUPVAL                         R70 2
      696 GETTABLEKS                       R70 R70 K117 ["createElement"]
      698 GETUPVAL                         R71 19
      699 GETTABLEKS                       R71 R71 K126 ["UIDataModelProvider"]
      701 CALL                             R70 1 1
      702 GETUPVAL                         R71 2
      703 GETTABLEKS                       R71 R71 K117 ["createElement"]
      705 GETUPVAL                         R72 20
      706 GETTABLEKS                       R72 R72 K118 ["Provider"]
      708 DUPTABLE                         R73 K128 [{"timeRange"}]
      709 SETTABLEKS                       R8 R73 K127 ["timeRange"]
      711 CALL                             R71 2 -1
      712 SETLIST                          R68 R69 -1 [1]
      714 SETTABLEKS                       R68 R67 K123 ["providers"]
      716 GETTABLEKS                       R68 R0 K129 ["children"]
      718 CALL                             R65 3 1
      719 SETTABLEKS                       R65 R64 K121 ["ContextStack"]
      721 CALL                             R61 3 -1
      722 CLOSEUPVALS                      R6
      723 RETURN                           R61 -1

PROTO_93:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_94:
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

PROTO_95:
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

PROTO_96:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_95]
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
       43 GETTABLEKS                       R7 R7 K16 ["GraphDebugDataContext"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       50 GETTABLEKS                       R8 R8 K16 ["GraphDebugDataContext"]
       52 GETTABLEKS                       R8 R8 K17 ["GraphDebugDataUtils"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K18 ["InstanceRegistryContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K14 ["Util"]
       66 GETTABLEKS                       R10 R10 K19 ["Instances"]
       68 GETTABLEKS                       R10 R10 K20 ["InstanceSelectionRegistry"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Contexts"]
       75 GETTABLEKS                       R11 R11 K21 ["NativeGraphContext"]
       77 GETTABLEKS                       R11 R11 K22 ["NativeGraphUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K11 [require]
       82 GETTABLEKS                       R12 R0 K14 ["Util"]
       84 GETTABLEKS                       R12 R12 K23 ["Networking"]
       86 GETTABLEKS                       R12 R12 K24 ["NetworkUtils"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K11 [require]
       91 GETTABLEKS                       R13 R0 K25 ["Parent"]
       93 GETTABLEKS                       R13 R13 K26 ["NodeGraphing"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K11 [require]
       98 GETTABLEKS                       R14 R0 K12 ["Contexts"]
      100 GETTABLEKS                       R14 R14 K27 ["NodeSelectionContext"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K11 [require]
      105 GETTABLEKS                       R15 R0 K28 ["NodeViewTypes"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K11 [require]
      110 GETTABLEKS                       R16 R0 K12 ["Contexts"]
      112 GETTABLEKS                       R16 R16 K29 ["PasteHookContext"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K11 [require]
      117 GETTABLEKS                       R17 R0 K25 ["Parent"]
      119 GETTABLEKS                       R17 R17 K30 ["React"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K11 [require]
      124 GETTABLEKS                       R18 R0 K25 ["Parent"]
      126 GETTABLEKS                       R18 R18 K31 ["ReactUtils"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K11 [require]
      131 GETTABLEKS                       R19 R0 K12 ["Contexts"]
      133 GETTABLEKS                       R19 R19 K32 ["SelectedGraphContext"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K11 [require]
      138 GETTABLEKS                       R20 R0 K12 ["Contexts"]
      140 GETTABLEKS                       R20 R20 K33 ["SelectionServiceContext"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K11 [require]
      145 GETTABLEKS                       R21 R0 K14 ["Util"]
      147 GETTABLEKS                       R21 R21 K34 ["Signals"]
      149 GETTABLEKS                       R21 R21 K35 ["Experimental"]
      151 GETTABLEKS                       R21 R21 K36 ["SignalExperimentalUtils"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K11 [require]
      156 GETTABLEKS                       R22 R0 K25 ["Parent"]
      158 GETTABLEKS                       R22 R22 K34 ["Signals"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K11 [require]
      163 GETTABLEKS                       R23 R0 K14 ["Util"]
      165 GETTABLEKS                       R23 R23 K34 ["Signals"]
      167 GETTABLEKS                       R23 R23 K35 ["Experimental"]
      169 GETTABLEKS                       R23 R23 K36 ["SignalExperimentalUtils"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K11 [require]
      174 GETTABLEKS                       R24 R0 K14 ["Util"]
      176 GETTABLEKS                       R24 R24 K34 ["Signals"]
      178 GETTABLEKS                       R24 R24 K37 ["SignalsInstanceUtils"]
      180 CALL                             R23 1 1
      181 GETIMPORT                        R24 K11 [require]
      183 GETTABLEKS                       R25 R0 K25 ["Parent"]
      185 GETTABLEKS                       R25 R25 K38 ["SignalsReact"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K11 [require]
      190 GETTABLEKS                       R26 R0 K12 ["Contexts"]
      192 GETTABLEKS                       R26 R26 K39 ["SpotlightedNodeContext"]
      194 CALL                             R25 1 1
      195 GETIMPORT                        R26 K11 [require]
      197 GETTABLEKS                       R27 R0 K40 ["Components"]
      199 GETTABLEKS                       R27 R27 K41 ["NodeView"]
      201 GETTABLEKS                       R27 R27 K42 ["StateMachine"]
      203 GETTABLEKS                       R27 R27 K43 ["StateMachineMaterializer"]
      205 CALL                             R26 1 1
      206 GETIMPORT                        R27 K11 [require]
      208 GETTABLEKS                       R28 R0 K12 ["Contexts"]
      210 GETTABLEKS                       R28 R28 K44 ["TimeRangeContext"]
      212 CALL                             R27 1 1
      213 GETIMPORT                        R28 K11 [require]
      215 GETTABLEKS                       R29 R0 K45 ["Flags"]
      217 GETTABLEKS                       R29 R29 K46 ["getFFlagAnimGraphCreateSAScript"]
      219 CALL                             R28 1 1
      220 GETIMPORT                        R29 K11 [require]
      222 GETTABLEKS                       R30 R0 K45 ["Flags"]
      224 GETTABLEKS                       R30 R30 K47 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      226 CALL                             R29 1 1
      227 GETIMPORT                        R30 K11 [require]
      229 GETTABLEKS                       R31 R0 K45 ["Flags"]
      231 GETTABLEKS                       R31 R31 K48 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      233 CALL                             R30 1 1
      234 GETIMPORT                        R31 K11 [require]
      236 GETTABLEKS                       R32 R0 K45 ["Flags"]
      238 GETTABLEKS                       R32 R32 K49 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      240 CALL                             R31 1 1
      241 GETIMPORT                        R32 K11 [require]
      243 GETTABLEKS                       R33 R0 K45 ["Flags"]
      245 GETTABLEKS                       R33 R33 K50 ["getFFlagAnimGraphUI_RunTimeDebug"]
      247 CALL                             R32 1 1
      248 GETIMPORT                        R33 K11 [require]
      250 GETTABLEKS                       R34 R0 K45 ["Flags"]
      252 GETTABLEKS                       R34 R34 K51 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      254 CALL                             R33 1 1
      255 GETIMPORT                        R34 K11 [require]
      257 GETTABLEKS                       R35 R0 K14 ["Util"]
      259 GETTABLEKS                       R35 R35 K52 ["parseAnimationNodeType"]
      261 CALL                             R34 1 1
      262 GETIMPORT                        R35 K11 [require]
      264 GETTABLEKS                       R36 R0 K14 ["Util"]
      266 GETTABLEKS                       R36 R36 K53 ["sanitizeParameterNames"]
      268 CALL                             R35 1 1
      269 GETIMPORT                        R36 K11 [require]
      271 GETTABLEKS                       R37 R0 K40 ["Components"]
      273 GETTABLEKS                       R37 R37 K41 ["NodeView"]
      275 GETTABLEKS                       R37 R37 K42 ["StateMachine"]
      277 GETTABLEKS                       R37 R37 K54 ["supportsStateMachineNode"]
      279 CALL                             R36 1 1
      280 GETIMPORT                        R37 K11 [require]
      282 GETIMPORT                        R38 K1 [script]
      284 GETTABLEKS                       R38 R38 K55 ["useGraphAnalytics"]
      286 CALL                             R37 1 1
      287 GETIMPORT                        R38 K11 [require]
      289 GETTABLEKS                       R39 R0 K56 ["Hooks"]
      291 GETTABLEKS                       R39 R39 K57 ["useNodeDefinitionDestroyHelper"]
      293 CALL                             R38 1 1
      294 GETIMPORT                        R39 K11 [require]
      296 GETTABLEKS                       R40 R0 K56 ["Hooks"]
      298 GETTABLEKS                       R40 R40 K58 ["useObserveNodeSelection"]
      300 CALL                             R39 1 1
      301 GETIMPORT                        R40 K11 [require]
      303 GETTABLEKS                       R41 R0 K56 ["Hooks"]
      305 GETTABLEKS                       R41 R41 K59 ["useObserveSelection"]
      307 CALL                             R40 1 1
      308 GETIMPORT                        R41 K11 [require]
      310 GETTABLEKS                       R42 R0 K56 ["Hooks"]
      312 GETTABLEKS                       R42 R42 K60 ["useParameterDestroyHelper"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K11 [require]
      317 GETTABLEKS                       R43 R0 K56 ["Hooks"]
      319 GETTABLEKS                       R43 R43 K61 ["useSignalDispatcher"]
      321 CALL                             R42 1 1
      322 NEWTABLE                         R43 64 0
      324 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      326 LOADK                            R45 K63 ["observeGraphNodeMap"]
      327 CALL                             R44 1 1
      328 SETTABLEKS                       R44 R43 K63 ["observeGraphNodeMap"]
      330 GETIMPORT                        R44 K66 [Rect.new]
      332 LOADN                            R45 0
      333 LOADN                            R46 0
      334 LOADN                            R47 0
      335 LOADN                            R48 0
      336 CALL                             R44 4 1
      337 SETTABLEKS                       R44 R43 K67 ["graphRect"]
      339 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      341 LOADK                            R45 K68 ["reorderPinsAsync"]
      342 CALL                             R44 1 1
      343 SETTABLEKS                       R44 R43 K68 ["reorderPinsAsync"]
      345 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      347 LOADK                            R45 K69 ["createNodeAsync"]
      348 CALL                             R44 1 1
      349 SETTABLEKS                       R44 R43 K69 ["createNodeAsync"]
      351 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      353 LOADK                            R45 K70 ["createParameterAsync"]
      354 CALL                             R44 1 1
      355 SETTABLEKS                       R44 R43 K70 ["createParameterAsync"]
      357 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      359 LOADK                            R45 K71 ["createConnectedParameterAsync"]
      360 CALL                             R44 1 1
      361 SETTABLEKS                       R44 R43 K71 ["createConnectedParameterAsync"]
      363 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      365 LOADK                            R45 K72 ["createExistingParameterAsync"]
      366 CALL                             R44 1 1
      367 SETTABLEKS                       R44 R43 K72 ["createExistingParameterAsync"]
      369 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      371 LOADK                            R45 K73 ["selectAllParameterNodesWithNameAsync"]
      372 CALL                             R44 1 1
      373 SETTABLEKS                       R44 R43 K73 ["selectAllParameterNodesWithNameAsync"]
      375 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      377 LOADK                            R45 K74 ["selectNodesAsync"]
      378 CALL                             R44 1 1
      379 SETTABLEKS                       R44 R43 K74 ["selectNodesAsync"]
      381 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      383 LOADK                            R45 K75 ["selectNodesFromRectAsync"]
      384 CALL                             R44 1 1
      385 SETTABLEKS                       R44 R43 K75 ["selectNodesFromRectAsync"]
      387 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      389 LOADK                            R45 K76 ["removeSelectedNodesAsync"]
      390 CALL                             R44 1 1
      391 SETTABLEKS                       R44 R43 K76 ["removeSelectedNodesAsync"]
      393 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      395 LOADK                            R45 K77 ["duplicateSelectedNodesAsync"]
      396 CALL                             R44 1 1
      397 SETTABLEKS                       R44 R43 K77 ["duplicateSelectedNodesAsync"]
      399 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      401 LOADK                            R45 K78 ["selectAllNodesAsync"]
      402 CALL                             R44 1 1
      403 SETTABLEKS                       R44 R43 K78 ["selectAllNodesAsync"]
      405 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      407 LOADK                            R45 K79 ["clearNodeSelectionAsync"]
      408 CALL                             R44 1 1
      409 SETTABLEKS                       R44 R43 K79 ["clearNodeSelectionAsync"]
      411 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      413 LOADK                            R45 K80 ["copySelectedNodesAsync"]
      414 CALL                             R44 1 1
      415 SETTABLEKS                       R44 R43 K80 ["copySelectedNodesAsync"]
      417 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      419 LOADK                            R45 K81 ["cutSelectedNodesAsync"]
      420 CALL                             R44 1 1
      421 SETTABLEKS                       R44 R43 K81 ["cutSelectedNodesAsync"]
      423 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      425 LOADK                            R45 K82 ["pasteNodesAsync"]
      426 CALL                             R44 1 1
      427 SETTABLEKS                       R44 R43 K82 ["pasteNodesAsync"]
      429 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      431 LOADK                            R45 K83 ["setNodePositionsAsync"]
      432 CALL                             R44 1 1
      433 SETTABLEKS                       R44 R43 K83 ["setNodePositionsAsync"]
      435 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      437 LOADK                            R45 K84 ["setNodeSizeAsync"]
      438 CALL                             R44 1 1
      439 SETTABLEKS                       R44 R43 K84 ["setNodeSizeAsync"]
      441 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      443 LOADK                            R45 K85 ["deleteNodeInput"]
      444 CALL                             R44 1 1
      445 SETTABLEKS                       R44 R43 K85 ["deleteNodeInput"]
      447 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      449 LOADK                            R45 K86 ["removeNodeInputConnectionAsync"]
      450 CALL                             R44 1 1
      451 SETTABLEKS                       R44 R43 K86 ["removeNodeInputConnectionAsync"]
      453 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      455 LOADK                            R45 K87 ["removeNodeOutputConnectionAsync"]
      456 CALL                             R44 1 1
      457 SETTABLEKS                       R44 R43 K87 ["removeNodeOutputConnectionAsync"]
      459 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      461 LOADK                            R45 K88 ["removeParameterAsync"]
      462 CALL                             R44 1 1
      463 SETTABLEKS                       R44 R43 K88 ["removeParameterAsync"]
      465 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      467 LOADK                            R45 K89 ["renameNodeAsync"]
      468 CALL                             R44 1 1
      469 SETTABLEKS                       R44 R43 K89 ["renameNodeAsync"]
      471 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      473 LOADK                            R45 K90 ["renameParameterAsync"]
      474 CALL                             R44 1 1
      475 SETTABLEKS                       R44 R43 K90 ["renameParameterAsync"]
      477 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      479 LOADK                            R45 K91 ["deleteNodeInstanceAsync"]
      480 CALL                             R44 1 1
      481 SETTABLEKS                       R44 R43 K91 ["deleteNodeInstanceAsync"]
      483 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      485 LOADK                            R45 K92 ["showNodeInExplorerAsync"]
      486 CALL                             R44 1 1
      487 SETTABLEKS                       R44 R43 K92 ["showNodeInExplorerAsync"]
      489 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      491 LOADK                            R45 K93 ["setNewConnection"]
      492 CALL                             R44 1 1
      493 SETTABLEKS                       R44 R43 K94 ["setNodeConnectionAsync"]
      495 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      497 LOADK                            R45 K95 ["setCollapsedAsync"]
      498 CALL                             R44 1 1
      499 SETTABLEKS                       R44 R43 K95 ["setCollapsedAsync"]
      501 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      503 LOADK                            R45 K96 ["setNodePropertyAsync"]
      504 CALL                             R44 1 1
      505 SETTABLEKS                       R44 R43 K96 ["setNodePropertyAsync"]
      507 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      509 LOADK                            R45 K97 ["setInputPinNodePropertyAsync"]
      510 CALL                             R44 1 1
      511 SETTABLEKS                       R44 R43 K97 ["setInputPinNodePropertyAsync"]
      513 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      515 LOADK                            R45 K98 ["setParameterNodeTypeAsync"]
      516 CALL                             R44 1 1
      517 SETTABLEKS                       R44 R43 K98 ["setParameterNodeTypeAsync"]
      519 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      521 LOADK                            R45 K99 ["setExpressionNodeValueAsync"]
      522 CALL                             R44 1 1
      523 SETTABLEKS                       R44 R43 K99 ["setExpressionNodeValueAsync"]
      525 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      527 LOADK                            R45 K100 ["hasGraphOutput"]
      528 CALL                             R44 1 1
      529 SETTABLEKS                       R44 R43 K100 ["hasGraphOutput"]
      531 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      533 LOADK                            R45 K101 ["observeGraphNodeById"]
      534 CALL                             R44 1 1
      535 SETTABLEKS                       R44 R43 K101 ["observeGraphNodeById"]
      537 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      539 LOADK                            R45 K102 ["observeNodeRenderInfoById"]
      540 CALL                             R44 1 1
      541 SETTABLEKS                       R44 R43 K102 ["observeNodeRenderInfoById"]
      543 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      545 LOADK                            R45 K103 ["observeRenderInfoMap"]
      546 CALL                             R44 1 1
      547 SETTABLEKS                       R44 R43 K103 ["observeRenderInfoMap"]
      549 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      551 LOADK                            R45 K104 ["observeNodePropsById"]
      552 CALL                             R44 1 1
      553 SETTABLEKS                       R44 R43 K104 ["observeNodePropsById"]
      555 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      557 LOADK                            R45 K105 ["observeNonPromotedExpressionNodes"]
      558 CALL                             R44 1 1
      559 SETTABLEKS                       R44 R43 K105 ["observeNonPromotedExpressionNodes"]
      561 GETTABLEKS                       R44 R21 K106 ["createSignal"]
      563 LOADNIL                          R45
      564 CALL                             R44 1 1
      565 SETTABLEKS                       R44 R43 K107 ["observeSelectedGraphInstance_DEPRECATED"]
      567 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      569 LOADK                            R45 K108 ["beginUndoTransaction"]
      570 CALL                             R44 1 1
      571 SETTABLEKS                       R44 R43 K108 ["beginUndoTransaction"]
      573 GETTABLEKS                       R44 R17 K62 ["createUnimplemented"]
      575 LOADK                            R45 K109 ["finishUndoTransaction"]
      576 CALL                             R44 1 1
      577 SETTABLEKS                       R44 R43 K109 ["finishUndoTransaction"]
      579 LOADNIL                          R44
      580 SETTABLEKS                       R44 R43 K110 ["currentAnimationId"]
      582 LOADNIL                          R44
      583 SETTABLEKS                       R44 R43 K111 ["sourceAssetId"]
      585 LOADNIL                          R44
      586 SETTABLEKS                       R44 R43 K112 ["selectedGraphKey"]
      588 GETTABLEKS                       R44 R16 K113 ["createContext"]
      590 MOVE                             R45 R43
      591 CALL                             R44 1 1
      592 DUPTABLE                         R45 K134 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction", ["NON_PROMOTED_EXPRESSION_NODES"] = "NativeGraphContext_NonPromotedExpressionNodes"}]
      593 NEWTABLE                         R46 64 0
      595 LOADK                            R47 K135 ["NativeGraphContext_CreateNode"]
      596 SETTABLEKS                       R47 R46 K136 ["CREATE_NODE"]
      598 LOADK                            R47 K137 ["NativeGraphContext_CreateParameterAsync"]
      599 SETTABLEKS                       R47 R46 K138 ["CREATE_PARAMETER"]
      601 LOADK                            R47 K139 ["NativeGraphContext_CreateConnectedParameterAsync"]
      602 SETTABLEKS                       R47 R46 K140 ["CREATE_CONNECTED_PARAMETER"]
      604 LOADK                            R47 K141 ["NativeGraphContext_CreateExistingParameterAsync"]
      605 SETTABLEKS                       R47 R46 K142 ["CREATE_EXISTING_PARAMETER"]
      607 LOADK                            R47 K143 ["NativeGraphContext_GetSelectedGraphInstance"]
      608 SETTABLEKS                       R47 R46 K144 ["GET_SELECTED_GRAPH_INSTANCE"]
      610 LOADK                            R47 K145 ["NativeGraphContext_SetNodeConnectionAsync"]
      611 SETTABLEKS                       R47 R46 K146 ["SET_NODE_CONNECTION"]
      613 LOADK                            R47 K147 ["NativeGraphContext_setNodePropertyAsync"]
      614 SETTABLEKS                       R47 R46 K148 ["SET_NODE_PROPERTY"]
      616 LOADK                            R47 K149 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      617 SETTABLEKS                       R47 R46 K150 ["SET_INPUT_PIN_NODE_PROPERTY"]
      619 LOADK                            R47 K151 ["NativeGraphContext_ReorderPinsAsync"]
      620 SETTABLEKS                       R47 R46 K152 ["REORDER_PINS"]
      622 LOADK                            R47 K153 ["NativeGraphContext_DeleteNodeInput"]
      623 SETTABLEKS                       R47 R46 K154 ["DELETE_NODE_INPUT"]
      625 LOADK                            R47 K155 ["NativeGraphContext_RemoveNodeInputConnection"]
      626 SETTABLEKS                       R47 R46 K156 ["REMOVE_NODE_INPUT_CONNECTION"]
      628 LOADK                            R47 K157 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      629 SETTABLEKS                       R47 R46 K158 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      631 LOADK                            R47 K159 ["NativeGraphContext_RemoveParameterAsync"]
      632 SETTABLEKS                       R47 R46 K160 ["REMOVE_PARAMETER"]
      634 LOADK                            R47 K161 ["NativeGraphContext_RenameNodeAsync"]
      635 SETTABLEKS                       R47 R46 K162 ["RENAME_NODE"]
      637 LOADK                            R47 K163 ["NativeGraphContext_RenameParameterAsync"]
      638 SETTABLEKS                       R47 R46 K164 ["RENAME_PARAMETER"]
      640 LOADK                            R47 K165 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      641 SETTABLEKS                       R47 R46 K166 ["DELETE_NODE_INSTANCE"]
      643 LOADK                            R47 K167 ["NativeGraphContext_ShowNodeInExplorer"]
      644 SETTABLEKS                       R47 R46 K168 ["SHOW_NODE_IN_EXPLORER"]
      646 LOADK                            R47 K169 ["NativeGraphContext_SetNodeSizeAsync"]
      647 SETTABLEKS                       R47 R46 K170 ["SET_NODE_SIZE"]
      649 LOADK                            R47 K171 ["NativeGraphContext_SetCollapsedAsync"]
      650 SETTABLEKS                       R47 R46 K172 ["SET_COLLAPSED"]
      652 LOADK                            R47 K173 ["NativeGraphContext_SetNodePositionsAsync"]
      653 SETTABLEKS                       R47 R46 K174 ["SET_NODE_POSITIONS"]
      655 LOADK                            R47 K175 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      656 SETTABLEKS                       R47 R46 K176 ["SET_PARAMETER_NODE_TYPE"]
      658 LOADK                            R47 K177 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      659 SETTABLEKS                       R47 R46 K178 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      661 LOADK                            R47 K179 ["NativeGraphContext_SelectNodes"]
      662 SETTABLEKS                       R47 R46 K180 ["SELECT_NODES"]
      664 LOADK                            R47 K181 ["NativeGraphContext_SelectNodesFromRect"]
      665 SETTABLEKS                       R47 R46 K182 ["SELECT_NODES_FROM_RECT"]
      667 LOADK                            R47 K183 ["NativeGraphContext_DuplicateSelectedNodes"]
      668 SETTABLEKS                       R47 R46 K184 ["DUPLICATE_SELECTED_NODES"]
      670 LOADK                            R47 K185 ["NativeGraphContext_SelectAllNodes"]
      671 SETTABLEKS                       R47 R46 K186 ["SELECT_ALL_NODES"]
      673 LOADK                            R47 K187 ["NativeGraphContext_ClearNodeSelection"]
      674 SETTABLEKS                       R47 R46 K188 ["CLEAR_NODE_SELECTION"]
      676 LOADK                            R47 K189 ["NativeGraphContext_CopySelectedNodes"]
      677 SETTABLEKS                       R47 R46 K190 ["COPY_SELECTED_NODES"]
      679 LOADK                            R47 K191 ["NativeGraphContext_CutSelectedNodes"]
      680 SETTABLEKS                       R47 R46 K192 ["CUT_SELECTED_NODES"]
      682 LOADK                            R47 K193 ["NativeGraphContext_PasteNodes"]
      683 SETTABLEKS                       R47 R46 K194 ["PASTE_NODES"]
      685 LOADK                            R47 K195 ["NativeGraphContext_beginUndoTransaction"]
      686 SETTABLEKS                       R47 R46 K196 ["BEGIN_UNDO_TRANSACTION"]
      688 LOADK                            R47 K197 ["NativeGraphContext_finishUndoTransaction"]
      689 SETTABLEKS                       R47 R46 K198 ["FINISH_UNDO_TRANSACTION"]
      691 LOADK                            R47 K199 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      692 SETTABLEKS                       R47 R46 K200 ["SET_EXPRESSION_NODE_VALUE"]
      694 GETTABLEKS                       R47 R11 K201 ["createBoundAction"]
      696 LOADK                            R48 K202 ["NativeGraphContext_createNode"]
      697 CALL                             R47 1 1
      698 GETTABLEKS                       R48 R11 K201 ["createBoundAction"]
      700 LOADK                            R49 K203 ["NativeGraphContext_setZIndex"]
      701 CALL                             R48 1 1
      702 GETTABLEKS                       R49 R11 K201 ["createBoundAction"]
      704 LOADK                            R50 K204 ["NativeGraphContext_removeNodes"]
      705 CALL                             R49 1 1
      706 DUPCLOSURE                       R50 K205 [PROTO_0]
      707 DUPCLOSURE                       R51 K206 [PROTO_2]
      708 CAPTURE                          VAL R16
      709 DUPCLOSURE                       R52 K207 [PROTO_70]
      710 CAPTURE                          VAL R42
      711 CAPTURE                          VAL R16
      712 CAPTURE                          VAL R13
      713 CAPTURE                          VAL R19
      714 CAPTURE                          VAL R15
      715 CAPTURE                          VAL R32
      716 CAPTURE                          VAL R18
      717 CAPTURE                          VAL R40
      718 CAPTURE                          VAL R39
      719 CAPTURE                          VAL R9
      720 CAPTURE                          VAL R37
      721 CAPTURE                          VAL R8
      722 CAPTURE                          VAL R10
      723 CAPTURE                          VAL R21
      724 CAPTURE                          VAL R17
      725 CAPTURE                          VAL R2
      726 CAPTURE                          VAL R29
      727 CAPTURE                          VAL R24
      728 CAPTURE                          VAL R1
      729 CAPTURE                          VAL R34
      730 CAPTURE                          VAL R12
      731 CAPTURE                          VAL R31
      732 CAPTURE                          VAL R36
      733 CAPTURE                          VAL R26
      734 CAPTURE                          VAL R47
      735 CAPTURE                          VAL R50
      736 CAPTURE                          VAL R49
      737 CAPTURE                          VAL R11
      738 CAPTURE                          VAL R30
      739 CAPTURE                          VAL R5
      740 CAPTURE                          VAL R38
      741 CAPTURE                          VAL R41
      742 CAPTURE                          VAL R33
      743 CAPTURE                          VAL R35
      744 CAPTURE                          VAL R51
      745 CAPTURE                          VAL R20
      746 CAPTURE                          VAL R48
      747 CAPTURE                          VAL R44
      748 CAPTURE                          VAL R27
      749 CAPTURE                          VAL R4
      750 DUPCLOSURE                       R53 K208 [PROTO_92]
      751 CAPTURE                          VAL R42
      752 CAPTURE                          VAL R32
      753 CAPTURE                          VAL R16
      754 CAPTURE                          VAL R18
      755 CAPTURE                          VAL R21
      756 CAPTURE                          VAL R11
      757 CAPTURE                          VAL R29
      758 CAPTURE                          VAL R20
      759 CAPTURE                          VAL R51
      760 CAPTURE                          VAL R24
      761 CAPTURE                          VAL R12
      762 CAPTURE                          VAL R48
      763 CAPTURE                          VAL R49
      764 CAPTURE                          VAL R6
      765 CAPTURE                          VAL R23
      766 CAPTURE                          VAL R22
      767 CAPTURE                          VAL R47
      768 CAPTURE                          VAL R44
      769 CAPTURE                          VAL R17
      770 CAPTURE                          VAL R25
      771 CAPTURE                          VAL R27
      772 DUPCLOSURE                       R54 K209 [PROTO_94]
      773 CAPTURE                          VAL R28
      774 DUPCLOSURE                       R55 K210 [PROTO_96]
      775 CAPTURE                          VAL R16
      776 CAPTURE                          VAL R29
      777 CAPTURE                          VAL R3
      778 CAPTURE                          VAL R54
      779 CAPTURE                          VAL R52
      780 DUPTABLE                         R56 K216 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      781 SETTABLEKS                       R44 R56 K211 ["Context"]
      783 SETTABLEKS                       R52 R56 K212 ["EditableDataModelProvider"]
      785 SETTABLEKS                       R55 R56 K213 ["PreviewDataModelProvider"]
      787 SETTABLEKS                       R53 R56 K214 ["UIDataModelProvider"]
      789 SETTABLEKS                       R54 R56 K215 ["_setupEditorFolderForPreview"]
      791 RETURN                           R56 1
