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
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

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

PROTO_20:
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
        4 MOVE                             R1 R0
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 2
       13 MOVE                             R1 R3
       14 MOVE                             R2 R4
       15 GETUPVAL                         R3 3
       16 LOADK                            R5 K1 ["Remove nodes"]
       17 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
       19 CALL                             R3 2 1
       20 MOVE                             R4 R1
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 LOADNIL                          R9
       25 SETTABLEKS                       R9 R8 K3 ["Parent"]
       27 FORGLOOP                         R4 2 ; [-4]
       29 JUMPIFEQKNIL                     R3 ; [+8]
       31 GETUPVAL                         R4 3
       32 MOVE                             R6 R3
       33 GETIMPORT                        R7 K7 [Enum.FinishRecordingOperation.Commit]
       35 NAMECALL                         R4 R4 K8 ["FinishRecording"]
       37 CALL                             R4 3 0
       38 GETUPVAL                         R4 0
       39 MOVE                             R6 R2
       40 NAMECALL                         R4 R4 K9 ["Set"]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_32:
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
        4 MOVE                             R1 R0
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 2
       13 MOVE                             R1 R3
       14 MOVE                             R2 R4
       15 LENGTH                           R3 R1
       16 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K2 ["copyInstancesToClipboardAsync"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 4
       25 LOADK                            R5 K3 ["Cut nodes"]
       26 NAMECALL                         R3 R3 K4 ["TryBeginRecording"]
       28 CALL                             R3 2 1
       29 MOVE                             R4 R1
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 LOADNIL                          R9
       34 SETTABLEKS                       R9 R8 K5 ["Parent"]
       36 FORGLOOP                         R4 2 ; [-4]
       38 JUMPIFEQKNIL                     R3 ; [+8]
       40 GETUPVAL                         R4 4
       41 MOVE                             R6 R3
       42 GETIMPORT                        R7 K9 [Enum.FinishRecordingOperation.Commit]
       44 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       46 CALL                             R4 3 0
       47 GETUPVAL                         R4 0
       48 MOVE                             R6 R2
       49 NAMECALL                         R4 R4 K11 ["Set"]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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
       96 NEWTABLE                         R7 0 1
       98 MOVE                             R8 R3
       99 SETLIST                          R7 R8 1 [1]
      101 NAMECALL                         R5 R5 K22 ["Set"]
      103 CALL                             R5 2 0
      104 GETTABLEKS                       R5 R0 K23 ["pinPosition"]
      106 JUMPIFNOT                        R5 ; [+17]
      107 GETUPVAL                         R5 5
      108 GETTABLEKS                       R5 R5 K24 ["setNodePosition"]
      110 MOVE                             R6 R3
      111 GETUPVAL                         R8 0
      112 CALL                             R8 0 1
      113 JUMPIFNOT                        R8 ; [+7]
      114 GETUPVAL                         R7 5
      115 GETTABLEKS                       R7 R7 K25 ["predictOutputPosition"]
      117 GETTABLEKS                       R8 R0 K23 ["pinPosition"]
      119 CALL                             R7 1 1
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R7 R0 K23 ["pinPosition"]
      123 CALL                             R5 2 0
      124 GETUPVAL                         R5 6
      125 MOVE                             R7 R3
      126 NAMECALL                         R5 R5 K26 ["instanceToId"]
      128 CALL                             R5 2 1
      129 JUMPIFNOT                        R2 ; [+7]
      130 GETUPVAL                         R6 4
      131 MOVE                             R8 R2
      132 GETIMPORT                        R9 K30 [Enum.FinishRecordingOperation.Commit]
      134 NAMECALL                         R6 R6 K31 ["FinishRecording"]
      136 CALL                             R6 3 0
      137 RETURN                           R5 1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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
       29 JUMPIFNOT                        R8 ; [+28]
       30 GETTABLEKS                       R9 R8 K8 ["className"]
       32 JUMPIFEQKS                       R9 K9 ["Parameter"] ; [+25]
       34 JUMPIFNOT                        R6 ; [+23]
       35 JUMPIFNOT                        R7 ; [+22]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K10 ["setNodeOutputInfoInDestroyMapRef"]
       39 GETTABLEKS                       R9 R9 K11 ["current"]
       41 MOVE                             R10 R2
       42 DUPTABLE                         R11 K18 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       43 SETTABLEKS                       R0 R11 K12 ["inputNodeId"]
       45 SETTABLEKS                       R7 R11 K13 ["inputNodePinId"]
       47 SETTABLEKS                       R3 R11 K14 ["outputNodePinId"]
       49 SETTABLEKS                       R6 R11 K15 ["wireId"]
       51 SETTABLEKS                       R2 R11 K16 ["outputNodeId"]
       53 NEWTABLE                         R12 0 0
       55 SETTABLEKS                       R12 R11 K17 ["properties"]
       57 CALL                             R9 2 0
       58 JUMPIFNOT                        R5 ; [+7]
       59 GETUPVAL                         R9 1
       60 MOVE                             R11 R5
       61 GETIMPORT                        R12 K22 [Enum.FinishRecordingOperation.Commit]
       63 NAMECALL                         R9 R9 K23 ["FinishRecording"]
       65 CALL                             R9 3 0
       66 RETURN                           R0 0

PROTO_43:
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
      122 JUMPIFNOT                        R5 ; [+41]
      123 GETTABLEKS                       R7 R0 K4 ["sourcePinInfo"]
      125 GETTABLEKS                       R7 R7 K5 ["sourcePinNodeId"]
      127 GETTABLEKS                       R8 R0 K4 ["sourcePinInfo"]
      129 GETTABLEKS                       R8 R8 K18 ["sourcePinName"]
      131 GETUPVAL                         R9 4
      132 MOVE                             R11 R5
      133 NAMECALL                         R9 R9 K6 ["idToInstance"]
      135 CALL                             R9 2 1
      136 JUMPIFNOT                        R9 ; [+27]
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
      159 GETTABLEKS                       R15 R0 K4 ["sourcePinInfo"]
      161 GETTABLEKS                       R15 R15 K32 ["sourcePinDynamicIndex"]
      163 CALL                             R10 5 0
      164 JUMPIFNOT                        R2 ; [+7]
      165 GETUPVAL                         R7 3
      166 MOVE                             R9 R2
      167 GETIMPORT                        R10 K36 [Enum.FinishRecordingOperation.Commit]
      169 NAMECALL                         R7 R7 K37 ["FinishRecording"]
      171 CALL                             R7 3 0
      172 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_51:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_52:
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
       53 DUPCLOSURE                       R7 K14 [PROTO_51]
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_65:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_66:
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

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_68:
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
      159 GETTABLEKS                       R18 R18 K3 ["useState"]
      161 LOADNIL                          R19
      162 CALL                             R18 1 2
      163 GETUPVAL                         R20 1
      164 GETTABLEKS                       R20 R20 K3 ["useState"]
      166 NEWTABLE                         R21 0 0
      168 CALL                             R20 1 2
      169 GETUPVAL                         R22 1
      170 GETTABLEKS                       R22 R22 K3 ["useState"]
      172 NEWTABLE                         R23 0 0
      174 CALL                             R22 1 2
      175 GETUPVAL                         R24 14
      176 GETTABLEKS                       R24 R24 K12 ["useRefToState"]
      178 MOVE                             R25 R18
      179 CALL                             R24 1 1
      180 GETUPVAL                         R25 1
      181 GETTABLEKS                       R25 R25 K9 ["useEffect"]
      183 NEWCLOSURE                       R26 P5
      184 CAPTURE                          UPVAL U13
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R10
      188 CAPTURE                          UPVAL U12
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R3
      195 NEWTABLE                         R27 0 6
      197 MOVE                             R28 R17
      198 GETTABLEKS                       R29 R0 K13 ["testOverrideGraphPayloadMap"]
      200 MOVE                             R30 R19
      201 MOVE                             R31 R10
      202 GETTABLEKS                       R32 R1 K14 ["setMap"]
      204 GETTABLEKS                       R33 R2 K14 ["setMap"]
      206 SETLIST                          R27 R28 6 [1]
      208 CALL                             R25 2 0
      209 GETUPVAL                         R25 1
      210 GETTABLEKS                       R25 R25 K15 ["useCallback"]
      212 NEWCLOSURE                       R26 P6
      213 CAPTURE                          VAL R15
      214 CAPTURE                          UPVAL U12
      215 NEWTABLE                         R27 0 1
      217 MOVE                             R28 R15
      218 SETLIST                          R27 R28 1 [1]
      220 CALL                             R25 2 1
      221 GETUPVAL                         R26 1
      222 GETTABLEKS                       R26 R26 K15 ["useCallback"]
      224 NEWCLOSURE                       R27 P7
      225 CAPTURE                          VAL R15
      226 CAPTURE                          UPVAL U12
      227 NEWTABLE                         R28 0 1
      229 MOVE                             R29 R15
      230 SETLIST                          R28 R29 1 [1]
      232 CALL                             R26 2 1
      233 GETUPVAL                         R27 1
      234 GETTABLEKS                       R27 R27 K15 ["useCallback"]
      236 NEWCLOSURE                       R28 P8
      237 CAPTURE                          UPVAL U15
      238 CAPTURE                          VAL R15
      239 CAPTURE                          UPVAL U12
      240 NEWTABLE                         R29 0 1
      242 MOVE                             R30 R15
      243 SETLIST                          R29 R30 1 [1]
      245 CALL                             R27 2 1
      246 GETUPVAL                         R28 1
      247 GETTABLEKS                       R28 R28 K15 ["useCallback"]
      249 NEWCLOSURE                       R29 P9
      250 CAPTURE                          VAL R15
      251 CAPTURE                          UPVAL U12
      252 NEWTABLE                         R30 0 1
      254 MOVE                             R31 R15
      255 SETLIST                          R30 R31 1 [1]
      257 CALL                             R28 2 1
      258 GETUPVAL                         R29 1
      259 GETTABLEKS                       R29 R29 K15 ["useCallback"]
      261 NEWCLOSURE                       R30 P10
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R15
      264 NEWTABLE                         R31 0 3
      266 MOVE                             R32 R15
      267 MOVE                             R33 R7
      268 MOVE                             R34 R14
      269 SETLIST                          R31 R32 3 [1]
      271 CALL                             R29 2 1
      272 GETUPVAL                         R30 1
      273 GETTABLEKS                       R30 R30 K15 ["useCallback"]
      275 NEWCLOSURE                       R31 P11
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R2
      279 CAPTURE                          VAL R15
      280 NEWTABLE                         R32 0 4
      282 GETTABLEKS                       R33 R2 K16 ["get"]
      284 MOVE                             R34 R7
      285 MOVE                             R35 R15
      286 MOVE                             R36 R18
      287 SETLIST                          R32 R33 4 [1]
      289 CALL                             R30 2 1
      290 GETUPVAL                         R31 1
      291 GETTABLEKS                       R31 R31 K3 ["useState"]
      293 LOADK                            R32 K17 [""]
      294 CALL                             R31 1 2
      295 GETUPVAL                         R33 1
      296 GETTABLEKS                       R33 R33 K3 ["useState"]
      298 LOADNIL                          R34
      299 CALL                             R33 1 2
      300 GETUPVAL                         R36 16
      301 CALL                             R36 0 1
      302 JUMPIFNOT                        R36 ; [+16]
      303 GETUPVAL                         R36 5
      304 CALL                             R36 0 1
      305 JUMPIFNOT                        R36 ; [+7]
      306 GETUPVAL                         R35 17
      307 GETTABLEKS                       R35 R35 K18 ["useSignalState"]
      309 GETTABLEKS                       R36 R8 K11 ["observeSelectedGraphInstance"]
      311 CALL                             R35 1 1
      312 JUMP                             ; [+7]
      313 GETUPVAL                         R35 17
      314 GETTABLEKS                       R35 R35 K18 ["useSignalState"]
      316 MOVE                             R36 R16
      317 CALL                             R35 1 1
      318 JUMP                             ; [+1]
      319 LOADNIL                          R35
      320 GETUPVAL                         R37 16
      321 CALL                             R37 0 1
      322 JUMPIFNOT                        R37 ; [+12]
      323 GETUPVAL                         R36 1
      324 GETTABLEKS                       R36 R36 K8 ["useMemo"]
      326 NEWCLOSURE                       R37 P12
      327 CAPTURE                          VAL R35
      328 NEWTABLE                         R38 0 1
      330 MOVE                             R39 R35
      331 SETLIST                          R38 R39 1 [1]
      333 CALL                             R36 2 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R36
      336 GETUPVAL                         R38 5
      337 CALL                             R38 0 1
      338 JUMPIFNOT                        R38 ; [+7]
      339 GETUPVAL                         R37 17
      340 GETTABLEKS                       R37 R37 K18 ["useSignalState"]
      342 GETTABLEKS                       R38 R8 K11 ["observeSelectedGraphInstance"]
      344 CALL                             R37 1 1
      345 JUMP                             ; [+5]
      346 GETUPVAL                         R37 17
      347 GETTABLEKS                       R37 R37 K18 ["useSignalState"]
      349 MOVE                             R38 R16
      350 CALL                             R37 1 1
      351 GETUPVAL                         R38 1
      352 GETTABLEKS                       R38 R38 K9 ["useEffect"]
      354 NEWCLOSURE                       R39 P13
      355 CAPTURE                          VAL R37
      356 CAPTURE                          UPVAL U16
      357 CAPTURE                          VAL R32
      358 CAPTURE                          VAL R34
      359 CAPTURE                          UPVAL U18
      360 NEWTABLE                         R40 0 1
      362 MOVE                             R41 R37
      363 SETLIST                          R40 R41 1 [1]
      365 CALL                             R38 2 0
      366 GETUPVAL                         R38 16
      367 CALL                             R38 0 1
      368 JUMPIF                           R38 ; [+13]
      369 GETUPVAL                         R38 1
      370 GETTABLEKS                       R38 R38 K9 ["useEffect"]
      372 NEWCLOSURE                       R39 P14
      373 CAPTURE                          VAL R31
      374 CAPTURE                          VAL R37
      375 NEWTABLE                         R40 0 2
      377 MOVE                             R41 R31
      378 MOVE                             R42 R37
      379 SETLIST                          R40 R41 2 [1]
      381 CALL                             R38 2 0
      382 GETUPVAL                         R37 1
      383 GETTABLEKS                       R37 R37 K15 ["useCallback"]
      385 NEWCLOSURE                       R38 P15
      386 CAPTURE                          UPVAL U5
      387 CAPTURE                          VAL R8
      388 CAPTURE                          VAL R16
      389 CAPTURE                          VAL R18
      390 CAPTURE                          UPVAL U19
      391 CAPTURE                          UPVAL U15
      392 CAPTURE                          UPVAL U12
      393 CAPTURE                          UPVAL U20
      394 CAPTURE                          VAL R2
      395 CAPTURE                          VAL R15
      396 CAPTURE                          UPVAL U21
      397 CAPTURE                          VAL R7
      398 NEWTABLE                         R39 0 5
      400 MOVE                             R40 R7
      401 GETUPVAL                         R42 5
      402 CALL                             R42 0 1
      403 JUMPIFNOT                        R42 ; [+3]
      404 GETTABLEKS                       R41 R8 K11 ["observeSelectedGraphInstance"]
      406 JUMP                             ; [+1]
      407 MOVE                             R41 R16
      408 MOVE                             R42 R18
      409 MOVE                             R43 R15
      410 MOVE                             R44 R2
      411 SETLIST                          R39 R40 5 [1]
      413 CALL                             R37 2 1
      414 GETUPVAL                         R38 22
      415 GETTABLEKS                       R38 R38 K19 ["useProducer"]
      417 GETUPVAL                         R39 1
      418 GETTABLEKS                       R39 R39 K15 ["useCallback"]
      420 NEWCLOSURE                       R40 P16
      421 CAPTURE                          VAL R37
      422 NEWTABLE                         R41 0 1
      424 MOVE                             R42 R37
      425 SETLIST                          R41 R42 1 [1]
      427 CALL                             R39 2 -1
      428 CALL                             R38 -1 0
      429 GETUPVAL                         R38 1
      430 GETTABLEKS                       R38 R38 K15 ["useCallback"]
      432 NEWCLOSURE                       R39 P17
      433 CAPTURE                          VAL R7
      434 CAPTURE                          UPVAL U23
      435 CAPTURE                          UPVAL U24
      436 CAPTURE                          UPVAL U15
      437 NEWTABLE                         R40 0 1
      439 MOVE                             R41 R7
      440 SETLIST                          R40 R41 1 [1]
      442 CALL                             R38 2 1
      443 GETUPVAL                         R39 25
      444 GETTABLEKS                       R39 R39 K19 ["useProducer"]
      446 MOVE                             R40 R38
      447 CALL                             R39 1 0
      448 GETUPVAL                         R39 1
      449 GETTABLEKS                       R39 R39 K15 ["useCallback"]
      451 NEWCLOSURE                       R40 P18
      452 CAPTURE                          UPVAL U5
      453 CAPTURE                          VAL R8
      454 CAPTURE                          VAL R16
      455 CAPTURE                          VAL R7
      456 CAPTURE                          UPVAL U15
      457 CAPTURE                          UPVAL U12
      458 NEWTABLE                         R41 0 2
      460 MOVE                             R42 R7
      461 GETUPVAL                         R44 5
      462 CALL                             R44 0 1
      463 JUMPIFNOT                        R44 ; [+3]
      464 GETTABLEKS                       R43 R8 K11 ["observeSelectedGraphInstance"]
      466 JUMP                             ; [+1]
      467 MOVE                             R43 R16
      468 SETLIST                          R41 R42 2 [1]
      470 CALL                             R39 2 1
      471 GETUPVAL                         R40 26
      472 GETTABLEKS                       R40 R40 K20 ["useBoundAction"]
      474 LOADK                            R41 K21 ["NativeGraphContext_DuplicateSelectedNodes"]
      475 MOVE                             R42 R39
      476 CALL                             R40 2 0
      477 GETUPVAL                         R40 1
      478 GETTABLEKS                       R40 R40 K15 ["useCallback"]
      480 NEWCLOSURE                       R41 P19
      481 CAPTURE                          VAL R7
      482 NEWTABLE                         R42 0 1
      484 MOVE                             R43 R7
      485 SETLIST                          R42 R43 1 [1]
      487 CALL                             R40 2 1
      488 GETUPVAL                         R41 26
      489 GETTABLEKS                       R41 R41 K20 ["useBoundAction"]
      491 LOADK                            R42 K22 ["NativeGraphContext_ClearNodeSelection"]
      492 MOVE                             R43 R40
      493 CALL                             R41 2 0
      494 GETUPVAL                         R41 1
      495 GETTABLEKS                       R41 R41 K15 ["useCallback"]
      497 NEWCLOSURE                       R42 P20
      498 CAPTURE                          UPVAL U5
      499 CAPTURE                          VAL R8
      500 CAPTURE                          VAL R16
      501 CAPTURE                          VAL R7
      502 NEWTABLE                         R43 0 2
      504 MOVE                             R44 R7
      505 GETUPVAL                         R46 5
      506 CALL                             R46 0 1
      507 JUMPIFNOT                        R46 ; [+3]
      508 GETTABLEKS                       R45 R8 K11 ["observeSelectedGraphInstance"]
      510 JUMP                             ; [+1]
      511 MOVE                             R45 R16
      512 SETLIST                          R43 R44 2 [1]
      514 CALL                             R41 2 1
      515 GETUPVAL                         R42 26
      516 GETTABLEKS                       R42 R42 K20 ["useBoundAction"]
      518 LOADK                            R43 K23 ["NativeGraphContext_SelectAllNodes"]
      519 MOVE                             R44 R41
      520 CALL                             R42 2 0
      521 GETUPVAL                         R42 1
      522 GETTABLEKS                       R42 R42 K15 ["useCallback"]
      524 NEWCLOSURE                       R43 P21
      525 CAPTURE                          VAL R7
      526 CAPTURE                          VAL R6
      527 NEWTABLE                         R44 0 2
      529 MOVE                             R45 R7
      530 MOVE                             R46 R6
      531 SETLIST                          R44 R45 2 [1]
      533 CALL                             R42 2 1
      534 GETUPVAL                         R43 26
      535 GETTABLEKS                       R43 R43 K20 ["useBoundAction"]
      537 LOADK                            R44 K24 ["NativeGraphContext_CopySelectedNodes"]
      538 MOVE                             R45 R42
      539 CALL                             R43 2 0
      540 GETUPVAL                         R43 1
      541 GETTABLEKS                       R43 R43 K15 ["useCallback"]
      543 NEWCLOSURE                       R44 P22
      544 CAPTURE                          VAL R7
      545 CAPTURE                          UPVAL U23
      546 CAPTURE                          UPVAL U24
      547 CAPTURE                          VAL R6
      548 CAPTURE                          UPVAL U15
      549 NEWTABLE                         R45 0 2
      551 MOVE                             R46 R7
      552 MOVE                             R47 R6
      553 SETLIST                          R45 R46 2 [1]
      555 CALL                             R43 2 1
      556 GETUPVAL                         R44 26
      557 GETTABLEKS                       R44 R44 K20 ["useBoundAction"]
      559 LOADK                            R45 K25 ["NativeGraphContext_CutSelectedNodes"]
      560 MOVE                             R46 R43
      561 CALL                             R44 2 0
      562 GETUPVAL                         R44 1
      563 GETTABLEKS                       R44 R44 K15 ["useCallback"]
      565 NEWCLOSURE                       R45 P23
      566 CAPTURE                          UPVAL U5
      567 CAPTURE                          VAL R8
      568 CAPTURE                          VAL R16
      569 CAPTURE                          VAL R6
      570 CAPTURE                          UPVAL U15
      571 CAPTURE                          UPVAL U12
      572 CAPTURE                          VAL R7
      573 NEWTABLE                         R46 0 3
      575 MOVE                             R47 R7
      576 MOVE                             R48 R6
      577 GETUPVAL                         R50 5
      578 CALL                             R50 0 1
      579 JUMPIFNOT                        R50 ; [+3]
      580 GETTABLEKS                       R49 R8 K11 ["observeSelectedGraphInstance"]
      582 JUMP                             ; [+1]
      583 MOVE                             R49 R16
      584 SETLIST                          R46 R47 3 [1]
      586 CALL                             R44 2 1
      587 GETUPVAL                         R45 26
      588 GETTABLEKS                       R45 R45 K20 ["useBoundAction"]
      590 LOADK                            R46 K26 ["NativeGraphContext_PasteNodes"]
      591 MOVE                             R47 R44
      592 CALL                             R45 2 0
      593 GETUPVAL                         R45 1
      594 GETTABLEKS                       R45 R45 K15 ["useCallback"]
      596 NEWCLOSURE                       R46 P24
      597 CAPTURE                          UPVAL U5
      598 CAPTURE                          VAL R8
      599 CAPTURE                          VAL R16
      600 CAPTURE                          UPVAL U12
      601 CAPTURE                          VAL R7
      602 NEWTABLE                         R47 0 2
      604 GETUPVAL                         R49 5
      605 CALL                             R49 0 1
      606 JUMPIFNOT                        R49 ; [+3]
      607 GETTABLEKS                       R48 R8 K11 ["observeSelectedGraphInstance"]
      609 JUMP                             ; [+1]
      610 MOVE                             R48 R16
      611 MOVE                             R49 R7
      612 SETLIST                          R47 R48 2 [1]
      614 CALL                             R45 2 1
      615 GETUPVAL                         R46 1
      616 GETTABLEKS                       R46 R46 K15 ["useCallback"]
      618 NEWCLOSURE                       R47 P25
      619 CAPTURE                          UPVAL U5
      620 CAPTURE                          VAL R8
      621 CAPTURE                          VAL R16
      622 CAPTURE                          VAL R18
      623 CAPTURE                          UPVAL U15
      624 CAPTURE                          UPVAL U12
      625 CAPTURE                          VAL R15
      626 CAPTURE                          UPVAL U20
      627 CAPTURE                          VAL R2
      628 CAPTURE                          UPVAL U27
      629 CAPTURE                          VAL R7
      630 NEWTABLE                         R48 0 5
      632 MOVE                             R49 R7
      633 GETUPVAL                         R51 5
      634 CALL                             R51 0 1
      635 JUMPIFNOT                        R51 ; [+3]
      636 GETTABLEKS                       R50 R8 K11 ["observeSelectedGraphInstance"]
      638 JUMP                             ; [+1]
      639 MOVE                             R50 R16
      640 MOVE                             R51 R15
      641 MOVE                             R52 R2
      642 MOVE                             R53 R18
      643 SETLIST                          R48 R49 5 [1]
      645 CALL                             R46 2 1
      646 GETUPVAL                         R47 1
      647 GETTABLEKS                       R47 R47 K15 ["useCallback"]
      649 NEWCLOSURE                       R48 P26
      650 CAPTURE                          UPVAL U5
      651 CAPTURE                          VAL R8
      652 CAPTURE                          VAL R16
      653 CAPTURE                          VAL R18
      654 CAPTURE                          UPVAL U12
      655 CAPTURE                          UPVAL U27
      656 CAPTURE                          UPVAL U15
      657 CAPTURE                          VAL R15
      658 CAPTURE                          VAL R46
      659 CAPTURE                          VAL R7
      660 NEWTABLE                         R49 0 5
      662 MOVE                             R50 R7
      663 GETUPVAL                         R52 5
      664 CALL                             R52 0 1
      665 JUMPIFNOT                        R52 ; [+3]
      666 GETTABLEKS                       R51 R8 K11 ["observeSelectedGraphInstance"]
      668 JUMP                             ; [+1]
      669 MOVE                             R51 R16
      670 MOVE                             R52 R15
      671 MOVE                             R53 R18
      672 MOVE                             R54 R46
      673 SETLIST                          R49 R50 5 [1]
      675 CALL                             R47 2 1
      676 GETUPVAL                         R48 1
      677 GETTABLEKS                       R48 R48 K15 ["useCallback"]
      679 NEWCLOSURE                       R49 P27
      680 CAPTURE                          VAL R18
      681 CAPTURE                          UPVAL U15
      682 CAPTURE                          UPVAL U12
      683 CAPTURE                          VAL R15
      684 NEWTABLE                         R50 0 2
      686 MOVE                             R51 R15
      687 MOVE                             R52 R18
      688 SETLIST                          R50 R51 2 [1]
      690 CALL                             R48 2 1
      691 GETUPVAL                         R49 1
      692 GETTABLEKS                       R49 R49 K15 ["useCallback"]
      694 NEWCLOSURE                       R50 P28
      695 CAPTURE                          VAL R18
      696 CAPTURE                          UPVAL U15
      697 CAPTURE                          UPVAL U12
      698 CAPTURE                          VAL R15
      699 NEWTABLE                         R51 0 2
      701 MOVE                             R52 R15
      702 MOVE                             R53 R18
      703 SETLIST                          R51 R52 2 [1]
      705 CALL                             R49 2 1
      706 GETUPVAL                         R50 28
      707 MOVE                             R51 R15
      708 GETUPVAL                         R53 5
      709 CALL                             R53 0 1
      710 JUMPIFNOT                        R53 ; [+3]
      711 GETTABLEKS                       R52 R8 K11 ["observeSelectedGraphInstance"]
      713 JUMP                             ; [+1]
      714 MOVE                             R52 R16
      715 CALL                             R50 2 1
      716 GETUPVAL                         R51 29
      717 MOVE                             R52 R15
      718 GETUPVAL                         R54 5
      719 CALL                             R54 0 1
      720 JUMPIFNOT                        R54 ; [+3]
      721 GETTABLEKS                       R53 R8 K11 ["observeSelectedGraphInstance"]
      723 JUMP                             ; [+1]
      724 MOVE                             R53 R16
      725 CALL                             R51 2 1
      726 GETUPVAL                         R52 1
      727 GETTABLEKS                       R52 R52 K15 ["useCallback"]
      729 NEWCLOSURE                       R53 P29
      730 CAPTURE                          VAL R18
      731 CAPTURE                          UPVAL U15
      732 CAPTURE                          UPVAL U12
      733 CAPTURE                          VAL R15
      734 NEWTABLE                         R54 0 2
      736 MOVE                             R55 R15
      737 MOVE                             R56 R18
      738 SETLIST                          R54 R55 2 [1]
      740 CALL                             R52 2 1
      741 GETUPVAL                         R53 1
      742 GETTABLEKS                       R53 R53 K15 ["useCallback"]
      744 NEWCLOSURE                       R54 P30
      745 CAPTURE                          VAL R18
      746 CAPTURE                          UPVAL U15
      747 CAPTURE                          UPVAL U12
      748 CAPTURE                          VAL R15
      749 CAPTURE                          VAL R50
      750 NEWTABLE                         R55 0 3
      752 MOVE                             R56 R15
      753 MOVE                             R57 R18
      754 GETTABLEKS                       R58 R50 K27 ["setNodeOutputInfoInDestroyMapRef"]
      756 SETLIST                          R55 R56 3 [1]
      758 CALL                             R53 2 1
      759 GETUPVAL                         R54 1
      760 GETTABLEKS                       R54 R54 K15 ["useCallback"]
      762 NEWCLOSURE                       R55 P31
      763 CAPTURE                          UPVAL U5
      764 CAPTURE                          VAL R8
      765 CAPTURE                          VAL R16
      766 CAPTURE                          UPVAL U15
      767 CAPTURE                          VAL R15
      768 CAPTURE                          UPVAL U12
      769 CAPTURE                          VAL R46
      770 CAPTURE                          VAL R47
      771 CAPTURE                          VAL R53
      772 NEWTABLE                         R56 0 6
      774 GETUPVAL                         R58 5
      775 CALL                             R58 0 1
      776 JUMPIFNOT                        R58 ; [+3]
      777 GETTABLEKS                       R57 R8 K11 ["observeSelectedGraphInstance"]
      779 JUMP                             ; [+1]
      780 MOVE                             R57 R16
      781 MOVE                             R58 R18
      782 MOVE                             R59 R15
      783 MOVE                             R60 R46
      784 MOVE                             R61 R47
      785 MOVE                             R62 R53
      786 SETLIST                          R56 R57 6 [1]
      788 CALL                             R54 2 1
      789 GETUPVAL                         R55 1
      790 GETTABLEKS                       R55 R55 K15 ["useCallback"]
      792 NEWCLOSURE                       R56 P32
      793 CAPTURE                          VAL R11
      794 CAPTURE                          UPVAL U15
      795 NEWTABLE                         R57 0 0
      797 CALL                             R55 2 1
      798 GETUPVAL                         R56 1
      799 GETTABLEKS                       R56 R56 K15 ["useCallback"]
      801 NEWCLOSURE                       R57 P33
      802 CAPTURE                          VAL R11
      803 CAPTURE                          UPVAL U15
      804 NEWTABLE                         R58 0 0
      806 CALL                             R56 2 1
      807 GETUPVAL                         R57 1
      808 GETTABLEKS                       R57 R57 K9 ["useEffect"]
      810 NEWCLOSURE                       R58 P34
      811 CAPTURE                          VAL R11
      812 CAPTURE                          UPVAL U15
      813 NEWTABLE                         R59 0 0
      815 CALL                             R57 2 0
      816 GETUPVAL                         R57 1
      817 GETTABLEKS                       R57 R57 K15 ["useCallback"]
      819 NEWCLOSURE                       R58 P35
      820 CAPTURE                          UPVAL U15
      821 CAPTURE                          VAL R15
      822 CAPTURE                          UPVAL U18
      823 NEWTABLE                         R59 0 1
      825 MOVE                             R60 R15
      826 SETLIST                          R59 R60 1 [1]
      828 CALL                             R57 2 1
      829 GETUPVAL                         R58 1
      830 GETTABLEKS                       R58 R58 K15 ["useCallback"]
      832 NEWCLOSURE                       R59 P36
      833 CAPTURE                          UPVAL U15
      834 CAPTURE                          VAL R15
      835 NEWTABLE                         R60 0 1
      837 MOVE                             R61 R15
      838 SETLIST                          R60 R61 1 [1]
      840 CALL                             R58 2 1
      841 GETUPVAL                         R59 1
      842 GETTABLEKS                       R59 R59 K15 ["useCallback"]
      844 NEWCLOSURE                       R60 P37
      845 CAPTURE                          UPVAL U15
      846 CAPTURE                          VAL R15
      847 CAPTURE                          UPVAL U30
      848 CAPTURE                          UPVAL U12
      849 CAPTURE                          UPVAL U27
      850 CAPTURE                          VAL R1
      851 CAPTURE                          VAL R18
      852 NEWTABLE                         R61 0 3
      854 MOVE                             R62 R15
      855 MOVE                             R63 R18
      856 GETTABLEKS                       R64 R1 K28 ["observe"]
      858 SETLIST                          R61 R62 3 [1]
      860 CALL                             R59 2 1
      861 GETUPVAL                         R60 1
      862 GETTABLEKS                       R60 R60 K15 ["useCallback"]
      864 NEWCLOSURE                       R61 P38
      865 CAPTURE                          UPVAL U15
      866 CAPTURE                          UPVAL U12
      867 CAPTURE                          VAL R15
      868 NEWTABLE                         R62 0 1
      870 MOVE                             R63 R15
      871 SETLIST                          R62 R63 1 [1]
      873 CALL                             R60 2 1
      874 GETUPVAL                         R61 1
      875 GETTABLEKS                       R61 R61 K15 ["useCallback"]
      877 NEWCLOSURE                       R62 P39
      878 CAPTURE                          UPVAL U5
      879 CAPTURE                          VAL R8
      880 CAPTURE                          VAL R16
      881 CAPTURE                          VAL R18
      882 CAPTURE                          VAL R15
      883 CAPTURE                          UPVAL U12
      884 CAPTURE                          UPVAL U15
      885 NEWTABLE                         R63 0 3
      887 MOVE                             R64 R16
      888 MOVE                             R65 R15
      889 MOVE                             R66 R18
      890 SETLIST                          R63 R64 3 [1]
      892 CALL                             R61 2 1
      893 GETUPVAL                         R62 1
      894 GETTABLEKS                       R62 R62 K15 ["useCallback"]
      896 NEWCLOSURE                       R63 P40
      897 CAPTURE                          UPVAL U20
      898 CAPTURE                          UPVAL U31
      899 CAPTURE                          UPVAL U5
      900 CAPTURE                          VAL R8
      901 CAPTURE                          VAL R16
      902 CAPTURE                          VAL R15
      903 CAPTURE                          UPVAL U12
      904 CAPTURE                          UPVAL U15
      905 CAPTURE                          VAL R51
      906 CAPTURE                          UPVAL U27
      907 NEWTABLE                         R64 0 4
      909 MOVE                             R65 R15
      910 MOVE                             R66 R16
      911 MOVE                             R67 R18
      912 GETTABLEKS                       R68 R51 K29 ["parameterDestroyConnectionMapRef"]
      914 SETLIST                          R64 R65 4 [1]
      916 CALL                             R62 2 1
      917 GETUPVAL                         R63 1
      918 GETTABLEKS                       R63 R63 K15 ["useCallback"]
      920 NEWCLOSURE                       R64 P41
      921 CAPTURE                          UPVAL U5
      922 CAPTURE                          VAL R8
      923 CAPTURE                          VAL R16
      924 CAPTURE                          UPVAL U12
      925 CAPTURE                          UPVAL U15
      926 CAPTURE                          UPVAL U27
      927 NEWTABLE                         R65 0 1
      929 GETUPVAL                         R67 5
      930 CALL                             R67 0 1
      931 JUMPIFNOT                        R67 ; [+3]
      932 GETTABLEKS                       R66 R8 K11 ["observeSelectedGraphInstance"]
      934 JUMP                             ; [+1]
      935 MOVE                             R66 R16
      936 SETLIST                          R65 R66 1 [1]
      938 CALL                             R63 2 1
      939 GETUPVAL                         R64 1
      940 GETTABLEKS                       R64 R64 K15 ["useCallback"]
      942 NEWCLOSURE                       R65 P42
      943 CAPTURE                          VAL R15
      944 CAPTURE                          UPVAL U15
      945 NEWTABLE                         R66 0 1
      947 MOVE                             R67 R15
      948 SETLIST                          R66 R67 1 [1]
      950 CALL                             R64 2 1
      951 GETUPVAL                         R65 1
      952 GETTABLEKS                       R65 R65 K15 ["useCallback"]
      954 NEWCLOSURE                       R66 P43
      955 CAPTURE                          VAL R15
      956 CAPTURE                          VAL R5
      957 NEWTABLE                         R67 0 2
      959 MOVE                             R68 R15
      960 GETTABLEKS                       R69 R5 K30 ["selectionService"]
      962 SETLIST                          R67 R68 2 [1]
      964 CALL                             R65 2 1
      965 GETUPVAL                         R66 1
      966 GETTABLEKS                       R66 R66 K9 ["useEffect"]
      968 NEWCLOSURE                       R67 P44
      969 CAPTURE                          UPVAL U13
      970 CAPTURE                          VAL R50
      971 CAPTURE                          VAL R15
      972 CAPTURE                          VAL R24
      973 CAPTURE                          UPVAL U12
      974 NEWTABLE                         R68 0 2
      976 MOVE                             R69 R15
      977 GETTABLEKS                       R70 R50 K31 ["nodeDestroyConnectionMapRef"]
      979 SETLIST                          R68 R69 2 [1]
      981 CALL                             R66 2 0
      982 GETUPVAL                         R66 1
      983 GETTABLEKS                       R66 R66 K9 ["useEffect"]
      985 NEWCLOSURE                       R67 P45
      986 CAPTURE                          UPVAL U13
      987 CAPTURE                          VAL R51
      988 CAPTURE                          VAL R15
      989 CAPTURE                          VAL R61
      990 CAPTURE                          UPVAL U27
      991 NEWTABLE                         R68 0 3
      993 MOVE                             R69 R15
      994 GETTABLEKS                       R70 R51 K29 ["parameterDestroyConnectionMapRef"]
      996 MOVE                             R71 R61
      997 SETLIST                          R68 R69 3 [1]
      999 CALL                             R66 2 0
     1000 GETUPVAL                         R66 32
     1001 MOVE                             R67 R2
     1002 MOVE                             R68 R1
     1003 CALL                             R66 2 1
     1004 GETUPVAL                         R68 5
     1005 CALL                             R68 0 1
     1006 JUMPIFNOT                        R68 ; [+7]
     1007 GETUPVAL                         R67 17
     1008 GETTABLEKS                       R67 R67 K18 ["useSignalState"]
     1010 GETTABLEKS                       R68 R8 K32 ["observeSelectedGraphIsEphemeral"]
     1012 CALL                             R67 1 1
     1013 JUMP                             ; [+1]
     1014 LOADB                            R67 0
     1015 NEWTABLE                         R68 64 0
     1017 GETUPVAL                         R70 5
     1018 CALL                             R70 0 1
     1019 JUMPIFNOT                        R70 ; [+2]
     1020 MOVE                             R69 R67
     1021 JUMP                             ; [+1]
     1022 LOADNIL                          R69
     1023 SETTABLEKS                       R69 R68 K33 ["isReadonly"]
     1025 GETUPVAL                         R70 5
     1026 CALL                             R70 0 1
     1027 JUMPIF                           R70 ; [+4]
     1028 JUMPIFNOT                        R18 ; [+3]
     1029 GETTABLEKS                       R69 R18 K34 ["graphInstanceId"]
     1031 JUMP                             ; [+1]
     1032 LOADNIL                          R69
     1033 SETTABLEKS                       R69 R68 K35 ["selectedGraphInstanceId_DEPRECATED"]
     1035 SETTABLEKS                       R60 R68 K36 ["reorderPinsAsync"]
     1037 SETTABLEKS                       R37 R68 K37 ["createNodeAsync"]
     1039 SETTABLEKS                       R46 R68 K38 ["createParameterAsync"]
     1041 SETTABLEKS                       R47 R68 K39 ["createExistingParameterAsync"]
     1043 SETTABLEKS                       R54 R68 K40 ["createConnectedParameterAsync"]
     1045 SETTABLEKS                       R9 R68 K41 ["graphRect"]
     1047 SETTABLEKS                       R45 R68 K42 ["selectAllParameterNodesWithNameAsync"]
     1049 SETTABLEKS                       R29 R68 K43 ["selectNodesAsync"]
     1051 SETTABLEKS                       R30 R68 K44 ["selectNodesFromRectAsync"]
     1053 SETTABLEKS                       R38 R68 K45 ["removeSelectedNodesAsync"]
     1055 SETTABLEKS                       R39 R68 K46 ["duplicateSelectedNodesAsync"]
     1057 SETTABLEKS                       R41 R68 K47 ["selectAllNodesAsync"]
     1059 SETTABLEKS                       R40 R68 K48 ["clearNodeSelectionAsync"]
     1061 SETTABLEKS                       R42 R68 K49 ["copySelectedNodesAsync"]
     1063 SETTABLEKS                       R43 R68 K50 ["cutSelectedNodesAsync"]
     1065 SETTABLEKS                       R44 R68 K51 ["pasteNodesAsync"]
     1067 SETTABLEKS                       R27 R68 K52 ["setNodePositionsAsync"]
     1069 SETTABLEKS                       R28 R68 K53 ["setNodeSizeAsync"]
     1071 SETTABLEKS                       R53 R68 K54 ["setNodeConnectionAsync"]
     1073 SETTABLEKS                       R48 R68 K55 ["deleteNodeInput"]
     1075 SETTABLEKS                       R52 R68 K56 ["removeNodeOutputConnectionAsync"]
     1077 SETTABLEKS                       R49 R68 K57 ["removeNodeInputConnectionAsync"]
     1079 SETTABLEKS                       R61 R68 K58 ["removeParameterAsync"]
     1081 SETTABLEKS                       R59 R68 K59 ["renameNodeAsync"]
     1083 SETTABLEKS                       R62 R68 K60 ["renameParameterAsync"]
     1085 SETTABLEKS                       R64 R68 K61 ["deleteNodeInstanceAsync"]
     1087 SETTABLEKS                       R65 R68 K62 ["showNodeInExplorerAsync"]
     1089 SETTABLEKS                       R25 R68 K63 ["setCollapsedAsync"]
     1091 SETTABLEKS                       R57 R68 K64 ["setNodePropertyAsync"]
     1093 SETTABLEKS                       R58 R68 K65 ["setInputPinNodePropertyAsync"]
     1095 SETTABLEKS                       R63 R68 K66 ["setParameterNodeTypeAsync"]
     1097 SETTABLEKS                       R31 R68 K67 ["currentAnimationId"]
     1099 SETTABLEKS                       R33 R68 K68 ["sourceAssetId"]
     1101 SETTABLEKS                       R36 R68 K69 ["selectedGraphKey"]
     1103 GETUPVAL                         R70 5
     1104 CALL                             R70 0 1
     1105 JUMPIFNOT                        R70 ; [+2]
     1106 LOADNIL                          R69
     1107 JUMP                             ; [+1]
     1108 MOVE                             R69 R16
     1109 SETTABLEKS                       R69 R68 K70 ["observeSelectedGraphInstance_DEPRECATED"]
     1111 GETTABLEKS                       R69 R1 K28 ["observe"]
     1113 SETTABLEKS                       R69 R68 K71 ["observeGraphNodeById"]
     1115 GETTABLEKS                       R69 R2 K28 ["observe"]
     1117 SETTABLEKS                       R69 R68 K72 ["observeNodeRenderInfoById"]
     1119 SETTABLEKS                       R55 R68 K73 ["beginUndoTransaction"]
     1121 SETTABLEKS                       R56 R68 K74 ["finishUndoTransaction"]
     1123 GETTABLEKS                       R69 R1 K75 ["observeMap"]
     1125 SETTABLEKS                       R69 R68 K76 ["observeGraphNodeMap"]
     1127 GETTABLEKS                       R69 R2 K75 ["observeMap"]
     1129 SETTABLEKS                       R69 R68 K77 ["observeRenderInfoMap"]
     1131 GETTABLEKS                       R69 R66 K78 ["hasGraphOutput"]
     1133 SETTABLEKS                       R69 R68 K78 ["hasGraphOutput"]
     1135 GETTABLEKS                       R69 R3 K28 ["observe"]
     1137 SETTABLEKS                       R69 R68 K79 ["observeNodePropsById"]
     1139 GETUPVAL                         R69 1
     1140 GETTABLEKS                       R69 R69 K8 ["useMemo"]
     1142 DUPCLOSURE                       R70 K80 [PROTO_65]
     1143 NEWTABLE                         R71 0 0
     1145 CALL                             R69 2 1
     1146 GETUPVAL                         R70 1
     1147 GETTABLEKS                       R70 R70 K8 ["useMemo"]
     1149 NEWCLOSURE                       R71 P47
     1150 CAPTURE                          UPVAL U33
     1151 CAPTURE                          UPVAL U5
     1152 CAPTURE                          VAL R8
     1153 CAPTURE                          VAL R16
     1154 NEWTABLE                         R72 0 2
     1156 GETUPVAL                         R74 5
     1157 CALL                             R74 0 1
     1158 JUMPIFNOT                        R74 ; [+3]
     1159 GETTABLEKS                       R73 R8 K11 ["observeSelectedGraphInstance"]
     1161 JUMP                             ; [+1]
     1162 MOVE                             R73 R16
     1163 MOVE                             R74 R18
     1164 SETLIST                          R72 R73 2 [1]
     1166 CALL                             R70 2 1
     1167 GETUPVAL                         R71 4
     1168 GETTABLEKS                       R71 R71 K81 ["usePasteHooks"]
     1170 GETUPVAL                         R73 5
     1171 CALL                             R73 0 1
     1172 JUMPIFNOT                        R73 ; [+3]
     1173 GETTABLEKS                       R72 R8 K11 ["observeSelectedGraphInstance"]
     1175 JUMP                             ; [+1]
     1176 MOVE                             R72 R16
     1177 CALL                             R71 1 0
     1178 GETUPVAL                         R71 17
     1179 GETTABLEKS                       R71 R71 K18 ["useSignalState"]
     1181 MOVE                             R72 R70
     1182 CALL                             R71 1 1
     1183 GETUPVAL                         R72 26
     1184 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1186 LOADK                            R73 K83 ["NativeGraphContext_GraphPayloadMap"]
     1187 MOVE                             R74 R18
     1188 CALL                             R72 2 0
     1189 GETUPVAL                         R72 26
     1190 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1192 LOADK                            R73 K84 ["NativeGraphContext_GraphRenderInfo"]
     1193 MOVE                             R74 R20
     1194 CALL                             R72 2 0
     1195 GETUPVAL                         R72 26
     1196 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1198 LOADK                            R73 K85 ["NativeGraphContext_GraphNodeProps"]
     1199 MOVE                             R74 R22
     1200 CALL                             R72 2 0
     1201 GETUPVAL                         R72 26
     1202 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1204 LOADK                            R73 K86 ["NativeGraphContext_TimeRange"]
     1205 MOVE                             R74 R69
     1206 CALL                             R72 2 0
     1207 GETUPVAL                         R72 26
     1208 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1210 LOADK                            R73 K87 ["NativeGraphContext_GraphPayloadGraphRect"]
     1211 MOVE                             R74 R9
     1212 CALL                             R72 2 0
     1213 GETUPVAL                         R72 26
     1214 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1216 LOADK                            R73 K88 ["NativeGraphContext_SourceAssetId"]
     1217 MOVE                             R74 R33
     1218 CALL                             R72 2 0
     1219 GETUPVAL                         R72 16
     1220 CALL                             R72 0 1
     1221 JUMPIF                           R72 ; [+6]
     1222 GETUPVAL                         R72 26
     1223 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1225 LOADK                            R73 K89 ["NativeGraphContext_CurrentAnimationId"]
     1226 MOVE                             R74 R31
     1227 CALL                             R72 2 0
     1228 GETUPVAL                         R72 16
     1229 CALL                             R72 0 1
     1230 JUMPIFNOT                        R72 ; [+6]
     1231 GETUPVAL                         R72 26
     1232 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1234 LOADK                            R73 K90 ["NativeGraphContext_SelectedGraphKey"]
     1235 MOVE                             R74 R36
     1236 CALL                             R72 2 0
     1237 GETUPVAL                         R72 26
     1238 GETTABLEKS                       R72 R72 K82 ["useReplicatedState"]
     1240 LOADK                            R73 K91 ["NativeGraphContext_UndoTransaction"]
     1241 MOVE                             R74 R11
     1242 CALL                             R72 2 0
     1243 GETUPVAL                         R72 26
     1244 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1246 LOADK                            R73 K92 ["NativeGraphContext_CreateNode"]
     1247 MOVE                             R74 R37
     1248 CALL                             R72 2 0
     1249 GETUPVAL                         R72 26
     1250 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1252 LOADK                            R73 K93 ["NativeGraphContext_CreateParameterAsync"]
     1253 MOVE                             R74 R46
     1254 CALL                             R72 2 0
     1255 GETUPVAL                         R72 26
     1256 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1258 LOADK                            R73 K94 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1259 MOVE                             R74 R54
     1260 CALL                             R72 2 0
     1261 GETUPVAL                         R72 26
     1262 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1264 LOADK                            R73 K95 ["NativeGraphContext_CreateExistingParameterAsync"]
     1265 MOVE                             R74 R47
     1266 CALL                             R72 2 0
     1267 GETUPVAL                         R72 26
     1268 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1270 LOADK                            R73 K96 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1271 MOVE                             R74 R45
     1272 CALL                             R72 2 0
     1273 GETUPVAL                         R72 26
     1274 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1276 LOADK                            R73 K97 ["NativeGraphContext_SelectNodes"]
     1277 MOVE                             R74 R29
     1278 CALL                             R72 2 0
     1279 GETUPVAL                         R72 26
     1280 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1282 LOADK                            R73 K98 ["NativeGraphContext_SelectNodesFromRect"]
     1283 MOVE                             R74 R30
     1284 CALL                             R72 2 0
     1285 GETUPVAL                         R72 26
     1286 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1288 LOADK                            R73 K99 ["NativeGraphContext_SetNodePositionsAsync"]
     1289 MOVE                             R74 R27
     1290 CALL                             R72 2 0
     1291 GETUPVAL                         R72 26
     1292 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1294 LOADK                            R73 K100 ["NativeGraphContext_SetNodeSizeAsync"]
     1295 MOVE                             R74 R28
     1296 CALL                             R72 2 0
     1297 GETUPVAL                         R72 26
     1298 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1300 LOADK                            R73 K101 ["NativeGraphContext_SetNodeConnectionAsync"]
     1301 MOVE                             R74 R53
     1302 CALL                             R72 2 0
     1303 GETUPVAL                         R72 26
     1304 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1306 LOADK                            R73 K102 ["NativeGraphContext_DeleteNodeInput"]
     1307 MOVE                             R74 R48
     1308 CALL                             R72 2 0
     1309 GETUPVAL                         R72 26
     1310 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1312 LOADK                            R73 K103 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1313 MOVE                             R74 R52
     1314 CALL                             R72 2 0
     1315 GETUPVAL                         R72 26
     1316 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1318 LOADK                            R73 K104 ["NativeGraphContext_RemoveNodeInputConnection"]
     1319 MOVE                             R74 R49
     1320 CALL                             R72 2 0
     1321 GETUPVAL                         R72 26
     1322 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1324 LOADK                            R73 K105 ["NativeGraphContext_RemoveParameterAsync"]
     1325 MOVE                             R74 R61
     1326 CALL                             R72 2 0
     1327 GETUPVAL                         R72 26
     1328 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1330 LOADK                            R73 K106 ["NativeGraphContext_RenameNodeAsync"]
     1331 MOVE                             R74 R59
     1332 CALL                             R72 2 0
     1333 GETUPVAL                         R72 26
     1334 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1336 LOADK                            R73 K107 ["NativeGraphContext_RenameParameterAsync"]
     1337 MOVE                             R74 R62
     1338 CALL                             R72 2 0
     1339 GETUPVAL                         R72 26
     1340 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1342 LOADK                            R73 K108 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1343 MOVE                             R74 R64
     1344 CALL                             R72 2 0
     1345 GETUPVAL                         R72 26
     1346 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1348 LOADK                            R73 K109 ["NativeGraphContext_ShowNodeInExplorer"]
     1349 MOVE                             R74 R65
     1350 CALL                             R72 2 0
     1351 GETUPVAL                         R72 26
     1352 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1354 LOADK                            R73 K110 ["NativeGraphContext_SetCollapsedAsync"]
     1355 MOVE                             R74 R25
     1356 CALL                             R72 2 0
     1357 GETUPVAL                         R72 26
     1358 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1360 LOADK                            R73 K111 ["NativeGraphContext_setNodePropertyAsync"]
     1361 MOVE                             R74 R57
     1362 CALL                             R72 2 0
     1363 GETUPVAL                         R72 26
     1364 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1366 LOADK                            R73 K112 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1367 MOVE                             R74 R58
     1368 CALL                             R72 2 0
     1369 GETUPVAL                         R72 26
     1370 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1372 LOADK                            R73 K113 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1373 MOVE                             R74 R63
     1374 CALL                             R72 2 0
     1375 GETUPVAL                         R72 26
     1376 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1378 LOADK                            R73 K114 ["NativeGraphContext_ReorderPinsAsync"]
     1379 MOVE                             R74 R60
     1380 CALL                             R72 2 0
     1381 GETUPVAL                         R72 26
     1382 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1384 LOADK                            R73 K115 ["NativeGraphContext_beginUndoTransaction"]
     1385 MOVE                             R74 R55
     1386 CALL                             R72 2 0
     1387 GETUPVAL                         R72 26
     1388 GETTABLEKS                       R72 R72 K20 ["useBoundAction"]
     1390 LOADK                            R73 K116 ["NativeGraphContext_finishUndoTransaction"]
     1391 MOVE                             R74 R56
     1392 CALL                             R72 2 0
     1393 GETUPVAL                         R72 20
     1394 GETTABLEKS                       R72 R72 K117 ["FFlagAnimGraphUI_DynamicZIndex"]
     1396 JUMPIFNOT                        R72 ; [+5]
     1397 GETUPVAL                         R72 34
     1398 GETTABLEKS                       R72 R72 K19 ["useProducer"]
     1400 MOVE                             R73 R26
     1401 CALL                             R72 1 0
     1402 GETUPVAL                         R72 1
     1403 GETTABLEKS                       R72 R72 K118 ["createElement"]
     1405 GETUPVAL                         R73 35
     1406 GETTABLEKS                       R73 R73 K119 ["Provider"]
     1408 DUPTABLE                         R74 K121 [{"value"}]
     1409 SETTABLEKS                       R68 R74 K120 ["value"]
     1411 DUPTABLE                         R75 K123 [{"ContextStack"}]
     1412 GETUPVAL                         R76 1
     1413 GETTABLEKS                       R76 R76 K118 ["createElement"]
     1415 GETUPVAL                         R77 14
     1416 GETTABLEKS                       R77 R77 K122 ["ContextStack"]
     1418 DUPTABLE                         R78 K125 [{"providers"}]
     1419 NEWTABLE                         R79 0 2
     1421 GETUPVAL                         R80 1
     1422 GETTABLEKS                       R80 R80 K118 ["createElement"]
     1424 GETUPVAL                         R81 36
     1425 GETTABLEKS                       R81 R81 K119 ["Provider"]
     1427 DUPTABLE                         R82 K127 [{"timeRange"}]
     1428 SETTABLEKS                       R69 R82 K126 ["timeRange"]
     1430 CALL                             R80 2 1
     1431 GETUPVAL                         R81 1
     1432 GETTABLEKS                       R81 R81 K118 ["createElement"]
     1434 GETUPVAL                         R82 37
     1435 GETTABLEKS                       R82 R82 K119 ["Provider"]
     1437 DUPTABLE                         R83 K129 [{"animationClipsList"}]
     1438 SETTABLEKS                       R71 R83 K128 ["animationClipsList"]
     1440 CALL                             R81 2 -1
     1441 SETLIST                          R79 R80 -1 [1]
     1443 SETTABLEKS                       R79 R78 K124 ["providers"]
     1445 GETTABLEKS                       R79 R0 K130 ["children"]
     1447 CALL                             R76 3 1
     1448 SETTABLEKS                       R76 R75 K122 ["ContextStack"]
     1450 CALL                             R72 3 -1
     1451 RETURN                           R72 -1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_74:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_75:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_87:
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

PROTO_88:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_89:
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

PROTO_90:
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
       26 DUPCLOSURE                       R8 K3 [PROTO_69]
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
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K10 ["useEffect"]
       75 NEWCLOSURE                       R8 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R1
       78 NEWTABLE                         R9 0 1
       80 GETTABLEKS                       R10 R0 K11 ["testOverrideGraphPayloadMap"]
       82 SETLIST                          R9 R10 1 [1]
       84 CALL                             R7 2 0
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K12 ["useReplicatedStateListener"]
       88 LOADK                            R8 K13 ["NativeGraphContext_TimeRange"]
       89 GETIMPORT                        R9 K16 [NumberRange.new]
       91 LOADN                            R10 0
       92 LOADN                            R11 10
       93 CALL                             R9 2 -1
       94 CALL                             R7 -1 1
       95 GETUPVAL                         R8 5
       96 GETTABLEKS                       R8 R8 K12 ["useReplicatedStateListener"]
       98 LOADK                            R9 K17 ["NativeGraphContext_GraphPayloadGraphRect"]
       99 GETIMPORT                        R10 K19 [Rect.new]
      101 LOADN                            R11 0
      102 LOADN                            R12 0
      103 LOADN                            R13 0
      104 LOADN                            R14 0
      105 CALL                             R10 4 -1
      106 CALL                             R8 -1 1
      107 GETUPVAL                         R9 5
      108 GETTABLEKS                       R9 R9 K12 ["useReplicatedStateListener"]
      110 LOADK                            R10 K20 ["NativeGraphContext_SourceAssetId"]
      111 LOADNIL                          R11
      112 CALL                             R9 2 1
      113 GETUPVAL                         R11 6
      114 CALL                             R11 0 1
      115 JUMPIFNOT                        R11 ; [+2]
      116 LOADK                            R10 K21 [""]
      117 JUMP                             ; [+6]
      118 GETUPVAL                         R10 5
      119 GETTABLEKS                       R10 R10 K12 ["useReplicatedStateListener"]
      121 LOADK                            R11 K22 ["NativeGraphContext_CurrentAnimationId"]
      122 LOADK                            R12 K21 [""]
      123 CALL                             R10 2 1
      124 GETUPVAL                         R12 6
      125 CALL                             R12 0 1
      126 JUMPIFNOT                        R12 ; [+7]
      127 GETUPVAL                         R11 5
      128 GETTABLEKS                       R11 R11 K12 ["useReplicatedStateListener"]
      130 LOADK                            R12 K23 ["NativeGraphContext_SelectedGraphKey"]
      131 LOADNIL                          R13
      132 CALL                             R11 2 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R11
      135 GETUPVAL                         R12 7
      136 GETTABLEKS                       R12 R12 K24 ["createComputed"]
      138 DUPCLOSURE                       R13 K25 [PROTO_72]
      139 CALL                             R12 1 1
      140 GETUPVAL                         R13 8
      141 MOVE                             R14 R2
      142 MOVE                             R15 R1
      143 CALL                             R13 2 1
      144 GETUPVAL                         R15 1
      145 CALL                             R15 0 1
      146 JUMPIFNOT                        R15 ; [+2]
      147 LOADNIL                          R14
      148 JUMP                             ; [+5]
      149 GETUPVAL                         R14 9
      150 GETTABLEKS                       R14 R14 K26 ["useSignalState"]
      152 MOVE                             R15 R5
      153 CALL                             R14 1 1
      154 GETUPVAL                         R15 5
      155 GETTABLEKS                       R15 R15 K27 ["useBoundAction"]
      157 LOADK                            R16 K28 ["NativeGraphContext_ReorderPinsAsync"]
      158 CALL                             R15 1 1
      159 GETUPVAL                         R16 5
      160 GETTABLEKS                       R16 R16 K27 ["useBoundAction"]
      162 LOADK                            R17 K29 ["NativeGraphContext_CreateNode"]
      163 CALL                             R16 1 1
      164 GETUPVAL                         R17 5
      165 GETTABLEKS                       R17 R17 K27 ["useBoundAction"]
      167 LOADK                            R18 K30 ["NativeGraphContext_CreateParameterAsync"]
      168 CALL                             R17 1 1
      169 GETUPVAL                         R18 5
      170 GETTABLEKS                       R18 R18 K27 ["useBoundAction"]
      172 LOADK                            R19 K31 ["NativeGraphContext_CreateConnectedParameterAsync"]
      173 CALL                             R18 1 1
      174 GETUPVAL                         R19 5
      175 GETTABLEKS                       R19 R19 K27 ["useBoundAction"]
      177 LOADK                            R20 K32 ["NativeGraphContext_CreateExistingParameterAsync"]
      178 CALL                             R19 1 1
      179 GETUPVAL                         R20 5
      180 GETTABLEKS                       R20 R20 K27 ["useBoundAction"]
      182 LOADK                            R21 K33 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      183 CALL                             R20 1 1
      184 GETUPVAL                         R21 5
      185 GETTABLEKS                       R21 R21 K27 ["useBoundAction"]
      187 LOADK                            R22 K34 ["NativeGraphContext_SelectNodes"]
      188 CALL                             R21 1 1
      189 GETUPVAL                         R22 5
      190 GETTABLEKS                       R22 R22 K27 ["useBoundAction"]
      192 LOADK                            R23 K35 ["NativeGraphContext_SetNodePositionsAsync"]
      193 CALL                             R22 1 1
      194 GETUPVAL                         R23 5
      195 GETTABLEKS                       R23 R23 K27 ["useBoundAction"]
      197 LOADK                            R24 K36 ["NativeGraphContext_SetNodeSizeAsync"]
      198 CALL                             R23 1 1
      199 GETUPVAL                         R24 5
      200 GETTABLEKS                       R24 R24 K27 ["useBoundAction"]
      202 LOADK                            R25 K37 ["NativeGraphContext_SetNodeConnectionAsync"]
      203 CALL                             R24 1 1
      204 GETUPVAL                         R25 5
      205 GETTABLEKS                       R25 R25 K27 ["useBoundAction"]
      207 LOADK                            R26 K38 ["NativeGraphContext_DeleteNodeInput"]
      208 CALL                             R25 1 1
      209 GETUPVAL                         R26 5
      210 GETTABLEKS                       R26 R26 K27 ["useBoundAction"]
      212 LOADK                            R27 K39 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      213 CALL                             R26 1 1
      214 GETUPVAL                         R27 5
      215 GETTABLEKS                       R27 R27 K27 ["useBoundAction"]
      217 LOADK                            R28 K40 ["NativeGraphContext_RemoveNodeInputConnection"]
      218 CALL                             R27 1 1
      219 GETUPVAL                         R28 5
      220 GETTABLEKS                       R28 R28 K27 ["useBoundAction"]
      222 LOADK                            R29 K41 ["NativeGraphContext_RemoveParameterAsync"]
      223 CALL                             R28 1 1
      224 GETUPVAL                         R29 5
      225 GETTABLEKS                       R29 R29 K27 ["useBoundAction"]
      227 LOADK                            R30 K42 ["NativeGraphContext_RenameNodeAsync"]
      228 CALL                             R29 1 1
      229 GETUPVAL                         R30 5
      230 GETTABLEKS                       R30 R30 K27 ["useBoundAction"]
      232 LOADK                            R31 K43 ["NativeGraphContext_RenameParameterAsync"]
      233 CALL                             R30 1 1
      234 GETUPVAL                         R31 5
      235 GETTABLEKS                       R31 R31 K27 ["useBoundAction"]
      237 LOADK                            R32 K44 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      238 CALL                             R31 1 1
      239 GETUPVAL                         R32 5
      240 GETTABLEKS                       R32 R32 K27 ["useBoundAction"]
      242 LOADK                            R33 K45 ["NativeGraphContext_ShowNodeInExplorer"]
      243 CALL                             R32 1 1
      244 GETUPVAL                         R33 5
      245 GETTABLEKS                       R33 R33 K27 ["useBoundAction"]
      247 LOADK                            R34 K46 ["NativeGraphContext_SetCollapsedAsync"]
      248 CALL                             R33 1 1
      249 GETUPVAL                         R35 10
      250 GETTABLEKS                       R35 R35 K47 ["FFlagAnimGraphUI_DynamicZIndex"]
      252 JUMPIFNOT                        R35 ; [+5]
      253 GETUPVAL                         R34 11
      254 GETTABLEKS                       R34 R34 K48 ["useConsumer"]
      256 CALL                             R34 0 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R34
      259 GETUPVAL                         R35 5
      260 GETTABLEKS                       R35 R35 K27 ["useBoundAction"]
      262 LOADK                            R36 K49 ["NativeGraphContext_setNodePropertyAsync"]
      263 CALL                             R35 1 1
      264 GETUPVAL                         R36 5
      265 GETTABLEKS                       R36 R36 K27 ["useBoundAction"]
      267 LOADK                            R37 K50 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      268 CALL                             R36 1 1
      269 GETUPVAL                         R37 5
      270 GETTABLEKS                       R37 R37 K27 ["useBoundAction"]
      272 LOADK                            R38 K51 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      273 CALL                             R37 1 1
      274 GETUPVAL                         R38 5
      275 GETTABLEKS                       R38 R38 K27 ["useBoundAction"]
      277 LOADK                            R39 K52 ["NativeGraphContext_SelectNodesFromRect"]
      278 CALL                             R38 1 1
      279 GETUPVAL                         R39 5
      280 GETTABLEKS                       R39 R39 K27 ["useBoundAction"]
      282 LOADK                            R40 K53 ["NativeGraphContext_DuplicateSelectedNodes"]
      283 CALL                             R39 1 1
      284 GETUPVAL                         R40 5
      285 GETTABLEKS                       R40 R40 K27 ["useBoundAction"]
      287 LOADK                            R41 K54 ["NativeGraphContext_SelectAllNodes"]
      288 CALL                             R40 1 1
      289 GETUPVAL                         R41 5
      290 GETTABLEKS                       R41 R41 K27 ["useBoundAction"]
      292 LOADK                            R42 K55 ["NativeGraphContext_ClearNodeSelection"]
      293 CALL                             R41 1 1
      294 GETUPVAL                         R42 5
      295 GETTABLEKS                       R42 R42 K27 ["useBoundAction"]
      297 LOADK                            R43 K56 ["NativeGraphContext_CopySelectedNodes"]
      298 CALL                             R42 1 1
      299 GETUPVAL                         R43 5
      300 GETTABLEKS                       R43 R43 K27 ["useBoundAction"]
      302 LOADK                            R44 K57 ["NativeGraphContext_CutSelectedNodes"]
      303 CALL                             R43 1 1
      304 GETUPVAL                         R44 5
      305 GETTABLEKS                       R44 R44 K27 ["useBoundAction"]
      307 LOADK                            R45 K58 ["NativeGraphContext_PasteNodes"]
      308 CALL                             R44 1 1
      309 GETUPVAL                         R45 12
      310 GETTABLEKS                       R45 R45 K48 ["useConsumer"]
      312 CALL                             R45 0 1
      313 GETUPVAL                         R46 5
      314 GETTABLEKS                       R46 R46 K27 ["useBoundAction"]
      316 LOADK                            R47 K59 ["NativeGraphContext_beginUndoTransaction"]
      317 CALL                             R46 1 1
      318 GETUPVAL                         R47 5
      319 GETTABLEKS                       R47 R47 K27 ["useBoundAction"]
      321 LOADK                            R48 K60 ["NativeGraphContext_finishUndoTransaction"]
      322 CALL                             R47 1 1
      323 NEWTABLE                         R48 64 0
      325 GETUPVAL                         R50 1
      326 CALL                             R50 0 1
      327 JUMPIFNOT                        R50 ; [+2]
      328 LOADNIL                          R49
      329 JUMP                             ; [+1]
      330 MOVE                             R49 R14
      331 SETTABLEKS                       R49 R48 K61 ["selectedGraphInstanceId_DEPRECATED"]
      333 SETTABLEKS                       R15 R48 K62 ["reorderPinsAsync"]
      335 SETTABLEKS                       R16 R48 K63 ["createNodeAsync"]
      337 SETTABLEKS                       R17 R48 K64 ["createParameterAsync"]
      339 SETTABLEKS                       R18 R48 K65 ["createConnectedParameterAsync"]
      341 SETTABLEKS                       R19 R48 K66 ["createExistingParameterAsync"]
      343 SETTABLEKS                       R8 R48 K67 ["graphRect"]
      345 SETTABLEKS                       R20 R48 K68 ["selectAllParameterNodesWithNameAsync"]
      347 SETTABLEKS                       R21 R48 K69 ["selectNodesAsync"]
      349 SETTABLEKS                       R38 R48 K70 ["selectNodesFromRectAsync"]
      351 NEWCLOSURE                       R49 P4
      352 CAPTURE                          VAL R45
      353 SETTABLEKS                       R49 R48 K71 ["removeSelectedNodesAsync"]
      355 SETTABLEKS                       R39 R48 K72 ["duplicateSelectedNodesAsync"]
      357 SETTABLEKS                       R40 R48 K73 ["selectAllNodesAsync"]
      359 SETTABLEKS                       R41 R48 K74 ["clearNodeSelectionAsync"]
      361 SETTABLEKS                       R42 R48 K75 ["copySelectedNodesAsync"]
      363 SETTABLEKS                       R43 R48 K76 ["cutSelectedNodesAsync"]
      365 SETTABLEKS                       R44 R48 K77 ["pasteNodesAsync"]
      367 SETTABLEKS                       R22 R48 K78 ["setNodePositionsAsync"]
      369 SETTABLEKS                       R23 R48 K79 ["setNodeSizeAsync"]
      371 SETTABLEKS                       R24 R48 K80 ["setNodeConnectionAsync"]
      373 SETTABLEKS                       R25 R48 K81 ["deleteNodeInput"]
      375 SETTABLEKS                       R26 R48 K82 ["removeNodeOutputConnectionAsync"]
      377 SETTABLEKS                       R27 R48 K83 ["removeNodeInputConnectionAsync"]
      379 SETTABLEKS                       R28 R48 K84 ["removeParameterAsync"]
      381 SETTABLEKS                       R29 R48 K85 ["renameNodeAsync"]
      383 SETTABLEKS                       R30 R48 K86 ["renameParameterAsync"]
      385 SETTABLEKS                       R31 R48 K87 ["deleteNodeInstanceAsync"]
      387 SETTABLEKS                       R32 R48 K88 ["showNodeInExplorerAsync"]
      389 SETTABLEKS                       R33 R48 K89 ["setCollapsedAsync"]
      391 SETTABLEKS                       R35 R48 K90 ["setNodePropertyAsync"]
      393 SETTABLEKS                       R36 R48 K91 ["setInputPinNodePropertyAsync"]
      395 SETTABLEKS                       R37 R48 K92 ["setParameterNodeTypeAsync"]
      397 SETTABLEKS                       R10 R48 K93 ["currentAnimationId"]
      399 SETTABLEKS                       R9 R48 K94 ["sourceAssetId"]
      401 SETTABLEKS                       R11 R48 K95 ["selectedGraphKey"]
      403 GETUPVAL                         R50 1
      404 CALL                             R50 0 1
      405 JUMPIFNOT                        R50 ; [+2]
      406 LOADNIL                          R49
      407 JUMP                             ; [+1]
      408 MOVE                             R49 R12
      409 SETTABLEKS                       R49 R48 K96 ["observeSelectedGraphInstance_DEPRECATED"]
      411 GETTABLEKS                       R49 R1 K97 ["observe"]
      413 SETTABLEKS                       R49 R48 K98 ["observeGraphNodeById"]
      415 GETTABLEKS                       R49 R2 K97 ["observe"]
      417 SETTABLEKS                       R49 R48 K99 ["observeNodeRenderInfoById"]
      419 SETTABLEKS                       R46 R48 K100 ["beginUndoTransaction"]
      421 SETTABLEKS                       R47 R48 K101 ["finishUndoTransaction"]
      423 GETTABLEKS                       R49 R1 K102 ["observeMap"]
      425 SETTABLEKS                       R49 R48 K103 ["observeGraphNodeMap"]
      427 GETTABLEKS                       R49 R2 K102 ["observeMap"]
      429 SETTABLEKS                       R49 R48 K104 ["observeRenderInfoMap"]
      431 GETTABLEKS                       R49 R13 K105 ["hasGraphOutput"]
      433 SETTABLEKS                       R49 R48 K105 ["hasGraphOutput"]
      435 GETTABLEKS                       R49 R3 K97 ["observe"]
      437 SETTABLEKS                       R49 R48 K106 ["observeNodePropsById"]
      439 DUPCLOSURE                       R49 K107 [PROTO_75]
      440 GETUPVAL                         R50 2
      441 GETTABLEKS                       R50 R50 K0 ["useContext"]
      443 GETUPVAL                         R51 13
      444 GETTABLEKS                       R51 R51 K1 ["Context"]
      446 CALL                             R50 1 1
      447 GETUPVAL                         R51 2
      448 GETTABLEKS                       R51 R51 K6 ["useCallback"]
      450 NEWCLOSURE                       R52 P6
      451 CAPTURE                          UPVAL U1
      452 CAPTURE                          UPVAL U14
      453 CAPTURE                          VAL R50
      454 CAPTURE                          UPVAL U15
      455 NEWTABLE                         R53 0 2
      457 GETUPVAL                         R55 1
      458 CALL                             R55 0 1
      459 JUMPIFNOT                        R55 ; [+3]
      460 GETTABLEKS                       R54 R50 K108 ["observeDebugData"]
      462 JUMP                             ; [+2]
      463 GETTABLEKS                       R54 R50 K109 ["observeDebugData_DEPRECATED"]
      465 GETUPVAL                         R56 1
      466 CALL                             R56 0 1
      467 JUMPIFNOT                        R56 ; [+3]
      468 GETTABLEKS                       R55 R50 K110 ["observeActiveDebugTargetIdentifier"]
      470 JUMP                             ; [+1]
      471 LOADNIL                          R55
      472 SETLIST                          R53 R54 2 [1]
      474 CALL                             R51 2 1
      475 GETUPVAL                         R52 2
      476 GETTABLEKS                       R52 R52 K6 ["useCallback"]
      478 NEWCLOSURE                       R53 P7
      479 CAPTURE                          UPVAL U14
      480 CAPTURE                          VAL R50
      481 CAPTURE                          UPVAL U15
      482 NEWTABLE                         R54 0 2
      484 GETTABLEKS                       R55 R50 K108 ["observeDebugData"]
      486 GETTABLEKS                       R56 R50 K110 ["observeActiveDebugTargetIdentifier"]
      488 SETLIST                          R54 R55 2 [1]
      490 CALL                             R52 2 1
      491 GETUPVAL                         R53 2
      492 GETTABLEKS                       R53 R53 K6 ["useCallback"]
      494 NEWCLOSURE                       R54 P8
      495 CAPTURE                          UPVAL U1
      496 CAPTURE                          VAL R52
      497 CAPTURE                          UPVAL U7
      498 CAPTURE                          VAL R50
      499 CAPTURE                          UPVAL U10
      500 NEWTABLE                         R55 0 2
      502 GETUPVAL                         R57 1
      503 CALL                             R57 0 1
      504 JUMPIFNOT                        R57 ; [+2]
      505 LOADNIL                          R56
      506 JUMP                             ; [+2]
      507 GETTABLEKS                       R56 R50 K109 ["observeDebugData_DEPRECATED"]
      509 GETUPVAL                         R58 1
      510 CALL                             R58 0 1
      511 JUMPIFNOT                        R58 ; [+2]
      512 MOVE                             R57 R52
      513 JUMP                             ; [+1]
      514 LOADNIL                          R57
      515 SETLIST                          R55 R56 2 [1]
      517 CALL                             R53 2 1
      518 GETUPVAL                         R54 2
      519 GETTABLEKS                       R54 R54 K6 ["useCallback"]
      521 NEWCLOSURE                       R55 P9
      522 CAPTURE                          UPVAL U1
      523 CAPTURE                          VAL R52
      524 CAPTURE                          UPVAL U7
      525 CAPTURE                          VAL R50
      526 NEWTABLE                         R56 0 2
      528 GETUPVAL                         R58 1
      529 CALL                             R58 0 1
      530 JUMPIFNOT                        R58 ; [+2]
      531 LOADNIL                          R57
      532 JUMP                             ; [+2]
      533 GETTABLEKS                       R57 R50 K109 ["observeDebugData_DEPRECATED"]
      535 GETUPVAL                         R59 1
      536 CALL                             R59 0 1
      537 JUMPIFNOT                        R59 ; [+2]
      538 MOVE                             R58 R52
      539 JUMP                             ; [+1]
      540 LOADNIL                          R58
      541 SETLIST                          R56 R57 2 [1]
      543 CALL                             R54 2 1
      544 GETUPVAL                         R55 2
      545 GETTABLEKS                       R55 R55 K6 ["useCallback"]
      547 NEWCLOSURE                       R56 P10
      548 CAPTURE                          UPVAL U7
      549 CAPTURE                          VAL R1
      550 NEWTABLE                         R57 0 1
      552 GETTABLEKS                       R58 R1 K102 ["observeMap"]
      554 SETLIST                          R57 R58 1 [1]
      556 CALL                             R55 2 1
      557 GETUPVAL                         R56 16
      558 GETTABLEKS                       R56 R56 K48 ["useConsumer"]
      560 CALL                             R56 0 1
      561 GETUPVAL                         R58 1
      562 CALL                             R58 0 1
      563 JUMPIFNOT                        R58 ; [+7]
      564 GETUPVAL                         R57 9
      565 GETTABLEKS                       R57 R57 K26 ["useSignalState"]
      567 GETTABLEKS                       R58 R4 K111 ["observeSelectedGraphIsEphemeral"]
      569 CALL                             R57 1 1
      570 JUMP                             ; [+1]
      571 LOADNIL                          R57
      572 GETUPVAL                         R58 2
      573 GETTABLEKS                       R58 R58 K2 ["useMemo"]
      575 NEWCLOSURE                       R59 P11
      576 CAPTURE                          VAL R1
      577 CAPTURE                          VAL R2
      578 CAPTURE                          UPVAL U1
      579 CAPTURE                          VAL R57
      580 CAPTURE                          VAL R56
      581 CAPTURE                          VAL R15
      582 CAPTURE                          VAL R17
      583 CAPTURE                          VAL R19
      584 CAPTURE                          VAL R18
      585 CAPTURE                          VAL R20
      586 CAPTURE                          VAL R21
      587 CAPTURE                          VAL R33
      588 CAPTURE                          UPVAL U10
      589 CAPTURE                          VAL R34
      590 CAPTURE                          VAL R25
      591 CAPTURE                          VAL R27
      592 CAPTURE                          VAL R26
      593 CAPTURE                          VAL R28
      594 CAPTURE                          VAL R29
      595 CAPTURE                          VAL R30
      596 CAPTURE                          VAL R31
      597 CAPTURE                          VAL R45
      598 CAPTURE                          VAL R24
      599 CAPTURE                          VAL R22
      600 CAPTURE                          VAL R35
      601 CAPTURE                          VAL R36
      602 CAPTURE                          VAL R23
      603 CAPTURE                          VAL R37
      604 CAPTURE                          VAL R3
      605 CAPTURE                          VAL R51
      606 CAPTURE                          VAL R53
      607 CAPTURE                          VAL R54
      608 CAPTURE                          VAL R55
      609 NEWTABLE                         R60 0 31
      611 MOVE                             R61 R1
      612 MOVE                             R62 R2
      613 MOVE                             R63 R56
      614 MOVE                             R64 R15
      615 MOVE                             R65 R17
      616 MOVE                             R66 R19
      617 MOVE                             R67 R18
      618 MOVE                             R68 R20
      619 MOVE                             R69 R21
      620 MOVE                             R70 R33
      621 MOVE                             R71 R34
      622 MOVE                             R72 R25
      623 MOVE                             R73 R27
      624 MOVE                             R74 R26
      625 MOVE                             R75 R28
      626 MOVE                             R76 R29
      627 SETLIST                          R60 R61 16 [1]
      629 MOVE                             R61 R30
      630 MOVE                             R62 R31
      631 MOVE                             R63 R45
      632 MOVE                             R64 R24
      633 MOVE                             R65 R22
      634 MOVE                             R66 R35
      635 MOVE                             R67 R36
      636 MOVE                             R68 R23
      637 MOVE                             R69 R37
      638 GETTABLEKS                       R70 R3 K97 ["observe"]
      640 MOVE                             R71 R51
      641 MOVE                             R72 R53
      642 MOVE                             R73 R54
      643 MOVE                             R74 R57
      644 MOVE                             R75 R55
      645 SETLIST                          R60 R61 15 [17]
      647 CALL                             R58 2 1
      648 GETUPVAL                         R59 2
      649 GETTABLEKS                       R59 R59 K112 ["createElement"]
      651 GETUPVAL                         R60 17
      652 GETTABLEKS                       R60 R60 K113 ["Provider"]
      654 DUPTABLE                         R61 K115 [{"value"}]
      655 SETTABLEKS                       R48 R61 K114 ["value"]
      657 DUPTABLE                         R62 K117 [{"ContextStack"}]
      658 GETUPVAL                         R63 2
      659 GETTABLEKS                       R63 R63 K112 ["createElement"]
      661 GETUPVAL                         R64 18
      662 GETTABLEKS                       R64 R64 K116 ["ContextStack"]
      664 DUPTABLE                         R65 K119 [{"providers"}]
      665 NEWTABLE                         R66 0 3
      667 GETUPVAL                         R67 2
      668 GETTABLEKS                       R67 R67 K112 ["createElement"]
      670 GETUPVAL                         R68 10
      671 GETTABLEKS                       R68 R68 K120 ["GraphContext"]
      673 GETTABLEKS                       R68 R68 K113 ["Provider"]
      675 DUPTABLE                         R69 K115 [{"value"}]
      676 SETTABLEKS                       R58 R69 K114 ["value"]
      678 CALL                             R67 2 1
      679 GETUPVAL                         R68 2
      680 GETTABLEKS                       R68 R68 K112 ["createElement"]
      682 GETUPVAL                         R69 19
      683 GETTABLEKS                       R69 R69 K121 ["UIDataModelProvider"]
      685 CALL                             R68 1 1
      686 GETUPVAL                         R69 2
      687 GETTABLEKS                       R69 R69 K112 ["createElement"]
      689 GETUPVAL                         R70 20
      690 GETTABLEKS                       R70 R70 K113 ["Provider"]
      692 DUPTABLE                         R71 K123 [{"timeRange"}]
      693 SETTABLEKS                       R7 R71 K122 ["timeRange"]
      695 CALL                             R69 2 -1
      696 SETLIST                          R66 R67 -1 [1]
      698 SETTABLEKS                       R66 R65 K118 ["providers"]
      700 GETTABLEKS                       R66 R0 K124 ["children"]
      702 CALL                             R63 3 1
      703 SETTABLEKS                       R63 R62 K116 ["ContextStack"]
      705 CALL                             R59 3 -1
      706 CLOSEUPVALS                      R6
      707 RETURN                           R59 -1

PROTO_91:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_92:
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

PROTO_93:
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

PROTO_94:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_93]
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
      220 GETTABLEKS                       R30 R30 K44 ["getFFlagAnimGraphLockOutput"]
      222 CALL                             R29 1 1
      223 GETIMPORT                        R30 K11 [require]
      225 GETTABLEKS                       R31 R0 K42 ["Flags"]
      227 GETTABLEKS                       R31 R31 K45 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
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
      300 NEWTABLE                         R41 64 0
      302 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      304 LOADK                            R43 K58 ["observeGraphNodeMap"]
      305 CALL                             R42 1 1
      306 SETTABLEKS                       R42 R41 K58 ["observeGraphNodeMap"]
      308 GETIMPORT                        R42 K61 [Rect.new]
      310 LOADN                            R43 0
      311 LOADN                            R44 0
      312 LOADN                            R45 0
      313 LOADN                            R46 0
      314 CALL                             R42 4 1
      315 SETTABLEKS                       R42 R41 K62 ["graphRect"]
      317 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      319 LOADK                            R43 K63 ["reorderPinsAsync"]
      320 CALL                             R42 1 1
      321 SETTABLEKS                       R42 R41 K63 ["reorderPinsAsync"]
      323 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      325 LOADK                            R43 K64 ["createNodeAsync"]
      326 CALL                             R42 1 1
      327 SETTABLEKS                       R42 R41 K64 ["createNodeAsync"]
      329 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      331 LOADK                            R43 K65 ["createParameterAsync"]
      332 CALL                             R42 1 1
      333 SETTABLEKS                       R42 R41 K65 ["createParameterAsync"]
      335 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      337 LOADK                            R43 K66 ["createConnectedParameterAsync"]
      338 CALL                             R42 1 1
      339 SETTABLEKS                       R42 R41 K66 ["createConnectedParameterAsync"]
      341 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      343 LOADK                            R43 K67 ["createExistingParameterAsync"]
      344 CALL                             R42 1 1
      345 SETTABLEKS                       R42 R41 K67 ["createExistingParameterAsync"]
      347 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      349 LOADK                            R43 K68 ["selectAllParameterNodesWithNameAsync"]
      350 CALL                             R42 1 1
      351 SETTABLEKS                       R42 R41 K68 ["selectAllParameterNodesWithNameAsync"]
      353 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      355 LOADK                            R43 K69 ["selectNodesAsync"]
      356 CALL                             R42 1 1
      357 SETTABLEKS                       R42 R41 K69 ["selectNodesAsync"]
      359 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      361 LOADK                            R43 K70 ["selectNodesFromRectAsync"]
      362 CALL                             R42 1 1
      363 SETTABLEKS                       R42 R41 K70 ["selectNodesFromRectAsync"]
      365 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      367 LOADK                            R43 K71 ["removeSelectedNodesAsync"]
      368 CALL                             R42 1 1
      369 SETTABLEKS                       R42 R41 K71 ["removeSelectedNodesAsync"]
      371 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      373 LOADK                            R43 K72 ["duplicateSelectedNodesAsync"]
      374 CALL                             R42 1 1
      375 SETTABLEKS                       R42 R41 K72 ["duplicateSelectedNodesAsync"]
      377 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      379 LOADK                            R43 K73 ["selectAllNodesAsync"]
      380 CALL                             R42 1 1
      381 SETTABLEKS                       R42 R41 K73 ["selectAllNodesAsync"]
      383 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      385 LOADK                            R43 K74 ["clearNodeSelectionAsync"]
      386 CALL                             R42 1 1
      387 SETTABLEKS                       R42 R41 K74 ["clearNodeSelectionAsync"]
      389 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      391 LOADK                            R43 K75 ["copySelectedNodesAsync"]
      392 CALL                             R42 1 1
      393 SETTABLEKS                       R42 R41 K75 ["copySelectedNodesAsync"]
      395 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      397 LOADK                            R43 K76 ["cutSelectedNodesAsync"]
      398 CALL                             R42 1 1
      399 SETTABLEKS                       R42 R41 K76 ["cutSelectedNodesAsync"]
      401 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      403 LOADK                            R43 K77 ["pasteNodesAsync"]
      404 CALL                             R42 1 1
      405 SETTABLEKS                       R42 R41 K77 ["pasteNodesAsync"]
      407 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      409 LOADK                            R43 K78 ["setNodePositionsAsync"]
      410 CALL                             R42 1 1
      411 SETTABLEKS                       R42 R41 K78 ["setNodePositionsAsync"]
      413 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      415 LOADK                            R43 K79 ["setNodeSizeAsync"]
      416 CALL                             R42 1 1
      417 SETTABLEKS                       R42 R41 K79 ["setNodeSizeAsync"]
      419 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      421 LOADK                            R43 K80 ["deleteNodeInput"]
      422 CALL                             R42 1 1
      423 SETTABLEKS                       R42 R41 K80 ["deleteNodeInput"]
      425 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      427 LOADK                            R43 K81 ["removeNodeInputConnectionAsync"]
      428 CALL                             R42 1 1
      429 SETTABLEKS                       R42 R41 K81 ["removeNodeInputConnectionAsync"]
      431 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      433 LOADK                            R43 K82 ["removeNodeOutputConnectionAsync"]
      434 CALL                             R42 1 1
      435 SETTABLEKS                       R42 R41 K82 ["removeNodeOutputConnectionAsync"]
      437 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      439 LOADK                            R43 K83 ["removeParameterAsync"]
      440 CALL                             R42 1 1
      441 SETTABLEKS                       R42 R41 K83 ["removeParameterAsync"]
      443 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      445 LOADK                            R43 K84 ["renameNodeAsync"]
      446 CALL                             R42 1 1
      447 SETTABLEKS                       R42 R41 K84 ["renameNodeAsync"]
      449 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      451 LOADK                            R43 K85 ["renameParameterAsync"]
      452 CALL                             R42 1 1
      453 SETTABLEKS                       R42 R41 K85 ["renameParameterAsync"]
      455 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      457 LOADK                            R43 K86 ["deleteNodeInstanceAsync"]
      458 CALL                             R42 1 1
      459 SETTABLEKS                       R42 R41 K86 ["deleteNodeInstanceAsync"]
      461 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      463 LOADK                            R43 K87 ["showNodeInExplorerAsync"]
      464 CALL                             R42 1 1
      465 SETTABLEKS                       R42 R41 K87 ["showNodeInExplorerAsync"]
      467 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      469 LOADK                            R43 K88 ["setNewConnection"]
      470 CALL                             R42 1 1
      471 SETTABLEKS                       R42 R41 K89 ["setNodeConnectionAsync"]
      473 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      475 LOADK                            R43 K90 ["setCollapsedAsync"]
      476 CALL                             R42 1 1
      477 SETTABLEKS                       R42 R41 K90 ["setCollapsedAsync"]
      479 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      481 LOADK                            R43 K91 ["setNodePropertyAsync"]
      482 CALL                             R42 1 1
      483 SETTABLEKS                       R42 R41 K91 ["setNodePropertyAsync"]
      485 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      487 LOADK                            R43 K92 ["setInputPinNodePropertyAsync"]
      488 CALL                             R42 1 1
      489 SETTABLEKS                       R42 R41 K92 ["setInputPinNodePropertyAsync"]
      491 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      493 LOADK                            R43 K93 ["setParameterNodeTypeAsync"]
      494 CALL                             R42 1 1
      495 SETTABLEKS                       R42 R41 K93 ["setParameterNodeTypeAsync"]
      497 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      499 LOADK                            R43 K94 ["hasGraphOutput"]
      500 CALL                             R42 1 1
      501 SETTABLEKS                       R42 R41 K94 ["hasGraphOutput"]
      503 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      505 LOADK                            R43 K95 ["observeGraphNodeById"]
      506 CALL                             R42 1 1
      507 SETTABLEKS                       R42 R41 K95 ["observeGraphNodeById"]
      509 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      511 LOADK                            R43 K96 ["observeNodeRenderInfoById"]
      512 CALL                             R42 1 1
      513 SETTABLEKS                       R42 R41 K96 ["observeNodeRenderInfoById"]
      515 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      517 LOADK                            R43 K97 ["observeRenderInfoMap"]
      518 CALL                             R42 1 1
      519 SETTABLEKS                       R42 R41 K97 ["observeRenderInfoMap"]
      521 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      523 LOADK                            R43 K98 ["observeNodePropsById"]
      524 CALL                             R42 1 1
      525 SETTABLEKS                       R42 R41 K98 ["observeNodePropsById"]
      527 GETTABLEKS                       R42 R22 K99 ["createSignal"]
      529 LOADNIL                          R43
      530 CALL                             R42 1 1
      531 SETTABLEKS                       R42 R41 K100 ["observeSelectedGraphInstance_DEPRECATED"]
      533 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      535 LOADK                            R43 K101 ["beginUndoTransaction"]
      536 CALL                             R42 1 1
      537 SETTABLEKS                       R42 R41 K101 ["beginUndoTransaction"]
      539 GETTABLEKS                       R42 R18 K57 ["createUnimplemented"]
      541 LOADK                            R43 K102 ["finishUndoTransaction"]
      542 CALL                             R42 1 1
      543 SETTABLEKS                       R42 R41 K102 ["finishUndoTransaction"]
      545 LOADNIL                          R42
      546 SETTABLEKS                       R42 R41 K103 ["currentAnimationId"]
      548 LOADNIL                          R42
      549 SETTABLEKS                       R42 R41 K104 ["sourceAssetId"]
      551 LOADNIL                          R42
      552 SETTABLEKS                       R42 R41 K105 ["selectedGraphKey"]
      554 GETTABLEKS                       R42 R17 K106 ["createContext"]
      556 MOVE                             R43 R41
      557 CALL                             R42 1 1
      558 DUPTABLE                         R43 K125 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction"}]
      559 DUPTABLE                         R44 K190 [{["CREATE_NODE"] = "NativeGraphContext_CreateNode", ["CREATE_PARAMETER"] = "NativeGraphContext_CreateParameterAsync", ["CREATE_CONNECTED_PARAMETER"] = "NativeGraphContext_CreateConnectedParameterAsync", ["CREATE_EXISTING_PARAMETER"] = "NativeGraphContext_CreateExistingParameterAsync", ["GET_SELECTED_GRAPH_INSTANCE"] = "NativeGraphContext_GetSelectedGraphInstance", ["SET_NODE_CONNECTION"] = "NativeGraphContext_SetNodeConnectionAsync", ["SET_NODE_PROPERTY"] = "NativeGraphContext_setNodePropertyAsync", ["SET_INPUT_PIN_NODE_PROPERTY"] = "NativeGraphContext_SetInputPinNodePropertyAsync", ["REORDER_PINS"] = "NativeGraphContext_ReorderPinsAsync", ["DELETE_NODE_INPUT"] = "NativeGraphContext_DeleteNodeInput", ["REMOVE_NODE_INPUT_CONNECTION"] = "NativeGraphContext_RemoveNodeInputConnection", ["REMOVE_NODE_OUTPUT_CONNECTION"] = "NativeGraphContext_RemoveNodeOutputConnectionAsync", ["REMOVE_PARAMETER"] = "NativeGraphContext_RemoveParameterAsync", ["RENAME_NODE"] = "NativeGraphContext_RenameNodeAsync", ["RENAME_PARAMETER"] = "NativeGraphContext_RenameParameterAsync", ["DELETE_NODE_INSTANCE"] = "NativeGraphContext_DeleteNodeInstanceAsync", ["SHOW_NODE_IN_EXPLORER"] = "NativeGraphContext_ShowNodeInExplorer", ["SET_NODE_SIZE"] = "NativeGraphContext_SetNodeSizeAsync", ["SET_COLLAPSED"] = "NativeGraphContext_SetCollapsedAsync", ["SET_NODE_POSITIONS"] = "NativeGraphContext_SetNodePositionsAsync", ["SET_PARAMETER_NODE_TYPE"] = "NativeGraphContext_SetParameterNodeTypeAsync", ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"] = "NativeGraphContext_SelectAllParameterNodesWithNameAsync", ["SELECT_NODES"] = "NativeGraphContext_SelectNodes", ["SELECT_NODES_FROM_RECT"] = "NativeGraphContext_SelectNodesFromRect", ["DUPLICATE_SELECTED_NODES"] = "NativeGraphContext_DuplicateSelectedNodes", ["SELECT_ALL_NODES"] = "NativeGraphContext_SelectAllNodes", ["CLEAR_NODE_SELECTION"] = "NativeGraphContext_ClearNodeSelection", ["COPY_SELECTED_NODES"] = "NativeGraphContext_CopySelectedNodes", ["CUT_SELECTED_NODES"] = "NativeGraphContext_CutSelectedNodes", ["PASTE_NODES"] = "NativeGraphContext_PasteNodes", ["BEGIN_UNDO_TRANSACTION"] = "NativeGraphContext_beginUndoTransaction", ["FINISH_UNDO_TRANSACTION"] = "NativeGraphContext_finishUndoTransaction"}]
      560 GETTABLEKS                       R45 R12 K191 ["createBoundAction"]
      562 LOADK                            R46 K192 ["NativeGraphContext_createNode"]
      563 CALL                             R45 1 1
      564 GETTABLEKS                       R46 R12 K191 ["createBoundAction"]
      566 LOADK                            R47 K193 ["NativeGraphContext_setZIndex"]
      567 CALL                             R46 1 1
      568 GETTABLEKS                       R47 R12 K191 ["createBoundAction"]
      570 LOADK                            R48 K194 ["NativeGraphContext_removeNodes"]
      571 CALL                             R47 1 1
      572 DUPCLOSURE                       R48 K195 [PROTO_0]
      573 DUPCLOSURE                       R49 K196 [PROTO_2]
      574 CAPTURE                          VAL R17
      575 DUPCLOSURE                       R50 K197 [PROTO_68]
      576 CAPTURE                          VAL R40
      577 CAPTURE                          VAL R17
      578 CAPTURE                          VAL R14
      579 CAPTURE                          VAL R20
      580 CAPTURE                          VAL R16
      581 CAPTURE                          VAL R31
      582 CAPTURE                          VAL R19
      583 CAPTURE                          VAL R38
      584 CAPTURE                          VAL R37
      585 CAPTURE                          VAL R10
      586 CAPTURE                          VAL R35
      587 CAPTURE                          VAL R9
      588 CAPTURE                          VAL R11
      589 CAPTURE                          VAL R22
      590 CAPTURE                          VAL R18
      591 CAPTURE                          VAL R2
      592 CAPTURE                          VAL R30
      593 CAPTURE                          VAL R25
      594 CAPTURE                          VAL R1
      595 CAPTURE                          VAL R33
      596 CAPTURE                          VAL R13
      597 CAPTURE                          VAL R4
      598 CAPTURE                          VAL R45
      599 CAPTURE                          VAL R29
      600 CAPTURE                          VAL R48
      601 CAPTURE                          VAL R47
      602 CAPTURE                          VAL R12
      603 CAPTURE                          VAL R6
      604 CAPTURE                          VAL R36
      605 CAPTURE                          VAL R39
      606 CAPTURE                          VAL R32
      607 CAPTURE                          VAL R34
      608 CAPTURE                          VAL R49
      609 CAPTURE                          VAL R21
      610 CAPTURE                          VAL R46
      611 CAPTURE                          VAL R42
      612 CAPTURE                          VAL R27
      613 CAPTURE                          VAL R5
      614 DUPCLOSURE                       R51 K198 [PROTO_90]
      615 CAPTURE                          VAL R40
      616 CAPTURE                          VAL R31
      617 CAPTURE                          VAL R17
      618 CAPTURE                          VAL R19
      619 CAPTURE                          VAL R22
      620 CAPTURE                          VAL R12
      621 CAPTURE                          VAL R30
      622 CAPTURE                          VAL R21
      623 CAPTURE                          VAL R49
      624 CAPTURE                          VAL R25
      625 CAPTURE                          VAL R13
      626 CAPTURE                          VAL R46
      627 CAPTURE                          VAL R47
      628 CAPTURE                          VAL R7
      629 CAPTURE                          VAL R24
      630 CAPTURE                          VAL R23
      631 CAPTURE                          VAL R45
      632 CAPTURE                          VAL R42
      633 CAPTURE                          VAL R18
      634 CAPTURE                          VAL R26
      635 CAPTURE                          VAL R27
      636 DUPCLOSURE                       R52 K199 [PROTO_92]
      637 CAPTURE                          VAL R28
      638 DUPCLOSURE                       R53 K200 [PROTO_94]
      639 CAPTURE                          VAL R17
      640 CAPTURE                          VAL R30
      641 CAPTURE                          VAL R3
      642 CAPTURE                          VAL R52
      643 CAPTURE                          VAL R50
      644 DUPTABLE                         R54 K206 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      645 SETTABLEKS                       R42 R54 K201 ["Context"]
      647 SETTABLEKS                       R50 R54 K202 ["EditableDataModelProvider"]
      649 SETTABLEKS                       R53 R54 K203 ["PreviewDataModelProvider"]
      651 SETTABLEKS                       R51 R54 K204 ["UIDataModelProvider"]
      653 SETTABLEKS                       R52 R54 K205 ["_setupEditorFolderForPreview"]
      655 RETURN                           R54 1
