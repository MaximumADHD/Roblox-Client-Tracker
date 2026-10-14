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
        1 GETTABLEKS                       R0 R0 K0 ["observeExpressionNodes"]
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
       12 LOADB                            R4 0
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+15]
       16 GETUPVAL                         R5 0
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+12]
       19 JUMPIFNOTEQKNIL                  R3 ; [+11]
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K1 ["canCreateGraph"]
       24 JUMPIFNOT                        R5 ; [+6]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K2 ["createNewGraphAsync"]
       28 CALL                             R5 0 1
       29 MOVE                             R3 R5
       30 LOADB                            R4 1
       31 JUMPIFNOTEQKNIL                  R3 ; [+3]
       33 LOADNIL                          R5
       34 RETURN                           R5 1
       35 JUMPIF                           R4 ; [+5]
       36 GETUPVAL                         R5 5
       37 JUMPIFNOTEQKNIL                  R5 ; [+3]
       39 LOADNIL                          R5
       40 RETURN                           R5 1
       41 GETUPVAL                         R5 6
       42 MOVE                             R6 R0
       43 CALL                             R5 1 1
       44 JUMPIFNOTEQKNIL                  R5 ; [+8]
       46 GETIMPORT                        R6 K4 [warn]
       48 LOADK                            R7 K5 ["Failed to parse animation node type:"]
       49 MOVE                             R8 R0
       50 CALL                             R6 2 0
       51 LOADNIL                          R6
       52 RETURN                           R6 1
       53 GETUPVAL                         R6 7
       54 LOADK                            R8 K6 ["NativeGraphContext"]
       55 LOADK                            R9 K7 ["createNodeAsync"]
       56 NAMECALL                         R6 R6 K8 ["TryBeginRecording"]
       58 CALL                             R6 3 1
       59 GETUPVAL                         R7 8
       60 GETTABLEKS                       R7 R7 K9 ["createNodeOfType"]
       62 MOVE                             R8 R5
       63 MOVE                             R9 R1
       64 MOVE                             R10 R3
       65 CALL                             R7 3 1
       66 GETUPVAL                         R8 8
       67 GETTABLEKS                       R8 R8 K10 ["setZIndex"]
       69 MOVE                             R9 R7
       70 GETUPVAL                         R10 9
       71 GETTABLEKS                       R10 R10 K11 ["getNextNodeZIndex"]
       73 GETUPVAL                         R11 10
       74 CALL                             R10 1 -1
       75 CALL                             R8 -1 0
       76 JUMPIFNOT                        R7 ; [+6]
       77 GETUPVAL                         R8 11
       78 MOVE                             R10 R7
       79 NAMECALL                         R8 R8 K12 ["instanceToId"]
       81 CALL                             R8 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R8
       84 FASTCALL2K                       ASSERT R8 K13 ; [+5]
       86 MOVE                             R10 R8
       87 LOADK                            R11 K13 ["Failed to get new node ID after creation"]
       88 GETIMPORT                        R9 K15 [assert]
       90 CALL                             R9 2 0
       91 JUMPIFNOT                        R4 ; [+16]
       92 GETUPVAL                         R9 8
       93 GETTABLEKS                       R9 R9 K16 ["observeGraphState"]
       95 GETUPVAL                         R10 11
       96 GETUPVAL                         R11 12
       97 GETUPVAL                         R12 13
       98 GETTABLEKS                       R12 R12 K17 ["of"]
      100 MOVE                             R13 R3
      101 CALL                             R12 1 -1
      102 CALL                             R9 -1 1
      103 LOADB                            R10 0
      104 CALL                             R9 1 1
      105 GETTABLEKS                       R9 R9 K18 ["graphPayloadMap"]
      107 JUMP                             ; [+1]
      108 GETUPVAL                         R9 5
      109 FASTCALL2K                       ASSERT R9 K19 ; [+5]
      111 MOVE                             R11 R9
      112 LOADK                            R12 K19 ["Failed to resolve graph payload map after node creation"]
      113 GETIMPORT                        R10 K15 [assert]
      115 CALL                             R10 2 0
      116 GETIMPORT                        R10 K23 [Enum.AnimationNodeType.Blend1DNode]
      118 JUMPIFNOTEQ                      R5 R10 ; [+9]
      120 GETUPVAL                         R10 8
      121 GETTABLEKS                       R10 R10 K24 ["seedBlend1dInputs"]
      123 GETUPVAL                         R11 11
      124 MOVE                             R12 R9
      125 MOVE                             R13 R7
      126 CALL                             R10 3 0
      127 JUMP                             ; [+14]
      128 GETUPVAL                         R10 14
      129 CALL                             R10 0 1
      130 JUMPIFNOT                        R10 ; [+11]
      131 GETUPVAL                         R10 15
      132 JUMPIFNOT                        R10 ; [+9]
      133 GETIMPORT                        R10 K26 [Enum.AnimationNodeType.StateMachineNode]
      135 JUMPIFNOTEQ                      R5 R10 ; [+6]
      137 GETUPVAL                         R10 16
      138 GETTABLEKS                       R10 R10 K27 ["seedPoseDefaults"]
      140 MOVE                             R11 R7
      141 CALL                             R10 1 0
      142 JUMPIFNOT                        R2 ; [+94]
      143 GETTABLEKS                       R10 R2 K28 ["sourcePinSide"]
      145 JUMPIFNOTEQKS                    R10 K29 ["Input"] ; [+24]
      147 JUMPIFEQKNIL                     R8 ; [+89]
      149 GETUPVAL                         R10 8
      150 GETTABLEKS                       R10 R10 K30 ["setNodeConnection"]
      152 GETUPVAL                         R11 11
      153 MOVE                             R12 R9
      154 GETTABLEKS                       R13 R2 K31 ["sourcePinNodeId"]
      156 GETTABLEKS                       R14 R2 K32 ["sourcePinName"]
      158 MOVE                             R15 R8
      159 LOADK                            R16 K33 ["Output"]
      160 LOADNIL                          R17
      161 GETUPVAL                         R19 17
      162 CALL                             R19 0 1
      163 JUMPIFNOT                        R19 ; [+3]
      164 GETTABLEKS                       R18 R2 K34 ["sourcePinInputId"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R18
      168 CALL                             R10 8 0
      169 JUMP                             ; [+67]
      170 GETTABLEKS                       R10 R2 K28 ["sourcePinSide"]
      172 JUMPIFNOTEQKS                    R10 K33 ["Output"] ; [+60]
      174 GETUPVAL                         R10 18
      175 MOVE                             R12 R5
      176 NAMECALL                         R10 R10 K35 ["GetAnimationNodeDefinition"]
      178 CALL                             R10 2 1
      179 LOADNIL                          R11
      180 GETUPVAL                         R12 8
      181 GETTABLEKS                       R12 R12 K36 ["hasDynamicInputPins"]
      183 MOVE                             R13 R9
      184 GETTABLEKS                       R14 R2 K31 ["sourcePinNodeId"]
      186 CALL                             R12 2 1
      187 JUMPIFNOT                        R12 ; [+9]
      188 GETUPVAL                         R12 8
      189 GETTABLEKS                       R12 R12 K37 ["getDynamicInputPinNameFromInputNode"]
      191 MOVE                             R13 R7
      192 GETTABLEKS                       R14 R2 K32 ["sourcePinName"]
      194 CALL                             R12 2 1
      195 MOVE                             R11 R12
      196 JUMP                             ; [+13]
      197 JUMPIFNOT                        R10 ; [+12]
      198 GETTABLEKS                       R12 R10 K38 ["Inputs"]
      200 JUMPIFNOT                        R12 ; [+9]
      201 GETTABLEKS                       R13 R10 K38 ["Inputs"]
      203 GETTABLEN                        R12 R13 1
      204 JUMPIFNOT                        R12 ; [+5]
      205 GETTABLEKS                       R13 R10 K38 ["Inputs"]
      207 GETTABLEN                        R12 R13 1
      208 GETTABLEKS                       R11 R12 K39 ["InputName"]
      210 JUMPIFEQKNIL                     R11 ; [+16]
      212 JUMPIFEQKNIL                     R8 ; [+24]
      214 GETUPVAL                         R12 8
      215 GETTABLEKS                       R12 R12 K30 ["setNodeConnection"]
      217 GETUPVAL                         R13 11
      218 MOVE                             R14 R9
      219 MOVE                             R15 R8
      220 MOVE                             R16 R11
      221 GETTABLEKS                       R17 R2 K31 ["sourcePinNodeId"]
      223 GETTABLEKS                       R18 R2 K32 ["sourcePinName"]
      225 CALL                             R12 6 0
      226 JUMP                             ; [+10]
      227 GETIMPORT                        R12 K4 [warn]
      229 LOADK                            R13 K40 ["Failed to find input pin name for node type:"]
      230 MOVE                             R14 R0
      231 CALL                             R12 2 0
      232 JUMP                             ; [+4]
      233 GETIMPORT                        R10 K42 [error]
      235 LOADK                            R11 K43 ["Bad sourcePinSide state"]
      236 CALL                             R10 1 0
      237 GETUPVAL                         R10 19
      238 NEWTABLE                         R12 0 1
      240 MOVE                             R13 R7
      241 SETLIST                          R12 R13 1 [1]
      243 NAMECALL                         R10 R10 K44 ["Set"]
      245 CALL                             R10 2 0
      246 JUMPIFNOT                        R6 ; [+7]
      247 GETUPVAL                         R10 7
      248 MOVE                             R12 R6
      249 GETIMPORT                        R13 K47 [Enum.FinishRecordingOperation.Commit]
      251 NAMECALL                         R10 R10 K48 ["FinishRecording"]
      253 CALL                             R10 3 0
      254 RETURN                           R8 1

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
       75 GETUPVAL                         R4 7
       76 GETTABLEKS                       R4 R4 K13 ["setZIndex"]
       78 MOVE                             R5 R3
       79 GETUPVAL                         R6 9
       80 GETTABLEKS                       R6 R6 K14 ["getNextNodeZIndex"]
       82 GETUPVAL                         R7 10
       83 CALL                             R6 1 -1
       84 CALL                             R4 -1 0
       85 GETUPVAL                         R6 6
       86 GETTABLEKS                       R6 R6 K15 ["NODE_ATTRIBUTES"]
       88 GETTABLEKS                       R6 R6 K16 ["BindingName"]
       90 NAMECALL                         R4 R3 K17 ["GetAttribute"]
       92 CALL                             R4 2 1
       93 GETUPVAL                         R5 5
       94 CALL                             R5 0 1
       95 JUMPIFNOT                        R5 ; [+37]
       96 GETTABLEKS                       R5 R0 K9 ["parameterClass"]
       98 GETUPVAL                         R6 6
       99 GETTABLEKS                       R6 R6 K10 ["EXPRESSION_NODE_CLASSNAME"]
      101 JUMPIFEQ                         R5 R6 ; [+60]
      103 MOVE                             R7 R4
      104 NAMECALL                         R5 R1 K17 ["GetAttribute"]
      106 CALL                             R5 2 1
      107 JUMPIFNOTEQKNIL                  R5 ; [+54]
      109 GETTABLEKS                       R5 R0 K18 ["initializeWithValue"]
      111 JUMPIFEQKNIL                     R5 ; [+50]
      113 GETTABLEKS                       R6 R0 K18 ["initializeWithValue"]
      115 FASTCALL1                        TYPE R6 ; [+2]
      116 GETIMPORT                        R5 K20 [type]
      118 CALL                             R5 1 1
      119 JUMPIFNOTEQKS                    R5 K21 ["table"] ; [+6]
      121 GETIMPORT                        R5 K7 [warn]
      123 LOADK                            R6 K22 ["TODO: JSONEncode initial value to support safely"]
      124 CALL                             R5 1 0
      125 JUMP                             ; [+36]
      126 MOVE                             R7 R4
      127 GETTABLEKS                       R8 R0 K18 ["initializeWithValue"]
      129 NAMECALL                         R5 R1 K23 ["SetAttribute"]
      131 CALL                             R5 3 0
      132 JUMP                             ; [+29]
      133 MOVE                             R7 R4
      134 NAMECALL                         R5 R1 K17 ["GetAttribute"]
      136 CALL                             R5 2 1
      137 JUMPIFNOTEQKNIL                  R5 ; [+24]
      139 GETTABLEKS                       R5 R0 K18 ["initializeWithValue"]
      141 JUMPIFEQKNIL                     R5 ; [+20]
      143 GETTABLEKS                       R6 R0 K18 ["initializeWithValue"]
      145 FASTCALL1                        TYPE R6 ; [+2]
      146 GETIMPORT                        R5 K20 [type]
      148 CALL                             R5 1 1
      149 JUMPIFNOTEQKS                    R5 K21 ["table"] ; [+6]
      151 GETIMPORT                        R5 K7 [warn]
      153 LOADK                            R6 K22 ["TODO: JSONEncode initial value to support safely"]
      154 CALL                             R5 1 0
      155 JUMP                             ; [+6]
      156 MOVE                             R7 R4
      157 GETTABLEKS                       R8 R0 K18 ["initializeWithValue"]
      159 NAMECALL                         R5 R1 K23 ["SetAttribute"]
      161 CALL                             R5 3 0
      162 GETUPVAL                         R5 11
      163 NEWTABLE                         R7 0 1
      165 MOVE                             R8 R3
      166 SETLIST                          R7 R8 1 [1]
      168 NAMECALL                         R5 R5 K24 ["Set"]
      170 CALL                             R5 2 0
      171 GETTABLEKS                       R5 R0 K25 ["pinPosition"]
      173 JUMPIFNOT                        R5 ; [+17]
      174 GETUPVAL                         R5 7
      175 GETTABLEKS                       R5 R5 K26 ["setNodePosition"]
      177 MOVE                             R6 R3
      178 GETUPVAL                         R8 0
      179 CALL                             R8 0 1
      180 JUMPIFNOT                        R8 ; [+7]
      181 GETUPVAL                         R7 7
      182 GETTABLEKS                       R7 R7 K27 ["predictOutputPosition"]
      184 GETTABLEKS                       R8 R0 K25 ["pinPosition"]
      186 CALL                             R7 1 1
      187 JUMP                             ; [+2]
      188 GETTABLEKS                       R7 R0 K25 ["pinPosition"]
      190 CALL                             R5 2 0
      191 GETUPVAL                         R5 8
      192 MOVE                             R7 R3
      193 NAMECALL                         R5 R5 K28 ["instanceToId"]
      195 CALL                             R5 2 1
      196 JUMPIFNOT                        R2 ; [+7]
      197 GETUPVAL                         R6 4
      198 MOVE                             R8 R2
      199 GETIMPORT                        R9 K32 [Enum.FinishRecordingOperation.Commit]
      201 NAMECALL                         R6 R6 K33 ["FinishRecording"]
      203 CALL                             R6 3 0
      204 RETURN                           R5 1

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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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
       25 GETUPVAL                         R2 2
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+6]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K6 ["observeSelectedGraphInstance"]
       31 LOADB                            R2 0
       32 CALL                             R1 1 1
       33 JUMP                             ; [+3]
       34 GETUPVAL                         R1 4
       35 LOADB                            R2 0
       36 CALL                             R1 1 1
       37 JUMPIFNOTEQKNIL                  R1 ; [+2]
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 5
       41 LOADK                            R4 K7 ["NativeGraphContext"]
       42 LOADK                            R5 K8 ["createParameterAsync"]
       43 NAMECALL                         R2 R2 K9 ["TryBeginRecording"]
       45 CALL                             R2 3 1
       46 GETUPVAL                         R3 6
       47 GETTABLEKS                       R5 R0 K3 ["sourcePinInfo"]
       49 GETTABLEKS                       R5 R5 K10 ["sourcePinNodeId"]
       51 NAMECALL                         R3 R3 K11 ["idToInstance"]
       53 CALL                             R3 2 1
       54 JUMPIFEQKNIL                     R3 ; [+6]
       56 LOADK                            R6 K12 ["AnimationNodeDefinition"]
       57 NAMECALL                         R4 R3 K13 ["IsA"]
       59 CALL                             R4 2 1
       60 JUMPIF                           R4 ; [+5]
       61 GETIMPORT                        R4 K15 [warn]
       63 LOADK                            R5 K16 ["Failed to find node definition instance for createParameterAsync"]
       64 CALL                             R4 1 0
       65 RETURN                           R0 0
       66 LOADK                            R6 K12 ["AnimationNodeDefinition"]
       67 NAMECALL                         R4 R3 K13 ["IsA"]
       69 CALL                             R4 2 1
       70 JUMPIF                           R4 ; [+5]
       71 GETIMPORT                        R4 K15 [warn]
       73 LOADK                            R5 K17 ["Instance is not an AnimationNodeDefinition"]
       74 CALL                             R4 1 0
       75 RETURN                           R0 0
       76 LOADK                            R6 K18 ["AnimationGraphDefinition"]
       77 NAMECALL                         R4 R1 K13 ["IsA"]
       79 CALL                             R4 2 1
       80 JUMPIF                           R4 ; [+5]
       81 GETIMPORT                        R4 K15 [warn]
       83 LOADK                            R5 K19 ["Selected graph instance is not an AnimationGraphDefinition"]
       84 CALL                             R4 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R5 7
       87 GETTABLEKS                       R5 R5 K21 ["getParameterType"]
       89 GETTABLEKS                       R6 R3 K22 ["NodeType"]
       91 GETTABLEKS                       R7 R0 K3 ["sourcePinInfo"]
       93 GETTABLEKS                       R7 R7 K23 ["sourcePinName"]
       95 CALL                             R5 2 1
       96 ORK                              R4 R5 K20 ["unknown"]
       97 LOADNIL                          R5
       98 GETTABLEKS                       R6 R0 K24 ["parameterName"]
      100 GETUPVAL                         R7 8
      101 CALL                             R7 0 1
      102 JUMPIFNOT                        R7 ; [+9]
      103 GETTABLEKS                       R8 R0 K1 ["parameterClass"]
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K2 ["EXPRESSION_NODE_CLASSNAME"]
      108 JUMPIFEQ                         R8 R9 ; [+2]
      110 LOADB                            R7 0 +1
      111 LOADB                            R7 1
      112 JUMPIFNOT                        R6 ; [+1]
      113 JUMPIFNOT                        R7 ; [+24]
      114 GETUPVAL                         R8 9
      115 DUPTABLE                         R9 K29 [{["parameterType"], ["pinPosition"], ["initializeWithValue"], ["parameterName"] = "", ["parameterClass"]}]
      116 SETTABLEKS                       R4 R9 K25 ["parameterType"]
      118 GETTABLEKS                       R10 R0 K26 ["pinPosition"]
      120 SETTABLEKS                       R10 R9 K26 ["pinPosition"]
      122 GETTABLEKS                       R10 R0 K30 ["existingValue"]
      124 SETTABLEKS                       R10 R9 K27 ["initializeWithValue"]
      126 GETUPVAL                         R11 8
      127 CALL                             R11 0 1
      128 JUMPIFNOT                        R11 ; [+3]
      129 GETTABLEKS                       R10 R0 K1 ["parameterClass"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R10
      133 SETTABLEKS                       R10 R9 K1 ["parameterClass"]
      135 CALL                             R8 1 1
      136 MOVE                             R5 R8
      137 JUMP                             ; [+57]
      138 GETUPVAL                         R8 10
      139 DUPTABLE                         R9 K31 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
      140 SETTABLEKS                       R4 R9 K25 ["parameterType"]
      142 SETTABLEKS                       R6 R9 K24 ["parameterName"]
      144 GETTABLEKS                       R10 R0 K26 ["pinPosition"]
      146 SETTABLEKS                       R10 R9 K26 ["pinPosition"]
      148 GETTABLEKS                       R10 R0 K30 ["existingValue"]
      150 SETTABLEKS                       R10 R9 K27 ["initializeWithValue"]
      152 CALL                             R8 1 1
      153 MOVE                             R5 R8
      154 GETUPVAL                         R8 8
      155 CALL                             R8 0 1
      156 JUMPIFNOT                        R8 ; [+23]
      157 GETTABLEKS                       R8 R0 K1 ["parameterClass"]
      159 GETUPVAL                         R9 1
      160 GETTABLEKS                       R9 R9 K2 ["EXPRESSION_NODE_CLASSNAME"]
      162 JUMPIFEQ                         R8 R9 ; [+32]
      164 GETTABLEKS                       R8 R0 K30 ["existingValue"]
      166 JUMPIFNOT                        R8 ; [+28]
      167 MOVE                             R10 R6
      168 NAMECALL                         R8 R1 K32 ["GetAttribute"]
      170 CALL                             R8 2 1
      171 JUMPIFNOTEQKNIL                  R8 ; [+23]
      173 MOVE                             R10 R6
      174 GETTABLEKS                       R11 R0 K30 ["existingValue"]
      176 NAMECALL                         R8 R1 K33 ["SetAttribute"]
      178 CALL                             R8 3 0
      179 JUMP                             ; [+15]
      180 GETTABLEKS                       R8 R0 K30 ["existingValue"]
      182 JUMPIFNOT                        R8 ; [+12]
      183 MOVE                             R10 R6
      184 NAMECALL                         R8 R1 K32 ["GetAttribute"]
      186 CALL                             R8 2 1
      187 JUMPIFNOTEQKNIL                  R8 ; [+7]
      189 MOVE                             R10 R6
      190 GETTABLEKS                       R11 R0 K30 ["existingValue"]
      192 NAMECALL                         R8 R1 K33 ["SetAttribute"]
      194 CALL                             R8 3 0
      195 JUMPIFNOT                        R5 ; [+41]
      196 GETTABLEKS                       R8 R0 K3 ["sourcePinInfo"]
      198 GETTABLEKS                       R8 R8 K10 ["sourcePinNodeId"]
      200 GETTABLEKS                       R9 R0 K3 ["sourcePinInfo"]
      202 GETTABLEKS                       R9 R9 K23 ["sourcePinName"]
      204 GETUPVAL                         R10 6
      205 MOVE                             R12 R5
      206 NAMECALL                         R10 R10 K11 ["idToInstance"]
      208 CALL                             R10 2 1
      209 JUMPIFNOT                        R10 ; [+27]
      210 GETUPVAL                         R11 7
      211 GETTABLEKS                       R11 R11 K34 ["setNodePosition"]
      213 MOVE                             R12 R10
      214 GETUPVAL                         R14 2
      215 CALL                             R14 0 1
      216 JUMPIFNOT                        R14 ; [+7]
      217 GETUPVAL                         R13 7
      218 GETTABLEKS                       R13 R13 K35 ["predictOutputPosition"]
      220 GETTABLEKS                       R14 R0 K26 ["pinPosition"]
      222 CALL                             R13 1 1
      223 JUMP                             ; [+2]
      224 GETTABLEKS                       R13 R0 K26 ["pinPosition"]
      226 CALL                             R11 2 0
      227 GETUPVAL                         R11 11
      228 MOVE                             R12 R8
      229 MOVE                             R13 R9
      230 MOVE                             R14 R5
      231 LOADK                            R15 K36 ["Output"]
      232 GETTABLEKS                       R16 R0 K3 ["sourcePinInfo"]
      234 GETTABLEKS                       R16 R16 K4 ["sourcePinDynamicIndex"]
      236 CALL                             R11 5 0
      237 JUMPIFNOT                        R2 ; [+7]
      238 GETUPVAL                         R8 5
      239 MOVE                             R10 R2
      240 GETIMPORT                        R11 K40 [Enum.FinishRecordingOperation.Commit]
      242 NAMECALL                         R8 R8 K41 ["FinishRecording"]
      244 CALL                             R8 3 0
      245 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_53:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+76]
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
       80 JUMPIF                           R4 ; [+7]
       81 GETIMPORT                        R5 K21 [xpcall]
       83 NEWCLOSURE                       R6 P0
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R1
       86 DUPCLOSURE                       R7 K22 [PROTO_53]
       87 CALL                             R5 2 0
       88 GETUPVAL                         R4 6
       89 CALL                             R4 0 1
       90 JUMPIF                           R4 ; [+38]
       91 GETUPVAL                         R4 7
       92 GETTABLEKS                       R4 R4 K23 ["observe"]
       94 MOVE                             R5 R0
       95 CALL                             R4 1 1
       96 LOADB                            R5 0
       97 CALL                             R4 1 1
       98 JUMPIFNOT                        R4 ; [+30]
       99 GETUPVAL                         R5 8
      100 JUMPIFNOT                        R5 ; [+28]
      101 GETTABLEKS                       R5 R4 K24 ["outputPinToConnectionMap"]
      103 LOADNIL                          R6
      104 LOADNIL                          R7
      105 FORGPREP                         R5
      106 JUMPIFEQKNIL                     R9 ; [+20]
      108 GETUPVAL                         R10 3
      109 GETTABLEKS                       R10 R10 K25 ["hasDynamicInputPins"]
      111 GETUPVAL                         R11 8
      112 GETTABLEKS                       R12 R9 K26 ["inputNodeId"]
      114 CALL                             R10 2 1
      115 JUMPIFNOT                        R10 ; [+11]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R10 R10 K27 ["renameDynamicInputPin"]
      119 GETUPVAL                         R11 1
      120 GETUPVAL                         R12 8
      121 GETTABLEKS                       R13 R9 K26 ["inputNodeId"]
      123 GETTABLEKS                       R14 R9 K28 ["inputNodePinId"]
      125 MOVE                             R15 R1
      126 CALL                             R10 5 0
      127 FORGLOOP                         R5 2 ; [-22]
      129 JUMPIFNOT                        R2 ; [+7]
      130 GETUPVAL                         R4 0
      131 MOVE                             R6 R2
      132 GETIMPORT                        R7 K30 [Enum.FinishRecordingOperation.Commit]
      134 NAMECALL                         R4 R4 K19 ["FinishRecording"]
      136 CALL                             R4 3 0
      137 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K0 ["observeSelectedGraphInstance"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R2 3
       14 LOADB                            R3 0
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+5]
       17 GETIMPORT                        R3 K2 [warn]
       19 LOADK                            R4 K3 ["[NativeGraphContext] No graph selected, cannot set expression"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 4
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R3 K4 ["idToInstance"]
       26 CALL                             R3 2 1
       27 JUMPIFEQKNIL                     R3 ; [+7]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K5 ["isValueNode"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+6]
       35 GETIMPORT                        R4 K2 [warn]
       37 LOADK                            R5 K6 ["[NativeGraphContext] No expression value node found for nodeId:"]
       38 MOVE                             R6 R1
       39 CALL                             R4 2 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K7 ["NODE_ATTRIBUTES"]
       44 GETTABLEKS                       R6 R6 K8 ["Expression"]
       46 NAMECALL                         R4 R3 K9 ["GetAttribute"]
       48 CALL                             R4 2 1
       49 JUMPIFNOTEQ                      R4 R0 ; [+2]
       51 RETURN                           R0 0
       52 GETUPVAL                         R5 7
       53 LOADK                            R7 K10 ["NativeGraphContext"]
       54 LOADK                            R8 K11 ["setExpressionNodeValueAsync"]
       55 NAMECALL                         R5 R5 K12 ["TryBeginRecording"]
       57 CALL                             R5 3 1
       58 GETUPVAL                         R6 5
       59 GETTABLEKS                       R6 R6 K13 ["setExpressionNodeValue"]
       61 MOVE                             R7 R3
       62 MOVE                             R8 R0
       63 CALL                             R6 2 0
       64 JUMPIFNOT                        R5 ; [+7]
       65 GETUPVAL                         R6 7
       66 MOVE                             R8 R5
       67 GETIMPORT                        R9 K17 [Enum.FinishRecordingOperation.Commit]
       69 NAMECALL                         R6 R6 K18 ["FinishRecording"]
       71 CALL                             R6 3 0
       72 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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
       24 JUMPIF                           R10 ; [+49]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       28 NAMECALL                         R10 R10 K7 ["idToInstance"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+42]
       32 GETUPVAL                         R11 2
       33 CALL                             R11 0 1
       34 JUMPIFNOT                        R11 ; [+6]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K8 ["isValueNode"]
       38 MOVE                             R12 R10
       39 CALL                             R11 1 1
       40 JUMPIF                           R11 ; [+33]
       41 GETTABLEKS                       R11 R10 K9 ["AncestryChanged"]
       43 NEWCLOSURE                       R13 P0
       44 CAPTURE                          VAL R10
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R11 R11 K10 ["Connect"]
       52 CALL                             R11 2 1
       53 LOADB                            R4 1
       54 GETTABLEKS                       R12 R9 K6 ["nodeId"]
       56 DUPTABLE                         R13 K13 [{"connection", "nodeId", "parameterName"}]
       57 SETTABLEKS                       R11 R13 K11 ["connection"]
       59 GETTABLEKS                       R14 R9 K6 ["nodeId"]
       61 SETTABLEKS                       R14 R13 K6 ["nodeId"]
       63 GETUPVAL                         R16 4
       64 GETTABLEKS                       R16 R16 K14 ["NODE_ATTRIBUTES"]
       66 GETTABLEKS                       R16 R16 K15 ["BindingName"]
       68 NAMECALL                         R14 R10 K16 ["GetAttribute"]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K12 ["parameterName"]
       73 SETTABLE                         R13 R3 R12
       74 FORGLOOP                         R5 2 ; [-54]
       76 JUMPIFNOT                        R4 ; [+5]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K17 ["setParameterDestroyConnectionMap"]
       80 MOVE                             R6 R3
       81 CALL                             R5 1 0
       82 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 1
       11 RETURN                           R0 1

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeDestroyConnectionMapRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["destroyConnectionMapRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_81:
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
       41 GETUPVAL                         R10 7
       42 CALL                             R10 0 1
       43 JUMPIFNOT                        R10 ; [+8]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K0 ["useContext"]
       47 GETUPVAL                         R10 8
       48 GETTABLEKS                       R10 R10 K1 ["Context"]
       50 CALL                             R9 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R9
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K3 ["useState"]
       56 GETIMPORT                        R11 K6 [Rect.new]
       58 LOADN                            R12 0
       59 LOADN                            R13 0
       60 LOADN                            R14 0
       61 LOADN                            R15 0
       62 CALL                             R11 4 -1
       63 CALL                             R10 -1 2
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K7 ["useRef"]
       67 LOADNIL                          R13
       68 CALL                             R12 1 1
       69 GETUPVAL                         R13 9
       70 CALL                             R13 0 1
       71 GETUPVAL                         R14 10
       72 CALL                             R14 0 1
       73 GETUPVAL                         R15 1
       74 GETTABLEKS                       R15 R15 K8 ["useMemo"]
       76 NEWCLOSURE                       R16 P0
       77 CAPTURE                          UPVAL U11
       78 CAPTURE                          VAL R14
       79 NEWTABLE                         R17 0 1
       81 MOVE                             R18 R14
       82 SETLIST                          R17 R18 1 [1]
       84 CALL                             R15 2 1
       85 GETUPVAL                         R16 12
       86 CALL                             R16 0 0
       87 GETUPVAL                         R16 1
       88 GETTABLEKS                       R16 R16 K9 ["useEffect"]
       90 NEWCLOSURE                       R17 P1
       91 CAPTURE                          VAL R15
       92 NEWTABLE                         R18 0 1
       94 MOVE                             R19 R15
       95 SETLIST                          R18 R19 1 [1]
       97 CALL                             R16 2 0
       98 GETUPVAL                         R16 1
       99 GETTABLEKS                       R16 R16 K0 ["useContext"]
      101 GETUPVAL                         R17 13
      102 GETTABLEKS                       R17 R17 K1 ["Context"]
      104 CALL                             R16 1 1
      105 GETTABLEKS                       R16 R16 K10 ["instanceRegistry"]
      107 GETUPVAL                         R18 5
      108 CALL                             R18 0 1
      109 JUMPIFNOT                        R18 ; [+2]
      110 LOADNIL                          R17
      111 JUMP                             ; [+12]
      112 GETUPVAL                         R17 1
      113 GETTABLEKS                       R17 R17 K8 ["useMemo"]
      115 NEWCLOSURE                       R18 P2
      116 CAPTURE                          UPVAL U14
      117 CAPTURE                          VAL R13
      118 NEWTABLE                         R19 0 1
      120 MOVE                             R20 R13
      121 SETLIST                          R19 R20 1 [1]
      123 CALL                             R17 2 1
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R18 R18 K9 ["useEffect"]
      127 NEWCLOSURE                       R19 P3
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R17
      131 CAPTURE                          UPVAL U15
      132 CAPTURE                          VAL R7
      133 NEWTABLE                         R20 0 2
      135 MOVE                             R21 R7
      136 GETUPVAL                         R23 5
      137 CALL                             R23 0 1
      138 JUMPIFNOT                        R23 ; [+3]
      139 GETTABLEKS                       R22 R8 K11 ["observeSelectedGraphInstance"]
      141 JUMP                             ; [+1]
      142 MOVE                             R22 R17
      143 SETLIST                          R20 R21 2 [1]
      145 CALL                             R18 2 0
      146 GETUPVAL                         R18 1
      147 GETTABLEKS                       R18 R18 K8 ["useMemo"]
      149 NEWCLOSURE                       R19 P4
      150 CAPTURE                          UPVAL U14
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R15
      153 CAPTURE                          UPVAL U5
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R17
      156 NEWTABLE                         R20 0 3
      158 MOVE                             R21 R16
      159 MOVE                             R22 R15
      160 GETUPVAL                         R24 5
      161 CALL                             R24 0 1
      162 JUMPIFNOT                        R24 ; [+3]
      163 GETTABLEKS                       R23 R8 K11 ["observeSelectedGraphInstance"]
      165 JUMP                             ; [+1]
      166 MOVE                             R23 R17
      167 SETLIST                          R20 R21 3 [1]
      169 CALL                             R18 2 1
      170 GETUPVAL                         R19 1
      171 GETTABLEKS                       R19 R19 K8 ["useMemo"]
      173 NEWCLOSURE                       R20 P5
      174 CAPTURE                          UPVAL U14
      175 CAPTURE                          VAL R16
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R17
      179 NEWTABLE                         R21 0 2
      181 GETUPVAL                         R23 5
      182 CALL                             R23 0 1
      183 JUMPIFNOT                        R23 ; [+3]
      184 GETTABLEKS                       R22 R8 K11 ["observeSelectedGraphInstance"]
      186 JUMP                             ; [+1]
      187 MOVE                             R22 R17
      188 MOVE                             R23 R16
      189 SETLIST                          R21 R22 2 [1]
      191 CALL                             R19 2 1
      192 GETUPVAL                         R20 1
      193 GETTABLEKS                       R20 R20 K3 ["useState"]
      195 LOADNIL                          R21
      196 CALL                             R20 1 2
      197 GETUPVAL                         R22 1
      198 GETTABLEKS                       R22 R22 K3 ["useState"]
      200 NEWTABLE                         R23 0 0
      202 CALL                             R22 1 2
      203 GETUPVAL                         R24 1
      204 GETTABLEKS                       R24 R24 K3 ["useState"]
      206 NEWTABLE                         R25 0 0
      208 CALL                             R24 1 2
      209 GETUPVAL                         R26 1
      210 GETTABLEKS                       R26 R26 K3 ["useState"]
      212 NEWTABLE                         R27 0 0
      214 CALL                             R26 1 2
      215 GETUPVAL                         R28 16
      216 GETTABLEKS                       R28 R28 K12 ["useRefToState"]
      218 MOVE                             R29 R20
      219 CALL                             R28 1 1
      220 GETUPVAL                         R29 1
      221 GETTABLEKS                       R29 R29 K9 ["useEffect"]
      223 NEWCLOSURE                       R30 P6
      224 CAPTURE                          UPVAL U15
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R11
      228 CAPTURE                          UPVAL U14
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R27
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R3
      237 NEWTABLE                         R31 0 7
      239 MOVE                             R32 R18
      240 MOVE                             R33 R19
      241 GETTABLEKS                       R34 R0 K13 ["testOverrideGraphPayloadMap"]
      243 MOVE                             R35 R21
      244 MOVE                             R36 R11
      245 GETTABLEKS                       R37 R1 K14 ["setMap"]
      247 GETTABLEKS                       R38 R2 K14 ["setMap"]
      249 SETLIST                          R31 R32 7 [1]
      251 CALL                             R29 2 0
      252 GETUPVAL                         R29 1
      253 GETTABLEKS                       R29 R29 K15 ["useCallback"]
      255 NEWCLOSURE                       R30 P7
      256 CAPTURE                          VAL R16
      257 CAPTURE                          UPVAL U14
      258 NEWTABLE                         R31 0 1
      260 MOVE                             R32 R16
      261 SETLIST                          R31 R32 1 [1]
      263 CALL                             R29 2 1
      264 GETUPVAL                         R30 1
      265 GETTABLEKS                       R30 R30 K15 ["useCallback"]
      267 NEWCLOSURE                       R31 P8
      268 CAPTURE                          VAL R16
      269 CAPTURE                          UPVAL U14
      270 NEWTABLE                         R32 0 1
      272 MOVE                             R33 R16
      273 SETLIST                          R32 R33 1 [1]
      275 CALL                             R30 2 1
      276 GETUPVAL                         R31 1
      277 GETTABLEKS                       R31 R31 K15 ["useCallback"]
      279 NEWCLOSURE                       R32 P9
      280 CAPTURE                          UPVAL U17
      281 CAPTURE                          VAL R16
      282 CAPTURE                          UPVAL U14
      283 NEWTABLE                         R33 0 1
      285 MOVE                             R34 R16
      286 SETLIST                          R33 R34 1 [1]
      288 CALL                             R31 2 1
      289 GETUPVAL                         R32 1
      290 GETTABLEKS                       R32 R32 K15 ["useCallback"]
      292 NEWCLOSURE                       R33 P10
      293 CAPTURE                          VAL R16
      294 CAPTURE                          UPVAL U14
      295 NEWTABLE                         R34 0 1
      297 MOVE                             R35 R16
      298 SETLIST                          R34 R35 1 [1]
      300 CALL                             R32 2 1
      301 GETUPVAL                         R33 1
      302 GETTABLEKS                       R33 R33 K15 ["useCallback"]
      304 NEWCLOSURE                       R34 P11
      305 CAPTURE                          VAL R7
      306 CAPTURE                          VAL R16
      307 NEWTABLE                         R35 0 3
      309 MOVE                             R36 R16
      310 MOVE                             R37 R7
      311 MOVE                             R38 R15
      312 SETLIST                          R35 R36 3 [1]
      314 CALL                             R33 2 1
      315 GETUPVAL                         R34 1
      316 GETTABLEKS                       R34 R34 K15 ["useCallback"]
      318 NEWCLOSURE                       R35 P12
      319 CAPTURE                          VAL R7
      320 CAPTURE                          VAL R20
      321 CAPTURE                          VAL R2
      322 CAPTURE                          VAL R16
      323 NEWTABLE                         R36 0 4
      325 GETTABLEKS                       R37 R2 K16 ["get"]
      327 MOVE                             R38 R7
      328 MOVE                             R39 R16
      329 MOVE                             R40 R20
      330 SETLIST                          R36 R37 4 [1]
      332 CALL                             R34 2 1
      333 GETUPVAL                         R35 1
      334 GETTABLEKS                       R35 R35 K3 ["useState"]
      336 LOADK                            R36 K17 [""]
      337 CALL                             R35 1 2
      338 GETUPVAL                         R37 1
      339 GETTABLEKS                       R37 R37 K3 ["useState"]
      341 LOADNIL                          R38
      342 CALL                             R37 1 2
      343 GETUPVAL                         R40 18
      344 CALL                             R40 0 1
      345 JUMPIFNOT                        R40 ; [+16]
      346 GETUPVAL                         R40 5
      347 CALL                             R40 0 1
      348 JUMPIFNOT                        R40 ; [+7]
      349 GETUPVAL                         R39 19
      350 GETTABLEKS                       R39 R39 K18 ["useSignalState"]
      352 GETTABLEKS                       R40 R8 K11 ["observeSelectedGraphInstance"]
      354 CALL                             R39 1 1
      355 JUMP                             ; [+7]
      356 GETUPVAL                         R39 19
      357 GETTABLEKS                       R39 R39 K18 ["useSignalState"]
      359 MOVE                             R40 R17
      360 CALL                             R39 1 1
      361 JUMP                             ; [+1]
      362 LOADNIL                          R39
      363 GETUPVAL                         R41 18
      364 CALL                             R41 0 1
      365 JUMPIFNOT                        R41 ; [+12]
      366 GETUPVAL                         R40 1
      367 GETTABLEKS                       R40 R40 K8 ["useMemo"]
      369 NEWCLOSURE                       R41 P13
      370 CAPTURE                          VAL R39
      371 NEWTABLE                         R42 0 1
      373 MOVE                             R43 R39
      374 SETLIST                          R42 R43 1 [1]
      376 CALL                             R40 2 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R40
      379 GETUPVAL                         R42 5
      380 CALL                             R42 0 1
      381 JUMPIFNOT                        R42 ; [+7]
      382 GETUPVAL                         R41 19
      383 GETTABLEKS                       R41 R41 K18 ["useSignalState"]
      385 GETTABLEKS                       R42 R8 K11 ["observeSelectedGraphInstance"]
      387 CALL                             R41 1 1
      388 JUMP                             ; [+5]
      389 GETUPVAL                         R41 19
      390 GETTABLEKS                       R41 R41 K18 ["useSignalState"]
      392 MOVE                             R42 R17
      393 CALL                             R41 1 1
      394 GETUPVAL                         R42 1
      395 GETTABLEKS                       R42 R42 K9 ["useEffect"]
      397 NEWCLOSURE                       R43 P14
      398 CAPTURE                          VAL R41
      399 CAPTURE                          UPVAL U18
      400 CAPTURE                          VAL R36
      401 CAPTURE                          VAL R38
      402 CAPTURE                          UPVAL U20
      403 NEWTABLE                         R44 0 1
      405 MOVE                             R45 R41
      406 SETLIST                          R44 R45 1 [1]
      408 CALL                             R42 2 0
      409 GETUPVAL                         R42 18
      410 CALL                             R42 0 1
      411 JUMPIF                           R42 ; [+13]
      412 GETUPVAL                         R42 1
      413 GETTABLEKS                       R42 R42 K9 ["useEffect"]
      415 NEWCLOSURE                       R43 P15
      416 CAPTURE                          VAL R35
      417 CAPTURE                          VAL R41
      418 NEWTABLE                         R44 0 2
      420 MOVE                             R45 R35
      421 MOVE                             R46 R41
      422 SETLIST                          R44 R45 2 [1]
      424 CALL                             R42 2 0
      425 GETUPVAL                         R41 1
      426 GETTABLEKS                       R41 R41 K15 ["useCallback"]
      428 NEWCLOSURE                       R42 P16
      429 CAPTURE                          UPVAL U5
      430 CAPTURE                          VAL R8
      431 CAPTURE                          VAL R17
      432 CAPTURE                          UPVAL U7
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R20
      435 CAPTURE                          UPVAL U21
      436 CAPTURE                          UPVAL U17
      437 CAPTURE                          UPVAL U14
      438 CAPTURE                          UPVAL U22
      439 CAPTURE                          VAL R2
      440 CAPTURE                          VAL R16
      441 CAPTURE                          VAL R15
      442 CAPTURE                          UPVAL U23
      443 CAPTURE                          UPVAL U24
      444 CAPTURE                          UPVAL U25
      445 CAPTURE                          UPVAL U26
      446 CAPTURE                          UPVAL U27
      447 CAPTURE                          UPVAL U20
      448 CAPTURE                          VAL R7
      449 NEWTABLE                         R43 0 8
      451 MOVE                             R44 R7
      452 GETUPVAL                         R46 5
      453 CALL                             R46 0 1
      454 JUMPIFNOT                        R46 ; [+3]
      455 GETTABLEKS                       R45 R8 K11 ["observeSelectedGraphInstance"]
      457 JUMP                             ; [+1]
      458 MOVE                             R45 R17
      459 MOVE                             R46 R20
      460 MOVE                             R47 R16
      461 MOVE                             R48 R2
      462 MOVE                             R49 R15
      463 GETUPVAL                         R51 7
      464 CALL                             R51 0 1
      465 JUMPIFNOT                        R51 ; [+3]
      466 GETTABLEKS                       R50 R9 K19 ["canCreateGraph"]
      468 JUMP                             ; [+1]
      469 LOADNIL                          R50
      470 GETUPVAL                         R52 7
      471 CALL                             R52 0 1
      472 JUMPIFNOT                        R52 ; [+3]
      473 GETTABLEKS                       R51 R9 K20 ["createNewGraphAsync"]
      475 JUMP                             ; [+1]
      476 LOADNIL                          R51
      477 SETLIST                          R43 R44 8 [1]
      479 CALL                             R41 2 1
      480 GETUPVAL                         R42 28
      481 GETTABLEKS                       R42 R42 K21 ["useProducer"]
      483 GETUPVAL                         R43 1
      484 GETTABLEKS                       R43 R43 K15 ["useCallback"]
      486 NEWCLOSURE                       R44 P17
      487 CAPTURE                          VAL R41
      488 NEWTABLE                         R45 0 1
      490 MOVE                             R46 R41
      491 SETLIST                          R45 R46 1 [1]
      493 CALL                             R43 2 -1
      494 CALL                             R42 -1 0
      495 GETUPVAL                         R42 1
      496 GETTABLEKS                       R42 R42 K15 ["useCallback"]
      498 NEWCLOSURE                       R43 P18
      499 CAPTURE                          VAL R7
      500 CAPTURE                          UPVAL U29
      501 CAPTURE                          UPVAL U17
      502 NEWTABLE                         R44 0 1
      504 MOVE                             R45 R7
      505 SETLIST                          R44 R45 1 [1]
      507 CALL                             R42 2 1
      508 GETUPVAL                         R43 30
      509 GETTABLEKS                       R43 R43 K21 ["useProducer"]
      511 MOVE                             R44 R42
      512 CALL                             R43 1 0
      513 GETUPVAL                         R43 1
      514 GETTABLEKS                       R43 R43 K15 ["useCallback"]
      516 NEWCLOSURE                       R44 P19
      517 CAPTURE                          UPVAL U5
      518 CAPTURE                          VAL R8
      519 CAPTURE                          VAL R17
      520 CAPTURE                          VAL R7
      521 CAPTURE                          UPVAL U17
      522 CAPTURE                          UPVAL U14
      523 NEWTABLE                         R45 0 2
      525 MOVE                             R46 R7
      526 GETUPVAL                         R48 5
      527 CALL                             R48 0 1
      528 JUMPIFNOT                        R48 ; [+3]
      529 GETTABLEKS                       R47 R8 K11 ["observeSelectedGraphInstance"]
      531 JUMP                             ; [+1]
      532 MOVE                             R47 R17
      533 SETLIST                          R45 R46 2 [1]
      535 CALL                             R43 2 1
      536 GETUPVAL                         R44 31
      537 GETTABLEKS                       R44 R44 K22 ["useBoundAction"]
      539 LOADK                            R45 K23 ["NativeGraphContext_DuplicateSelectedNodes"]
      540 MOVE                             R46 R43
      541 CALL                             R44 2 0
      542 GETUPVAL                         R44 1
      543 GETTABLEKS                       R44 R44 K15 ["useCallback"]
      545 NEWCLOSURE                       R45 P20
      546 CAPTURE                          VAL R7
      547 NEWTABLE                         R46 0 1
      549 MOVE                             R47 R7
      550 SETLIST                          R46 R47 1 [1]
      552 CALL                             R44 2 1
      553 GETUPVAL                         R45 31
      554 GETTABLEKS                       R45 R45 K22 ["useBoundAction"]
      556 LOADK                            R46 K24 ["NativeGraphContext_ClearNodeSelection"]
      557 MOVE                             R47 R44
      558 CALL                             R45 2 0
      559 GETUPVAL                         R45 1
      560 GETTABLEKS                       R45 R45 K15 ["useCallback"]
      562 NEWCLOSURE                       R46 P21
      563 CAPTURE                          UPVAL U5
      564 CAPTURE                          VAL R8
      565 CAPTURE                          VAL R17
      566 CAPTURE                          VAL R7
      567 NEWTABLE                         R47 0 2
      569 MOVE                             R48 R7
      570 GETUPVAL                         R50 5
      571 CALL                             R50 0 1
      572 JUMPIFNOT                        R50 ; [+3]
      573 GETTABLEKS                       R49 R8 K11 ["observeSelectedGraphInstance"]
      575 JUMP                             ; [+1]
      576 MOVE                             R49 R17
      577 SETLIST                          R47 R48 2 [1]
      579 CALL                             R45 2 1
      580 GETUPVAL                         R46 31
      581 GETTABLEKS                       R46 R46 K22 ["useBoundAction"]
      583 LOADK                            R47 K25 ["NativeGraphContext_SelectAllNodes"]
      584 MOVE                             R48 R45
      585 CALL                             R46 2 0
      586 GETUPVAL                         R46 1
      587 GETTABLEKS                       R46 R46 K15 ["useCallback"]
      589 NEWCLOSURE                       R47 P22
      590 CAPTURE                          VAL R7
      591 CAPTURE                          VAL R6
      592 NEWTABLE                         R48 0 2
      594 MOVE                             R49 R7
      595 MOVE                             R50 R6
      596 SETLIST                          R48 R49 2 [1]
      598 CALL                             R46 2 1
      599 GETUPVAL                         R47 31
      600 GETTABLEKS                       R47 R47 K22 ["useBoundAction"]
      602 LOADK                            R48 K26 ["NativeGraphContext_CopySelectedNodes"]
      603 MOVE                             R49 R46
      604 CALL                             R47 2 0
      605 GETUPVAL                         R47 1
      606 GETTABLEKS                       R47 R47 K15 ["useCallback"]
      608 NEWCLOSURE                       R48 P23
      609 CAPTURE                          VAL R7
      610 CAPTURE                          UPVAL U29
      611 CAPTURE                          VAL R6
      612 CAPTURE                          UPVAL U17
      613 NEWTABLE                         R49 0 2
      615 MOVE                             R50 R7
      616 MOVE                             R51 R6
      617 SETLIST                          R49 R50 2 [1]
      619 CALL                             R47 2 1
      620 GETUPVAL                         R48 31
      621 GETTABLEKS                       R48 R48 K22 ["useBoundAction"]
      623 LOADK                            R49 K27 ["NativeGraphContext_CutSelectedNodes"]
      624 MOVE                             R50 R47
      625 CALL                             R48 2 0
      626 GETUPVAL                         R48 1
      627 GETTABLEKS                       R48 R48 K15 ["useCallback"]
      629 NEWCLOSURE                       R49 P24
      630 CAPTURE                          UPVAL U5
      631 CAPTURE                          VAL R8
      632 CAPTURE                          VAL R17
      633 CAPTURE                          VAL R6
      634 CAPTURE                          UPVAL U17
      635 CAPTURE                          UPVAL U14
      636 CAPTURE                          VAL R7
      637 NEWTABLE                         R50 0 3
      639 MOVE                             R51 R7
      640 MOVE                             R52 R6
      641 GETUPVAL                         R54 5
      642 CALL                             R54 0 1
      643 JUMPIFNOT                        R54 ; [+3]
      644 GETTABLEKS                       R53 R8 K11 ["observeSelectedGraphInstance"]
      646 JUMP                             ; [+1]
      647 MOVE                             R53 R17
      648 SETLIST                          R50 R51 3 [1]
      650 CALL                             R48 2 1
      651 GETUPVAL                         R49 31
      652 GETTABLEKS                       R49 R49 K22 ["useBoundAction"]
      654 LOADK                            R50 K28 ["NativeGraphContext_PasteNodes"]
      655 MOVE                             R51 R48
      656 CALL                             R49 2 0
      657 GETUPVAL                         R49 1
      658 GETTABLEKS                       R49 R49 K15 ["useCallback"]
      660 NEWCLOSURE                       R50 P25
      661 CAPTURE                          UPVAL U5
      662 CAPTURE                          VAL R8
      663 CAPTURE                          VAL R17
      664 CAPTURE                          UPVAL U14
      665 CAPTURE                          VAL R7
      666 NEWTABLE                         R51 0 2
      668 GETUPVAL                         R53 5
      669 CALL                             R53 0 1
      670 JUMPIFNOT                        R53 ; [+3]
      671 GETTABLEKS                       R52 R8 K11 ["observeSelectedGraphInstance"]
      673 JUMP                             ; [+1]
      674 MOVE                             R52 R17
      675 MOVE                             R53 R7
      676 SETLIST                          R51 R52 2 [1]
      678 CALL                             R49 2 1
      679 GETUPVAL                         R50 1
      680 GETTABLEKS                       R50 R50 K15 ["useCallback"]
      682 NEWCLOSURE                       R51 P26
      683 CAPTURE                          UPVAL U5
      684 CAPTURE                          VAL R8
      685 CAPTURE                          VAL R17
      686 CAPTURE                          VAL R20
      687 CAPTURE                          UPVAL U17
      688 CAPTURE                          UPVAL U32
      689 CAPTURE                          UPVAL U33
      690 CAPTURE                          UPVAL U14
      691 CAPTURE                          VAL R16
      692 CAPTURE                          UPVAL U22
      693 CAPTURE                          VAL R2
      694 CAPTURE                          VAL R7
      695 NEWTABLE                         R52 0 5
      697 MOVE                             R53 R7
      698 GETUPVAL                         R55 5
      699 CALL                             R55 0 1
      700 JUMPIFNOT                        R55 ; [+3]
      701 GETTABLEKS                       R54 R8 K11 ["observeSelectedGraphInstance"]
      703 JUMP                             ; [+1]
      704 MOVE                             R54 R17
      705 MOVE                             R55 R16
      706 MOVE                             R56 R2
      707 MOVE                             R57 R20
      708 SETLIST                          R52 R53 5 [1]
      710 CALL                             R50 2 1
      711 GETUPVAL                         R51 1
      712 GETTABLEKS                       R51 R51 K15 ["useCallback"]
      714 NEWCLOSURE                       R52 P27
      715 CAPTURE                          UPVAL U5
      716 CAPTURE                          VAL R8
      717 CAPTURE                          VAL R17
      718 CAPTURE                          VAL R20
      719 CAPTURE                          UPVAL U14
      720 CAPTURE                          UPVAL U33
      721 CAPTURE                          UPVAL U17
      722 CAPTURE                          VAL R16
      723 CAPTURE                          VAL R50
      724 CAPTURE                          VAL R7
      725 NEWTABLE                         R53 0 5
      727 MOVE                             R54 R7
      728 GETUPVAL                         R56 5
      729 CALL                             R56 0 1
      730 JUMPIFNOT                        R56 ; [+3]
      731 GETTABLEKS                       R55 R8 K11 ["observeSelectedGraphInstance"]
      733 JUMP                             ; [+1]
      734 MOVE                             R55 R17
      735 MOVE                             R56 R16
      736 MOVE                             R57 R20
      737 MOVE                             R58 R50
      738 SETLIST                          R53 R54 5 [1]
      740 CALL                             R51 2 1
      741 GETUPVAL                         R52 1
      742 GETTABLEKS                       R52 R52 K15 ["useCallback"]
      744 NEWCLOSURE                       R53 P28
      745 CAPTURE                          VAL R20
      746 CAPTURE                          UPVAL U17
      747 CAPTURE                          UPVAL U14
      748 CAPTURE                          VAL R16
      749 NEWTABLE                         R54 0 2
      751 MOVE                             R55 R16
      752 MOVE                             R56 R20
      753 SETLIST                          R54 R55 2 [1]
      755 CALL                             R52 2 1
      756 GETUPVAL                         R53 1
      757 GETTABLEKS                       R53 R53 K15 ["useCallback"]
      759 NEWCLOSURE                       R54 P29
      760 CAPTURE                          VAL R20
      761 CAPTURE                          UPVAL U17
      762 CAPTURE                          UPVAL U14
      763 CAPTURE                          VAL R16
      764 NEWTABLE                         R55 0 2
      766 MOVE                             R56 R16
      767 MOVE                             R57 R20
      768 SETLIST                          R55 R56 2 [1]
      770 CALL                             R53 2 1
      771 GETUPVAL                         R54 1
      772 GETTABLEKS                       R54 R54 K15 ["useCallback"]
      774 NEWCLOSURE                       R55 P30
      775 CAPTURE                          VAL R20
      776 CAPTURE                          UPVAL U17
      777 CAPTURE                          UPVAL U14
      778 CAPTURE                          VAL R16
      779 NEWTABLE                         R56 0 2
      781 MOVE                             R57 R16
      782 MOVE                             R58 R20
      783 SETLIST                          R56 R57 2 [1]
      785 CALL                             R54 2 1
      786 GETUPVAL                         R55 34
      787 MOVE                             R56 R16
      788 GETUPVAL                         R58 5
      789 CALL                             R58 0 1
      790 JUMPIFNOT                        R58 ; [+3]
      791 GETTABLEKS                       R57 R8 K11 ["observeSelectedGraphInstance"]
      793 JUMP                             ; [+1]
      794 MOVE                             R57 R17
      795 CALL                             R55 2 1
      796 GETUPVAL                         R56 35
      797 MOVE                             R57 R16
      798 GETUPVAL                         R59 5
      799 CALL                             R59 0 1
      800 JUMPIFNOT                        R59 ; [+3]
      801 GETTABLEKS                       R58 R8 K11 ["observeSelectedGraphInstance"]
      803 JUMP                             ; [+1]
      804 MOVE                             R58 R17
      805 CALL                             R56 2 1
      806 GETUPVAL                         R57 36
      807 MOVE                             R58 R16
      808 GETUPVAL                         R60 5
      809 CALL                             R60 0 1
      810 JUMPIFNOT                        R60 ; [+3]
      811 GETTABLEKS                       R59 R8 K11 ["observeSelectedGraphInstance"]
      813 JUMP                             ; [+1]
      814 MOVE                             R59 R17
      815 CALL                             R57 2 1
      816 GETUPVAL                         R58 1
      817 GETTABLEKS                       R58 R58 K15 ["useCallback"]
      819 NEWCLOSURE                       R59 P31
      820 CAPTURE                          VAL R20
      821 CAPTURE                          UPVAL U17
      822 CAPTURE                          UPVAL U14
      823 CAPTURE                          VAL R16
      824 NEWTABLE                         R60 0 2
      826 MOVE                             R61 R16
      827 MOVE                             R62 R20
      828 SETLIST                          R60 R61 2 [1]
      830 CALL                             R58 2 1
      831 GETUPVAL                         R59 1
      832 GETTABLEKS                       R59 R59 K15 ["useCallback"]
      834 NEWCLOSURE                       R60 P32
      835 CAPTURE                          VAL R20
      836 CAPTURE                          UPVAL U17
      837 CAPTURE                          UPVAL U14
      838 CAPTURE                          VAL R16
      839 CAPTURE                          UPVAL U37
      840 CAPTURE                          VAL R55
      841 NEWTABLE                         R61 0 3
      843 MOVE                             R62 R16
      844 MOVE                             R63 R20
      845 GETTABLEKS                       R64 R55 K29 ["setNodeOutputInfoInDestroyMapRef"]
      847 SETLIST                          R61 R62 3 [1]
      849 CALL                             R59 2 1
      850 GETUPVAL                         R60 1
      851 GETTABLEKS                       R60 R60 K15 ["useCallback"]
      853 NEWCLOSURE                       R61 P33
      854 CAPTURE                          UPVAL U22
      855 CAPTURE                          UPVAL U33
      856 CAPTURE                          UPVAL U5
      857 CAPTURE                          VAL R8
      858 CAPTURE                          VAL R17
      859 CAPTURE                          UPVAL U17
      860 CAPTURE                          VAL R16
      861 CAPTURE                          UPVAL U14
      862 CAPTURE                          UPVAL U32
      863 CAPTURE                          VAL R50
      864 CAPTURE                          VAL R51
      865 CAPTURE                          VAL R59
      866 NEWTABLE                         R62 0 6
      868 GETUPVAL                         R64 5
      869 CALL                             R64 0 1
      870 JUMPIFNOT                        R64 ; [+3]
      871 GETTABLEKS                       R63 R8 K11 ["observeSelectedGraphInstance"]
      873 JUMP                             ; [+1]
      874 MOVE                             R63 R17
      875 MOVE                             R64 R20
      876 MOVE                             R65 R16
      877 MOVE                             R66 R50
      878 MOVE                             R67 R51
      879 MOVE                             R68 R59
      880 SETLIST                          R62 R63 6 [1]
      882 CALL                             R60 2 1
      883 GETUPVAL                         R61 1
      884 GETTABLEKS                       R61 R61 K15 ["useCallback"]
      886 NEWCLOSURE                       R62 P34
      887 CAPTURE                          VAL R12
      888 CAPTURE                          UPVAL U17
      889 NEWTABLE                         R63 0 0
      891 CALL                             R61 2 1
      892 GETUPVAL                         R62 1
      893 GETTABLEKS                       R62 R62 K15 ["useCallback"]
      895 NEWCLOSURE                       R63 P35
      896 CAPTURE                          VAL R12
      897 CAPTURE                          UPVAL U17
      898 NEWTABLE                         R64 0 0
      900 CALL                             R62 2 1
      901 GETUPVAL                         R63 1
      902 GETTABLEKS                       R63 R63 K9 ["useEffect"]
      904 NEWCLOSURE                       R64 P36
      905 CAPTURE                          VAL R12
      906 CAPTURE                          UPVAL U17
      907 NEWTABLE                         R65 0 0
      909 CALL                             R63 2 0
      910 GETUPVAL                         R63 1
      911 GETTABLEKS                       R63 R63 K15 ["useCallback"]
      913 NEWCLOSURE                       R64 P37
      914 CAPTURE                          UPVAL U17
      915 CAPTURE                          VAL R16
      916 CAPTURE                          UPVAL U20
      917 NEWTABLE                         R65 0 1
      919 MOVE                             R66 R16
      920 SETLIST                          R65 R66 1 [1]
      922 CALL                             R63 2 1
      923 GETUPVAL                         R64 1
      924 GETTABLEKS                       R64 R64 K15 ["useCallback"]
      926 NEWCLOSURE                       R65 P38
      927 CAPTURE                          UPVAL U17
      928 CAPTURE                          VAL R16
      929 NEWTABLE                         R66 0 1
      931 MOVE                             R67 R16
      932 SETLIST                          R66 R67 1 [1]
      934 CALL                             R64 2 1
      935 GETUPVAL                         R65 1
      936 GETTABLEKS                       R65 R65 K15 ["useCallback"]
      938 NEWCLOSURE                       R66 P39
      939 CAPTURE                          UPVAL U17
      940 CAPTURE                          VAL R16
      941 CAPTURE                          UPVAL U37
      942 CAPTURE                          UPVAL U14
      943 CAPTURE                          UPVAL U38
      944 CAPTURE                          UPVAL U33
      945 CAPTURE                          UPVAL U27
      946 CAPTURE                          VAL R1
      947 CAPTURE                          VAL R20
      948 NEWTABLE                         R67 0 3
      950 MOVE                             R68 R16
      951 MOVE                             R69 R20
      952 GETTABLEKS                       R70 R1 K30 ["observe"]
      954 SETLIST                          R67 R68 3 [1]
      956 CALL                             R65 2 1
      957 GETUPVAL                         R66 1
      958 GETTABLEKS                       R66 R66 K15 ["useCallback"]
      960 NEWCLOSURE                       R67 P40
      961 CAPTURE                          UPVAL U17
      962 CAPTURE                          UPVAL U14
      963 CAPTURE                          VAL R16
      964 NEWTABLE                         R68 0 1
      966 MOVE                             R69 R16
      967 SETLIST                          R68 R69 1 [1]
      969 CALL                             R66 2 1
      970 GETUPVAL                         R67 1
      971 GETTABLEKS                       R67 R67 K15 ["useCallback"]
      973 NEWCLOSURE                       R68 P41
      974 CAPTURE                          UPVAL U5
      975 CAPTURE                          VAL R8
      976 CAPTURE                          VAL R17
      977 CAPTURE                          VAL R20
      978 CAPTURE                          VAL R16
      979 CAPTURE                          UPVAL U14
      980 CAPTURE                          UPVAL U17
      981 NEWTABLE                         R69 0 3
      983 MOVE                             R70 R17
      984 MOVE                             R71 R16
      985 MOVE                             R72 R20
      986 SETLIST                          R69 R70 3 [1]
      988 CALL                             R67 2 1
      989 GETUPVAL                         R68 1
      990 GETTABLEKS                       R68 R68 K15 ["useCallback"]
      992 NEWCLOSURE                       R69 P42
      993 CAPTURE                          UPVAL U22
      994 CAPTURE                          UPVAL U39
      995 CAPTURE                          UPVAL U5
      996 CAPTURE                          VAL R8
      997 CAPTURE                          VAL R17
      998 CAPTURE                          VAL R16
      999 CAPTURE                          UPVAL U14
     1000 CAPTURE                          UPVAL U17
     1001 CAPTURE                          VAL R56
     1002 CAPTURE                          UPVAL U33
     1003 NEWTABLE                         R70 0 4
     1005 MOVE                             R71 R16
     1006 MOVE                             R72 R17
     1007 MOVE                             R73 R20
     1008 GETTABLEKS                       R74 R56 K31 ["parameterDestroyConnectionMapRef"]
     1010 SETLIST                          R70 R71 4 [1]
     1012 CALL                             R68 2 1
     1013 GETUPVAL                         R69 1
     1014 GETTABLEKS                       R69 R69 K15 ["useCallback"]
     1016 NEWCLOSURE                       R70 P43
     1017 CAPTURE                          UPVAL U5
     1018 CAPTURE                          VAL R8
     1019 CAPTURE                          VAL R17
     1020 CAPTURE                          UPVAL U14
     1021 CAPTURE                          UPVAL U17
     1022 CAPTURE                          UPVAL U33
     1023 NEWTABLE                         R71 0 1
     1025 GETUPVAL                         R73 5
     1026 CALL                             R73 0 1
     1027 JUMPIFNOT                        R73 ; [+3]
     1028 GETTABLEKS                       R72 R8 K11 ["observeSelectedGraphInstance"]
     1030 JUMP                             ; [+1]
     1031 MOVE                             R72 R17
     1032 SETLIST                          R71 R72 1 [1]
     1034 CALL                             R69 2 1
     1035 GETUPVAL                         R70 1
     1036 GETTABLEKS                       R70 R70 K15 ["useCallback"]
     1038 NEWCLOSURE                       R71 P44
     1039 CAPTURE                          VAL R16
     1040 CAPTURE                          UPVAL U17
     1041 NEWTABLE                         R72 0 1
     1043 MOVE                             R73 R16
     1044 SETLIST                          R72 R73 1 [1]
     1046 CALL                             R70 2 1
     1047 GETUPVAL                         R71 1
     1048 GETTABLEKS                       R71 R71 K15 ["useCallback"]
     1050 NEWCLOSURE                       R72 P45
     1051 CAPTURE                          VAL R16
     1052 CAPTURE                          VAL R5
     1053 NEWTABLE                         R73 0 2
     1055 MOVE                             R74 R16
     1056 GETTABLEKS                       R75 R5 K32 ["selectionService"]
     1058 SETLIST                          R73 R74 2 [1]
     1060 CALL                             R71 2 1
     1061 GETUPVAL                         R72 1
     1062 GETTABLEKS                       R72 R72 K15 ["useCallback"]
     1064 NEWCLOSURE                       R73 P46
     1065 CAPTURE                          UPVAL U32
     1066 CAPTURE                          UPVAL U5
     1067 CAPTURE                          VAL R8
     1068 CAPTURE                          VAL R17
     1069 CAPTURE                          VAL R16
     1070 CAPTURE                          UPVAL U14
     1071 CAPTURE                          UPVAL U33
     1072 CAPTURE                          UPVAL U17
     1073 NEWTABLE                         R74 0 2
     1075 GETUPVAL                         R76 5
     1076 CALL                             R76 0 1
     1077 JUMPIFNOT                        R76 ; [+3]
     1078 GETTABLEKS                       R75 R8 K11 ["observeSelectedGraphInstance"]
     1080 JUMP                             ; [+1]
     1081 MOVE                             R75 R17
     1082 MOVE                             R76 R16
     1083 SETLIST                          R74 R75 2 [1]
     1085 CALL                             R72 2 1
     1086 GETUPVAL                         R73 1
     1087 GETTABLEKS                       R73 R73 K9 ["useEffect"]
     1089 NEWCLOSURE                       R74 P47
     1090 CAPTURE                          UPVAL U37
     1091 CAPTURE                          UPVAL U15
     1092 CAPTURE                          VAL R55
     1093 CAPTURE                          VAL R16
     1094 CAPTURE                          VAL R28
     1095 CAPTURE                          UPVAL U14
     1096 NEWTABLE                         R75 0 2
     1098 MOVE                             R76 R16
     1099 GETTABLEKS                       R77 R55 K33 ["nodeDestroyConnectionMapRef"]
     1101 SETLIST                          R75 R76 2 [1]
     1103 CALL                             R73 2 0
     1104 GETUPVAL                         R73 1
     1105 GETTABLEKS                       R73 R73 K9 ["useEffect"]
     1107 NEWCLOSURE                       R74 P48
     1108 CAPTURE                          UPVAL U15
     1109 CAPTURE                          VAL R56
     1110 CAPTURE                          VAL R16
     1111 CAPTURE                          UPVAL U37
     1112 CAPTURE                          UPVAL U14
     1113 CAPTURE                          UPVAL U33
     1114 CAPTURE                          VAL R67
     1115 NEWTABLE                         R75 0 3
     1117 MOVE                             R76 R16
     1118 GETTABLEKS                       R77 R56 K31 ["parameterDestroyConnectionMapRef"]
     1120 MOVE                             R78 R67
     1121 SETLIST                          R75 R76 3 [1]
     1123 CALL                             R73 2 0
     1124 NEWCLOSURE                       R73 P49
     1125 CAPTURE                          VAL R16
     1126 CAPTURE                          VAL R28
     1127 CAPTURE                          UPVAL U14
     1128 GETUPVAL                         R74 1
     1129 GETTABLEKS                       R74 R74 K9 ["useEffect"]
     1131 NEWCLOSURE                       R75 P50
     1132 CAPTURE                          UPVAL U37
     1133 CAPTURE                          UPVAL U15
     1134 CAPTURE                          VAL R55
     1135 CAPTURE                          VAL R16
     1136 CAPTURE                          VAL R28
     1137 CAPTURE                          UPVAL U14
     1138 NEWTABLE                         R76 0 3
     1140 MOVE                             R77 R16
     1141 GETTABLEKS                       R78 R55 K33 ["nodeDestroyConnectionMapRef"]
     1143 GETTABLEKS                       R79 R55 K34 ["observeNodeInfoLookupListRef"]
     1145 SETLIST                          R76 R77 3 [1]
     1147 CALL                             R74 2 0
     1148 GETUPVAL                         R74 1
     1149 GETTABLEKS                       R74 R74 K9 ["useEffect"]
     1151 NEWCLOSURE                       R75 P51
     1152 CAPTURE                          UPVAL U37
     1153 CAPTURE                          UPVAL U15
     1154 CAPTURE                          VAL R57
     1155 CAPTURE                          VAL R16
     1156 CAPTURE                          VAL R28
     1157 CAPTURE                          UPVAL U14
     1158 NEWTABLE                         R76 0 3
     1160 MOVE                             R77 R16
     1161 GETTABLEKS                       R78 R57 K35 ["destroyConnectionMapRef"]
     1163 GETTABLEKS                       R79 R57 K36 ["observeValueNodeInfoLookupListRef"]
     1165 SETLIST                          R76 R77 3 [1]
     1167 CALL                             R74 2 0
     1168 GETUPVAL                         R74 40
     1169 MOVE                             R75 R2
     1170 MOVE                             R76 R1
     1171 CALL                             R74 2 1
     1172 GETUPVAL                         R76 5
     1173 CALL                             R76 0 1
     1174 JUMPIFNOT                        R76 ; [+7]
     1175 GETUPVAL                         R75 19
     1176 GETTABLEKS                       R75 R75 K18 ["useSignalState"]
     1178 GETTABLEKS                       R76 R8 K37 ["observeSelectedGraphIsEphemeral"]
     1180 CALL                             R75 1 1
     1181 JUMP                             ; [+1]
     1182 LOADB                            R75 0
     1183 NEWTABLE                         R76 64 0
     1185 GETUPVAL                         R78 5
     1186 CALL                             R78 0 1
     1187 JUMPIFNOT                        R78 ; [+2]
     1188 MOVE                             R77 R75
     1189 JUMP                             ; [+1]
     1190 LOADNIL                          R77
     1191 SETTABLEKS                       R77 R76 K38 ["isReadonly"]
     1193 GETUPVAL                         R78 5
     1194 CALL                             R78 0 1
     1195 JUMPIF                           R78 ; [+4]
     1196 JUMPIFNOT                        R20 ; [+3]
     1197 GETTABLEKS                       R77 R20 K39 ["graphInstanceId"]
     1199 JUMP                             ; [+1]
     1200 LOADNIL                          R77
     1201 SETTABLEKS                       R77 R76 K40 ["selectedGraphInstanceId_DEPRECATED"]
     1203 SETTABLEKS                       R66 R76 K41 ["reorderPinsAsync"]
     1205 SETTABLEKS                       R41 R76 K42 ["createNodeAsync"]
     1207 SETTABLEKS                       R50 R76 K43 ["createParameterAsync"]
     1209 SETTABLEKS                       R51 R76 K44 ["createExistingParameterAsync"]
     1211 SETTABLEKS                       R60 R76 K45 ["createConnectedParameterAsync"]
     1213 SETTABLEKS                       R10 R76 K46 ["graphRect"]
     1215 SETTABLEKS                       R49 R76 K47 ["selectAllParameterNodesWithNameAsync"]
     1217 SETTABLEKS                       R33 R76 K48 ["selectNodesAsync"]
     1219 SETTABLEKS                       R34 R76 K49 ["selectNodesFromRectAsync"]
     1221 SETTABLEKS                       R42 R76 K50 ["removeSelectedNodesAsync"]
     1223 SETTABLEKS                       R43 R76 K51 ["duplicateSelectedNodesAsync"]
     1225 SETTABLEKS                       R45 R76 K52 ["selectAllNodesAsync"]
     1227 SETTABLEKS                       R44 R76 K53 ["clearNodeSelectionAsync"]
     1229 SETTABLEKS                       R46 R76 K54 ["copySelectedNodesAsync"]
     1231 SETTABLEKS                       R47 R76 K55 ["cutSelectedNodesAsync"]
     1233 SETTABLEKS                       R48 R76 K56 ["pasteNodesAsync"]
     1235 SETTABLEKS                       R31 R76 K57 ["setNodePositionsAsync"]
     1237 SETTABLEKS                       R32 R76 K58 ["setNodeSizeAsync"]
     1239 SETTABLEKS                       R59 R76 K59 ["setNodeConnectionAsync"]
     1241 SETTABLEKS                       R52 R76 K60 ["deleteNodeInput"]
     1243 SETTABLEKS                       R53 R76 K61 ["renameNodeInputAsync"]
     1245 SETTABLEKS                       R58 R76 K62 ["removeNodeOutputConnectionAsync"]
     1247 SETTABLEKS                       R54 R76 K63 ["removeNodeInputConnectionAsync"]
     1249 SETTABLEKS                       R67 R76 K64 ["removeParameterAsync"]
     1251 SETTABLEKS                       R65 R76 K65 ["renameNodeAsync"]
     1253 SETTABLEKS                       R68 R76 K66 ["renameParameterAsync"]
     1255 SETTABLEKS                       R70 R76 K67 ["deleteNodeInstanceAsync"]
     1257 SETTABLEKS                       R71 R76 K68 ["showNodeInExplorerAsync"]
     1259 SETTABLEKS                       R29 R76 K69 ["setCollapsedAsync"]
     1261 SETTABLEKS                       R63 R76 K70 ["setNodePropertyAsync"]
     1263 SETTABLEKS                       R64 R76 K71 ["setInputPinNodePropertyAsync"]
     1265 SETTABLEKS                       R69 R76 K72 ["setParameterNodeTypeAsync"]
     1267 SETTABLEKS                       R35 R76 K73 ["currentAnimationId"]
     1269 SETTABLEKS                       R37 R76 K74 ["sourceAssetId"]
     1271 SETTABLEKS                       R40 R76 K75 ["selectedGraphKey"]
     1273 GETUPVAL                         R78 5
     1274 CALL                             R78 0 1
     1275 JUMPIFNOT                        R78 ; [+2]
     1276 LOADNIL                          R77
     1277 JUMP                             ; [+1]
     1278 MOVE                             R77 R17
     1279 SETTABLEKS                       R77 R76 K76 ["observeSelectedGraphInstance_DEPRECATED"]
     1281 GETTABLEKS                       R77 R1 K30 ["observe"]
     1283 SETTABLEKS                       R77 R76 K77 ["observeGraphNodeById"]
     1285 GETTABLEKS                       R77 R2 K30 ["observe"]
     1287 SETTABLEKS                       R77 R76 K78 ["observeNodeRenderInfoById"]
     1289 SETTABLEKS                       R61 R76 K79 ["beginUndoTransaction"]
     1291 SETTABLEKS                       R62 R76 K80 ["finishUndoTransaction"]
     1293 GETTABLEKS                       R77 R1 K81 ["observeMap"]
     1295 SETTABLEKS                       R77 R76 K82 ["observeGraphNodeMap"]
     1297 GETTABLEKS                       R77 R2 K81 ["observeMap"]
     1299 SETTABLEKS                       R77 R76 K83 ["observeRenderInfoMap"]
     1301 GETTABLEKS                       R77 R74 K84 ["hasGraphOutput"]
     1303 SETTABLEKS                       R77 R76 K84 ["hasGraphOutput"]
     1305 GETTABLEKS                       R77 R3 K30 ["observe"]
     1307 SETTABLEKS                       R77 R76 K85 ["observeNodePropsById"]
     1309 SETTABLEKS                       R72 R76 K86 ["setExpressionNodeValueAsync"]
     1311 SETTABLEKS                       R19 R76 K87 ["observeExpressionNodes"]
     1313 GETUPVAL                         R77 1
     1314 GETTABLEKS                       R77 R77 K8 ["useMemo"]
     1316 DUPCLOSURE                       R78 K88 [PROTO_78]
     1317 NEWTABLE                         R79 0 0
     1319 CALL                             R77 2 1
     1320 GETUPVAL                         R78 1
     1321 GETTABLEKS                       R78 R78 K8 ["useMemo"]
     1323 NEWCLOSURE                       R79 P53
     1324 CAPTURE                          UPVAL U41
     1325 CAPTURE                          UPVAL U5
     1326 CAPTURE                          VAL R8
     1327 CAPTURE                          VAL R17
     1328 NEWTABLE                         R80 0 2
     1330 GETUPVAL                         R82 5
     1331 CALL                             R82 0 1
     1332 JUMPIFNOT                        R82 ; [+3]
     1333 GETTABLEKS                       R81 R8 K11 ["observeSelectedGraphInstance"]
     1335 JUMP                             ; [+1]
     1336 MOVE                             R81 R17
     1337 MOVE                             R82 R20
     1338 SETLIST                          R80 R81 2 [1]
     1340 CALL                             R78 2 1
     1341 GETUPVAL                         R79 4
     1342 GETTABLEKS                       R79 R79 K89 ["usePasteHooks"]
     1344 GETUPVAL                         R81 5
     1345 CALL                             R81 0 1
     1346 JUMPIFNOT                        R81 ; [+3]
     1347 GETTABLEKS                       R80 R8 K11 ["observeSelectedGraphInstance"]
     1349 JUMP                             ; [+1]
     1350 MOVE                             R80 R17
     1351 CALL                             R79 1 0
     1352 GETUPVAL                         R79 19
     1353 GETTABLEKS                       R79 R79 K18 ["useSignalState"]
     1355 MOVE                             R80 R78
     1356 CALL                             R79 1 1
     1357 GETUPVAL                         R80 31
     1358 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1360 LOADK                            R81 K91 ["NativeGraphContext_GraphPayloadMap"]
     1361 MOVE                             R82 R20
     1362 CALL                             R80 2 0
     1363 GETUPVAL                         R80 31
     1364 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1366 LOADK                            R81 K92 ["NativeGraphContext_GraphRenderInfo"]
     1367 MOVE                             R82 R22
     1368 CALL                             R80 2 0
     1369 GETUPVAL                         R80 31
     1370 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1372 LOADK                            R81 K93 ["NativeGraphContext_GraphNodeProps"]
     1373 MOVE                             R82 R24
     1374 CALL                             R80 2 0
     1375 GETUPVAL                         R80 31
     1376 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1378 LOADK                            R81 K94 ["NativeGraphContext_ExpressionNodes"]
     1379 MOVE                             R82 R26
     1380 CALL                             R80 2 0
     1381 GETUPVAL                         R80 31
     1382 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1384 LOADK                            R81 K95 ["NativeGraphContext_TimeRange"]
     1385 MOVE                             R82 R77
     1386 CALL                             R80 2 0
     1387 GETUPVAL                         R80 31
     1388 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1390 LOADK                            R81 K96 ["NativeGraphContext_GraphPayloadGraphRect"]
     1391 MOVE                             R82 R10
     1392 CALL                             R80 2 0
     1393 GETUPVAL                         R80 31
     1394 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1396 LOADK                            R81 K97 ["NativeGraphContext_SourceAssetId"]
     1397 MOVE                             R82 R37
     1398 CALL                             R80 2 0
     1399 GETUPVAL                         R80 18
     1400 CALL                             R80 0 1
     1401 JUMPIF                           R80 ; [+6]
     1402 GETUPVAL                         R80 31
     1403 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1405 LOADK                            R81 K98 ["NativeGraphContext_CurrentAnimationId"]
     1406 MOVE                             R82 R35
     1407 CALL                             R80 2 0
     1408 GETUPVAL                         R80 18
     1409 CALL                             R80 0 1
     1410 JUMPIFNOT                        R80 ; [+6]
     1411 GETUPVAL                         R80 31
     1412 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1414 LOADK                            R81 K99 ["NativeGraphContext_SelectedGraphKey"]
     1415 MOVE                             R82 R40
     1416 CALL                             R80 2 0
     1417 GETUPVAL                         R80 31
     1418 GETTABLEKS                       R80 R80 K90 ["useReplicatedState"]
     1420 LOADK                            R81 K100 ["NativeGraphContext_UndoTransaction"]
     1421 MOVE                             R82 R12
     1422 CALL                             R80 2 0
     1423 GETUPVAL                         R80 31
     1424 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1426 LOADK                            R81 K101 ["NativeGraphContext_CreateNode"]
     1427 MOVE                             R82 R41
     1428 CALL                             R80 2 0
     1429 GETUPVAL                         R80 31
     1430 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1432 LOADK                            R81 K102 ["NativeGraphContext_CreateParameterAsync"]
     1433 MOVE                             R82 R50
     1434 CALL                             R80 2 0
     1435 GETUPVAL                         R80 31
     1436 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1438 LOADK                            R81 K103 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1439 MOVE                             R82 R60
     1440 CALL                             R80 2 0
     1441 GETUPVAL                         R80 31
     1442 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1444 LOADK                            R81 K104 ["NativeGraphContext_CreateExistingParameterAsync"]
     1445 MOVE                             R82 R51
     1446 CALL                             R80 2 0
     1447 GETUPVAL                         R80 31
     1448 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1450 LOADK                            R81 K105 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1451 MOVE                             R82 R49
     1452 CALL                             R80 2 0
     1453 GETUPVAL                         R80 31
     1454 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1456 LOADK                            R81 K106 ["NativeGraphContext_SelectNodes"]
     1457 MOVE                             R82 R33
     1458 CALL                             R80 2 0
     1459 GETUPVAL                         R80 31
     1460 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1462 LOADK                            R81 K107 ["NativeGraphContext_SelectNodesFromRect"]
     1463 MOVE                             R82 R34
     1464 CALL                             R80 2 0
     1465 GETUPVAL                         R80 31
     1466 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1468 LOADK                            R81 K108 ["NativeGraphContext_SetNodePositionsAsync"]
     1469 MOVE                             R82 R31
     1470 CALL                             R80 2 0
     1471 GETUPVAL                         R80 31
     1472 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1474 LOADK                            R81 K109 ["NativeGraphContext_SetNodeSizeAsync"]
     1475 MOVE                             R82 R32
     1476 CALL                             R80 2 0
     1477 GETUPVAL                         R80 31
     1478 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1480 LOADK                            R81 K110 ["NativeGraphContext_SetNodeConnectionAsync"]
     1481 MOVE                             R82 R59
     1482 CALL                             R80 2 0
     1483 GETUPVAL                         R80 31
     1484 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1486 LOADK                            R81 K111 ["NativeGraphContext_DeleteNodeInput"]
     1487 MOVE                             R82 R52
     1488 CALL                             R80 2 0
     1489 GETUPVAL                         R80 31
     1490 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1492 LOADK                            R81 K112 ["NativeGraphContext_RenameNodeInput"]
     1493 MOVE                             R82 R53
     1494 CALL                             R80 2 0
     1495 GETUPVAL                         R80 31
     1496 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1498 LOADK                            R81 K113 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1499 MOVE                             R82 R58
     1500 CALL                             R80 2 0
     1501 GETUPVAL                         R80 31
     1502 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1504 LOADK                            R81 K114 ["NativeGraphContext_RemoveNodeInputConnection"]
     1505 MOVE                             R82 R54
     1506 CALL                             R80 2 0
     1507 GETUPVAL                         R80 31
     1508 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1510 LOADK                            R81 K115 ["NativeGraphContext_RemoveParameterAsync"]
     1511 MOVE                             R82 R67
     1512 CALL                             R80 2 0
     1513 GETUPVAL                         R80 31
     1514 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1516 LOADK                            R81 K116 ["NativeGraphContext_RenameNodeAsync"]
     1517 MOVE                             R82 R65
     1518 CALL                             R80 2 0
     1519 GETUPVAL                         R80 31
     1520 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1522 LOADK                            R81 K117 ["NativeGraphContext_RenameParameterAsync"]
     1523 MOVE                             R82 R68
     1524 CALL                             R80 2 0
     1525 GETUPVAL                         R80 31
     1526 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1528 LOADK                            R81 K118 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1529 MOVE                             R82 R70
     1530 CALL                             R80 2 0
     1531 GETUPVAL                         R80 31
     1532 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1534 LOADK                            R81 K119 ["NativeGraphContext_ShowNodeInExplorer"]
     1535 MOVE                             R82 R71
     1536 CALL                             R80 2 0
     1537 GETUPVAL                         R80 31
     1538 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1540 LOADK                            R81 K120 ["NativeGraphContext_SetCollapsedAsync"]
     1541 MOVE                             R82 R29
     1542 CALL                             R80 2 0
     1543 GETUPVAL                         R80 31
     1544 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1546 LOADK                            R81 K121 ["NativeGraphContext_setNodePropertyAsync"]
     1547 MOVE                             R82 R63
     1548 CALL                             R80 2 0
     1549 GETUPVAL                         R80 31
     1550 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1552 LOADK                            R81 K122 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1553 MOVE                             R82 R64
     1554 CALL                             R80 2 0
     1555 GETUPVAL                         R80 31
     1556 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1558 LOADK                            R81 K123 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1559 MOVE                             R82 R69
     1560 CALL                             R80 2 0
     1561 GETUPVAL                         R80 31
     1562 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1564 LOADK                            R81 K124 ["NativeGraphContext_ReorderPinsAsync"]
     1565 MOVE                             R82 R66
     1566 CALL                             R80 2 0
     1567 GETUPVAL                         R80 31
     1568 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1570 LOADK                            R81 K125 ["NativeGraphContext_beginUndoTransaction"]
     1571 MOVE                             R82 R61
     1572 CALL                             R80 2 0
     1573 GETUPVAL                         R80 31
     1574 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1576 LOADK                            R81 K126 ["NativeGraphContext_finishUndoTransaction"]
     1577 MOVE                             R82 R62
     1578 CALL                             R80 2 0
     1579 GETUPVAL                         R80 31
     1580 GETTABLEKS                       R80 R80 K22 ["useBoundAction"]
     1582 LOADK                            R81 K127 ["NativeGraphContext_SetExpressionNodeValueAsync"]
     1583 MOVE                             R82 R72
     1584 CALL                             R80 2 0
     1585 GETUPVAL                         R80 42
     1586 GETTABLEKS                       R80 R80 K21 ["useProducer"]
     1588 MOVE                             R81 R30
     1589 CALL                             R80 1 0
     1590 GETUPVAL                         R80 1
     1591 GETTABLEKS                       R80 R80 K128 ["createElement"]
     1593 GETUPVAL                         R81 43
     1594 GETTABLEKS                       R81 R81 K129 ["Provider"]
     1596 DUPTABLE                         R82 K131 [{"value"}]
     1597 SETTABLEKS                       R76 R82 K130 ["value"]
     1599 DUPTABLE                         R83 K133 [{"ContextStack"}]
     1600 GETUPVAL                         R84 1
     1601 GETTABLEKS                       R84 R84 K128 ["createElement"]
     1603 GETUPVAL                         R85 16
     1604 GETTABLEKS                       R85 R85 K132 ["ContextStack"]
     1606 DUPTABLE                         R86 K135 [{"providers"}]
     1607 NEWTABLE                         R87 0 2
     1609 GETUPVAL                         R88 1
     1610 GETTABLEKS                       R88 R88 K128 ["createElement"]
     1612 GETUPVAL                         R89 44
     1613 GETTABLEKS                       R89 R89 K129 ["Provider"]
     1615 DUPTABLE                         R90 K137 [{"timeRange"}]
     1616 SETTABLEKS                       R77 R90 K136 ["timeRange"]
     1618 CALL                             R88 2 1
     1619 GETUPVAL                         R89 1
     1620 GETTABLEKS                       R89 R89 K128 ["createElement"]
     1622 GETUPVAL                         R90 45
     1623 GETTABLEKS                       R90 R90 K129 ["Provider"]
     1625 DUPTABLE                         R91 K139 [{"animationClipsList"}]
     1626 SETTABLEKS                       R79 R91 K138 ["animationClipsList"]
     1628 CALL                             R89 2 -1
     1629 SETLIST                          R87 R88 -1 [1]
     1631 SETTABLEKS                       R87 R86 K134 ["providers"]
     1633 GETTABLEKS                       R87 R0 K140 ["children"]
     1635 CALL                             R84 3 1
     1636 SETTABLEKS                       R84 R83 K132 ["ContextStack"]
     1638 CALL                             R80 3 -1
     1639 RETURN                           R80 -1

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_86:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_87:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_88:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_89:
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

PROTO_90:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_91:
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

PROTO_92:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_93:
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

PROTO_94:
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

PROTO_95:
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

PROTO_96:
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
       45 JUMPIFNOTEQ                      R7 R8 ; [+5]
       47 GETTABLEKS                       R8 R6 K5 ["weight"]
       49 ORK                              R7 R8 K4 [1]
       50 RETURN                           R7 1
       51 FORGLOOP                         R2 2 ; [-10]
       53 LOADN                            R2 1
       54 RETURN                           R2 1

PROTO_97:
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

PROTO_98:
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

PROTO_99:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_100:
        0 DUPTABLE                         R0 K30 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "isReadonly", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "setZIndex", "deleteNodeInput", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "observeNodeInputBindings"}]
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
       52 NEWCLOSURE                       R1 P0
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R1 R0 K11 ["setZIndex"]
       56 GETUPVAL                         R1 13
       57 SETTABLEKS                       R1 R0 K12 ["deleteNodeInput"]
       59 GETUPVAL                         R1 14
       60 SETTABLEKS                       R1 R0 K13 ["removeNodeInputConnectionAsync"]
       62 GETUPVAL                         R1 15
       63 SETTABLEKS                       R1 R0 K14 ["removeNodeOutputConnectionAsync"]
       65 GETUPVAL                         R2 16
       66 NEWCLOSURE                       R1 P0
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R1 R0 K15 ["removeParameter"]
       70 GETUPVAL                         R2 17
       71 NEWCLOSURE                       R1 P0
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R1 R0 K16 ["renameNode"]
       75 GETUPVAL                         R2 18
       76 NEWCLOSURE                       R1 P0
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R1 R0 K17 ["renameParameter"]
       80 GETUPVAL                         R2 19
       81 NEWCLOSURE                       R1 P0
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R1 R0 K18 ["deleteNodeInstance"]
       85 GETUPVAL                         R2 20
       86 NEWCLOSURE                       R1 P0
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R1 R0 K19 ["removeNodes"]
       90 GETUPVAL                         R2 21
       91 NEWCLOSURE                       R1 P0
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R1 R0 K20 ["setNodeConnection"]
       95 GETUPVAL                         R2 22
       96 NEWCLOSURE                       R1 P0
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R1 R0 K21 ["setNodePositions"]
      100 GETUPVAL                         R2 23
      101 NEWCLOSURE                       R1 P0
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R1 R0 K22 ["setNodeProperty"]
      105 GETUPVAL                         R2 24
      106 NEWCLOSURE                       R1 P0
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R1 R0 K23 ["setInputPinNodeProperty"]
      110 GETUPVAL                         R2 25
      111 NEWCLOSURE                       R1 P0
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R1 R0 K24 ["setNodeSize"]
      115 GETUPVAL                         R2 26
      116 NEWCLOSURE                       R1 P0
      117 CAPTURE                          VAL R2
      118 SETTABLEKS                       R1 R0 K25 ["setParameterNodeType"]
      120 GETUPVAL                         R1 27
      121 GETTABLEKS                       R1 R1 K31 ["observe"]
      123 SETTABLEKS                       R1 R0 K26 ["observeNodePropsById"]
      125 GETUPVAL                         R1 28
      126 SETTABLEKS                       R1 R0 K27 ["observeNodeStateById"]
      128 GETUPVAL                         R1 29
      129 SETTABLEKS                       R1 R0 K28 ["observeFadeByNodeId"]
      131 GETUPVAL                         R1 30
      132 SETTABLEKS                       R1 R0 K29 ["observeNodeInputBindings"]
      134 RETURN                           R0 1

PROTO_101:
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
       26 DUPCLOSURE                       R8 K3 [PROTO_82]
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
       75 LOADK                            R8 K11 ["NativeGraphContext_ExpressionNodes"]
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
      145 DUPCLOSURE                       R14 K27 [PROTO_85]
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
      219 LOADK                            R28 K41 ["NativeGraphContext_RenameNodeInput"]
      220 CALL                             R27 1 1
      221 GETUPVAL                         R28 5
      222 GETTABLEKS                       R28 R28 K29 ["useBoundAction"]
      224 LOADK                            R29 K42 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      225 CALL                             R28 1 1
      226 GETUPVAL                         R29 5
      227 GETTABLEKS                       R29 R29 K29 ["useBoundAction"]
      229 LOADK                            R30 K43 ["NativeGraphContext_RemoveNodeInputConnection"]
      230 CALL                             R29 1 1
      231 GETUPVAL                         R30 5
      232 GETTABLEKS                       R30 R30 K29 ["useBoundAction"]
      234 LOADK                            R31 K44 ["NativeGraphContext_RemoveParameterAsync"]
      235 CALL                             R30 1 1
      236 GETUPVAL                         R31 5
      237 GETTABLEKS                       R31 R31 K29 ["useBoundAction"]
      239 LOADK                            R32 K45 ["NativeGraphContext_RenameNodeAsync"]
      240 CALL                             R31 1 1
      241 GETUPVAL                         R32 5
      242 GETTABLEKS                       R32 R32 K29 ["useBoundAction"]
      244 LOADK                            R33 K46 ["NativeGraphContext_RenameParameterAsync"]
      245 CALL                             R32 1 1
      246 GETUPVAL                         R33 5
      247 GETTABLEKS                       R33 R33 K29 ["useBoundAction"]
      249 LOADK                            R34 K47 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      250 CALL                             R33 1 1
      251 GETUPVAL                         R34 5
      252 GETTABLEKS                       R34 R34 K29 ["useBoundAction"]
      254 LOADK                            R35 K48 ["NativeGraphContext_ShowNodeInExplorer"]
      255 CALL                             R34 1 1
      256 GETUPVAL                         R35 5
      257 GETTABLEKS                       R35 R35 K29 ["useBoundAction"]
      259 LOADK                            R36 K49 ["NativeGraphContext_SetCollapsedAsync"]
      260 CALL                             R35 1 1
      261 GETUPVAL                         R36 10
      262 GETTABLEKS                       R36 R36 K50 ["useConsumer"]
      264 CALL                             R36 0 1
      265 GETUPVAL                         R37 5
      266 GETTABLEKS                       R37 R37 K29 ["useBoundAction"]
      268 LOADK                            R38 K51 ["NativeGraphContext_setNodePropertyAsync"]
      269 CALL                             R37 1 1
      270 GETUPVAL                         R38 5
      271 GETTABLEKS                       R38 R38 K29 ["useBoundAction"]
      273 LOADK                            R39 K52 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      274 CALL                             R38 1 1
      275 GETUPVAL                         R39 5
      276 GETTABLEKS                       R39 R39 K29 ["useBoundAction"]
      278 LOADK                            R40 K53 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      279 CALL                             R39 1 1
      280 GETUPVAL                         R40 5
      281 GETTABLEKS                       R40 R40 K29 ["useBoundAction"]
      283 LOADK                            R41 K54 ["NativeGraphContext_SelectNodesFromRect"]
      284 CALL                             R40 1 1
      285 GETUPVAL                         R41 5
      286 GETTABLEKS                       R41 R41 K29 ["useBoundAction"]
      288 LOADK                            R42 K55 ["NativeGraphContext_DuplicateSelectedNodes"]
      289 CALL                             R41 1 1
      290 GETUPVAL                         R42 5
      291 GETTABLEKS                       R42 R42 K29 ["useBoundAction"]
      293 LOADK                            R43 K56 ["NativeGraphContext_SelectAllNodes"]
      294 CALL                             R42 1 1
      295 GETUPVAL                         R43 5
      296 GETTABLEKS                       R43 R43 K29 ["useBoundAction"]
      298 LOADK                            R44 K57 ["NativeGraphContext_ClearNodeSelection"]
      299 CALL                             R43 1 1
      300 GETUPVAL                         R44 5
      301 GETTABLEKS                       R44 R44 K29 ["useBoundAction"]
      303 LOADK                            R45 K58 ["NativeGraphContext_CopySelectedNodes"]
      304 CALL                             R44 1 1
      305 GETUPVAL                         R45 5
      306 GETTABLEKS                       R45 R45 K29 ["useBoundAction"]
      308 LOADK                            R46 K59 ["NativeGraphContext_CutSelectedNodes"]
      309 CALL                             R45 1 1
      310 GETUPVAL                         R46 5
      311 GETTABLEKS                       R46 R46 K29 ["useBoundAction"]
      313 LOADK                            R47 K60 ["NativeGraphContext_PasteNodes"]
      314 CALL                             R46 1 1
      315 GETUPVAL                         R47 11
      316 GETTABLEKS                       R47 R47 K50 ["useConsumer"]
      318 CALL                             R47 0 1
      319 GETUPVAL                         R48 5
      320 GETTABLEKS                       R48 R48 K29 ["useBoundAction"]
      322 LOADK                            R49 K61 ["NativeGraphContext_beginUndoTransaction"]
      323 CALL                             R48 1 1
      324 GETUPVAL                         R49 5
      325 GETTABLEKS                       R49 R49 K29 ["useBoundAction"]
      327 LOADK                            R50 K62 ["NativeGraphContext_finishUndoTransaction"]
      328 CALL                             R49 1 1
      329 GETUPVAL                         R50 5
      330 GETTABLEKS                       R50 R50 K29 ["useBoundAction"]
      332 LOADK                            R51 K63 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      333 CALL                             R50 1 1
      334 NEWTABLE                         R51 64 0
      336 GETUPVAL                         R53 1
      337 CALL                             R53 0 1
      338 JUMPIFNOT                        R53 ; [+2]
      339 LOADNIL                          R52
      340 JUMP                             ; [+1]
      341 MOVE                             R52 R15
      342 SETTABLEKS                       R52 R51 K64 ["selectedGraphInstanceId_DEPRECATED"]
      344 SETTABLEKS                       R16 R51 K65 ["reorderPinsAsync"]
      346 SETTABLEKS                       R17 R51 K66 ["createNodeAsync"]
      348 SETTABLEKS                       R18 R51 K67 ["createParameterAsync"]
      350 SETTABLEKS                       R19 R51 K68 ["createConnectedParameterAsync"]
      352 SETTABLEKS                       R20 R51 K69 ["createExistingParameterAsync"]
      354 SETTABLEKS                       R9 R51 K70 ["graphRect"]
      356 SETTABLEKS                       R21 R51 K71 ["selectAllParameterNodesWithNameAsync"]
      358 SETTABLEKS                       R22 R51 K72 ["selectNodesAsync"]
      360 SETTABLEKS                       R40 R51 K73 ["selectNodesFromRectAsync"]
      362 NEWCLOSURE                       R52 P4
      363 CAPTURE                          VAL R47
      364 SETTABLEKS                       R52 R51 K74 ["removeSelectedNodesAsync"]
      366 SETTABLEKS                       R41 R51 K75 ["duplicateSelectedNodesAsync"]
      368 SETTABLEKS                       R42 R51 K76 ["selectAllNodesAsync"]
      370 SETTABLEKS                       R43 R51 K77 ["clearNodeSelectionAsync"]
      372 SETTABLEKS                       R44 R51 K78 ["copySelectedNodesAsync"]
      374 SETTABLEKS                       R45 R51 K79 ["cutSelectedNodesAsync"]
      376 SETTABLEKS                       R46 R51 K80 ["pasteNodesAsync"]
      378 SETTABLEKS                       R23 R51 K81 ["setNodePositionsAsync"]
      380 SETTABLEKS                       R24 R51 K82 ["setNodeSizeAsync"]
      382 SETTABLEKS                       R25 R51 K83 ["setNodeConnectionAsync"]
      384 SETTABLEKS                       R26 R51 K84 ["deleteNodeInput"]
      386 SETTABLEKS                       R27 R51 K85 ["renameNodeInputAsync"]
      388 SETTABLEKS                       R28 R51 K86 ["removeNodeOutputConnectionAsync"]
      390 SETTABLEKS                       R29 R51 K87 ["removeNodeInputConnectionAsync"]
      392 SETTABLEKS                       R30 R51 K88 ["removeParameterAsync"]
      394 SETTABLEKS                       R31 R51 K89 ["renameNodeAsync"]
      396 SETTABLEKS                       R32 R51 K90 ["renameParameterAsync"]
      398 SETTABLEKS                       R33 R51 K91 ["deleteNodeInstanceAsync"]
      400 SETTABLEKS                       R34 R51 K92 ["showNodeInExplorerAsync"]
      402 SETTABLEKS                       R35 R51 K93 ["setCollapsedAsync"]
      404 SETTABLEKS                       R37 R51 K94 ["setNodePropertyAsync"]
      406 SETTABLEKS                       R38 R51 K95 ["setInputPinNodePropertyAsync"]
      408 SETTABLEKS                       R50 R51 K96 ["setExpressionNodeValueAsync"]
      410 SETTABLEKS                       R39 R51 K97 ["setParameterNodeTypeAsync"]
      412 SETTABLEKS                       R11 R51 K98 ["currentAnimationId"]
      414 SETTABLEKS                       R10 R51 K99 ["sourceAssetId"]
      416 SETTABLEKS                       R12 R51 K100 ["selectedGraphKey"]
      418 GETUPVAL                         R53 1
      419 CALL                             R53 0 1
      420 JUMPIFNOT                        R53 ; [+2]
      421 LOADNIL                          R52
      422 JUMP                             ; [+1]
      423 MOVE                             R52 R13
      424 SETTABLEKS                       R52 R51 K101 ["observeSelectedGraphInstance_DEPRECATED"]
      426 GETTABLEKS                       R52 R1 K102 ["observe"]
      428 SETTABLEKS                       R52 R51 K103 ["observeGraphNodeById"]
      430 GETTABLEKS                       R52 R2 K102 ["observe"]
      432 SETTABLEKS                       R52 R51 K104 ["observeNodeRenderInfoById"]
      434 SETTABLEKS                       R48 R51 K105 ["beginUndoTransaction"]
      436 SETTABLEKS                       R49 R51 K106 ["finishUndoTransaction"]
      438 GETTABLEKS                       R52 R1 K107 ["observeMap"]
      440 SETTABLEKS                       R52 R51 K108 ["observeGraphNodeMap"]
      442 GETTABLEKS                       R52 R2 K107 ["observeMap"]
      444 SETTABLEKS                       R52 R51 K109 ["observeRenderInfoMap"]
      446 GETTABLEKS                       R52 R14 K110 ["hasGraphOutput"]
      448 SETTABLEKS                       R52 R51 K110 ["hasGraphOutput"]
      450 GETTABLEKS                       R52 R3 K102 ["observe"]
      452 SETTABLEKS                       R52 R51 K111 ["observeNodePropsById"]
      454 SETTABLEKS                       R7 R51 K112 ["observeExpressionNodes"]
      456 DUPCLOSURE                       R52 K113 [PROTO_88]
      457 GETUPVAL                         R53 2
      458 GETTABLEKS                       R53 R53 K0 ["useContext"]
      460 GETUPVAL                         R54 12
      461 GETTABLEKS                       R54 R54 K1 ["Context"]
      463 CALL                             R53 1 1
      464 GETUPVAL                         R54 2
      465 GETTABLEKS                       R54 R54 K6 ["useCallback"]
      467 NEWCLOSURE                       R55 P6
      468 CAPTURE                          UPVAL U1
      469 CAPTURE                          UPVAL U13
      470 CAPTURE                          VAL R53
      471 CAPTURE                          UPVAL U14
      472 NEWTABLE                         R56 0 2
      474 GETUPVAL                         R58 1
      475 CALL                             R58 0 1
      476 JUMPIFNOT                        R58 ; [+3]
      477 GETTABLEKS                       R57 R53 K114 ["observeDebugData"]
      479 JUMP                             ; [+2]
      480 GETTABLEKS                       R57 R53 K115 ["observeDebugData_DEPRECATED"]
      482 GETUPVAL                         R59 1
      483 CALL                             R59 0 1
      484 JUMPIFNOT                        R59 ; [+3]
      485 GETTABLEKS                       R58 R53 K116 ["observeActiveDebugTargetIdentifier"]
      487 JUMP                             ; [+1]
      488 LOADNIL                          R58
      489 SETLIST                          R56 R57 2 [1]
      491 CALL                             R54 2 1
      492 GETUPVAL                         R55 2
      493 GETTABLEKS                       R55 R55 K6 ["useCallback"]
      495 NEWCLOSURE                       R56 P7
      496 CAPTURE                          UPVAL U13
      497 CAPTURE                          VAL R53
      498 CAPTURE                          UPVAL U14
      499 NEWTABLE                         R57 0 2
      501 GETTABLEKS                       R58 R53 K114 ["observeDebugData"]
      503 GETTABLEKS                       R59 R53 K116 ["observeActiveDebugTargetIdentifier"]
      505 SETLIST                          R57 R58 2 [1]
      507 CALL                             R55 2 1
      508 GETUPVAL                         R56 2
      509 GETTABLEKS                       R56 R56 K6 ["useCallback"]
      511 NEWCLOSURE                       R57 P8
      512 CAPTURE                          UPVAL U1
      513 CAPTURE                          VAL R55
      514 CAPTURE                          UPVAL U7
      515 CAPTURE                          VAL R53
      516 NEWTABLE                         R58 0 2
      518 GETUPVAL                         R60 1
      519 CALL                             R60 0 1
      520 JUMPIFNOT                        R60 ; [+2]
      521 LOADNIL                          R59
      522 JUMP                             ; [+2]
      523 GETTABLEKS                       R59 R53 K115 ["observeDebugData_DEPRECATED"]
      525 GETUPVAL                         R61 1
      526 CALL                             R61 0 1
      527 JUMPIFNOT                        R61 ; [+2]
      528 MOVE                             R60 R55
      529 JUMP                             ; [+1]
      530 LOADNIL                          R60
      531 SETLIST                          R58 R59 2 [1]
      533 CALL                             R56 2 1
      534 GETUPVAL                         R57 2
      535 GETTABLEKS                       R57 R57 K6 ["useCallback"]
      537 NEWCLOSURE                       R58 P9
      538 CAPTURE                          UPVAL U7
      539 CAPTURE                          VAL R1
      540 NEWTABLE                         R59 0 1
      542 GETTABLEKS                       R60 R1 K107 ["observeMap"]
      544 SETLIST                          R59 R60 1 [1]
      546 CALL                             R57 2 1
      547 GETUPVAL                         R58 15
      548 GETTABLEKS                       R58 R58 K50 ["useConsumer"]
      550 CALL                             R58 0 1
      551 GETUPVAL                         R60 1
      552 CALL                             R60 0 1
      553 JUMPIFNOT                        R60 ; [+7]
      554 GETUPVAL                         R59 9
      555 GETTABLEKS                       R59 R59 K28 ["useSignalState"]
      557 GETTABLEKS                       R60 R4 K117 ["observeSelectedGraphIsEphemeral"]
      559 CALL                             R59 1 1
      560 JUMP                             ; [+1]
      561 LOADNIL                          R59
      562 GETUPVAL                         R60 2
      563 GETTABLEKS                       R60 R60 K2 ["useMemo"]
      565 NEWCLOSURE                       R61 P10
      566 CAPTURE                          VAL R1
      567 CAPTURE                          VAL R2
      568 CAPTURE                          UPVAL U1
      569 CAPTURE                          VAL R59
      570 CAPTURE                          VAL R58
      571 CAPTURE                          VAL R16
      572 CAPTURE                          VAL R18
      573 CAPTURE                          VAL R20
      574 CAPTURE                          VAL R19
      575 CAPTURE                          VAL R21
      576 CAPTURE                          VAL R22
      577 CAPTURE                          VAL R35
      578 CAPTURE                          VAL R36
      579 CAPTURE                          VAL R26
      580 CAPTURE                          VAL R29
      581 CAPTURE                          VAL R28
      582 CAPTURE                          VAL R30
      583 CAPTURE                          VAL R31
      584 CAPTURE                          VAL R32
      585 CAPTURE                          VAL R33
      586 CAPTURE                          VAL R47
      587 CAPTURE                          VAL R25
      588 CAPTURE                          VAL R23
      589 CAPTURE                          VAL R37
      590 CAPTURE                          VAL R38
      591 CAPTURE                          VAL R24
      592 CAPTURE                          VAL R39
      593 CAPTURE                          VAL R3
      594 CAPTURE                          VAL R54
      595 CAPTURE                          VAL R56
      596 CAPTURE                          VAL R57
      597 NEWTABLE                         R62 0 30
      599 MOVE                             R63 R1
      600 MOVE                             R64 R2
      601 MOVE                             R65 R58
      602 MOVE                             R66 R16
      603 MOVE                             R67 R18
      604 MOVE                             R68 R20
      605 MOVE                             R69 R19
      606 MOVE                             R70 R21
      607 MOVE                             R71 R22
      608 MOVE                             R72 R35
      609 MOVE                             R73 R36
      610 MOVE                             R74 R26
      611 MOVE                             R75 R29
      612 MOVE                             R76 R28
      613 MOVE                             R77 R30
      614 MOVE                             R78 R31
      615 SETLIST                          R62 R63 16 [1]
      617 MOVE                             R63 R32
      618 MOVE                             R64 R33
      619 MOVE                             R65 R47
      620 MOVE                             R66 R25
      621 MOVE                             R67 R23
      622 MOVE                             R68 R37
      623 MOVE                             R69 R38
      624 MOVE                             R70 R24
      625 MOVE                             R71 R39
      626 GETTABLEKS                       R72 R3 K102 ["observe"]
      628 MOVE                             R73 R54
      629 MOVE                             R74 R56
      630 MOVE                             R75 R59
      631 MOVE                             R76 R57
      632 SETLIST                          R62 R63 14 [17]
      634 CALL                             R60 2 1
      635 GETUPVAL                         R61 2
      636 GETTABLEKS                       R61 R61 K118 ["createElement"]
      638 GETUPVAL                         R62 16
      639 GETTABLEKS                       R62 R62 K119 ["Provider"]
      641 DUPTABLE                         R63 K121 [{"value"}]
      642 SETTABLEKS                       R51 R63 K120 ["value"]
      644 DUPTABLE                         R64 K123 [{"ContextStack"}]
      645 GETUPVAL                         R65 2
      646 GETTABLEKS                       R65 R65 K118 ["createElement"]
      648 GETUPVAL                         R66 17
      649 GETTABLEKS                       R66 R66 K122 ["ContextStack"]
      651 DUPTABLE                         R67 K125 [{"providers"}]
      652 NEWTABLE                         R68 0 3
      654 GETUPVAL                         R69 2
      655 GETTABLEKS                       R69 R69 K118 ["createElement"]
      657 GETUPVAL                         R70 18
      658 GETTABLEKS                       R70 R70 K126 ["GraphContext"]
      660 GETTABLEKS                       R70 R70 K119 ["Provider"]
      662 DUPTABLE                         R71 K121 [{"value"}]
      663 SETTABLEKS                       R60 R71 K120 ["value"]
      665 CALL                             R69 2 1
      666 GETUPVAL                         R70 2
      667 GETTABLEKS                       R70 R70 K118 ["createElement"]
      669 GETUPVAL                         R71 19
      670 GETTABLEKS                       R71 R71 K127 ["UIDataModelProvider"]
      672 CALL                             R70 1 1
      673 GETUPVAL                         R71 2
      674 GETTABLEKS                       R71 R71 K118 ["createElement"]
      676 GETUPVAL                         R72 20
      677 GETTABLEKS                       R72 R72 K119 ["Provider"]
      679 DUPTABLE                         R73 K129 [{"timeRange"}]
      680 SETTABLEKS                       R8 R73 K128 ["timeRange"]
      682 CALL                             R71 2 -1
      683 SETLIST                          R68 R69 -1 [1]
      685 SETTABLEKS                       R68 R67 K124 ["providers"]
      687 GETTABLEKS                       R68 R0 K130 ["children"]
      689 CALL                             R65 3 1
      690 SETTABLEKS                       R65 R64 K122 ["ContextStack"]
      692 CALL                             R61 3 -1
      693 CLOSEUPVALS                      R6
      694 RETURN                           R61 -1

PROTO_102:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_103:
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

PROTO_104:
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

PROTO_105:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_104]
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
       50 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       52 GETTABLEKS                       R8 R8 K18 ["GraphDebugDataContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K18 ["GraphDebugDataContext"]
       61 GETTABLEKS                       R9 R9 K19 ["GraphDebugDataUtils"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K11 [require]
       66 GETTABLEKS                       R10 R0 K12 ["Contexts"]
       68 GETTABLEKS                       R10 R10 K20 ["InstanceRegistryContext"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R11 R0 K14 ["Util"]
       75 GETTABLEKS                       R11 R11 K21 ["Instances"]
       77 GETTABLEKS                       R11 R11 K22 ["InstanceSelectionRegistry"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K11 [require]
       82 GETTABLEKS                       R12 R0 K12 ["Contexts"]
       84 GETTABLEKS                       R12 R12 K23 ["NativeGraphContext"]
       86 GETTABLEKS                       R12 R12 K24 ["NativeGraphUtils"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K11 [require]
       91 GETTABLEKS                       R13 R0 K14 ["Util"]
       93 GETTABLEKS                       R13 R13 K25 ["Networking"]
       95 GETTABLEKS                       R13 R13 K26 ["NetworkUtils"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K11 [require]
      100 GETTABLEKS                       R14 R0 K27 ["Parent"]
      102 GETTABLEKS                       R14 R14 K28 ["NodeGraphing"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K11 [require]
      107 GETTABLEKS                       R15 R0 K12 ["Contexts"]
      109 GETTABLEKS                       R15 R15 K29 ["NodeSelectionContext"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K11 [require]
      114 GETTABLEKS                       R16 R0 K30 ["NodeViewTypes"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K11 [require]
      119 GETTABLEKS                       R17 R0 K12 ["Contexts"]
      121 GETTABLEKS                       R17 R17 K31 ["PasteHookContext"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K11 [require]
      126 GETTABLEKS                       R18 R0 K27 ["Parent"]
      128 GETTABLEKS                       R18 R18 K32 ["React"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K11 [require]
      133 GETTABLEKS                       R19 R0 K27 ["Parent"]
      135 GETTABLEKS                       R19 R19 K33 ["ReactUtils"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K11 [require]
      140 GETTABLEKS                       R20 R0 K12 ["Contexts"]
      142 GETTABLEKS                       R20 R20 K34 ["SelectedGraphContext"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K11 [require]
      147 GETTABLEKS                       R21 R0 K12 ["Contexts"]
      149 GETTABLEKS                       R21 R21 K35 ["SelectionServiceContext"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K11 [require]
      154 GETTABLEKS                       R22 R0 K14 ["Util"]
      156 GETTABLEKS                       R22 R22 K36 ["Signals"]
      158 GETTABLEKS                       R22 R22 K37 ["Experimental"]
      160 GETTABLEKS                       R22 R22 K38 ["SignalExperimentalUtils"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K11 [require]
      165 GETTABLEKS                       R23 R0 K27 ["Parent"]
      167 GETTABLEKS                       R23 R23 K36 ["Signals"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K11 [require]
      172 GETTABLEKS                       R24 R0 K14 ["Util"]
      174 GETTABLEKS                       R24 R24 K36 ["Signals"]
      176 GETTABLEKS                       R24 R24 K37 ["Experimental"]
      178 GETTABLEKS                       R24 R24 K38 ["SignalExperimentalUtils"]
      180 CALL                             R23 1 1
      181 GETIMPORT                        R24 K11 [require]
      183 GETTABLEKS                       R25 R0 K14 ["Util"]
      185 GETTABLEKS                       R25 R25 K36 ["Signals"]
      187 GETTABLEKS                       R25 R25 K39 ["SignalsInstanceUtils"]
      189 CALL                             R24 1 1
      190 GETIMPORT                        R25 K11 [require]
      192 GETTABLEKS                       R26 R0 K27 ["Parent"]
      194 GETTABLEKS                       R26 R26 K40 ["SignalsReact"]
      196 CALL                             R25 1 1
      197 GETIMPORT                        R26 K11 [require]
      199 GETTABLEKS                       R27 R0 K12 ["Contexts"]
      201 GETTABLEKS                       R27 R27 K41 ["SpotlightedNodeContext"]
      203 CALL                             R26 1 1
      204 GETIMPORT                        R27 K11 [require]
      206 GETTABLEKS                       R28 R0 K42 ["Components"]
      208 GETTABLEKS                       R28 R28 K43 ["NodeView"]
      210 GETTABLEKS                       R28 R28 K44 ["StateMachine"]
      212 GETTABLEKS                       R28 R28 K45 ["StateMachineMaterializer"]
      214 CALL                             R27 1 1
      215 GETIMPORT                        R28 K11 [require]
      217 GETTABLEKS                       R29 R0 K12 ["Contexts"]
      219 GETTABLEKS                       R29 R29 K46 ["TimeRangeContext"]
      221 CALL                             R28 1 1
      222 GETIMPORT                        R29 K11 [require]
      224 GETTABLEKS                       R30 R0 K47 ["Flags"]
      226 GETTABLEKS                       R30 R30 K48 ["getFFlagAnimGraphCreateSAScript"]
      228 CALL                             R29 1 1
      229 GETIMPORT                        R30 K11 [require]
      231 GETTABLEKS                       R31 R0 K47 ["Flags"]
      233 GETTABLEKS                       R31 R31 K49 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      235 CALL                             R30 1 1
      236 GETIMPORT                        R31 K11 [require]
      238 GETTABLEKS                       R32 R0 K47 ["Flags"]
      240 GETTABLEKS                       R32 R32 K50 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      242 CALL                             R31 1 1
      243 GETIMPORT                        R32 K11 [require]
      245 GETTABLEKS                       R33 R0 K47 ["Flags"]
      247 GETTABLEKS                       R33 R33 K51 ["getFFlagAnimGraphUIEnableValueNodes"]
      249 CALL                             R32 1 1
      250 GETIMPORT                        R33 K11 [require]
      252 GETTABLEKS                       R34 R0 K47 ["Flags"]
      254 GETTABLEKS                       R34 R34 K52 ["getFFlagAnimGraphUIInputIds"]
      256 CALL                             R33 1 1
      257 GETIMPORT                        R34 K11 [require]
      259 GETTABLEKS                       R35 R0 K47 ["Flags"]
      261 GETTABLEKS                       R35 R35 K53 ["getFFlagAnimGraphUI_NewGraphOnInsertNode"]
      263 CALL                             R34 1 1
      264 GETIMPORT                        R35 K11 [require]
      266 GETTABLEKS                       R36 R0 K47 ["Flags"]
      268 GETTABLEKS                       R36 R36 K54 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      270 CALL                             R35 1 1
      271 GETIMPORT                        R36 K11 [require]
      273 GETTABLEKS                       R37 R0 K47 ["Flags"]
      275 GETTABLEKS                       R37 R37 K55 ["getFFlagAnimGraphUI_RunTimeDebug"]
      277 CALL                             R36 1 1
      278 GETIMPORT                        R37 K11 [require]
      280 GETTABLEKS                       R38 R0 K47 ["Flags"]
      282 GETTABLEKS                       R38 R38 K56 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      284 CALL                             R37 1 1
      285 GETIMPORT                        R38 K11 [require]
      287 GETTABLEKS                       R39 R0 K14 ["Util"]
      289 GETTABLEKS                       R39 R39 K57 ["parseAnimationNodeType"]
      291 CALL                             R38 1 1
      292 GETIMPORT                        R39 K11 [require]
      294 GETTABLEKS                       R40 R0 K14 ["Util"]
      296 GETTABLEKS                       R40 R40 K58 ["sanitizeParameterNames"]
      298 CALL                             R39 1 1
      299 GETIMPORT                        R40 K11 [require]
      301 GETTABLEKS                       R41 R0 K42 ["Components"]
      303 GETTABLEKS                       R41 R41 K43 ["NodeView"]
      305 GETTABLEKS                       R41 R41 K44 ["StateMachine"]
      307 GETTABLEKS                       R41 R41 K59 ["supportsStateMachineNode"]
      309 CALL                             R40 1 1
      310 GETIMPORT                        R41 K11 [require]
      312 GETIMPORT                        R42 K1 [script]
      314 GETTABLEKS                       R42 R42 K60 ["useGraphAnalytics"]
      316 CALL                             R41 1 1
      317 GETIMPORT                        R42 K11 [require]
      319 GETTABLEKS                       R43 R0 K61 ["Hooks"]
      321 GETTABLEKS                       R43 R43 K62 ["useNodeDefinitionDestroyHelper"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K11 [require]
      326 GETTABLEKS                       R44 R0 K61 ["Hooks"]
      328 GETTABLEKS                       R44 R44 K63 ["useObserveNodeSelection"]
      330 CALL                             R43 1 1
      331 GETIMPORT                        R44 K11 [require]
      333 GETTABLEKS                       R45 R0 K61 ["Hooks"]
      335 GETTABLEKS                       R45 R45 K64 ["useObserveSelection"]
      337 CALL                             R44 1 1
      338 GETIMPORT                        R45 K11 [require]
      340 GETTABLEKS                       R46 R0 K61 ["Hooks"]
      342 GETTABLEKS                       R46 R46 K65 ["useParameterDestroyHelper"]
      344 CALL                             R45 1 1
      345 GETIMPORT                        R46 K11 [require]
      347 GETTABLEKS                       R47 R0 K61 ["Hooks"]
      349 GETTABLEKS                       R47 R47 K66 ["useSignalDispatcher"]
      351 CALL                             R46 1 1
      352 GETIMPORT                        R47 K11 [require]
      354 GETTABLEKS                       R48 R0 K61 ["Hooks"]
      356 GETTABLEKS                       R48 R48 K67 ["useValueNodeDestroyHelper"]
      358 CALL                             R47 1 1
      359 NEWTABLE                         R48 64 0
      361 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      363 LOADK                            R50 K69 ["observeGraphNodeMap"]
      364 CALL                             R49 1 1
      365 SETTABLEKS                       R49 R48 K69 ["observeGraphNodeMap"]
      367 GETIMPORT                        R49 K72 [Rect.new]
      369 LOADN                            R50 0
      370 LOADN                            R51 0
      371 LOADN                            R52 0
      372 LOADN                            R53 0
      373 CALL                             R49 4 1
      374 SETTABLEKS                       R49 R48 K73 ["graphRect"]
      376 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      378 LOADK                            R50 K74 ["reorderPinsAsync"]
      379 CALL                             R49 1 1
      380 SETTABLEKS                       R49 R48 K74 ["reorderPinsAsync"]
      382 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      384 LOADK                            R50 K75 ["createNodeAsync"]
      385 CALL                             R49 1 1
      386 SETTABLEKS                       R49 R48 K75 ["createNodeAsync"]
      388 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      390 LOADK                            R50 K76 ["createParameterAsync"]
      391 CALL                             R49 1 1
      392 SETTABLEKS                       R49 R48 K76 ["createParameterAsync"]
      394 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      396 LOADK                            R50 K77 ["createConnectedParameterAsync"]
      397 CALL                             R49 1 1
      398 SETTABLEKS                       R49 R48 K77 ["createConnectedParameterAsync"]
      400 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      402 LOADK                            R50 K78 ["createExistingParameterAsync"]
      403 CALL                             R49 1 1
      404 SETTABLEKS                       R49 R48 K78 ["createExistingParameterAsync"]
      406 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      408 LOADK                            R50 K79 ["selectAllParameterNodesWithNameAsync"]
      409 CALL                             R49 1 1
      410 SETTABLEKS                       R49 R48 K79 ["selectAllParameterNodesWithNameAsync"]
      412 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      414 LOADK                            R50 K80 ["selectNodesAsync"]
      415 CALL                             R49 1 1
      416 SETTABLEKS                       R49 R48 K80 ["selectNodesAsync"]
      418 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      420 LOADK                            R50 K81 ["selectNodesFromRectAsync"]
      421 CALL                             R49 1 1
      422 SETTABLEKS                       R49 R48 K81 ["selectNodesFromRectAsync"]
      424 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      426 LOADK                            R50 K82 ["removeSelectedNodesAsync"]
      427 CALL                             R49 1 1
      428 SETTABLEKS                       R49 R48 K82 ["removeSelectedNodesAsync"]
      430 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      432 LOADK                            R50 K83 ["duplicateSelectedNodesAsync"]
      433 CALL                             R49 1 1
      434 SETTABLEKS                       R49 R48 K83 ["duplicateSelectedNodesAsync"]
      436 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      438 LOADK                            R50 K84 ["selectAllNodesAsync"]
      439 CALL                             R49 1 1
      440 SETTABLEKS                       R49 R48 K84 ["selectAllNodesAsync"]
      442 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      444 LOADK                            R50 K85 ["clearNodeSelectionAsync"]
      445 CALL                             R49 1 1
      446 SETTABLEKS                       R49 R48 K85 ["clearNodeSelectionAsync"]
      448 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      450 LOADK                            R50 K86 ["copySelectedNodesAsync"]
      451 CALL                             R49 1 1
      452 SETTABLEKS                       R49 R48 K86 ["copySelectedNodesAsync"]
      454 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      456 LOADK                            R50 K87 ["cutSelectedNodesAsync"]
      457 CALL                             R49 1 1
      458 SETTABLEKS                       R49 R48 K87 ["cutSelectedNodesAsync"]
      460 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      462 LOADK                            R50 K88 ["pasteNodesAsync"]
      463 CALL                             R49 1 1
      464 SETTABLEKS                       R49 R48 K88 ["pasteNodesAsync"]
      466 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      468 LOADK                            R50 K89 ["setNodePositionsAsync"]
      469 CALL                             R49 1 1
      470 SETTABLEKS                       R49 R48 K89 ["setNodePositionsAsync"]
      472 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      474 LOADK                            R50 K90 ["setNodeSizeAsync"]
      475 CALL                             R49 1 1
      476 SETTABLEKS                       R49 R48 K90 ["setNodeSizeAsync"]
      478 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      480 LOADK                            R50 K91 ["deleteNodeInput"]
      481 CALL                             R49 1 1
      482 SETTABLEKS                       R49 R48 K91 ["deleteNodeInput"]
      484 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      486 LOADK                            R50 K92 ["renameNodeInputAsync"]
      487 CALL                             R49 1 1
      488 SETTABLEKS                       R49 R48 K92 ["renameNodeInputAsync"]
      490 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      492 LOADK                            R50 K93 ["removeNodeInputConnectionAsync"]
      493 CALL                             R49 1 1
      494 SETTABLEKS                       R49 R48 K93 ["removeNodeInputConnectionAsync"]
      496 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      498 LOADK                            R50 K94 ["removeNodeOutputConnectionAsync"]
      499 CALL                             R49 1 1
      500 SETTABLEKS                       R49 R48 K94 ["removeNodeOutputConnectionAsync"]
      502 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      504 LOADK                            R50 K95 ["removeParameterAsync"]
      505 CALL                             R49 1 1
      506 SETTABLEKS                       R49 R48 K95 ["removeParameterAsync"]
      508 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      510 LOADK                            R50 K96 ["renameNodeAsync"]
      511 CALL                             R49 1 1
      512 SETTABLEKS                       R49 R48 K96 ["renameNodeAsync"]
      514 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      516 LOADK                            R50 K97 ["renameParameterAsync"]
      517 CALL                             R49 1 1
      518 SETTABLEKS                       R49 R48 K97 ["renameParameterAsync"]
      520 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      522 LOADK                            R50 K98 ["deleteNodeInstanceAsync"]
      523 CALL                             R49 1 1
      524 SETTABLEKS                       R49 R48 K98 ["deleteNodeInstanceAsync"]
      526 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      528 LOADK                            R50 K99 ["showNodeInExplorerAsync"]
      529 CALL                             R49 1 1
      530 SETTABLEKS                       R49 R48 K99 ["showNodeInExplorerAsync"]
      532 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      534 LOADK                            R50 K100 ["setNewConnection"]
      535 CALL                             R49 1 1
      536 SETTABLEKS                       R49 R48 K101 ["setNodeConnectionAsync"]
      538 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      540 LOADK                            R50 K102 ["setCollapsedAsync"]
      541 CALL                             R49 1 1
      542 SETTABLEKS                       R49 R48 K102 ["setCollapsedAsync"]
      544 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      546 LOADK                            R50 K103 ["setNodePropertyAsync"]
      547 CALL                             R49 1 1
      548 SETTABLEKS                       R49 R48 K103 ["setNodePropertyAsync"]
      550 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      552 LOADK                            R50 K104 ["setInputPinNodePropertyAsync"]
      553 CALL                             R49 1 1
      554 SETTABLEKS                       R49 R48 K104 ["setInputPinNodePropertyAsync"]
      556 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      558 LOADK                            R50 K105 ["setParameterNodeTypeAsync"]
      559 CALL                             R49 1 1
      560 SETTABLEKS                       R49 R48 K105 ["setParameterNodeTypeAsync"]
      562 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      564 LOADK                            R50 K106 ["setExpressionNodeValueAsync"]
      565 CALL                             R49 1 1
      566 SETTABLEKS                       R49 R48 K106 ["setExpressionNodeValueAsync"]
      568 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      570 LOADK                            R50 K107 ["hasGraphOutput"]
      571 CALL                             R49 1 1
      572 SETTABLEKS                       R49 R48 K107 ["hasGraphOutput"]
      574 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      576 LOADK                            R50 K108 ["observeGraphNodeById"]
      577 CALL                             R49 1 1
      578 SETTABLEKS                       R49 R48 K108 ["observeGraphNodeById"]
      580 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      582 LOADK                            R50 K109 ["observeNodeRenderInfoById"]
      583 CALL                             R49 1 1
      584 SETTABLEKS                       R49 R48 K109 ["observeNodeRenderInfoById"]
      586 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      588 LOADK                            R50 K110 ["observeRenderInfoMap"]
      589 CALL                             R49 1 1
      590 SETTABLEKS                       R49 R48 K110 ["observeRenderInfoMap"]
      592 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      594 LOADK                            R50 K111 ["observeNodePropsById"]
      595 CALL                             R49 1 1
      596 SETTABLEKS                       R49 R48 K111 ["observeNodePropsById"]
      598 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      600 LOADK                            R50 K112 ["observeExpressionNodes"]
      601 CALL                             R49 1 1
      602 SETTABLEKS                       R49 R48 K112 ["observeExpressionNodes"]
      604 GETTABLEKS                       R49 R22 K113 ["createSignal"]
      606 LOADNIL                          R50
      607 CALL                             R49 1 1
      608 SETTABLEKS                       R49 R48 K114 ["observeSelectedGraphInstance_DEPRECATED"]
      610 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      612 LOADK                            R50 K115 ["beginUndoTransaction"]
      613 CALL                             R49 1 1
      614 SETTABLEKS                       R49 R48 K115 ["beginUndoTransaction"]
      616 GETTABLEKS                       R49 R18 K68 ["createUnimplemented"]
      618 LOADK                            R50 K116 ["finishUndoTransaction"]
      619 CALL                             R49 1 1
      620 SETTABLEKS                       R49 R48 K116 ["finishUndoTransaction"]
      622 LOADNIL                          R49
      623 SETTABLEKS                       R49 R48 K117 ["currentAnimationId"]
      625 LOADNIL                          R49
      626 SETTABLEKS                       R49 R48 K118 ["sourceAssetId"]
      628 LOADNIL                          R49
      629 SETTABLEKS                       R49 R48 K119 ["selectedGraphKey"]
      631 GETTABLEKS                       R49 R17 K120 ["createContext"]
      633 MOVE                             R50 R48
      634 CALL                             R49 1 1
      635 DUPTABLE                         R50 K141 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction", ["EXPRESSION_NODES"] = "NativeGraphContext_ExpressionNodes"}]
      636 NEWTABLE                         R51 64 0
      638 LOADK                            R52 K142 ["NativeGraphContext_CreateNode"]
      639 SETTABLEKS                       R52 R51 K143 ["CREATE_NODE"]
      641 LOADK                            R52 K144 ["NativeGraphContext_CreateParameterAsync"]
      642 SETTABLEKS                       R52 R51 K145 ["CREATE_PARAMETER"]
      644 LOADK                            R52 K146 ["NativeGraphContext_CreateConnectedParameterAsync"]
      645 SETTABLEKS                       R52 R51 K147 ["CREATE_CONNECTED_PARAMETER"]
      647 LOADK                            R52 K148 ["NativeGraphContext_CreateExistingParameterAsync"]
      648 SETTABLEKS                       R52 R51 K149 ["CREATE_EXISTING_PARAMETER"]
      650 LOADK                            R52 K150 ["NativeGraphContext_GetSelectedGraphInstance"]
      651 SETTABLEKS                       R52 R51 K151 ["GET_SELECTED_GRAPH_INSTANCE"]
      653 LOADK                            R52 K152 ["NativeGraphContext_SetNodeConnectionAsync"]
      654 SETTABLEKS                       R52 R51 K153 ["SET_NODE_CONNECTION"]
      656 LOADK                            R52 K154 ["NativeGraphContext_setNodePropertyAsync"]
      657 SETTABLEKS                       R52 R51 K155 ["SET_NODE_PROPERTY"]
      659 LOADK                            R52 K156 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      660 SETTABLEKS                       R52 R51 K157 ["SET_INPUT_PIN_NODE_PROPERTY"]
      662 LOADK                            R52 K158 ["NativeGraphContext_ReorderPinsAsync"]
      663 SETTABLEKS                       R52 R51 K159 ["REORDER_PINS"]
      665 LOADK                            R52 K160 ["NativeGraphContext_DeleteNodeInput"]
      666 SETTABLEKS                       R52 R51 K161 ["DELETE_NODE_INPUT"]
      668 LOADK                            R52 K162 ["NativeGraphContext_RenameNodeInput"]
      669 SETTABLEKS                       R52 R51 K163 ["RENAME_NODE_INPUT"]
      671 LOADK                            R52 K164 ["NativeGraphContext_RemoveNodeInputConnection"]
      672 SETTABLEKS                       R52 R51 K165 ["REMOVE_NODE_INPUT_CONNECTION"]
      674 LOADK                            R52 K166 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      675 SETTABLEKS                       R52 R51 K167 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      677 LOADK                            R52 K168 ["NativeGraphContext_RemoveParameterAsync"]
      678 SETTABLEKS                       R52 R51 K169 ["REMOVE_PARAMETER"]
      680 LOADK                            R52 K170 ["NativeGraphContext_RenameNodeAsync"]
      681 SETTABLEKS                       R52 R51 K171 ["RENAME_NODE"]
      683 LOADK                            R52 K172 ["NativeGraphContext_RenameParameterAsync"]
      684 SETTABLEKS                       R52 R51 K173 ["RENAME_PARAMETER"]
      686 LOADK                            R52 K174 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      687 SETTABLEKS                       R52 R51 K175 ["DELETE_NODE_INSTANCE"]
      689 LOADK                            R52 K176 ["NativeGraphContext_ShowNodeInExplorer"]
      690 SETTABLEKS                       R52 R51 K177 ["SHOW_NODE_IN_EXPLORER"]
      692 LOADK                            R52 K178 ["NativeGraphContext_SetNodeSizeAsync"]
      693 SETTABLEKS                       R52 R51 K179 ["SET_NODE_SIZE"]
      695 LOADK                            R52 K180 ["NativeGraphContext_SetCollapsedAsync"]
      696 SETTABLEKS                       R52 R51 K181 ["SET_COLLAPSED"]
      698 LOADK                            R52 K182 ["NativeGraphContext_SetNodePositionsAsync"]
      699 SETTABLEKS                       R52 R51 K183 ["SET_NODE_POSITIONS"]
      701 LOADK                            R52 K184 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      702 SETTABLEKS                       R52 R51 K185 ["SET_PARAMETER_NODE_TYPE"]
      704 LOADK                            R52 K186 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      705 SETTABLEKS                       R52 R51 K187 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      707 LOADK                            R52 K188 ["NativeGraphContext_SelectNodes"]
      708 SETTABLEKS                       R52 R51 K189 ["SELECT_NODES"]
      710 LOADK                            R52 K190 ["NativeGraphContext_SelectNodesFromRect"]
      711 SETTABLEKS                       R52 R51 K191 ["SELECT_NODES_FROM_RECT"]
      713 LOADK                            R52 K192 ["NativeGraphContext_DuplicateSelectedNodes"]
      714 SETTABLEKS                       R52 R51 K193 ["DUPLICATE_SELECTED_NODES"]
      716 LOADK                            R52 K194 ["NativeGraphContext_SelectAllNodes"]
      717 SETTABLEKS                       R52 R51 K195 ["SELECT_ALL_NODES"]
      719 LOADK                            R52 K196 ["NativeGraphContext_ClearNodeSelection"]
      720 SETTABLEKS                       R52 R51 K197 ["CLEAR_NODE_SELECTION"]
      722 LOADK                            R52 K198 ["NativeGraphContext_CopySelectedNodes"]
      723 SETTABLEKS                       R52 R51 K199 ["COPY_SELECTED_NODES"]
      725 LOADK                            R52 K200 ["NativeGraphContext_CutSelectedNodes"]
      726 SETTABLEKS                       R52 R51 K201 ["CUT_SELECTED_NODES"]
      728 LOADK                            R52 K202 ["NativeGraphContext_PasteNodes"]
      729 SETTABLEKS                       R52 R51 K203 ["PASTE_NODES"]
      731 LOADK                            R52 K204 ["NativeGraphContext_beginUndoTransaction"]
      732 SETTABLEKS                       R52 R51 K205 ["BEGIN_UNDO_TRANSACTION"]
      734 LOADK                            R52 K206 ["NativeGraphContext_finishUndoTransaction"]
      735 SETTABLEKS                       R52 R51 K207 ["FINISH_UNDO_TRANSACTION"]
      737 LOADK                            R52 K208 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      738 SETTABLEKS                       R52 R51 K209 ["SET_EXPRESSION_NODE_VALUE"]
      740 GETTABLEKS                       R52 R12 K210 ["createBoundAction"]
      742 LOADK                            R53 K211 ["NativeGraphContext_createNode"]
      743 CALL                             R52 1 1
      744 GETTABLEKS                       R53 R12 K210 ["createBoundAction"]
      746 LOADK                            R54 K212 ["NativeGraphContext_setZIndex"]
      747 CALL                             R53 1 1
      748 GETTABLEKS                       R54 R12 K210 ["createBoundAction"]
      750 LOADK                            R55 K213 ["NativeGraphContext_removeNodes"]
      751 CALL                             R54 1 1
      752 DUPCLOSURE                       R55 K214 [PROTO_0]
      753 DUPCLOSURE                       R56 K215 [PROTO_2]
      754 CAPTURE                          VAL R17
      755 DUPCLOSURE                       R57 K216 [PROTO_81]
      756 CAPTURE                          VAL R46
      757 CAPTURE                          VAL R17
      758 CAPTURE                          VAL R14
      759 CAPTURE                          VAL R20
      760 CAPTURE                          VAL R16
      761 CAPTURE                          VAL R36
      762 CAPTURE                          VAL R19
      763 CAPTURE                          VAL R34
      764 CAPTURE                          VAL R6
      765 CAPTURE                          VAL R44
      766 CAPTURE                          VAL R43
      767 CAPTURE                          VAL R10
      768 CAPTURE                          VAL R41
      769 CAPTURE                          VAL R9
      770 CAPTURE                          VAL R11
      771 CAPTURE                          VAL R22
      772 CAPTURE                          VAL R18
      773 CAPTURE                          VAL R2
      774 CAPTURE                          VAL R30
      775 CAPTURE                          VAL R25
      776 CAPTURE                          VAL R1
      777 CAPTURE                          VAL R38
      778 CAPTURE                          VAL R13
      779 CAPTURE                          VAL R24
      780 CAPTURE                          VAL R35
      781 CAPTURE                          VAL R40
      782 CAPTURE                          VAL R27
      783 CAPTURE                          VAL R33
      784 CAPTURE                          VAL R52
      785 CAPTURE                          VAL R55
      786 CAPTURE                          VAL R54
      787 CAPTURE                          VAL R12
      788 CAPTURE                          VAL R31
      789 CAPTURE                          VAL R5
      790 CAPTURE                          VAL R42
      791 CAPTURE                          VAL R45
      792 CAPTURE                          VAL R47
      793 CAPTURE                          VAL R32
      794 CAPTURE                          VAL R37
      795 CAPTURE                          VAL R39
      796 CAPTURE                          VAL R56
      797 CAPTURE                          VAL R21
      798 CAPTURE                          VAL R53
      799 CAPTURE                          VAL R49
      800 CAPTURE                          VAL R28
      801 CAPTURE                          VAL R4
      802 DUPCLOSURE                       R58 K217 [PROTO_101]
      803 CAPTURE                          VAL R46
      804 CAPTURE                          VAL R36
      805 CAPTURE                          VAL R17
      806 CAPTURE                          VAL R19
      807 CAPTURE                          VAL R22
      808 CAPTURE                          VAL R12
      809 CAPTURE                          VAL R30
      810 CAPTURE                          VAL R21
      811 CAPTURE                          VAL R56
      812 CAPTURE                          VAL R25
      813 CAPTURE                          VAL R53
      814 CAPTURE                          VAL R54
      815 CAPTURE                          VAL R7
      816 CAPTURE                          VAL R24
      817 CAPTURE                          VAL R23
      818 CAPTURE                          VAL R52
      819 CAPTURE                          VAL R49
      820 CAPTURE                          VAL R18
      821 CAPTURE                          VAL R13
      822 CAPTURE                          VAL R26
      823 CAPTURE                          VAL R28
      824 DUPCLOSURE                       R59 K218 [PROTO_103]
      825 CAPTURE                          VAL R29
      826 DUPCLOSURE                       R60 K219 [PROTO_105]
      827 CAPTURE                          VAL R17
      828 CAPTURE                          VAL R30
      829 CAPTURE                          VAL R3
      830 CAPTURE                          VAL R59
      831 CAPTURE                          VAL R57
      832 DUPTABLE                         R61 K225 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      833 SETTABLEKS                       R49 R61 K220 ["Context"]
      835 SETTABLEKS                       R57 R61 K221 ["EditableDataModelProvider"]
      837 SETTABLEKS                       R60 R61 K222 ["PreviewDataModelProvider"]
      839 SETTABLEKS                       R58 R61 K223 ["UIDataModelProvider"]
      841 SETTABLEKS                       R59 R61 K224 ["_setupEditorFolderForPreview"]
      843 RETURN                           R61 1
