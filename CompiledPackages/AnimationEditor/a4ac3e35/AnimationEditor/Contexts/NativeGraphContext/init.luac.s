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

PROTO_21:
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
       75 JUMPIFNOTEQ                      R4 R8 ; [+38]
       77 GETUPVAL                         R8 6
       78 GETTABLEKS                       R8 R8 K19 ["setNodeConnection"]
       80 GETUPVAL                         R9 9
       81 GETUPVAL                         R10 3
       82 MOVE                             R11 R7
       83 LOADK                            R12 K20 ["A"]
       84 LOADNIL                          R13
       85 LOADNIL                          R14
       86 LOADN                            R15 1
       87 CALL                             R8 7 3
       88 JUMPIFNOT                        R10 ; [+5]
       89 LOADK                            R13 K21 ["Position"]
       90 LOADN                            R14 0
       91 NAMECALL                         R11 R10 K22 ["SetAttribute"]
       93 CALL                             R11 3 0
       94 GETUPVAL                         R11 6
       95 GETTABLEKS                       R11 R11 K19 ["setNodeConnection"]
       97 GETUPVAL                         R12 9
       98 GETUPVAL                         R13 3
       99 MOVE                             R14 R7
      100 LOADK                            R15 K23 ["B"]
      101 LOADNIL                          R16
      102 LOADNIL                          R17
      103 LOADN                            R18 2
      104 CALL                             R11 7 3
      105 MOVE                             R9 R11
      106 MOVE                             R9 R12
      107 MOVE                             R10 R13
      108 JUMPIFNOT                        R10 ; [+5]
      109 LOADK                            R13 K21 ["Position"]
      110 LOADN                            R14 1
      111 NAMECALL                         R11 R10 K22 ["SetAttribute"]
      113 CALL                             R11 3 0
      114 JUMPIFNOT                        R2 ; [+86]
      115 GETTABLEKS                       R8 R2 K24 ["sourcePinSide"]
      117 JUMPIFNOTEQKS                    R8 K25 ["Input"] ; [+16]
      119 JUMPIFEQKNIL                     R7 ; [+81]
      121 GETUPVAL                         R8 6
      122 GETTABLEKS                       R8 R8 K19 ["setNodeConnection"]
      124 GETUPVAL                         R9 9
      125 GETUPVAL                         R10 3
      126 GETTABLEKS                       R11 R2 K26 ["sourcePinNodeId"]
      128 GETTABLEKS                       R12 R2 K27 ["sourcePinName"]
      130 MOVE                             R13 R7
      131 LOADK                            R14 K28 ["Output"]
      132 CALL                             R8 6 0
      133 JUMP                             ; [+67]
      134 GETTABLEKS                       R8 R2 K24 ["sourcePinSide"]
      136 JUMPIFNOTEQKS                    R8 K28 ["Output"] ; [+60]
      138 GETUPVAL                         R8 10
      139 MOVE                             R10 R4
      140 NAMECALL                         R8 R8 K29 ["GetAnimationNodeDefinition"]
      142 CALL                             R8 2 1
      143 LOADNIL                          R9
      144 GETUPVAL                         R10 6
      145 GETTABLEKS                       R10 R10 K30 ["hasDynamicInputPins"]
      147 GETUPVAL                         R11 3
      148 GETTABLEKS                       R12 R2 K26 ["sourcePinNodeId"]
      150 CALL                             R10 2 1
      151 JUMPIFNOT                        R10 ; [+9]
      152 GETUPVAL                         R10 6
      153 GETTABLEKS                       R10 R10 K31 ["getDynamicInputPinNameFromInputNode"]
      155 MOVE                             R11 R6
      156 GETTABLEKS                       R12 R2 K27 ["sourcePinName"]
      158 CALL                             R10 2 1
      159 MOVE                             R9 R10
      160 JUMP                             ; [+13]
      161 JUMPIFNOT                        R8 ; [+12]
      162 GETTABLEKS                       R10 R8 K32 ["Inputs"]
      164 JUMPIFNOT                        R10 ; [+9]
      165 GETTABLEKS                       R11 R8 K32 ["Inputs"]
      167 GETTABLEN                        R10 R11 1
      168 JUMPIFNOT                        R10 ; [+5]
      169 GETTABLEKS                       R11 R8 K32 ["Inputs"]
      171 GETTABLEN                        R10 R11 1
      172 GETTABLEKS                       R9 R10 K33 ["InputName"]
      174 JUMPIFEQKNIL                     R9 ; [+16]
      176 JUMPIFEQKNIL                     R7 ; [+24]
      178 GETUPVAL                         R10 6
      179 GETTABLEKS                       R10 R10 K19 ["setNodeConnection"]
      181 GETUPVAL                         R11 9
      182 GETUPVAL                         R12 3
      183 MOVE                             R13 R7
      184 MOVE                             R14 R9
      185 GETTABLEKS                       R15 R2 K26 ["sourcePinNodeId"]
      187 GETTABLEKS                       R16 R2 K27 ["sourcePinName"]
      189 CALL                             R10 6 0
      190 JUMP                             ; [+10]
      191 GETIMPORT                        R10 K2 [warn]
      193 LOADK                            R11 K34 ["Failed to find input pin name for node type:"]
      194 MOVE                             R12 R0
      195 CALL                             R10 2 0
      196 JUMP                             ; [+4]
      197 GETIMPORT                        R8 K36 [error]
      199 LOADK                            R9 K37 ["Bad sourcePinSide state"]
      200 CALL                             R8 1 0
      201 GETUPVAL                         R8 11
      202 NEWTABLE                         R10 0 1
      204 MOVE                             R11 R6
      205 SETLIST                          R10 R11 1 [1]
      207 NAMECALL                         R8 R8 K38 ["Set"]
      209 CALL                             R8 2 0
      210 JUMPIFNOT                        R5 ; [+7]
      211 GETUPVAL                         R8 5
      212 MOVE                             R10 R5
      213 GETIMPORT                        R11 K41 [Enum.FinishRecordingOperation.Commit]
      215 NAMECALL                         R8 R8 K42 ["FinishRecording"]
      217 CALL                             R8 3 0
      218 RETURN                           R7 1

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
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K7 ["lookup"]
       28 GETTABLE                         R8 R9 R2
       29 GETUPVAL                         R9 4
       30 CALL                             R9 0 1
       31 JUMPIFNOT                        R9 ; [+41]
       32 JUMPIFNOT                        R6 ; [+73]
       33 JUMPIFNOT                        R7 ; [+72]
       34 GETUPVAL                         R9 3
       35 MOVE                             R11 R2
       36 NAMECALL                         R9 R9 K8 ["idToInstance"]
       38 CALL                             R9 2 1
       39 LOADB                            R10 0
       40 JUMPIFEQKNIL                     R9 ; [+5]
       42 LOADK                            R12 K9 ["Folder"]
       43 NAMECALL                         R10 R9 K10 ["IsA"]
       45 CALL                             R10 2 1
       46 JUMPIFNOT                        R10 ; [+2]
       47 MOVE                             R11 R0
       48 JUMP                             ; [+1]
       49 MOVE                             R11 R2
       50 GETUPVAL                         R12 5
       51 GETTABLEKS                       R12 R12 K11 ["registerIncomingWireInDestroyMapRef"]
       53 GETTABLEKS                       R12 R12 K12 ["current"]
       55 MOVE                             R13 R11
       56 DUPTABLE                         R14 K19 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       57 SETTABLEKS                       R0 R14 K13 ["inputNodeId"]
       59 SETTABLEKS                       R7 R14 K14 ["inputNodePinId"]
       61 SETTABLEKS                       R3 R14 K15 ["outputNodePinId"]
       63 SETTABLEKS                       R6 R14 K16 ["wireId"]
       65 SETTABLEKS                       R2 R14 K17 ["outputNodeId"]
       67 NEWTABLE                         R15 0 0
       69 SETTABLEKS                       R15 R14 K18 ["properties"]
       71 CALL                             R12 2 0
       72 JUMP                             ; [+33]
       73 JUMPIFNOT                        R8 ; [+32]
       74 GETTABLEKS                       R9 R8 K20 ["className"]
       76 JUMPIFEQKS                       R9 K21 ["Parameter"] ; [+29]
       78 GETTABLEKS                       R9 R8 K20 ["className"]
       80 JUMPIFEQKS                       R9 K22 ["StateMachine"] ; [+25]
       82 JUMPIFNOT                        R6 ; [+23]
       83 JUMPIFNOT                        R7 ; [+22]
       84 GETUPVAL                         R9 5
       85 GETTABLEKS                       R9 R9 K23 ["setNodeOutputInfoInDestroyMapRef"]
       87 GETTABLEKS                       R9 R9 K12 ["current"]
       89 MOVE                             R10 R2
       90 DUPTABLE                         R11 K19 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       91 SETTABLEKS                       R0 R11 K13 ["inputNodeId"]
       93 SETTABLEKS                       R7 R11 K14 ["inputNodePinId"]
       95 SETTABLEKS                       R3 R11 K15 ["outputNodePinId"]
       97 SETTABLEKS                       R6 R11 K16 ["wireId"]
       99 SETTABLEKS                       R2 R11 K17 ["outputNodeId"]
      101 NEWTABLE                         R12 0 0
      103 SETTABLEKS                       R12 R11 K18 ["properties"]
      105 CALL                             R9 2 0
      106 JUMPIFNOT                        R5 ; [+7]
      107 GETUPVAL                         R9 1
      108 MOVE                             R11 R5
      109 GETIMPORT                        R12 K27 [Enum.FinishRecordingOperation.Commit]
      111 NAMECALL                         R9 R9 K28 ["FinishRecording"]
      113 CALL                             R9 3 0
      114 RETURN                           R0 0

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
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

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
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["removeAllStateMachineConnections"]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R1 K5 ["Parent"]
       21 JUMPIFNOT                        R2 ; [+7]
       22 GETUPVAL                         R3 1
       23 MOVE                             R5 R2
       24 GETIMPORT                        R6 K9 [Enum.FinishRecordingOperation.Commit]
       26 NAMECALL                         R3 R3 K10 ["FinishRecording"]
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+36]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["instanceToId"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K4 ["stateMachineDestroyConnectionMapRef"]
       15 GETTABLEKS                       R1 R1 K5 ["current"]
       17 GETTABLE                         R2 R1 R0
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["removeAllStateMachineConnections"]
       23 GETUPVAL                         R4 0
       24 CALL                             R3 1 0
       25 GETTABLEKS                       R3 R2 K7 ["connection"]
       27 NAMECALL                         R3 R3 K8 ["Disconnect"]
       29 CALL                             R3 1 0
       30 GETIMPORT                        R3 K11 [table.clone]
       32 MOVE                             R4 R1
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R2 K12 ["nodeId"]
       36 LOADNIL                          R5
       37 SETTABLE                         R5 R3 R4
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K13 ["setStateMachineDestroyConnectionMap"]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeStateMachineNodeInfoLookupListRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["stateMachineDestroyConnectionMapRef"]
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
       24 JUMPIF                           R10 ; [+28]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+21]
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
       45 DUPTABLE                         R13 K11 [{"connection", "nodeId"}]
       46 SETTABLEKS                       R11 R13 K10 ["connection"]
       48 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       50 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       52 SETTABLE                         R13 R3 R12
       53 FORGLOOP                         R5 2 ; [-33]
       55 JUMPIFNOT                        R4 ; [+5]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K12 ["setStateMachineDestroyConnectionMap"]
       59 MOVE                             R6 R3
       60 CALL                             R5 1 0
       61 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 1
        8 RETURN                           R0 1

PROTO_70:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_73:
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
      428 CAPTURE                          VAL R7
      429 NEWTABLE                         R42 0 5
      431 MOVE                             R43 R7
      432 GETUPVAL                         R45 5
      433 CALL                             R45 0 1
      434 JUMPIFNOT                        R45 ; [+3]
      435 GETTABLEKS                       R44 R8 K11 ["observeSelectedGraphInstance"]
      437 JUMP                             ; [+1]
      438 MOVE                             R44 R16
      439 MOVE                             R45 R19
      440 MOVE                             R46 R15
      441 MOVE                             R47 R2
      442 SETLIST                          R42 R43 5 [1]
      444 CALL                             R40 2 1
      445 GETUPVAL                         R41 22
      446 GETTABLEKS                       R41 R41 K19 ["useProducer"]
      448 GETUPVAL                         R42 1
      449 GETTABLEKS                       R42 R42 K15 ["useCallback"]
      451 NEWCLOSURE                       R43 P17
      452 CAPTURE                          VAL R40
      453 NEWTABLE                         R44 0 1
      455 MOVE                             R45 R40
      456 SETLIST                          R44 R45 1 [1]
      458 CALL                             R42 2 -1
      459 CALL                             R41 -1 0
      460 GETUPVAL                         R41 1
      461 GETTABLEKS                       R41 R41 K15 ["useCallback"]
      463 NEWCLOSURE                       R42 P18
      464 CAPTURE                          VAL R7
      465 CAPTURE                          UPVAL U23
      466 CAPTURE                          UPVAL U15
      467 NEWTABLE                         R43 0 1
      469 MOVE                             R44 R7
      470 SETLIST                          R43 R44 1 [1]
      472 CALL                             R41 2 1
      473 GETUPVAL                         R42 24
      474 GETTABLEKS                       R42 R42 K19 ["useProducer"]
      476 MOVE                             R43 R41
      477 CALL                             R42 1 0
      478 GETUPVAL                         R42 1
      479 GETTABLEKS                       R42 R42 K15 ["useCallback"]
      481 NEWCLOSURE                       R43 P19
      482 CAPTURE                          UPVAL U5
      483 CAPTURE                          VAL R8
      484 CAPTURE                          VAL R16
      485 CAPTURE                          VAL R7
      486 CAPTURE                          UPVAL U15
      487 CAPTURE                          UPVAL U12
      488 NEWTABLE                         R44 0 2
      490 MOVE                             R45 R7
      491 GETUPVAL                         R47 5
      492 CALL                             R47 0 1
      493 JUMPIFNOT                        R47 ; [+3]
      494 GETTABLEKS                       R46 R8 K11 ["observeSelectedGraphInstance"]
      496 JUMP                             ; [+1]
      497 MOVE                             R46 R16
      498 SETLIST                          R44 R45 2 [1]
      500 CALL                             R42 2 1
      501 GETUPVAL                         R43 25
      502 GETTABLEKS                       R43 R43 K20 ["useBoundAction"]
      504 LOADK                            R44 K21 ["NativeGraphContext_DuplicateSelectedNodes"]
      505 MOVE                             R45 R42
      506 CALL                             R43 2 0
      507 GETUPVAL                         R43 1
      508 GETTABLEKS                       R43 R43 K15 ["useCallback"]
      510 NEWCLOSURE                       R44 P20
      511 CAPTURE                          VAL R7
      512 NEWTABLE                         R45 0 1
      514 MOVE                             R46 R7
      515 SETLIST                          R45 R46 1 [1]
      517 CALL                             R43 2 1
      518 GETUPVAL                         R44 25
      519 GETTABLEKS                       R44 R44 K20 ["useBoundAction"]
      521 LOADK                            R45 K22 ["NativeGraphContext_ClearNodeSelection"]
      522 MOVE                             R46 R43
      523 CALL                             R44 2 0
      524 GETUPVAL                         R44 1
      525 GETTABLEKS                       R44 R44 K15 ["useCallback"]
      527 NEWCLOSURE                       R45 P21
      528 CAPTURE                          UPVAL U5
      529 CAPTURE                          VAL R8
      530 CAPTURE                          VAL R16
      531 CAPTURE                          VAL R7
      532 NEWTABLE                         R46 0 2
      534 MOVE                             R47 R7
      535 GETUPVAL                         R49 5
      536 CALL                             R49 0 1
      537 JUMPIFNOT                        R49 ; [+3]
      538 GETTABLEKS                       R48 R8 K11 ["observeSelectedGraphInstance"]
      540 JUMP                             ; [+1]
      541 MOVE                             R48 R16
      542 SETLIST                          R46 R47 2 [1]
      544 CALL                             R44 2 1
      545 GETUPVAL                         R45 25
      546 GETTABLEKS                       R45 R45 K20 ["useBoundAction"]
      548 LOADK                            R46 K23 ["NativeGraphContext_SelectAllNodes"]
      549 MOVE                             R47 R44
      550 CALL                             R45 2 0
      551 GETUPVAL                         R45 1
      552 GETTABLEKS                       R45 R45 K15 ["useCallback"]
      554 NEWCLOSURE                       R46 P22
      555 CAPTURE                          VAL R7
      556 CAPTURE                          VAL R6
      557 NEWTABLE                         R47 0 2
      559 MOVE                             R48 R7
      560 MOVE                             R49 R6
      561 SETLIST                          R47 R48 2 [1]
      563 CALL                             R45 2 1
      564 GETUPVAL                         R46 25
      565 GETTABLEKS                       R46 R46 K20 ["useBoundAction"]
      567 LOADK                            R47 K24 ["NativeGraphContext_CopySelectedNodes"]
      568 MOVE                             R48 R45
      569 CALL                             R46 2 0
      570 GETUPVAL                         R46 1
      571 GETTABLEKS                       R46 R46 K15 ["useCallback"]
      573 NEWCLOSURE                       R47 P23
      574 CAPTURE                          VAL R7
      575 CAPTURE                          UPVAL U23
      576 CAPTURE                          VAL R6
      577 CAPTURE                          UPVAL U15
      578 NEWTABLE                         R48 0 2
      580 MOVE                             R49 R7
      581 MOVE                             R50 R6
      582 SETLIST                          R48 R49 2 [1]
      584 CALL                             R46 2 1
      585 GETUPVAL                         R47 25
      586 GETTABLEKS                       R47 R47 K20 ["useBoundAction"]
      588 LOADK                            R48 K25 ["NativeGraphContext_CutSelectedNodes"]
      589 MOVE                             R49 R46
      590 CALL                             R47 2 0
      591 GETUPVAL                         R47 1
      592 GETTABLEKS                       R47 R47 K15 ["useCallback"]
      594 NEWCLOSURE                       R48 P24
      595 CAPTURE                          UPVAL U5
      596 CAPTURE                          VAL R8
      597 CAPTURE                          VAL R16
      598 CAPTURE                          VAL R6
      599 CAPTURE                          UPVAL U15
      600 CAPTURE                          UPVAL U12
      601 CAPTURE                          VAL R7
      602 NEWTABLE                         R49 0 3
      604 MOVE                             R50 R7
      605 MOVE                             R51 R6
      606 GETUPVAL                         R53 5
      607 CALL                             R53 0 1
      608 JUMPIFNOT                        R53 ; [+3]
      609 GETTABLEKS                       R52 R8 K11 ["observeSelectedGraphInstance"]
      611 JUMP                             ; [+1]
      612 MOVE                             R52 R16
      613 SETLIST                          R49 R50 3 [1]
      615 CALL                             R47 2 1
      616 GETUPVAL                         R48 25
      617 GETTABLEKS                       R48 R48 K20 ["useBoundAction"]
      619 LOADK                            R49 K26 ["NativeGraphContext_PasteNodes"]
      620 MOVE                             R50 R47
      621 CALL                             R48 2 0
      622 GETUPVAL                         R48 1
      623 GETTABLEKS                       R48 R48 K15 ["useCallback"]
      625 NEWCLOSURE                       R49 P25
      626 CAPTURE                          UPVAL U5
      627 CAPTURE                          VAL R8
      628 CAPTURE                          VAL R16
      629 CAPTURE                          UPVAL U12
      630 CAPTURE                          VAL R7
      631 NEWTABLE                         R50 0 2
      633 GETUPVAL                         R52 5
      634 CALL                             R52 0 1
      635 JUMPIFNOT                        R52 ; [+3]
      636 GETTABLEKS                       R51 R8 K11 ["observeSelectedGraphInstance"]
      638 JUMP                             ; [+1]
      639 MOVE                             R51 R16
      640 MOVE                             R52 R7
      641 SETLIST                          R50 R51 2 [1]
      643 CALL                             R48 2 1
      644 GETUPVAL                         R49 1
      645 GETTABLEKS                       R49 R49 K15 ["useCallback"]
      647 NEWCLOSURE                       R50 P26
      648 CAPTURE                          UPVAL U5
      649 CAPTURE                          VAL R8
      650 CAPTURE                          VAL R16
      651 CAPTURE                          VAL R19
      652 CAPTURE                          UPVAL U15
      653 CAPTURE                          UPVAL U26
      654 CAPTURE                          UPVAL U27
      655 CAPTURE                          UPVAL U12
      656 CAPTURE                          VAL R15
      657 CAPTURE                          UPVAL U20
      658 CAPTURE                          VAL R2
      659 CAPTURE                          VAL R7
      660 NEWTABLE                         R51 0 5
      662 MOVE                             R52 R7
      663 GETUPVAL                         R54 5
      664 CALL                             R54 0 1
      665 JUMPIFNOT                        R54 ; [+3]
      666 GETTABLEKS                       R53 R8 K11 ["observeSelectedGraphInstance"]
      668 JUMP                             ; [+1]
      669 MOVE                             R53 R16
      670 MOVE                             R54 R15
      671 MOVE                             R55 R2
      672 MOVE                             R56 R19
      673 SETLIST                          R51 R52 5 [1]
      675 CALL                             R49 2 1
      676 GETUPVAL                         R50 1
      677 GETTABLEKS                       R50 R50 K15 ["useCallback"]
      679 NEWCLOSURE                       R51 P27
      680 CAPTURE                          UPVAL U5
      681 CAPTURE                          VAL R8
      682 CAPTURE                          VAL R16
      683 CAPTURE                          VAL R19
      684 CAPTURE                          UPVAL U12
      685 CAPTURE                          UPVAL U27
      686 CAPTURE                          UPVAL U15
      687 CAPTURE                          VAL R15
      688 CAPTURE                          VAL R49
      689 CAPTURE                          VAL R7
      690 NEWTABLE                         R52 0 5
      692 MOVE                             R53 R7
      693 GETUPVAL                         R55 5
      694 CALL                             R55 0 1
      695 JUMPIFNOT                        R55 ; [+3]
      696 GETTABLEKS                       R54 R8 K11 ["observeSelectedGraphInstance"]
      698 JUMP                             ; [+1]
      699 MOVE                             R54 R16
      700 MOVE                             R55 R15
      701 MOVE                             R56 R19
      702 MOVE                             R57 R49
      703 SETLIST                          R52 R53 5 [1]
      705 CALL                             R50 2 1
      706 GETUPVAL                         R51 1
      707 GETTABLEKS                       R51 R51 K15 ["useCallback"]
      709 NEWCLOSURE                       R52 P28
      710 CAPTURE                          VAL R19
      711 CAPTURE                          UPVAL U15
      712 CAPTURE                          UPVAL U12
      713 CAPTURE                          VAL R15
      714 NEWTABLE                         R53 0 2
      716 MOVE                             R54 R15
      717 MOVE                             R55 R19
      718 SETLIST                          R53 R54 2 [1]
      720 CALL                             R51 2 1
      721 GETUPVAL                         R52 1
      722 GETTABLEKS                       R52 R52 K15 ["useCallback"]
      724 NEWCLOSURE                       R53 P29
      725 CAPTURE                          VAL R19
      726 CAPTURE                          UPVAL U15
      727 CAPTURE                          UPVAL U12
      728 CAPTURE                          VAL R15
      729 NEWTABLE                         R54 0 2
      731 MOVE                             R55 R15
      732 MOVE                             R56 R19
      733 SETLIST                          R54 R55 2 [1]
      735 CALL                             R52 2 1
      736 GETUPVAL                         R53 28
      737 MOVE                             R54 R15
      738 GETUPVAL                         R56 5
      739 CALL                             R56 0 1
      740 JUMPIFNOT                        R56 ; [+3]
      741 GETTABLEKS                       R55 R8 K11 ["observeSelectedGraphInstance"]
      743 JUMP                             ; [+1]
      744 MOVE                             R55 R16
      745 CALL                             R53 2 1
      746 GETUPVAL                         R54 29
      747 MOVE                             R55 R15
      748 GETUPVAL                         R57 5
      749 CALL                             R57 0 1
      750 JUMPIFNOT                        R57 ; [+3]
      751 GETTABLEKS                       R56 R8 K11 ["observeSelectedGraphInstance"]
      753 JUMP                             ; [+1]
      754 MOVE                             R56 R16
      755 CALL                             R54 2 1
      756 GETUPVAL                         R55 30
      757 MOVE                             R56 R15
      758 GETUPVAL                         R58 5
      759 CALL                             R58 0 1
      760 JUMPIFNOT                        R58 ; [+3]
      761 GETTABLEKS                       R57 R8 K11 ["observeSelectedGraphInstance"]
      763 JUMP                             ; [+1]
      764 MOVE                             R57 R16
      765 CALL                             R55 2 1
      766 GETUPVAL                         R56 1
      767 GETTABLEKS                       R56 R56 K15 ["useCallback"]
      769 NEWCLOSURE                       R57 P30
      770 CAPTURE                          VAL R19
      771 CAPTURE                          UPVAL U15
      772 CAPTURE                          UPVAL U12
      773 CAPTURE                          VAL R15
      774 NEWTABLE                         R58 0 2
      776 MOVE                             R59 R15
      777 MOVE                             R60 R19
      778 SETLIST                          R58 R59 2 [1]
      780 CALL                             R56 2 1
      781 GETUPVAL                         R57 1
      782 GETTABLEKS                       R57 R57 K15 ["useCallback"]
      784 NEWCLOSURE                       R58 P31
      785 CAPTURE                          VAL R19
      786 CAPTURE                          UPVAL U15
      787 CAPTURE                          UPVAL U12
      788 CAPTURE                          VAL R15
      789 CAPTURE                          UPVAL U26
      790 CAPTURE                          VAL R53
      791 NEWTABLE                         R59 0 4
      793 MOVE                             R60 R15
      794 MOVE                             R61 R19
      795 GETTABLEKS                       R62 R53 K27 ["setNodeOutputInfoInDestroyMapRef"]
      797 GETTABLEKS                       R63 R53 K28 ["registerIncomingWireInDestroyMapRef"]
      799 SETLIST                          R59 R60 4 [1]
      801 CALL                             R57 2 1
      802 GETUPVAL                         R58 1
      803 GETTABLEKS                       R58 R58 K15 ["useCallback"]
      805 NEWCLOSURE                       R59 P32
      806 CAPTURE                          UPVAL U5
      807 CAPTURE                          VAL R8
      808 CAPTURE                          VAL R16
      809 CAPTURE                          UPVAL U15
      810 CAPTURE                          VAL R15
      811 CAPTURE                          UPVAL U12
      812 CAPTURE                          UPVAL U26
      813 CAPTURE                          UPVAL U27
      814 CAPTURE                          VAL R49
      815 CAPTURE                          VAL R50
      816 CAPTURE                          VAL R57
      817 NEWTABLE                         R60 0 6
      819 GETUPVAL                         R62 5
      820 CALL                             R62 0 1
      821 JUMPIFNOT                        R62 ; [+3]
      822 GETTABLEKS                       R61 R8 K11 ["observeSelectedGraphInstance"]
      824 JUMP                             ; [+1]
      825 MOVE                             R61 R16
      826 MOVE                             R62 R19
      827 MOVE                             R63 R15
      828 MOVE                             R64 R49
      829 MOVE                             R65 R50
      830 MOVE                             R66 R57
      831 SETLIST                          R60 R61 6 [1]
      833 CALL                             R58 2 1
      834 GETUPVAL                         R59 1
      835 GETTABLEKS                       R59 R59 K15 ["useCallback"]
      837 NEWCLOSURE                       R60 P33
      838 CAPTURE                          VAL R11
      839 CAPTURE                          UPVAL U15
      840 NEWTABLE                         R61 0 0
      842 CALL                             R59 2 1
      843 GETUPVAL                         R60 1
      844 GETTABLEKS                       R60 R60 K15 ["useCallback"]
      846 NEWCLOSURE                       R61 P34
      847 CAPTURE                          VAL R11
      848 CAPTURE                          UPVAL U15
      849 NEWTABLE                         R62 0 0
      851 CALL                             R60 2 1
      852 GETUPVAL                         R61 1
      853 GETTABLEKS                       R61 R61 K9 ["useEffect"]
      855 NEWCLOSURE                       R62 P35
      856 CAPTURE                          VAL R11
      857 CAPTURE                          UPVAL U15
      858 NEWTABLE                         R63 0 0
      860 CALL                             R61 2 0
      861 GETUPVAL                         R61 1
      862 GETTABLEKS                       R61 R61 K15 ["useCallback"]
      864 NEWCLOSURE                       R62 P36
      865 CAPTURE                          UPVAL U15
      866 CAPTURE                          VAL R15
      867 CAPTURE                          UPVAL U18
      868 NEWTABLE                         R63 0 1
      870 MOVE                             R64 R15
      871 SETLIST                          R63 R64 1 [1]
      873 CALL                             R61 2 1
      874 GETUPVAL                         R62 1
      875 GETTABLEKS                       R62 R62 K15 ["useCallback"]
      877 NEWCLOSURE                       R63 P37
      878 CAPTURE                          UPVAL U15
      879 CAPTURE                          VAL R15
      880 NEWTABLE                         R64 0 1
      882 MOVE                             R65 R15
      883 SETLIST                          R64 R65 1 [1]
      885 CALL                             R62 2 1
      886 GETUPVAL                         R63 1
      887 GETTABLEKS                       R63 R63 K15 ["useCallback"]
      889 NEWCLOSURE                       R64 P38
      890 CAPTURE                          UPVAL U15
      891 CAPTURE                          VAL R15
      892 CAPTURE                          UPVAL U31
      893 CAPTURE                          UPVAL U12
      894 CAPTURE                          UPVAL U27
      895 CAPTURE                          VAL R1
      896 CAPTURE                          VAL R19
      897 NEWTABLE                         R65 0 3
      899 MOVE                             R66 R15
      900 MOVE                             R67 R19
      901 GETTABLEKS                       R68 R1 K29 ["observe"]
      903 SETLIST                          R65 R66 3 [1]
      905 CALL                             R63 2 1
      906 GETUPVAL                         R64 1
      907 GETTABLEKS                       R64 R64 K15 ["useCallback"]
      909 NEWCLOSURE                       R65 P39
      910 CAPTURE                          UPVAL U15
      911 CAPTURE                          UPVAL U12
      912 CAPTURE                          VAL R15
      913 NEWTABLE                         R66 0 1
      915 MOVE                             R67 R15
      916 SETLIST                          R66 R67 1 [1]
      918 CALL                             R64 2 1
      919 GETUPVAL                         R65 1
      920 GETTABLEKS                       R65 R65 K15 ["useCallback"]
      922 NEWCLOSURE                       R66 P40
      923 CAPTURE                          UPVAL U5
      924 CAPTURE                          VAL R8
      925 CAPTURE                          VAL R16
      926 CAPTURE                          VAL R19
      927 CAPTURE                          VAL R15
      928 CAPTURE                          UPVAL U12
      929 CAPTURE                          UPVAL U15
      930 NEWTABLE                         R67 0 3
      932 MOVE                             R68 R16
      933 MOVE                             R69 R15
      934 MOVE                             R70 R19
      935 SETLIST                          R67 R68 3 [1]
      937 CALL                             R65 2 1
      938 GETUPVAL                         R66 1
      939 GETTABLEKS                       R66 R66 K15 ["useCallback"]
      941 NEWCLOSURE                       R67 P41
      942 CAPTURE                          UPVAL U20
      943 CAPTURE                          UPVAL U32
      944 CAPTURE                          UPVAL U5
      945 CAPTURE                          VAL R8
      946 CAPTURE                          VAL R16
      947 CAPTURE                          VAL R15
      948 CAPTURE                          UPVAL U12
      949 CAPTURE                          UPVAL U15
      950 CAPTURE                          VAL R54
      951 CAPTURE                          UPVAL U27
      952 NEWTABLE                         R68 0 4
      954 MOVE                             R69 R15
      955 MOVE                             R70 R16
      956 MOVE                             R71 R19
      957 GETTABLEKS                       R72 R54 K30 ["parameterDestroyConnectionMapRef"]
      959 SETLIST                          R68 R69 4 [1]
      961 CALL                             R66 2 1
      962 GETUPVAL                         R67 1
      963 GETTABLEKS                       R67 R67 K15 ["useCallback"]
      965 NEWCLOSURE                       R68 P42
      966 CAPTURE                          UPVAL U5
      967 CAPTURE                          VAL R8
      968 CAPTURE                          VAL R16
      969 CAPTURE                          UPVAL U12
      970 CAPTURE                          UPVAL U15
      971 CAPTURE                          UPVAL U27
      972 NEWTABLE                         R69 0 1
      974 GETUPVAL                         R71 5
      975 CALL                             R71 0 1
      976 JUMPIFNOT                        R71 ; [+3]
      977 GETTABLEKS                       R70 R8 K11 ["observeSelectedGraphInstance"]
      979 JUMP                             ; [+1]
      980 MOVE                             R70 R16
      981 SETLIST                          R69 R70 1 [1]
      983 CALL                             R67 2 1
      984 GETUPVAL                         R68 1
      985 GETTABLEKS                       R68 R68 K15 ["useCallback"]
      987 NEWCLOSURE                       R69 P43
      988 CAPTURE                          VAL R15
      989 CAPTURE                          UPVAL U15
      990 CAPTURE                          UPVAL U12
      991 NEWTABLE                         R70 0 1
      993 MOVE                             R71 R15
      994 SETLIST                          R70 R71 1 [1]
      996 CALL                             R68 2 1
      997 GETUPVAL                         R69 1
      998 GETTABLEKS                       R69 R69 K15 ["useCallback"]
     1000 NEWCLOSURE                       R70 P44
     1001 CAPTURE                          VAL R15
     1002 CAPTURE                          VAL R5
     1003 NEWTABLE                         R71 0 2
     1005 MOVE                             R72 R15
     1006 GETTABLEKS                       R73 R5 K31 ["selectionService"]
     1008 SETLIST                          R71 R72 2 [1]
     1010 CALL                             R69 2 1
     1011 GETUPVAL                         R70 1
     1012 GETTABLEKS                       R70 R70 K15 ["useCallback"]
     1014 NEWCLOSURE                       R71 P45
     1015 CAPTURE                          UPVAL U26
     1016 CAPTURE                          UPVAL U5
     1017 CAPTURE                          VAL R8
     1018 CAPTURE                          VAL R16
     1019 CAPTURE                          VAL R15
     1020 CAPTURE                          UPVAL U27
     1021 CAPTURE                          UPVAL U12
     1022 CAPTURE                          UPVAL U15
     1023 NEWTABLE                         R72 0 2
     1025 GETUPVAL                         R74 5
     1026 CALL                             R74 0 1
     1027 JUMPIFNOT                        R74 ; [+3]
     1028 GETTABLEKS                       R73 R8 K11 ["observeSelectedGraphInstance"]
     1030 JUMP                             ; [+1]
     1031 MOVE                             R73 R16
     1032 MOVE                             R74 R15
     1033 SETLIST                          R72 R73 2 [1]
     1035 CALL                             R70 2 1
     1036 GETUPVAL                         R71 1
     1037 GETTABLEKS                       R71 R71 K9 ["useEffect"]
     1039 NEWCLOSURE                       R72 P46
     1040 CAPTURE                          UPVAL U13
     1041 CAPTURE                          VAL R53
     1042 CAPTURE                          VAL R15
     1043 CAPTURE                          VAL R27
     1044 CAPTURE                          UPVAL U26
     1045 CAPTURE                          UPVAL U12
     1046 NEWTABLE                         R73 0 2
     1048 MOVE                             R74 R15
     1049 GETTABLEKS                       R75 R53 K32 ["nodeDestroyConnectionMapRef"]
     1051 SETLIST                          R73 R74 2 [1]
     1053 CALL                             R71 2 0
     1054 GETUPVAL                         R71 1
     1055 GETTABLEKS                       R71 R71 K9 ["useEffect"]
     1057 NEWCLOSURE                       R72 P47
     1058 CAPTURE                          UPVAL U13
     1059 CAPTURE                          VAL R54
     1060 CAPTURE                          VAL R15
     1061 CAPTURE                          UPVAL U26
     1062 CAPTURE                          UPVAL U27
     1063 CAPTURE                          VAL R65
     1064 NEWTABLE                         R73 0 3
     1066 MOVE                             R74 R15
     1067 GETTABLEKS                       R75 R54 K30 ["parameterDestroyConnectionMapRef"]
     1069 MOVE                             R76 R65
     1070 SETLIST                          R73 R74 3 [1]
     1072 CALL                             R71 2 0
     1073 GETUPVAL                         R71 1
     1074 GETTABLEKS                       R71 R71 K9 ["useEffect"]
     1076 NEWCLOSURE                       R72 P48
     1077 CAPTURE                          UPVAL U13
     1078 CAPTURE                          VAL R55
     1079 CAPTURE                          VAL R15
     1080 CAPTURE                          UPVAL U12
     1081 NEWTABLE                         R73 0 2
     1083 MOVE                             R74 R15
     1084 GETTABLEKS                       R75 R55 K33 ["stateMachineDestroyConnectionMapRef"]
     1086 SETLIST                          R73 R74 2 [1]
     1088 CALL                             R71 2 0
     1089 GETUPVAL                         R71 33
     1090 MOVE                             R72 R2
     1091 MOVE                             R73 R1
     1092 CALL                             R71 2 1
     1093 GETUPVAL                         R73 5
     1094 CALL                             R73 0 1
     1095 JUMPIFNOT                        R73 ; [+7]
     1096 GETUPVAL                         R72 17
     1097 GETTABLEKS                       R72 R72 K18 ["useSignalState"]
     1099 GETTABLEKS                       R73 R8 K34 ["observeSelectedGraphIsEphemeral"]
     1101 CALL                             R72 1 1
     1102 JUMP                             ; [+1]
     1103 LOADB                            R72 0
     1104 NEWTABLE                         R73 64 0
     1106 GETUPVAL                         R75 5
     1107 CALL                             R75 0 1
     1108 JUMPIFNOT                        R75 ; [+2]
     1109 MOVE                             R74 R72
     1110 JUMP                             ; [+1]
     1111 LOADNIL                          R74
     1112 SETTABLEKS                       R74 R73 K35 ["isReadonly"]
     1114 GETUPVAL                         R75 5
     1115 CALL                             R75 0 1
     1116 JUMPIF                           R75 ; [+4]
     1117 JUMPIFNOT                        R19 ; [+3]
     1118 GETTABLEKS                       R74 R19 K36 ["graphInstanceId"]
     1120 JUMP                             ; [+1]
     1121 LOADNIL                          R74
     1122 SETTABLEKS                       R74 R73 K37 ["selectedGraphInstanceId_DEPRECATED"]
     1124 SETTABLEKS                       R64 R73 K38 ["reorderPinsAsync"]
     1126 SETTABLEKS                       R40 R73 K39 ["createNodeAsync"]
     1128 SETTABLEKS                       R49 R73 K40 ["createParameterAsync"]
     1130 SETTABLEKS                       R50 R73 K41 ["createExistingParameterAsync"]
     1132 SETTABLEKS                       R58 R73 K42 ["createConnectedParameterAsync"]
     1134 SETTABLEKS                       R9 R73 K43 ["graphRect"]
     1136 SETTABLEKS                       R48 R73 K44 ["selectAllParameterNodesWithNameAsync"]
     1138 SETTABLEKS                       R32 R73 K45 ["selectNodesAsync"]
     1140 SETTABLEKS                       R33 R73 K46 ["selectNodesFromRectAsync"]
     1142 SETTABLEKS                       R41 R73 K47 ["removeSelectedNodesAsync"]
     1144 SETTABLEKS                       R42 R73 K48 ["duplicateSelectedNodesAsync"]
     1146 SETTABLEKS                       R44 R73 K49 ["selectAllNodesAsync"]
     1148 SETTABLEKS                       R43 R73 K50 ["clearNodeSelectionAsync"]
     1150 SETTABLEKS                       R45 R73 K51 ["copySelectedNodesAsync"]
     1152 SETTABLEKS                       R46 R73 K52 ["cutSelectedNodesAsync"]
     1154 SETTABLEKS                       R47 R73 K53 ["pasteNodesAsync"]
     1156 SETTABLEKS                       R30 R73 K54 ["setNodePositionsAsync"]
     1158 SETTABLEKS                       R31 R73 K55 ["setNodeSizeAsync"]
     1160 SETTABLEKS                       R57 R73 K56 ["setNodeConnectionAsync"]
     1162 SETTABLEKS                       R51 R73 K57 ["deleteNodeInput"]
     1164 SETTABLEKS                       R56 R73 K58 ["removeNodeOutputConnectionAsync"]
     1166 SETTABLEKS                       R52 R73 K59 ["removeNodeInputConnectionAsync"]
     1168 SETTABLEKS                       R65 R73 K60 ["removeParameterAsync"]
     1170 SETTABLEKS                       R63 R73 K61 ["renameNodeAsync"]
     1172 SETTABLEKS                       R66 R73 K62 ["renameParameterAsync"]
     1174 SETTABLEKS                       R68 R73 K63 ["deleteNodeInstanceAsync"]
     1176 SETTABLEKS                       R69 R73 K64 ["showNodeInExplorerAsync"]
     1178 SETTABLEKS                       R28 R73 K65 ["setCollapsedAsync"]
     1180 SETTABLEKS                       R61 R73 K66 ["setNodePropertyAsync"]
     1182 SETTABLEKS                       R62 R73 K67 ["setInputPinNodePropertyAsync"]
     1184 SETTABLEKS                       R67 R73 K68 ["setParameterNodeTypeAsync"]
     1186 SETTABLEKS                       R34 R73 K69 ["currentAnimationId"]
     1188 SETTABLEKS                       R36 R73 K70 ["sourceAssetId"]
     1190 SETTABLEKS                       R39 R73 K71 ["selectedGraphKey"]
     1192 GETUPVAL                         R75 5
     1193 CALL                             R75 0 1
     1194 JUMPIFNOT                        R75 ; [+2]
     1195 LOADNIL                          R74
     1196 JUMP                             ; [+1]
     1197 MOVE                             R74 R16
     1198 SETTABLEKS                       R74 R73 K72 ["observeSelectedGraphInstance_DEPRECATED"]
     1200 GETTABLEKS                       R74 R1 K29 ["observe"]
     1202 SETTABLEKS                       R74 R73 K73 ["observeGraphNodeById"]
     1204 GETTABLEKS                       R74 R2 K29 ["observe"]
     1206 SETTABLEKS                       R74 R73 K74 ["observeNodeRenderInfoById"]
     1208 SETTABLEKS                       R59 R73 K75 ["beginUndoTransaction"]
     1210 SETTABLEKS                       R60 R73 K76 ["finishUndoTransaction"]
     1212 GETTABLEKS                       R74 R1 K77 ["observeMap"]
     1214 SETTABLEKS                       R74 R73 K78 ["observeGraphNodeMap"]
     1216 GETTABLEKS                       R74 R2 K77 ["observeMap"]
     1218 SETTABLEKS                       R74 R73 K79 ["observeRenderInfoMap"]
     1220 GETTABLEKS                       R74 R71 K80 ["hasGraphOutput"]
     1222 SETTABLEKS                       R74 R73 K80 ["hasGraphOutput"]
     1224 GETTABLEKS                       R74 R3 K29 ["observe"]
     1226 SETTABLEKS                       R74 R73 K81 ["observeNodePropsById"]
     1228 SETTABLEKS                       R70 R73 K82 ["setExpressionNodeValueAsync"]
     1230 SETTABLEKS                       R18 R73 K83 ["observeNonPromotedExpressionNodes"]
     1232 GETUPVAL                         R74 1
     1233 GETTABLEKS                       R74 R74 K8 ["useMemo"]
     1235 DUPCLOSURE                       R75 K84 [PROTO_70]
     1236 NEWTABLE                         R76 0 0
     1238 CALL                             R74 2 1
     1239 GETUPVAL                         R75 1
     1240 GETTABLEKS                       R75 R75 K8 ["useMemo"]
     1242 NEWCLOSURE                       R76 P50
     1243 CAPTURE                          UPVAL U34
     1244 CAPTURE                          UPVAL U5
     1245 CAPTURE                          VAL R8
     1246 CAPTURE                          VAL R16
     1247 NEWTABLE                         R77 0 2
     1249 GETUPVAL                         R79 5
     1250 CALL                             R79 0 1
     1251 JUMPIFNOT                        R79 ; [+3]
     1252 GETTABLEKS                       R78 R8 K11 ["observeSelectedGraphInstance"]
     1254 JUMP                             ; [+1]
     1255 MOVE                             R78 R16
     1256 MOVE                             R79 R19
     1257 SETLIST                          R77 R78 2 [1]
     1259 CALL                             R75 2 1
     1260 GETUPVAL                         R76 4
     1261 GETTABLEKS                       R76 R76 K85 ["usePasteHooks"]
     1263 GETUPVAL                         R78 5
     1264 CALL                             R78 0 1
     1265 JUMPIFNOT                        R78 ; [+3]
     1266 GETTABLEKS                       R77 R8 K11 ["observeSelectedGraphInstance"]
     1268 JUMP                             ; [+1]
     1269 MOVE                             R77 R16
     1270 CALL                             R76 1 0
     1271 GETUPVAL                         R76 17
     1272 GETTABLEKS                       R76 R76 K18 ["useSignalState"]
     1274 MOVE                             R77 R75
     1275 CALL                             R76 1 1
     1276 GETUPVAL                         R77 25
     1277 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1279 LOADK                            R78 K87 ["NativeGraphContext_GraphPayloadMap"]
     1280 MOVE                             R79 R19
     1281 CALL                             R77 2 0
     1282 GETUPVAL                         R77 25
     1283 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1285 LOADK                            R78 K88 ["NativeGraphContext_GraphRenderInfo"]
     1286 MOVE                             R79 R21
     1287 CALL                             R77 2 0
     1288 GETUPVAL                         R77 25
     1289 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1291 LOADK                            R78 K89 ["NativeGraphContext_GraphNodeProps"]
     1292 MOVE                             R79 R23
     1293 CALL                             R77 2 0
     1294 GETUPVAL                         R77 25
     1295 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1297 LOADK                            R78 K90 ["NativeGraphContext_NonPromotedExpressionNodes"]
     1298 MOVE                             R79 R25
     1299 CALL                             R77 2 0
     1300 GETUPVAL                         R77 25
     1301 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1303 LOADK                            R78 K91 ["NativeGraphContext_TimeRange"]
     1304 MOVE                             R79 R74
     1305 CALL                             R77 2 0
     1306 GETUPVAL                         R77 25
     1307 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1309 LOADK                            R78 K92 ["NativeGraphContext_GraphPayloadGraphRect"]
     1310 MOVE                             R79 R9
     1311 CALL                             R77 2 0
     1312 GETUPVAL                         R77 25
     1313 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1315 LOADK                            R78 K93 ["NativeGraphContext_SourceAssetId"]
     1316 MOVE                             R79 R36
     1317 CALL                             R77 2 0
     1318 GETUPVAL                         R77 16
     1319 CALL                             R77 0 1
     1320 JUMPIF                           R77 ; [+6]
     1321 GETUPVAL                         R77 25
     1322 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1324 LOADK                            R78 K94 ["NativeGraphContext_CurrentAnimationId"]
     1325 MOVE                             R79 R34
     1326 CALL                             R77 2 0
     1327 GETUPVAL                         R77 16
     1328 CALL                             R77 0 1
     1329 JUMPIFNOT                        R77 ; [+6]
     1330 GETUPVAL                         R77 25
     1331 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1333 LOADK                            R78 K95 ["NativeGraphContext_SelectedGraphKey"]
     1334 MOVE                             R79 R39
     1335 CALL                             R77 2 0
     1336 GETUPVAL                         R77 25
     1337 GETTABLEKS                       R77 R77 K86 ["useReplicatedState"]
     1339 LOADK                            R78 K96 ["NativeGraphContext_UndoTransaction"]
     1340 MOVE                             R79 R11
     1341 CALL                             R77 2 0
     1342 GETUPVAL                         R77 25
     1343 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1345 LOADK                            R78 K97 ["NativeGraphContext_CreateNode"]
     1346 MOVE                             R79 R40
     1347 CALL                             R77 2 0
     1348 GETUPVAL                         R77 25
     1349 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1351 LOADK                            R78 K98 ["NativeGraphContext_CreateParameterAsync"]
     1352 MOVE                             R79 R49
     1353 CALL                             R77 2 0
     1354 GETUPVAL                         R77 25
     1355 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1357 LOADK                            R78 K99 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1358 MOVE                             R79 R58
     1359 CALL                             R77 2 0
     1360 GETUPVAL                         R77 25
     1361 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1363 LOADK                            R78 K100 ["NativeGraphContext_CreateExistingParameterAsync"]
     1364 MOVE                             R79 R50
     1365 CALL                             R77 2 0
     1366 GETUPVAL                         R77 25
     1367 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1369 LOADK                            R78 K101 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1370 MOVE                             R79 R48
     1371 CALL                             R77 2 0
     1372 GETUPVAL                         R77 25
     1373 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1375 LOADK                            R78 K102 ["NativeGraphContext_SelectNodes"]
     1376 MOVE                             R79 R32
     1377 CALL                             R77 2 0
     1378 GETUPVAL                         R77 25
     1379 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1381 LOADK                            R78 K103 ["NativeGraphContext_SelectNodesFromRect"]
     1382 MOVE                             R79 R33
     1383 CALL                             R77 2 0
     1384 GETUPVAL                         R77 25
     1385 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1387 LOADK                            R78 K104 ["NativeGraphContext_SetNodePositionsAsync"]
     1388 MOVE                             R79 R30
     1389 CALL                             R77 2 0
     1390 GETUPVAL                         R77 25
     1391 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1393 LOADK                            R78 K105 ["NativeGraphContext_SetNodeSizeAsync"]
     1394 MOVE                             R79 R31
     1395 CALL                             R77 2 0
     1396 GETUPVAL                         R77 25
     1397 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1399 LOADK                            R78 K106 ["NativeGraphContext_SetNodeConnectionAsync"]
     1400 MOVE                             R79 R57
     1401 CALL                             R77 2 0
     1402 GETUPVAL                         R77 25
     1403 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1405 LOADK                            R78 K107 ["NativeGraphContext_DeleteNodeInput"]
     1406 MOVE                             R79 R51
     1407 CALL                             R77 2 0
     1408 GETUPVAL                         R77 25
     1409 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1411 LOADK                            R78 K108 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1412 MOVE                             R79 R56
     1413 CALL                             R77 2 0
     1414 GETUPVAL                         R77 25
     1415 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1417 LOADK                            R78 K109 ["NativeGraphContext_RemoveNodeInputConnection"]
     1418 MOVE                             R79 R52
     1419 CALL                             R77 2 0
     1420 GETUPVAL                         R77 25
     1421 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1423 LOADK                            R78 K110 ["NativeGraphContext_RemoveParameterAsync"]
     1424 MOVE                             R79 R65
     1425 CALL                             R77 2 0
     1426 GETUPVAL                         R77 25
     1427 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1429 LOADK                            R78 K111 ["NativeGraphContext_RenameNodeAsync"]
     1430 MOVE                             R79 R63
     1431 CALL                             R77 2 0
     1432 GETUPVAL                         R77 25
     1433 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1435 LOADK                            R78 K112 ["NativeGraphContext_RenameParameterAsync"]
     1436 MOVE                             R79 R66
     1437 CALL                             R77 2 0
     1438 GETUPVAL                         R77 25
     1439 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1441 LOADK                            R78 K113 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1442 MOVE                             R79 R68
     1443 CALL                             R77 2 0
     1444 GETUPVAL                         R77 25
     1445 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1447 LOADK                            R78 K114 ["NativeGraphContext_ShowNodeInExplorer"]
     1448 MOVE                             R79 R69
     1449 CALL                             R77 2 0
     1450 GETUPVAL                         R77 25
     1451 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1453 LOADK                            R78 K115 ["NativeGraphContext_SetCollapsedAsync"]
     1454 MOVE                             R79 R28
     1455 CALL                             R77 2 0
     1456 GETUPVAL                         R77 25
     1457 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1459 LOADK                            R78 K116 ["NativeGraphContext_setNodePropertyAsync"]
     1460 MOVE                             R79 R61
     1461 CALL                             R77 2 0
     1462 GETUPVAL                         R77 25
     1463 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1465 LOADK                            R78 K117 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1466 MOVE                             R79 R62
     1467 CALL                             R77 2 0
     1468 GETUPVAL                         R77 25
     1469 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1471 LOADK                            R78 K118 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1472 MOVE                             R79 R67
     1473 CALL                             R77 2 0
     1474 GETUPVAL                         R77 25
     1475 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1477 LOADK                            R78 K119 ["NativeGraphContext_ReorderPinsAsync"]
     1478 MOVE                             R79 R64
     1479 CALL                             R77 2 0
     1480 GETUPVAL                         R77 25
     1481 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1483 LOADK                            R78 K120 ["NativeGraphContext_beginUndoTransaction"]
     1484 MOVE                             R79 R59
     1485 CALL                             R77 2 0
     1486 GETUPVAL                         R77 25
     1487 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1489 LOADK                            R78 K121 ["NativeGraphContext_finishUndoTransaction"]
     1490 MOVE                             R79 R60
     1491 CALL                             R77 2 0
     1492 GETUPVAL                         R77 25
     1493 GETTABLEKS                       R77 R77 K20 ["useBoundAction"]
     1495 LOADK                            R78 K122 ["NativeGraphContext_SetExpressionNodeValueAsync"]
     1496 MOVE                             R79 R70
     1497 CALL                             R77 2 0
     1498 GETUPVAL                         R77 20
     1499 GETTABLEKS                       R77 R77 K123 ["FFlagAnimGraphUI_DynamicZIndex"]
     1501 JUMPIFNOT                        R77 ; [+5]
     1502 GETUPVAL                         R77 35
     1503 GETTABLEKS                       R77 R77 K19 ["useProducer"]
     1505 MOVE                             R78 R29
     1506 CALL                             R77 1 0
     1507 GETUPVAL                         R77 1
     1508 GETTABLEKS                       R77 R77 K124 ["createElement"]
     1510 GETUPVAL                         R78 36
     1511 GETTABLEKS                       R78 R78 K125 ["Provider"]
     1513 DUPTABLE                         R79 K127 [{"value"}]
     1514 SETTABLEKS                       R73 R79 K126 ["value"]
     1516 DUPTABLE                         R80 K129 [{"ContextStack"}]
     1517 GETUPVAL                         R81 1
     1518 GETTABLEKS                       R81 R81 K124 ["createElement"]
     1520 GETUPVAL                         R82 14
     1521 GETTABLEKS                       R82 R82 K128 ["ContextStack"]
     1523 DUPTABLE                         R83 K131 [{"providers"}]
     1524 NEWTABLE                         R84 0 2
     1526 GETUPVAL                         R85 1
     1527 GETTABLEKS                       R85 R85 K124 ["createElement"]
     1529 GETUPVAL                         R86 37
     1530 GETTABLEKS                       R86 R86 K125 ["Provider"]
     1532 DUPTABLE                         R87 K133 [{"timeRange"}]
     1533 SETTABLEKS                       R74 R87 K132 ["timeRange"]
     1535 CALL                             R85 2 1
     1536 GETUPVAL                         R86 1
     1537 GETTABLEKS                       R86 R86 K124 ["createElement"]
     1539 GETUPVAL                         R87 38
     1540 GETTABLEKS                       R87 R87 K125 ["Provider"]
     1542 DUPTABLE                         R88 K135 [{"animationClipsList"}]
     1543 SETTABLEKS                       R76 R88 K134 ["animationClipsList"]
     1545 CALL                             R86 2 -1
     1546 SETLIST                          R84 R85 -1 [1]
     1548 SETTABLEKS                       R84 R83 K130 ["providers"]
     1550 GETTABLEKS                       R84 R0 K136 ["children"]
     1552 CALL                             R81 3 1
     1553 SETTABLEKS                       R81 R80 K128 ["ContextStack"]
     1555 CALL                             R77 3 -1
     1556 RETURN                           R77 -1

PROTO_74:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_75:
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

PROTO_76:
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

PROTO_77:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_79:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_80:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_83:
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

PROTO_84:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_85:
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

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_94:
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

PROTO_95:
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
       26 DUPCLOSURE                       R8 K3 [PROTO_74]
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
      145 DUPCLOSURE                       R14 K27 [PROTO_77]
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
      455 DUPCLOSURE                       R51 K112 [PROTO_80]
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

PROTO_96:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_97:
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

PROTO_98:
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

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_98]
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
       48 GETTABLEKS                       R8 R0 K14 ["Contexts"]
       50 GETTABLEKS                       R8 R8 K17 ["GraphDebugDataContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       57 GETTABLEKS                       R9 R9 K17 ["GraphDebugDataContext"]
       59 GETTABLEKS                       R9 R9 K18 ["GraphDebugDataUtils"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       66 GETTABLEKS                       R10 R10 K19 ["InstanceRegistryContext"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K12 ["Util"]
       73 GETTABLEKS                       R11 R11 K20 ["Instances"]
       75 GETTABLEKS                       R11 R11 K21 ["InstanceSelectionRegistry"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Contexts"]
       82 GETTABLEKS                       R12 R12 K22 ["NativeGraphContext"]
       84 GETTABLEKS                       R12 R12 K23 ["NativeGraphUtils"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K11 [require]
       89 GETTABLEKS                       R13 R0 K12 ["Util"]
       91 GETTABLEKS                       R13 R13 K24 ["Networking"]
       93 GETTABLEKS                       R13 R13 K25 ["NetworkUtils"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K11 [require]
       98 GETTABLEKS                       R14 R0 K26 ["Parent"]
      100 GETTABLEKS                       R14 R14 K27 ["NodeGraphing"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K11 [require]
      105 GETTABLEKS                       R15 R0 K14 ["Contexts"]
      107 GETTABLEKS                       R15 R15 K28 ["NodeSelectionContext"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K11 [require]
      112 GETTABLEKS                       R16 R0 K29 ["NodeViewTypes"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K11 [require]
      117 GETTABLEKS                       R17 R0 K14 ["Contexts"]
      119 GETTABLEKS                       R17 R17 K30 ["PasteHookContext"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K11 [require]
      124 GETTABLEKS                       R18 R0 K26 ["Parent"]
      126 GETTABLEKS                       R18 R18 K31 ["React"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K11 [require]
      131 GETTABLEKS                       R19 R0 K26 ["Parent"]
      133 GETTABLEKS                       R19 R19 K32 ["ReactUtils"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K11 [require]
      138 GETTABLEKS                       R20 R0 K14 ["Contexts"]
      140 GETTABLEKS                       R20 R20 K33 ["SelectedGraphContext"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K11 [require]
      145 GETTABLEKS                       R21 R0 K14 ["Contexts"]
      147 GETTABLEKS                       R21 R21 K34 ["SelectionServiceContext"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K11 [require]
      152 GETTABLEKS                       R22 R0 K12 ["Util"]
      154 GETTABLEKS                       R22 R22 K35 ["Signals"]
      156 GETTABLEKS                       R22 R22 K36 ["Experimental"]
      158 GETTABLEKS                       R22 R22 K37 ["SignalExperimentalUtils"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K11 [require]
      163 GETTABLEKS                       R23 R0 K26 ["Parent"]
      165 GETTABLEKS                       R23 R23 K35 ["Signals"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K11 [require]
      170 GETTABLEKS                       R24 R0 K12 ["Util"]
      172 GETTABLEKS                       R24 R24 K35 ["Signals"]
      174 GETTABLEKS                       R24 R24 K36 ["Experimental"]
      176 GETTABLEKS                       R24 R24 K37 ["SignalExperimentalUtils"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K11 [require]
      181 GETTABLEKS                       R25 R0 K12 ["Util"]
      183 GETTABLEKS                       R25 R25 K35 ["Signals"]
      185 GETTABLEKS                       R25 R25 K38 ["SignalsInstanceUtils"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K11 [require]
      190 GETTABLEKS                       R26 R0 K26 ["Parent"]
      192 GETTABLEKS                       R26 R26 K39 ["SignalsReact"]
      194 CALL                             R25 1 1
      195 GETIMPORT                        R26 K11 [require]
      197 GETTABLEKS                       R27 R0 K14 ["Contexts"]
      199 GETTABLEKS                       R27 R27 K40 ["SpotlightedNodeContext"]
      201 CALL                             R26 1 1
      202 GETIMPORT                        R27 K11 [require]
      204 GETTABLEKS                       R28 R0 K14 ["Contexts"]
      206 GETTABLEKS                       R28 R28 K41 ["TimeRangeContext"]
      208 CALL                             R27 1 1
      209 GETIMPORT                        R28 K11 [require]
      211 GETTABLEKS                       R29 R0 K42 ["Flags"]
      213 GETTABLEKS                       R29 R29 K43 ["getFFlagAnimGraphCreateSAScript"]
      215 CALL                             R28 1 1
      216 GETIMPORT                        R29 K11 [require]
      218 GETTABLEKS                       R30 R0 K42 ["Flags"]
      220 GETTABLEKS                       R30 R30 K44 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      222 CALL                             R29 1 1
      223 GETIMPORT                        R30 K11 [require]
      225 GETTABLEKS                       R31 R0 K42 ["Flags"]
      227 GETTABLEKS                       R31 R31 K45 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      229 CALL                             R30 1 1
      230 GETIMPORT                        R31 K11 [require]
      232 GETTABLEKS                       R32 R0 K42 ["Flags"]
      234 GETTABLEKS                       R32 R32 K46 ["getFFlagAnimGraphUI_RunTimeDebug"]
      236 CALL                             R31 1 1
      237 GETIMPORT                        R32 K11 [require]
      239 GETTABLEKS                       R33 R0 K42 ["Flags"]
      241 GETTABLEKS                       R33 R33 K47 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      243 CALL                             R32 1 1
      244 GETIMPORT                        R33 K11 [require]
      246 GETTABLEKS                       R34 R0 K12 ["Util"]
      248 GETTABLEKS                       R34 R34 K48 ["parseAnimationNodeType"]
      250 CALL                             R33 1 1
      251 GETIMPORT                        R34 K11 [require]
      253 GETTABLEKS                       R35 R0 K12 ["Util"]
      255 GETTABLEKS                       R35 R35 K49 ["sanitizeParameterNames"]
      257 CALL                             R34 1 1
      258 GETIMPORT                        R35 K11 [require]
      260 GETIMPORT                        R36 K1 [script]
      262 GETTABLEKS                       R36 R36 K50 ["useGraphAnalytics"]
      264 CALL                             R35 1 1
      265 GETIMPORT                        R36 K11 [require]
      267 GETTABLEKS                       R37 R0 K51 ["Hooks"]
      269 GETTABLEKS                       R37 R37 K52 ["useNodeDefinitionDestroyHelper"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K11 [require]
      274 GETTABLEKS                       R38 R0 K51 ["Hooks"]
      276 GETTABLEKS                       R38 R38 K53 ["useObserveNodeSelection"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K11 [require]
      281 GETTABLEKS                       R39 R0 K51 ["Hooks"]
      283 GETTABLEKS                       R39 R39 K54 ["useObserveSelection"]
      285 CALL                             R38 1 1
      286 GETIMPORT                        R39 K11 [require]
      288 GETTABLEKS                       R40 R0 K51 ["Hooks"]
      290 GETTABLEKS                       R40 R40 K55 ["useParameterDestroyHelper"]
      292 CALL                             R39 1 1
      293 GETIMPORT                        R40 K11 [require]
      295 GETTABLEKS                       R41 R0 K51 ["Hooks"]
      297 GETTABLEKS                       R41 R41 K56 ["useSignalDispatcher"]
      299 CALL                             R40 1 1
      300 GETIMPORT                        R41 K11 [require]
      302 GETTABLEKS                       R42 R0 K51 ["Hooks"]
      304 GETTABLEKS                       R42 R42 K57 ["useStateMachineDestroyHelper"]
      306 CALL                             R41 1 1
      307 NEWTABLE                         R42 64 0
      309 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      311 LOADK                            R44 K59 ["observeGraphNodeMap"]
      312 CALL                             R43 1 1
      313 SETTABLEKS                       R43 R42 K59 ["observeGraphNodeMap"]
      315 GETIMPORT                        R43 K62 [Rect.new]
      317 LOADN                            R44 0
      318 LOADN                            R45 0
      319 LOADN                            R46 0
      320 LOADN                            R47 0
      321 CALL                             R43 4 1
      322 SETTABLEKS                       R43 R42 K63 ["graphRect"]
      324 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      326 LOADK                            R44 K64 ["reorderPinsAsync"]
      327 CALL                             R43 1 1
      328 SETTABLEKS                       R43 R42 K64 ["reorderPinsAsync"]
      330 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      332 LOADK                            R44 K65 ["createNodeAsync"]
      333 CALL                             R43 1 1
      334 SETTABLEKS                       R43 R42 K65 ["createNodeAsync"]
      336 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      338 LOADK                            R44 K66 ["createParameterAsync"]
      339 CALL                             R43 1 1
      340 SETTABLEKS                       R43 R42 K66 ["createParameterAsync"]
      342 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      344 LOADK                            R44 K67 ["createConnectedParameterAsync"]
      345 CALL                             R43 1 1
      346 SETTABLEKS                       R43 R42 K67 ["createConnectedParameterAsync"]
      348 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      350 LOADK                            R44 K68 ["createExistingParameterAsync"]
      351 CALL                             R43 1 1
      352 SETTABLEKS                       R43 R42 K68 ["createExistingParameterAsync"]
      354 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      356 LOADK                            R44 K69 ["selectAllParameterNodesWithNameAsync"]
      357 CALL                             R43 1 1
      358 SETTABLEKS                       R43 R42 K69 ["selectAllParameterNodesWithNameAsync"]
      360 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      362 LOADK                            R44 K70 ["selectNodesAsync"]
      363 CALL                             R43 1 1
      364 SETTABLEKS                       R43 R42 K70 ["selectNodesAsync"]
      366 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      368 LOADK                            R44 K71 ["selectNodesFromRectAsync"]
      369 CALL                             R43 1 1
      370 SETTABLEKS                       R43 R42 K71 ["selectNodesFromRectAsync"]
      372 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      374 LOADK                            R44 K72 ["removeSelectedNodesAsync"]
      375 CALL                             R43 1 1
      376 SETTABLEKS                       R43 R42 K72 ["removeSelectedNodesAsync"]
      378 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      380 LOADK                            R44 K73 ["duplicateSelectedNodesAsync"]
      381 CALL                             R43 1 1
      382 SETTABLEKS                       R43 R42 K73 ["duplicateSelectedNodesAsync"]
      384 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      386 LOADK                            R44 K74 ["selectAllNodesAsync"]
      387 CALL                             R43 1 1
      388 SETTABLEKS                       R43 R42 K74 ["selectAllNodesAsync"]
      390 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      392 LOADK                            R44 K75 ["clearNodeSelectionAsync"]
      393 CALL                             R43 1 1
      394 SETTABLEKS                       R43 R42 K75 ["clearNodeSelectionAsync"]
      396 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      398 LOADK                            R44 K76 ["copySelectedNodesAsync"]
      399 CALL                             R43 1 1
      400 SETTABLEKS                       R43 R42 K76 ["copySelectedNodesAsync"]
      402 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      404 LOADK                            R44 K77 ["cutSelectedNodesAsync"]
      405 CALL                             R43 1 1
      406 SETTABLEKS                       R43 R42 K77 ["cutSelectedNodesAsync"]
      408 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      410 LOADK                            R44 K78 ["pasteNodesAsync"]
      411 CALL                             R43 1 1
      412 SETTABLEKS                       R43 R42 K78 ["pasteNodesAsync"]
      414 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      416 LOADK                            R44 K79 ["setNodePositionsAsync"]
      417 CALL                             R43 1 1
      418 SETTABLEKS                       R43 R42 K79 ["setNodePositionsAsync"]
      420 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      422 LOADK                            R44 K80 ["setNodeSizeAsync"]
      423 CALL                             R43 1 1
      424 SETTABLEKS                       R43 R42 K80 ["setNodeSizeAsync"]
      426 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      428 LOADK                            R44 K81 ["deleteNodeInput"]
      429 CALL                             R43 1 1
      430 SETTABLEKS                       R43 R42 K81 ["deleteNodeInput"]
      432 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      434 LOADK                            R44 K82 ["removeNodeInputConnectionAsync"]
      435 CALL                             R43 1 1
      436 SETTABLEKS                       R43 R42 K82 ["removeNodeInputConnectionAsync"]
      438 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      440 LOADK                            R44 K83 ["removeNodeOutputConnectionAsync"]
      441 CALL                             R43 1 1
      442 SETTABLEKS                       R43 R42 K83 ["removeNodeOutputConnectionAsync"]
      444 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      446 LOADK                            R44 K84 ["removeParameterAsync"]
      447 CALL                             R43 1 1
      448 SETTABLEKS                       R43 R42 K84 ["removeParameterAsync"]
      450 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      452 LOADK                            R44 K85 ["renameNodeAsync"]
      453 CALL                             R43 1 1
      454 SETTABLEKS                       R43 R42 K85 ["renameNodeAsync"]
      456 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      458 LOADK                            R44 K86 ["renameParameterAsync"]
      459 CALL                             R43 1 1
      460 SETTABLEKS                       R43 R42 K86 ["renameParameterAsync"]
      462 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      464 LOADK                            R44 K87 ["deleteNodeInstanceAsync"]
      465 CALL                             R43 1 1
      466 SETTABLEKS                       R43 R42 K87 ["deleteNodeInstanceAsync"]
      468 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      470 LOADK                            R44 K88 ["showNodeInExplorerAsync"]
      471 CALL                             R43 1 1
      472 SETTABLEKS                       R43 R42 K88 ["showNodeInExplorerAsync"]
      474 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      476 LOADK                            R44 K89 ["setNewConnection"]
      477 CALL                             R43 1 1
      478 SETTABLEKS                       R43 R42 K90 ["setNodeConnectionAsync"]
      480 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      482 LOADK                            R44 K91 ["setCollapsedAsync"]
      483 CALL                             R43 1 1
      484 SETTABLEKS                       R43 R42 K91 ["setCollapsedAsync"]
      486 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      488 LOADK                            R44 K92 ["setNodePropertyAsync"]
      489 CALL                             R43 1 1
      490 SETTABLEKS                       R43 R42 K92 ["setNodePropertyAsync"]
      492 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      494 LOADK                            R44 K93 ["setInputPinNodePropertyAsync"]
      495 CALL                             R43 1 1
      496 SETTABLEKS                       R43 R42 K93 ["setInputPinNodePropertyAsync"]
      498 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      500 LOADK                            R44 K94 ["setParameterNodeTypeAsync"]
      501 CALL                             R43 1 1
      502 SETTABLEKS                       R43 R42 K94 ["setParameterNodeTypeAsync"]
      504 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      506 LOADK                            R44 K95 ["setExpressionNodeValueAsync"]
      507 CALL                             R43 1 1
      508 SETTABLEKS                       R43 R42 K95 ["setExpressionNodeValueAsync"]
      510 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      512 LOADK                            R44 K96 ["hasGraphOutput"]
      513 CALL                             R43 1 1
      514 SETTABLEKS                       R43 R42 K96 ["hasGraphOutput"]
      516 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      518 LOADK                            R44 K97 ["observeGraphNodeById"]
      519 CALL                             R43 1 1
      520 SETTABLEKS                       R43 R42 K97 ["observeGraphNodeById"]
      522 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      524 LOADK                            R44 K98 ["observeNodeRenderInfoById"]
      525 CALL                             R43 1 1
      526 SETTABLEKS                       R43 R42 K98 ["observeNodeRenderInfoById"]
      528 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      530 LOADK                            R44 K99 ["observeRenderInfoMap"]
      531 CALL                             R43 1 1
      532 SETTABLEKS                       R43 R42 K99 ["observeRenderInfoMap"]
      534 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      536 LOADK                            R44 K100 ["observeNodePropsById"]
      537 CALL                             R43 1 1
      538 SETTABLEKS                       R43 R42 K100 ["observeNodePropsById"]
      540 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      542 LOADK                            R44 K101 ["observeNonPromotedExpressionNodes"]
      543 CALL                             R43 1 1
      544 SETTABLEKS                       R43 R42 K101 ["observeNonPromotedExpressionNodes"]
      546 GETTABLEKS                       R43 R22 K102 ["createSignal"]
      548 LOADNIL                          R44
      549 CALL                             R43 1 1
      550 SETTABLEKS                       R43 R42 K103 ["observeSelectedGraphInstance_DEPRECATED"]
      552 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      554 LOADK                            R44 K104 ["beginUndoTransaction"]
      555 CALL                             R43 1 1
      556 SETTABLEKS                       R43 R42 K104 ["beginUndoTransaction"]
      558 GETTABLEKS                       R43 R18 K58 ["createUnimplemented"]
      560 LOADK                            R44 K105 ["finishUndoTransaction"]
      561 CALL                             R43 1 1
      562 SETTABLEKS                       R43 R42 K105 ["finishUndoTransaction"]
      564 LOADNIL                          R43
      565 SETTABLEKS                       R43 R42 K106 ["currentAnimationId"]
      567 LOADNIL                          R43
      568 SETTABLEKS                       R43 R42 K107 ["sourceAssetId"]
      570 LOADNIL                          R43
      571 SETTABLEKS                       R43 R42 K108 ["selectedGraphKey"]
      573 GETTABLEKS                       R43 R17 K109 ["createContext"]
      575 MOVE                             R44 R42
      576 CALL                             R43 1 1
      577 DUPTABLE                         R44 K130 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction", ["NON_PROMOTED_EXPRESSION_NODES"] = "NativeGraphContext_NonPromotedExpressionNodes"}]
      578 NEWTABLE                         R45 64 0
      580 LOADK                            R46 K131 ["NativeGraphContext_CreateNode"]
      581 SETTABLEKS                       R46 R45 K132 ["CREATE_NODE"]
      583 LOADK                            R46 K133 ["NativeGraphContext_CreateParameterAsync"]
      584 SETTABLEKS                       R46 R45 K134 ["CREATE_PARAMETER"]
      586 LOADK                            R46 K135 ["NativeGraphContext_CreateConnectedParameterAsync"]
      587 SETTABLEKS                       R46 R45 K136 ["CREATE_CONNECTED_PARAMETER"]
      589 LOADK                            R46 K137 ["NativeGraphContext_CreateExistingParameterAsync"]
      590 SETTABLEKS                       R46 R45 K138 ["CREATE_EXISTING_PARAMETER"]
      592 LOADK                            R46 K139 ["NativeGraphContext_GetSelectedGraphInstance"]
      593 SETTABLEKS                       R46 R45 K140 ["GET_SELECTED_GRAPH_INSTANCE"]
      595 LOADK                            R46 K141 ["NativeGraphContext_SetNodeConnectionAsync"]
      596 SETTABLEKS                       R46 R45 K142 ["SET_NODE_CONNECTION"]
      598 LOADK                            R46 K143 ["NativeGraphContext_setNodePropertyAsync"]
      599 SETTABLEKS                       R46 R45 K144 ["SET_NODE_PROPERTY"]
      601 LOADK                            R46 K145 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      602 SETTABLEKS                       R46 R45 K146 ["SET_INPUT_PIN_NODE_PROPERTY"]
      604 LOADK                            R46 K147 ["NativeGraphContext_ReorderPinsAsync"]
      605 SETTABLEKS                       R46 R45 K148 ["REORDER_PINS"]
      607 LOADK                            R46 K149 ["NativeGraphContext_DeleteNodeInput"]
      608 SETTABLEKS                       R46 R45 K150 ["DELETE_NODE_INPUT"]
      610 LOADK                            R46 K151 ["NativeGraphContext_RemoveNodeInputConnection"]
      611 SETTABLEKS                       R46 R45 K152 ["REMOVE_NODE_INPUT_CONNECTION"]
      613 LOADK                            R46 K153 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      614 SETTABLEKS                       R46 R45 K154 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      616 LOADK                            R46 K155 ["NativeGraphContext_RemoveParameterAsync"]
      617 SETTABLEKS                       R46 R45 K156 ["REMOVE_PARAMETER"]
      619 LOADK                            R46 K157 ["NativeGraphContext_RenameNodeAsync"]
      620 SETTABLEKS                       R46 R45 K158 ["RENAME_NODE"]
      622 LOADK                            R46 K159 ["NativeGraphContext_RenameParameterAsync"]
      623 SETTABLEKS                       R46 R45 K160 ["RENAME_PARAMETER"]
      625 LOADK                            R46 K161 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      626 SETTABLEKS                       R46 R45 K162 ["DELETE_NODE_INSTANCE"]
      628 LOADK                            R46 K163 ["NativeGraphContext_ShowNodeInExplorer"]
      629 SETTABLEKS                       R46 R45 K164 ["SHOW_NODE_IN_EXPLORER"]
      631 LOADK                            R46 K165 ["NativeGraphContext_SetNodeSizeAsync"]
      632 SETTABLEKS                       R46 R45 K166 ["SET_NODE_SIZE"]
      634 LOADK                            R46 K167 ["NativeGraphContext_SetCollapsedAsync"]
      635 SETTABLEKS                       R46 R45 K168 ["SET_COLLAPSED"]
      637 LOADK                            R46 K169 ["NativeGraphContext_SetNodePositionsAsync"]
      638 SETTABLEKS                       R46 R45 K170 ["SET_NODE_POSITIONS"]
      640 LOADK                            R46 K171 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      641 SETTABLEKS                       R46 R45 K172 ["SET_PARAMETER_NODE_TYPE"]
      643 LOADK                            R46 K173 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      644 SETTABLEKS                       R46 R45 K174 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      646 LOADK                            R46 K175 ["NativeGraphContext_SelectNodes"]
      647 SETTABLEKS                       R46 R45 K176 ["SELECT_NODES"]
      649 LOADK                            R46 K177 ["NativeGraphContext_SelectNodesFromRect"]
      650 SETTABLEKS                       R46 R45 K178 ["SELECT_NODES_FROM_RECT"]
      652 LOADK                            R46 K179 ["NativeGraphContext_DuplicateSelectedNodes"]
      653 SETTABLEKS                       R46 R45 K180 ["DUPLICATE_SELECTED_NODES"]
      655 LOADK                            R46 K181 ["NativeGraphContext_SelectAllNodes"]
      656 SETTABLEKS                       R46 R45 K182 ["SELECT_ALL_NODES"]
      658 LOADK                            R46 K183 ["NativeGraphContext_ClearNodeSelection"]
      659 SETTABLEKS                       R46 R45 K184 ["CLEAR_NODE_SELECTION"]
      661 LOADK                            R46 K185 ["NativeGraphContext_CopySelectedNodes"]
      662 SETTABLEKS                       R46 R45 K186 ["COPY_SELECTED_NODES"]
      664 LOADK                            R46 K187 ["NativeGraphContext_CutSelectedNodes"]
      665 SETTABLEKS                       R46 R45 K188 ["CUT_SELECTED_NODES"]
      667 LOADK                            R46 K189 ["NativeGraphContext_PasteNodes"]
      668 SETTABLEKS                       R46 R45 K190 ["PASTE_NODES"]
      670 LOADK                            R46 K191 ["NativeGraphContext_beginUndoTransaction"]
      671 SETTABLEKS                       R46 R45 K192 ["BEGIN_UNDO_TRANSACTION"]
      673 LOADK                            R46 K193 ["NativeGraphContext_finishUndoTransaction"]
      674 SETTABLEKS                       R46 R45 K194 ["FINISH_UNDO_TRANSACTION"]
      676 LOADK                            R46 K195 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      677 SETTABLEKS                       R46 R45 K196 ["SET_EXPRESSION_NODE_VALUE"]
      679 GETTABLEKS                       R46 R12 K197 ["createBoundAction"]
      681 LOADK                            R47 K198 ["NativeGraphContext_createNode"]
      682 CALL                             R46 1 1
      683 GETTABLEKS                       R47 R12 K197 ["createBoundAction"]
      685 LOADK                            R48 K199 ["NativeGraphContext_setZIndex"]
      686 CALL                             R47 1 1
      687 GETTABLEKS                       R48 R12 K197 ["createBoundAction"]
      689 LOADK                            R49 K200 ["NativeGraphContext_removeNodes"]
      690 CALL                             R48 1 1
      691 DUPCLOSURE                       R49 K201 [PROTO_0]
      692 DUPCLOSURE                       R50 K202 [PROTO_2]
      693 CAPTURE                          VAL R17
      694 DUPCLOSURE                       R51 K203 [PROTO_73]
      695 CAPTURE                          VAL R40
      696 CAPTURE                          VAL R17
      697 CAPTURE                          VAL R14
      698 CAPTURE                          VAL R20
      699 CAPTURE                          VAL R16
      700 CAPTURE                          VAL R31
      701 CAPTURE                          VAL R19
      702 CAPTURE                          VAL R38
      703 CAPTURE                          VAL R37
      704 CAPTURE                          VAL R10
      705 CAPTURE                          VAL R35
      706 CAPTURE                          VAL R9
      707 CAPTURE                          VAL R11
      708 CAPTURE                          VAL R22
      709 CAPTURE                          VAL R18
      710 CAPTURE                          VAL R2
      711 CAPTURE                          VAL R29
      712 CAPTURE                          VAL R25
      713 CAPTURE                          VAL R1
      714 CAPTURE                          VAL R33
      715 CAPTURE                          VAL R13
      716 CAPTURE                          VAL R4
      717 CAPTURE                          VAL R46
      718 CAPTURE                          VAL R49
      719 CAPTURE                          VAL R48
      720 CAPTURE                          VAL R12
      721 CAPTURE                          VAL R30
      722 CAPTURE                          VAL R6
      723 CAPTURE                          VAL R36
      724 CAPTURE                          VAL R39
      725 CAPTURE                          VAL R41
      726 CAPTURE                          VAL R32
      727 CAPTURE                          VAL R34
      728 CAPTURE                          VAL R50
      729 CAPTURE                          VAL R21
      730 CAPTURE                          VAL R47
      731 CAPTURE                          VAL R43
      732 CAPTURE                          VAL R27
      733 CAPTURE                          VAL R5
      734 DUPCLOSURE                       R52 K204 [PROTO_95]
      735 CAPTURE                          VAL R40
      736 CAPTURE                          VAL R31
      737 CAPTURE                          VAL R17
      738 CAPTURE                          VAL R19
      739 CAPTURE                          VAL R22
      740 CAPTURE                          VAL R12
      741 CAPTURE                          VAL R29
      742 CAPTURE                          VAL R21
      743 CAPTURE                          VAL R50
      744 CAPTURE                          VAL R25
      745 CAPTURE                          VAL R13
      746 CAPTURE                          VAL R47
      747 CAPTURE                          VAL R48
      748 CAPTURE                          VAL R7
      749 CAPTURE                          VAL R24
      750 CAPTURE                          VAL R23
      751 CAPTURE                          VAL R46
      752 CAPTURE                          VAL R43
      753 CAPTURE                          VAL R18
      754 CAPTURE                          VAL R26
      755 CAPTURE                          VAL R27
      756 DUPCLOSURE                       R53 K205 [PROTO_97]
      757 CAPTURE                          VAL R28
      758 DUPCLOSURE                       R54 K206 [PROTO_99]
      759 CAPTURE                          VAL R17
      760 CAPTURE                          VAL R29
      761 CAPTURE                          VAL R3
      762 CAPTURE                          VAL R53
      763 CAPTURE                          VAL R51
      764 DUPTABLE                         R55 K212 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      765 SETTABLEKS                       R43 R55 K207 ["Context"]
      767 SETTABLEKS                       R51 R55 K208 ["EditableDataModelProvider"]
      769 SETTABLEKS                       R54 R55 K209 ["PreviewDataModelProvider"]
      771 SETTABLEKS                       R52 R55 K210 ["UIDataModelProvider"]
      773 SETTABLEKS                       R53 R55 K211 ["_setupEditorFolderForPreview"]
      775 RETURN                           R55 1
