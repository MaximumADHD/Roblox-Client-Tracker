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
        5 JUMPIFNOT                        R2 ; [+34]
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+7]
        9 GETUPVAL                         R3 2
       10 LOADK                            R5 K1 ["NativeGraphContext"]
       11 LOADK                            R6 K2 ["setCollapsedAsync"]
       12 NAMECALL                         R3 R3 K3 ["TryBeginRecording"]
       14 CALL                             R3 3 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["setNodeIsCollapsed"]
       20 MOVE                             R5 R2
       21 MOVE                             R6 R1
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 1
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K5 ["markDirtyFromChild"]
       29 MOVE                             R5 R2
       30 CALL                             R4 1 0
       31 JUMPIFNOT                        R3 ; [+12]
       32 GETUPVAL                         R4 2
       33 MOVE                             R6 R3
       34 GETIMPORT                        R7 K9 [Enum.FinishRecordingOperation.Commit]
       36 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       38 CALL                             R4 3 0
       39 RETURN                           R0 0
       40 GETIMPORT                        R3 K12 [warn]
       42 LOADK                            R4 K13 ["Failed to find instance for setNodeIsCollapsed"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

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
       15 JUMPIFNOT                        R7 ; [+14]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K4 ["setNodePosition"]
       19 MOVE                             R9 R7
       20 MOVE                             R10 R6
       21 CALL                             R8 2 0
       22 GETUPVAL                         R8 3
       23 CALL                             R8 0 1
       24 JUMPIFNOT                        R8 ; [+5]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K5 ["markDirtyFromChild"]
       28 MOVE                             R9 R7
       29 CALL                             R8 1 0
       30 FORGLOOP                         R2 2 ; [-21]
       32 JUMPIFNOT                        R1 ; [+7]
       33 GETUPVAL                         R2 0
       34 MOVE                             R4 R1
       35 GETIMPORT                        R5 K9 [Enum.FinishRecordingOperation.Commit]
       37 NAMECALL                         R2 R2 K10 ["FinishRecording"]
       39 CALL                             R2 3 0
       40 RETURN                           R0 0

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
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K0 ["RBX_SourceAssetId"]
       13 NAMECALL                         R1 R1 K1 ["GetAttribute"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+23]
       17 JUMPIFEQKS                       R1 K2 [""] ; [+22]
       19 GETUPVAL                         R2 1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R5 R1
       22 GETIMPORT                        R4 K4 [typeof]
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+7]
       27 LOADK                            R3 K6 ["rbxassetid://%*"]
       28 MOVE                             R5 R1
       29 NAMECALL                         R3 R3 K7 ["format"]
       31 CALL                             R3 2 1
       32 JUMP                             ; [+5]
       33 FASTCALL1                        TOSTRING R1 ; [+3]
       34 MOVE                             R4 R1
       35 GETIMPORT                        R3 K9 [tostring]
       37 CALL                             R3 1 1
       38 CALL                             R2 1 0
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R2 1
       41 LOADNIL                          R3
       42 CALL                             R2 1 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K10 ["AttributeChanged"]
       46 NEWCLOSURE                       R3 P1
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 NAMECALL                         R1 R1 K11 ["Connect"]
       51 CALL                             R1 2 1
       52 NEWCLOSURE                       R2 P2
       53 CAPTURE                          VAL R1
       54 RETURN                           R2 1

PROTO_23:
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
       68 GETUPVAL                         R8 7
       69 CALL                             R8 0 1
       70 JUMPIFNOT                        R8 ; [+11]
       71 JUMPIFNOT                        R4 ; [+10]
       72 GETIMPORT                        R8 K15 [Enum.AnimationNodeType.GraphOutput]
       74 JUMPIFNOTEQ                      R5 R8 ; [+7]
       76 GETUPVAL                         R7 8
       77 GETTABLEKS                       R7 R7 K16 ["findGraphOutput"]
       79 MOVE                             R8 R3
       80 CALL                             R7 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R7
       83 LOADNIL                          R8
       84 JUMPIFNOT                        R7 ; [+12]
       85 MOVE                             R8 R7
       86 GETUPVAL                         R9 8
       87 GETTABLEKS                       R9 R9 K17 ["setNodePosition"]
       89 MOVE                             R10 R8
       90 GETUPVAL                         R11 8
       91 GETTABLEKS                       R11 R11 K18 ["predictOutputPosition"]
       93 MOVE                             R12 R1
       94 CALL                             R11 1 -1
       95 CALL                             R9 -1 0
       96 JUMP                             ; [+8]
       97 GETUPVAL                         R9 8
       98 GETTABLEKS                       R9 R9 K19 ["createNodeOfType"]
      100 MOVE                             R10 R5
      101 MOVE                             R11 R1
      102 MOVE                             R12 R3
      103 CALL                             R9 3 1
      104 MOVE                             R8 R9
      105 GETUPVAL                         R9 8
      106 GETTABLEKS                       R9 R9 K20 ["setZIndex"]
      108 MOVE                             R10 R8
      109 GETUPVAL                         R11 9
      110 GETTABLEKS                       R11 R11 K21 ["getNextNodeZIndex"]
      112 GETUPVAL                         R12 10
      113 CALL                             R11 1 -1
      114 CALL                             R9 -1 0
      115 JUMPIFNOT                        R8 ; [+6]
      116 GETUPVAL                         R9 3
      117 MOVE                             R11 R8
      118 NAMECALL                         R9 R9 K22 ["instanceToId"]
      120 CALL                             R9 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R9
      123 FASTCALL2K                       ASSERT R9 K23 ; [+5]
      125 MOVE                             R11 R9
      126 LOADK                            R12 K23 ["Failed to get new node ID after creation"]
      127 GETIMPORT                        R10 K25 [assert]
      129 CALL                             R10 2 0
      130 JUMPIFNOT                        R4 ; [+16]
      131 GETUPVAL                         R10 8
      132 GETTABLEKS                       R10 R10 K26 ["observeGraphState"]
      134 GETUPVAL                         R11 3
      135 GETUPVAL                         R12 11
      136 GETUPVAL                         R13 12
      137 GETTABLEKS                       R13 R13 K27 ["of"]
      139 MOVE                             R14 R3
      140 CALL                             R13 1 -1
      141 CALL                             R10 -1 1
      142 LOADB                            R11 0
      143 CALL                             R10 1 1
      144 GETTABLEKS                       R10 R10 K28 ["graphPayloadMap"]
      146 JUMP                             ; [+1]
      147 GETUPVAL                         R10 4
      148 FASTCALL2K                       ASSERT R10 K29 ; [+5]
      150 MOVE                             R12 R10
      151 LOADK                            R13 K29 ["Failed to resolve graph payload map after node creation"]
      152 GETIMPORT                        R11 K25 [assert]
      154 CALL                             R11 2 0
      155 GETIMPORT                        R11 K31 [Enum.AnimationNodeType.Blend1DNode]
      157 JUMPIFNOTEQ                      R5 R11 ; [+9]
      159 GETUPVAL                         R11 8
      160 GETTABLEKS                       R11 R11 K32 ["seedBlend1dInputs"]
      162 GETUPVAL                         R12 3
      163 MOVE                             R13 R10
      164 MOVE                             R14 R8
      165 CALL                             R11 3 0
      166 JUMP                             ; [+14]
      167 GETUPVAL                         R11 13
      168 CALL                             R11 0 1
      169 JUMPIFNOT                        R11 ; [+11]
      170 GETUPVAL                         R11 14
      171 JUMPIFNOT                        R11 ; [+9]
      172 GETIMPORT                        R11 K34 [Enum.AnimationNodeType.StateMachineNode]
      174 JUMPIFNOTEQ                      R5 R11 ; [+6]
      176 GETUPVAL                         R11 15
      177 GETTABLEKS                       R11 R11 K35 ["seedPoseDefaults"]
      179 MOVE                             R12 R8
      180 CALL                             R11 1 0
      181 JUMPIFNOT                        R2 ; [+94]
      182 GETTABLEKS                       R11 R2 K36 ["sourcePinSide"]
      184 JUMPIFNOTEQKS                    R11 K37 ["Input"] ; [+24]
      186 JUMPIFEQKNIL                     R9 ; [+89]
      188 GETUPVAL                         R11 8
      189 GETTABLEKS                       R11 R11 K38 ["setNodeConnection"]
      191 GETUPVAL                         R12 3
      192 MOVE                             R13 R10
      193 GETTABLEKS                       R14 R2 K39 ["sourcePinNodeId"]
      195 GETTABLEKS                       R15 R2 K40 ["sourcePinName"]
      197 MOVE                             R16 R9
      198 LOADK                            R17 K41 ["Output"]
      199 LOADNIL                          R18
      200 GETUPVAL                         R20 16
      201 CALL                             R20 0 1
      202 JUMPIFNOT                        R20 ; [+3]
      203 GETTABLEKS                       R19 R2 K42 ["sourcePinInputId"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R19
      207 CALL                             R11 8 0
      208 JUMP                             ; [+67]
      209 GETTABLEKS                       R11 R2 K36 ["sourcePinSide"]
      211 JUMPIFNOTEQKS                    R11 K41 ["Output"] ; [+60]
      213 GETUPVAL                         R11 17
      214 MOVE                             R13 R5
      215 NAMECALL                         R11 R11 K43 ["GetAnimationNodeDefinition"]
      217 CALL                             R11 2 1
      218 LOADNIL                          R12
      219 GETUPVAL                         R13 8
      220 GETTABLEKS                       R13 R13 K44 ["hasDynamicInputPins"]
      222 MOVE                             R14 R10
      223 GETTABLEKS                       R15 R2 K39 ["sourcePinNodeId"]
      225 CALL                             R13 2 1
      226 JUMPIFNOT                        R13 ; [+9]
      227 GETUPVAL                         R13 8
      228 GETTABLEKS                       R13 R13 K45 ["getDynamicInputPinNameFromInputNode"]
      230 MOVE                             R14 R8
      231 GETTABLEKS                       R15 R2 K40 ["sourcePinName"]
      233 CALL                             R13 2 1
      234 MOVE                             R12 R13
      235 JUMP                             ; [+13]
      236 JUMPIFNOT                        R11 ; [+12]
      237 GETTABLEKS                       R13 R11 K46 ["Inputs"]
      239 JUMPIFNOT                        R13 ; [+9]
      240 GETTABLEKS                       R14 R11 K46 ["Inputs"]
      242 GETTABLEN                        R13 R14 1
      243 JUMPIFNOT                        R13 ; [+5]
      244 GETTABLEKS                       R14 R11 K46 ["Inputs"]
      246 GETTABLEN                        R13 R14 1
      247 GETTABLEKS                       R12 R13 K47 ["InputName"]
      249 JUMPIFEQKNIL                     R12 ; [+16]
      251 JUMPIFEQKNIL                     R9 ; [+24]
      253 GETUPVAL                         R13 8
      254 GETTABLEKS                       R13 R13 K38 ["setNodeConnection"]
      256 GETUPVAL                         R14 3
      257 MOVE                             R15 R10
      258 MOVE                             R16 R9
      259 MOVE                             R17 R12
      260 GETTABLEKS                       R18 R2 K39 ["sourcePinNodeId"]
      262 GETTABLEKS                       R19 R2 K40 ["sourcePinName"]
      264 CALL                             R13 6 0
      265 JUMP                             ; [+10]
      266 GETIMPORT                        R13 K7 [warn]
      268 LOADK                            R14 K48 ["Failed to find input pin name for node type:"]
      269 MOVE                             R15 R0
      270 CALL                             R13 2 0
      271 JUMP                             ; [+4]
      272 GETIMPORT                        R11 K50 [error]
      274 LOADK                            R12 K51 ["Bad sourcePinSide state"]
      275 CALL                             R11 1 0
      276 GETUPVAL                         R11 18
      277 NEWTABLE                         R13 0 1
      279 MOVE                             R14 R8
      280 SETLIST                          R13 R14 1 [1]
      282 NAMECALL                         R11 R11 K52 ["Set"]
      284 CALL                             R11 2 0
      285 GETUPVAL                         R11 19
      286 CALL                             R11 0 1
      287 JUMPIFNOT                        R11 ; [+5]
      288 GETUPVAL                         R11 20
      289 GETTABLEKS                       R11 R11 K53 ["markDirty"]
      291 MOVE                             R12 R3
      292 CALL                             R11 1 0
      293 JUMPIFNOT                        R6 ; [+7]
      294 GETUPVAL                         R11 6
      295 MOVE                             R13 R6
      296 GETIMPORT                        R14 K56 [Enum.FinishRecordingOperation.Commit]
      298 NAMECALL                         R11 R11 K57 ["FinishRecording"]
      300 CALL                             R11 3 0
      301 RETURN                           R9 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_25:
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
       16 GETUPVAL                         R9 3
       17 CALL                             R9 0 1
       18 JUMPIFNOT                        R9 ; [+5]
       19 GETUPVAL                         R9 4
       20 GETTABLEKS                       R9 R9 K3 ["markDirtyFromChild"]
       22 MOVE                             R10 R8
       23 CALL                             R9 1 0
       24 LOADNIL                          R9
       25 SETTABLEKS                       R9 R8 K4 ["Parent"]
       27 FORGLOOP                         R4 2 ; [-12]
       29 JUMPIFEQKNIL                     R3 ; [+8]
       31 GETUPVAL                         R4 2
       32 MOVE                             R6 R3
       33 GETIMPORT                        R7 K8 [Enum.FinishRecordingOperation.Commit]
       35 NAMECALL                         R4 R4 K9 ["FinishRecording"]
       37 CALL                             R4 3 0
       38 GETUPVAL                         R4 0
       39 MOVE                             R6 R2
       40 NAMECALL                         R4 R4 K10 ["Set"]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_26:
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
       28 GETUPVAL                         R4 4
       29 CALL                             R4 0 1
       30 JUMPIFNOT                        R4 ; [+5]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K7 ["markDirty"]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 0
       36 JUMPIFNOT                        R2 ; [+7]
       37 GETUPVAL                         R4 2
       38 MOVE                             R6 R2
       39 GETIMPORT                        R7 K11 [Enum.FinishRecordingOperation.Commit]
       41 NAMECALL                         R4 R4 K12 ["FinishRecording"]
       43 CALL                             R4 3 0
       44 LENGTH                           R4 R3
       45 LOADN                            R5 0
       46 JUMPIFNOTLT                      R5 R4 ; [+6]
       48 GETUPVAL                         R4 1
       49 MOVE                             R6 R3
       50 NAMECALL                         R4 R4 K13 ["Set"]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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
       25 GETUPVAL                         R9 4
       26 CALL                             R9 0 1
       27 JUMPIFNOT                        R9 ; [+5]
       28 GETUPVAL                         R9 5
       29 GETTABLEKS                       R9 R9 K5 ["markDirtyFromChild"]
       31 MOVE                             R10 R8
       32 CALL                             R9 1 0
       33 LOADNIL                          R9
       34 SETTABLEKS                       R9 R8 K6 ["Parent"]
       36 FORGLOOP                         R4 2 ; [-12]
       38 JUMPIFEQKNIL                     R3 ; [+8]
       40 GETUPVAL                         R4 3
       41 MOVE                             R6 R3
       42 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       44 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       46 CALL                             R4 3 0
       47 GETUPVAL                         R4 0
       48 MOVE                             R6 R2
       49 NAMECALL                         R4 R4 K12 ["Set"]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_31:
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
       28 GETUPVAL                         R4 4
       29 CALL                             R4 0 1
       30 JUMPIFNOT                        R4 ; [+5]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K7 ["markDirty"]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 0
       36 JUMPIFNOT                        R2 ; [+7]
       37 GETUPVAL                         R4 2
       38 MOVE                             R6 R2
       39 GETIMPORT                        R7 K11 [Enum.FinishRecordingOperation.Commit]
       41 NAMECALL                         R4 R4 K12 ["FinishRecording"]
       43 CALL                             R4 3 0
       44 LENGTH                           R4 R3
       45 LOADN                            R5 0
       46 JUMPIFNOTLT                      R5 R4 ; [+6]
       48 GETUPVAL                         R4 6
       49 MOVE                             R6 R3
       50 NAMECALL                         R4 R4 K13 ["Set"]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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
      241 GETUPVAL                         R7 11
      242 CALL                             R7 0 1
      243 JUMPIFNOT                        R7 ; [+5]
      244 GETUPVAL                         R7 12
      245 GETTABLEKS                       R7 R7 K33 ["markDirty"]
      247 MOVE                             R8 R1
      248 CALL                             R7 1 0
      249 JUMPIFNOT                        R2 ; [+7]
      250 GETUPVAL                         R7 2
      251 MOVE                             R9 R2
      252 GETIMPORT                        R10 K37 [Enum.FinishRecordingOperation.Commit]
      254 NAMECALL                         R7 R7 K38 ["FinishRecording"]
      256 CALL                             R7 3 0
      257 RETURN                           R6 1

PROTO_34:
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
      135 GETUPVAL                         R6 9
      136 CALL                             R6 0 1
      137 JUMPIFNOT                        R6 ; [+5]
      138 GETUPVAL                         R6 10
      139 GETTABLEKS                       R6 R6 K29 ["markDirty"]
      141 MOVE                             R7 R2
      142 CALL                             R6 1 0
      143 JUMPIFNOT                        R3 ; [+7]
      144 GETUPVAL                         R6 5
      145 MOVE                             R8 R3
      146 GETIMPORT                        R9 K33 [Enum.FinishRecordingOperation.Commit]
      148 NAMECALL                         R6 R6 K34 ["FinishRecording"]
      150 CALL                             R6 3 0
      151 RETURN                           R5 1

PROTO_35:
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
       25 GETUPVAL                         R6 4
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+10]
       28 JUMPIFNOT                        R5 ; [+9]
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K6 ["markDirtyFromChild"]
       32 GETUPVAL                         R7 3
       33 MOVE                             R9 R0
       34 NAMECALL                         R7 R7 K7 ["idToInstance"]
       36 CALL                             R7 2 -1
       37 CALL                             R6 -1 0
       38 JUMPIFNOT                        R4 ; [+7]
       39 GETUPVAL                         R6 1
       40 MOVE                             R8 R4
       41 GETIMPORT                        R9 K11 [Enum.FinishRecordingOperation.Commit]
       43 NAMECALL                         R6 R6 K12 ["FinishRecording"]
       45 CALL                             R6 3 0
       46 RETURN                           R5 1

PROTO_36:
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
       22 GETUPVAL                         R4 4
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+9]
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R4 R4 K7 ["markDirtyFromChild"]
       28 GETUPVAL                         R5 3
       29 MOVE                             R7 R0
       30 NAMECALL                         R5 R5 K8 ["idToInstance"]
       32 CALL                             R5 2 -1
       33 CALL                             R4 -1 0
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETUPVAL                         R4 1
       36 MOVE                             R6 R3
       37 GETIMPORT                        R7 K12 [Enum.FinishRecordingOperation.Commit]
       39 NAMECALL                         R4 R4 K13 ["FinishRecording"]
       41 CALL                             R4 3 0
       42 RETURN                           R0 0

PROTO_37:
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
       25 GETUPVAL                         R6 4
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+10]
       28 JUMPIFNOT                        R5 ; [+9]
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K7 ["markDirtyFromChild"]
       32 GETUPVAL                         R7 3
       33 MOVE                             R9 R0
       34 NAMECALL                         R7 R7 K8 ["idToInstance"]
       36 CALL                             R7 2 -1
       37 CALL                             R6 -1 0
       38 JUMPIFNOT                        R4 ; [+7]
       39 GETUPVAL                         R6 1
       40 MOVE                             R8 R4
       41 GETIMPORT                        R9 K12 [Enum.FinishRecordingOperation.Commit]
       43 NAMECALL                         R6 R6 K13 ["FinishRecording"]
       45 CALL                             R6 3 0
       46 RETURN                           R5 1

PROTO_38:
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
       23 GETUPVAL                         R4 4
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+10]
       26 JUMPIFNOT                        R3 ; [+9]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K7 ["markDirtyFromChild"]
       30 GETUPVAL                         R5 3
       31 MOVE                             R7 R0
       32 NAMECALL                         R5 R5 K8 ["idToInstance"]
       34 CALL                             R5 2 -1
       35 CALL                             R4 -1 0
       36 JUMPIFNOT                        R2 ; [+7]
       37 GETUPVAL                         R4 1
       38 MOVE                             R6 R2
       39 GETIMPORT                        R7 K12 [Enum.FinishRecordingOperation.Commit]
       41 NAMECALL                         R4 R4 K13 ["FinishRecording"]
       43 CALL                             R4 3 0
       44 RETURN                           R3 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+6]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["No graph payload map available for breakNodeConnectionsAsync"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 LOADK                            R3 K3 ["NativeGraphContext"]
       10 LOADK                            R4 K4 ["breakNodeConnectionsAsync"]
       11 NAMECALL                         R1 R1 K5 ["TryBeginRecording"]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K6 ["breakNodeConnections"]
       17 GETUPVAL                         R3 3
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R0
       20 CALL                             R2 3 0
       21 JUMPIFNOT                        R1 ; [+7]
       22 GETUPVAL                         R2 1
       23 MOVE                             R4 R1
       24 GETIMPORT                        R5 K10 [Enum.FinishRecordingOperation.Commit]
       26 NAMECALL                         R2 R2 K11 ["FinishRecording"]
       28 CALL                             R2 3 0
       29 RETURN                           R0 0

PROTO_40:
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
       62 GETUPVAL                         R9 6
       63 CALL                             R9 0 1
       64 JUMPIFNOT                        R9 ; [+9]
       65 GETUPVAL                         R9 7
       66 GETTABLEKS                       R9 R9 K19 ["markDirtyFromChild"]
       68 GETUPVAL                         R10 3
       69 MOVE                             R12 R0
       70 NAMECALL                         R10 R10 K20 ["idToInstance"]
       72 CALL                             R10 2 -1
       73 CALL                             R9 -1 0
       74 JUMPIFNOT                        R6 ; [+7]
       75 GETUPVAL                         R9 1
       76 MOVE                             R11 R6
       77 GETIMPORT                        R12 K24 [Enum.FinishRecordingOperation.Commit]
       79 NAMECALL                         R9 R9 K25 ["FinishRecording"]
       81 CALL                             R9 3 0
       82 RETURN                           R0 0

PROTO_41:
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
      224 GETUPVAL                         R8 10
      225 CALL                             R8 0 1
      226 JUMPIFNOT                        R8 ; [+5]
      227 GETUPVAL                         R8 11
      228 GETTABLEKS                       R8 R8 K37 ["markDirty"]
      230 MOVE                             R9 R1
      231 CALL                             R8 1 0
      232 JUMPIFNOT                        R2 ; [+7]
      233 GETUPVAL                         R8 3
      234 MOVE                             R10 R2
      235 GETIMPORT                        R11 K41 [Enum.FinishRecordingOperation.Commit]
      237 NAMECALL                         R8 R8 K42 ["FinishRecording"]
      239 CALL                             R8 3 0
      240 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_46:
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
       88 GETUPVAL                         R6 3
       89 CALL                             R6 0 1
       90 JUMPIFNOT                        R6 ; [+5]
       91 GETUPVAL                         R6 4
       92 GETTABLEKS                       R6 R6 K23 ["markDirtyFromChild"]
       94 MOVE                             R7 R5
       95 CALL                             R6 1 0
       96 JUMPIFNOT                        R4 ; [+12]
       97 GETUPVAL                         R6 0
       98 MOVE                             R8 R4
       99 JUMPIFNOTEQKS                    R3 K24 ["Drag"] ; [+4]
      101 GETIMPORT                        R9 K28 [Enum.FinishRecordingOperation.Append]
      103 JUMP                             ; [+2]
      104 GETIMPORT                        R9 K30 [Enum.FinishRecordingOperation.Commit]
      106 NAMECALL                         R6 R6 K31 ["FinishRecording"]
      108 CALL                             R6 3 0
      109 RETURN                           R0 0

PROTO_47:
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
       48 GETUPVAL                         R5 2
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+5]
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R5 R5 K16 ["markDirtyFromChild"]
       54 MOVE                             R6 R4
       55 CALL                             R5 1 0
       56 JUMPIFNOT                        R3 ; [+7]
       57 GETUPVAL                         R5 0
       58 MOVE                             R7 R3
       59 GETIMPORT                        R8 K20 [Enum.FinishRecordingOperation.Commit]
       61 NAMECALL                         R5 R5 K21 ["FinishRecording"]
       63 CALL                             R5 3 0
       64 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+63]
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
       30 JUMPIF                           R5 ; [+10]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K9 ["setDisplayName"]
       34 MOVE                             R6 R3
       35 JUMPIFNOT                        R4 ; [+2]
       36 LOADNIL                          R7
       37 JUMP                             ; [+1]
       38 MOVE                             R7 R1
       39 CALL                             R5 2 0
       40 JUMP                             ; [+23]
       41 JUMPIF                           R4 ; [+22]
       42 GETTABLEKS                       R5 R3 K10 ["Parent"]
       44 JUMPIFNOT                        R5 ; [+6]
       45 GETTABLEKS                       R5 R3 K10 ["Parent"]
       47 MOVE                             R7 R1
       48 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       50 CALL                             R5 2 1
       51 JUMPIFEQKNIL                     R5 ; [+12]
       53 JUMPIFEQ                         R5 R3 ; [+10]
       55 JUMPIFNOT                        R2 ; [+7]
       56 GETUPVAL                         R6 0
       57 MOVE                             R8 R2
       58 GETIMPORT                        R9 K15 [Enum.FinishRecordingOperation.Cancel]
       60 NAMECALL                         R6 R6 K16 ["FinishRecording"]
       62 CALL                             R6 3 0
       63 RETURN                           R0 0
       64 JUMPIF                           R4 ; [+10]
       65 NEWCLOSURE                       R6 P0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 NEWCLOSURE                       R7 P1
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 FASTPCALL                        xpcall 2 ; [+2]
       72 GETIMPORT                        R5 K18 [xpcall]
       74 CALL                             R5 2 0
       75 GETUPVAL                         R4 6
       76 CALL                             R4 0 1
       77 JUMPIF                           R4 ; [+38]
       78 GETUPVAL                         R4 7
       79 GETTABLEKS                       R4 R4 K19 ["observe"]
       81 MOVE                             R5 R0
       82 CALL                             R4 1 1
       83 LOADB                            R5 0
       84 CALL                             R4 1 1
       85 JUMPIFNOT                        R4 ; [+30]
       86 GETUPVAL                         R5 8
       87 JUMPIFNOT                        R5 ; [+28]
       88 GETTABLEKS                       R5 R4 K20 ["outputPinToConnectionMap"]
       90 LOADNIL                          R6
       91 LOADNIL                          R7
       92 FORGPREP                         R5
       93 JUMPIFEQKNIL                     R9 ; [+20]
       95 GETUPVAL                         R10 3
       96 GETTABLEKS                       R10 R10 K21 ["hasDynamicInputPins"]
       98 GETUPVAL                         R11 8
       99 GETTABLEKS                       R12 R9 K22 ["inputNodeId"]
      101 CALL                             R10 2 1
      102 JUMPIFNOT                        R10 ; [+11]
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K23 ["renameDynamicInputPin"]
      106 GETUPVAL                         R11 1
      107 GETUPVAL                         R12 8
      108 GETTABLEKS                       R13 R9 K22 ["inputNodeId"]
      110 GETTABLEKS                       R14 R9 K24 ["inputNodePinId"]
      112 MOVE                             R15 R1
      113 CALL                             R10 5 0
      114 FORGLOOP                         R5 2 ; [-22]
      116 GETUPVAL                         R4 9
      117 CALL                             R4 0 1
      118 JUMPIFNOT                        R4 ; [+5]
      119 GETUPVAL                         R4 10
      120 GETTABLEKS                       R4 R4 K25 ["markDirtyFromChild"]
      122 MOVE                             R5 R3
      123 CALL                             R4 1 0
      124 JUMPIFNOT                        R2 ; [+7]
      125 GETUPVAL                         R4 0
      126 MOVE                             R6 R2
      127 GETIMPORT                        R7 K27 [Enum.FinishRecordingOperation.Commit]
      129 NAMECALL                         R4 R4 K16 ["FinishRecording"]
      131 CALL                             R4 3 0
      132 RETURN                           R0 0

PROTO_51:
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
       14 GETUPVAL                         R4 3
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K4 ["markDirtyFromChild"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R7 R0
       22 NAMECALL                         R5 R5 K5 ["idToInstance"]
       24 CALL                             R5 2 -1
       25 CALL                             R4 -1 0
       26 JUMPIFNOT                        R3 ; [+7]
       27 GETUPVAL                         R4 0
       28 MOVE                             R6 R3
       29 GETIMPORT                        R7 K9 [Enum.FinishRecordingOperation.Commit]
       31 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       33 CALL                             R4 3 0
       34 RETURN                           R0 0

PROTO_52:
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
       23 JUMPIFNOT                        R4 ; [+80]
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
       87 GETUPVAL                         R7 6
       88 CALL                             R7 0 1
       89 JUMPIFNOT                        R7 ; [+5]
       90 GETUPVAL                         R7 7
       91 GETTABLEKS                       R7 R7 K12 ["markDirty"]
       93 MOVE                             R8 R2
       94 CALL                             R7 1 0
       95 JUMPIFNOT                        R5 ; [+7]
       96 GETUPVAL                         R7 5
       97 MOVE                             R9 R5
       98 GETIMPORT                        R10 K16 [Enum.FinishRecordingOperation.Commit]
      100 NAMECALL                         R7 R7 K17 ["FinishRecording"]
      102 CALL                             R7 3 0
      103 RETURN                           R0 0
      104 JUMPIFNOT                        R3 ; [+10]
      105 LOADK                            R7 K18 ["Folder"]
      106 NAMECALL                         R5 R3 K19 ["IsA"]
      108 CALL                             R5 2 1
      109 FASTCALL2K                       ASSERT R5 K20 ; [+4]
      111 LOADK                            R6 K20 ["Expected parameter instance to be a Folder"]
      112 GETIMPORT                        R4 K22 [assert]
      114 CALL                             R4 2 0
      115 LOADNIL                          R4
      116 JUMPIFNOT                        R3 ; [+17]
      117 LOADK                            R8 K18 ["Folder"]
      118 NAMECALL                         R6 R3 K19 ["IsA"]
      120 CALL                             R6 2 1
      121 FASTCALL2K                       ASSERT R6 K20 ; [+4]
      123 LOADK                            R7 K20 ["Expected parameter instance to be a Folder"]
      124 GETIMPORT                        R5 K22 [assert]
      126 CALL                             R5 2 0
      127 NEWTABLE                         R5 0 1
      129 MOVE                             R6 R3
      130 SETLIST                          R5 R6 1 [1]
      132 MOVE                             R4 R5
      133 JUMP                             ; [+7]
      134 GETUPVAL                         R5 4
      135 GETTABLEKS                       R5 R5 K2 ["getAllParameterInstancesFromName"]
      137 MOVE                             R6 R2
      138 MOVE                             R7 R0
      139 CALL                             R5 2 1
      140 MOVE                             R4 R5
      141 GETUPVAL                         R5 5
      142 LOADK                            R7 K3 ["NativeGraphContext"]
      143 LOADK                            R8 K4 ["removeParameterAsync"]
      144 NAMECALL                         R5 R5 K5 ["TryBeginRecording"]
      146 CALL                             R5 3 1
      147 MOVE                             R6 R4
      148 LOADNIL                          R7
      149 LOADNIL                          R8
      150 FORGPREP                         R6
      151 NAMECALL                         R11 R10 K23 ["GetChildren"]
      153 CALL                             R11 1 3
      154 FORGPREP                         R11
      155 LOADK                            R18 K24 ["ObjectValue"]
      156 NAMECALL                         R16 R15 K19 ["IsA"]
      158 CALL                             R16 2 1
      159 JUMPIFNOT                        R16 ; [+15]
      160 GETTABLEKS                       R16 R15 K25 ["Value"]
      162 JUMPIFNOT                        R16 ; [+12]
      163 GETUPVAL                         R17 4
      164 GETTABLEKS                       R17 R17 K26 ["getParameterWireInputPinId"]
      166 GETTABLEKS                       R18 R15 K27 ["Name"]
      168 CALL                             R17 1 1
      169 JUMPIFNOT                        R17 ; [+5]
      170 MOVE                             R20 R17
      171 LOADNIL                          R21
      172 NAMECALL                         R18 R16 K11 ["SetAttribute"]
      174 CALL                             R18 3 0
      175 FORGLOOP                         R11 2 ; [-21]
      177 LOADNIL                          R11
      178 SETTABLEKS                       R11 R10 K8 ["Parent"]
      180 FORGLOOP                         R6 2 ; [-30]
      182 GETUPVAL                         R8 4
      183 GETTABLEKS                       R8 R8 K28 ["getParameterInstanceName"]
      185 MOVE                             R9 R0
      186 CALL                             R8 1 -1
      187 NAMECALL                         R6 R2 K29 ["FindFirstChild"]
      189 CALL                             R6 -1 1
      190 JUMPIF                           R6 ; [+11]
      191 MOVE                             R8 R0
      192 NAMECALL                         R6 R2 K10 ["GetAttribute"]
      194 CALL                             R6 2 1
      195 JUMPIFEQKNIL                     R6 ; [+6]
      197 MOVE                             R8 R0
      198 LOADNIL                          R9
      199 NAMECALL                         R6 R2 K11 ["SetAttribute"]
      201 CALL                             R6 3 0
      202 GETUPVAL                         R6 6
      203 CALL                             R6 0 1
      204 JUMPIFNOT                        R6 ; [+5]
      205 GETUPVAL                         R6 7
      206 GETTABLEKS                       R6 R6 K12 ["markDirty"]
      208 MOVE                             R7 R2
      209 CALL                             R6 1 0
      210 JUMPIFNOT                        R5 ; [+7]
      211 GETUPVAL                         R6 5
      212 MOVE                             R8 R5
      213 GETIMPORT                        R9 K16 [Enum.FinishRecordingOperation.Commit]
      215 NAMECALL                         R6 R6 K17 ["FinishRecording"]
      217 CALL                             R6 3 0
      218 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R1 R3
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+3]
        9 JUMPIFNOTEQ                      R0 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K0 ["observeSelectedGraphInstance"]
       15 LOADB                            R5 0
       16 CALL                             R4 1 1
       17 JUMPIF                           R4 ; [+1]
       18 RETURN                           R0 0
       19 JUMPIFNOT                        R2 ; [+6]
       20 GETUPVAL                         R5 3
       21 MOVE                             R7 R2
       22 NAMECALL                         R5 R5 K1 ["idToInstance"]
       24 CALL                             R5 2 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 JUMPIFEQKNIL                     R2 ; [+3]
       29 JUMPIF                           R5 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R6 1
       32 CALL                             R6 0 1
       33 JUMPIFNOT                        R6 ; [+161]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K2 ["getParameterDefinitionInstance"]
       37 MOVE                             R7 R4
       38 MOVE                             R8 R0
       39 CALL                             R6 2 1
       40 JUMPIF                           R6 ; [+1]
       41 RETURN                           R0 0
       42 JUMPIFNOT                        R5 ; [+6]
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R5
       46 SETLIST                          R7 R8 1 [1]
       48 JUMP                             ; [+6]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K3 ["getAllParameterInstancesFromName"]
       52 MOVE                             R8 R4
       53 MOVE                             R9 R0
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 5
       56 LOADK                            R10 K4 ["NativeGraphContext"]
       57 LOADK                            R11 K5 ["renameParameterAsync"]
       58 NAMECALL                         R8 R8 K6 ["TryBeginRecording"]
       60 CALL                             R8 3 1
       61 MOVE                             R11 R1
       62 NAMECALL                         R9 R4 K7 ["GetAttribute"]
       64 CALL                             R9 2 1
       65 JUMPIFNOTEQKNIL                  R9 ; [+9]
       67 MOVE                             R11 R1
       68 MOVE                             R14 R0
       69 NAMECALL                         R12 R4 K7 ["GetAttribute"]
       71 CALL                             R12 2 -1
       72 NAMECALL                         R9 R4 K8 ["SetAttribute"]
       74 CALL                             R9 -1 0
       75 LOADNIL                          R9
       76 JUMPIF                           R5 ; [+25]
       77 GETUPVAL                         R10 4
       78 GETTABLEKS                       R10 R10 K2 ["getParameterDefinitionInstance"]
       80 MOVE                             R11 R4
       81 MOVE                             R12 R1
       82 CALL                             R10 2 1
       83 JUMPIF                           R10 ; [+18]
       84 GETUPVAL                         R10 4
       85 GETTABLEKS                       R10 R10 K9 ["getParameterInstanceName"]
       87 MOVE                             R11 R1
       88 CALL                             R10 1 1
       89 SETTABLEKS                       R10 R6 K10 ["Name"]
       91 GETUPVAL                         R12 6
       92 GETTABLEKS                       R12 R12 K11 ["NODE_ATTRIBUTES"]
       94 GETTABLEKS                       R12 R12 K12 ["BindingName"]
       96 MOVE                             R13 R1
       97 NAMECALL                         R10 R6 K8 ["SetAttribute"]
       99 CALL                             R10 3 0
      100 MOVE                             R9 R6
      101 JUMP                             ; [+15]
      102 GETUPVAL                         R10 4
      103 GETTABLEKS                       R10 R10 K13 ["getOrCreateParameterDefinition"]
      105 MOVE                             R11 R4
      106 MOVE                             R12 R1
      107 GETUPVAL                         R15 6
      108 GETTABLEKS                       R15 R15 K11 ["NODE_ATTRIBUTES"]
      110 GETTABLEKS                       R15 R15 K14 ["ParameterType"]
      112 NAMECALL                         R13 R6 K7 ["GetAttribute"]
      114 CALL                             R13 2 -1
      115 CALL                             R10 -1 1
      116 MOVE                             R9 R10
      117 JUMPIFNOTEQ                      R9 R6 ; [+2]
      119 LOADB                            R10 0 +1
      120 LOADB                            R10 1
      121 GETUPVAL                         R11 7
      122 GETTABLEKS                       R11 R11 K15 ["parameterDestroyConnectionMapRef"]
      124 GETTABLEKS                       R11 R11 K16 ["current"]
      126 GETIMPORT                        R12 K19 [table.clone]
      128 MOVE                             R13 R11
      129 CALL                             R12 1 1
      130 MOVE                             R13 R7
      131 LOADNIL                          R14
      132 LOADNIL                          R15
      133 FORGPREP                         R13
      134 GETUPVAL                         R18 4
      135 GETTABLEKS                       R18 R18 K20 ["setParameterNodeBindingNames"]
      137 MOVE                             R19 R17
      138 MOVE                             R20 R1
      139 CALL                             R18 2 0
      140 JUMPIFNOT                        R10 ; [+2]
      141 SETTABLEKS                       R9 R17 K21 ["Parent"]
      143 GETUPVAL                         R18 3
      144 MOVE                             R20 R17
      145 NAMECALL                         R18 R18 K22 ["instanceToId"]
      147 CALL                             R18 2 1
      148 GETTABLE                         R19 R11 R18
      149 JUMPIFNOT                        R19 ; [+11]
      150 DUPTABLE                         R19 K26 [{"connection", "nodeId", "parameterName"}]
      151 GETTABLE                         R20 R11 R18
      152 GETTABLEKS                       R20 R20 K23 ["connection"]
      154 SETTABLEKS                       R20 R19 K23 ["connection"]
      156 SETTABLEKS                       R18 R19 K24 ["nodeId"]
      158 SETTABLEKS                       R1 R19 K25 ["parameterName"]
      160 SETTABLE                         R19 R12 R18
      161 FORGLOOP                         R13 2 ; [-28]
      163 GETUPVAL                         R13 7
      164 GETTABLEKS                       R13 R13 K27 ["setParameterDestroyConnectionMap"]
      166 MOVE                             R14 R12
      167 CALL                             R13 1 0
      168 JUMPIF                           R5 ; [+9]
      169 JUMPIFNOT                        R10 ; [+3]
      170 LOADNIL                          R13
      171 SETTABLEKS                       R13 R6 K21 ["Parent"]
      173 MOVE                             R15 R0
      174 LOADNIL                          R16
      175 NAMECALL                         R13 R4 K8 ["SetAttribute"]
      177 CALL                             R13 3 0
      178 GETUPVAL                         R13 8
      179 CALL                             R13 0 1
      180 JUMPIFNOT                        R13 ; [+5]
      181 GETUPVAL                         R13 9
      182 GETTABLEKS                       R13 R13 K28 ["markDirty"]
      184 MOVE                             R14 R4
      185 CALL                             R13 1 0
      186 JUMPIFNOT                        R8 ; [+7]
      187 GETUPVAL                         R13 5
      188 MOVE                             R15 R8
      189 GETIMPORT                        R16 K32 [Enum.FinishRecordingOperation.Commit]
      191 NAMECALL                         R13 R13 K33 ["FinishRecording"]
      193 CALL                             R13 3 0
      194 RETURN                           R0 0
      195 NEWTABLE                         R6 0 0
      197 JUMPIFNOT                        R5 ; [+18]
      198 LOADK                            R10 K34 ["Folder"]
      199 NAMECALL                         R8 R5 K35 ["IsA"]
      201 CALL                             R8 2 1
      202 FASTCALL2K                       ASSERT R8 K36 ; [+4]
      204 LOADK                            R9 K36 ["Expected specified parameterNodeInstance to be a Folder"]
      205 GETIMPORT                        R7 K38 [assert]
      207 CALL                             R7 2 0
      208 FASTCALL2                        TABLE_INSERT R6 R5 ; [+5]
      210 MOVE                             R8 R6
      211 MOVE                             R9 R5
      212 GETIMPORT                        R7 K40 [table.insert]
      214 CALL                             R7 2 0
      215 JUMP                             ; [+7]
      216 GETUPVAL                         R7 4
      217 GETTABLEKS                       R7 R7 K3 ["getAllParameterInstancesFromName"]
      219 MOVE                             R8 R4
      220 MOVE                             R9 R0
      221 CALL                             R7 2 1
      222 MOVE                             R6 R7
      223 LENGTH                           R7 R6
      224 JUMPIFNOTEQKN                    R7 K41 [0] ; [+2]
      226 RETURN                           R0 0
      227 GETUPVAL                         R7 5
      228 LOADK                            R9 K4 ["NativeGraphContext"]
      229 LOADK                            R10 K5 ["renameParameterAsync"]
      230 NAMECALL                         R7 R7 K6 ["TryBeginRecording"]
      232 CALL                             R7 3 1
      233 MOVE                             R10 R1
      234 NAMECALL                         R8 R4 K7 ["GetAttribute"]
      236 CALL                             R8 2 1
      237 JUMPIF                           R8 ; [+8]
      238 MOVE                             R10 R1
      239 MOVE                             R13 R0
      240 NAMECALL                         R11 R4 K7 ["GetAttribute"]
      242 CALL                             R11 2 -1
      243 NAMECALL                         R8 R4 K8 ["SetAttribute"]
      245 CALL                             R8 -1 0
      246 GETUPVAL                         R8 7
      247 GETTABLEKS                       R8 R8 K15 ["parameterDestroyConnectionMapRef"]
      249 GETTABLEKS                       R8 R8 K16 ["current"]
      251 GETIMPORT                        R9 K19 [table.clone]
      253 MOVE                             R10 R8
      254 CALL                             R9 1 1
      255 MOVE                             R10 R6
      256 LOADNIL                          R11
      257 LOADNIL                          R12
      258 FORGPREP                         R10
      259 NAMECALL                         R15 R14 K42 ["GetChildren"]
      261 CALL                             R15 1 3
      262 FORGPREP                         R15
      263 LOADK                            R22 K43 ["ObjectValue"]
      264 NAMECALL                         R20 R19 K35 ["IsA"]
      266 CALL                             R20 2 1
      267 JUMPIFNOT                        R20 ; [+17]
      268 GETTABLEKS                       R20 R19 K44 ["Value"]
      270 JUMPIFNOT                        R20 ; [+14]
      271 GETUPVAL                         R21 4
      272 GETTABLEKS                       R21 R21 K45 ["getParameterWireInputPinId"]
      274 GETTABLEKS                       R22 R19 K10 ["Name"]
      276 CALL                             R21 1 1
      277 JUMPIFNOT                        R21 ; [+7]
      278 GETUPVAL                         R22 4
      279 GETTABLEKS                       R22 R22 K46 ["setParameterBindingName"]
      281 MOVE                             R23 R20
      282 MOVE                             R24 R21
      283 MOVE                             R25 R1
      284 CALL                             R22 3 0
      285 FORGLOOP                         R15 2 ; [-23]
      287 GETUPVAL                         R15 4
      288 GETTABLEKS                       R15 R15 K9 ["getParameterInstanceName"]
      290 MOVE                             R16 R1
      291 CALL                             R15 1 1
      292 SETTABLEKS                       R15 R14 K10 ["Name"]
      294 GETUPVAL                         R17 6
      295 GETTABLEKS                       R17 R17 K11 ["NODE_ATTRIBUTES"]
      297 GETTABLEKS                       R17 R17 K12 ["BindingName"]
      299 MOVE                             R18 R1
      300 NAMECALL                         R15 R14 K8 ["SetAttribute"]
      302 CALL                             R15 3 0
      303 GETUPVAL                         R15 3
      304 MOVE                             R17 R14
      305 NAMECALL                         R15 R15 K22 ["instanceToId"]
      307 CALL                             R15 2 1
      308 GETTABLE                         R16 R8 R15
      309 JUMPIFNOT                        R16 ; [+11]
      310 DUPTABLE                         R16 K26 [{"connection", "nodeId", "parameterName"}]
      311 GETTABLE                         R17 R8 R15
      312 GETTABLEKS                       R17 R17 K23 ["connection"]
      314 SETTABLEKS                       R17 R16 K23 ["connection"]
      316 SETTABLEKS                       R15 R16 K24 ["nodeId"]
      318 SETTABLEKS                       R1 R16 K25 ["parameterName"]
      320 SETTABLE                         R16 R9 R15
      321 FORGLOOP                         R10 2 ; [-63]
      323 GETUPVAL                         R10 7
      324 GETTABLEKS                       R10 R10 K27 ["setParameterDestroyConnectionMap"]
      326 MOVE                             R11 R9
      327 CALL                             R10 1 0
      328 LOADB                            R10 0
      329 JUMPIFEQKNIL                     R2 ; [+9]
      331 GETUPVAL                         R12 4
      332 GETTABLEKS                       R12 R12 K9 ["getParameterInstanceName"]
      334 MOVE                             R13 R0
      335 CALL                             R12 1 -1
      336 NAMECALL                         R10 R4 K47 ["FindFirstChild"]
      338 CALL                             R10 -1 1
      339 JUMPIF                           R10 ; [+5]
      340 MOVE                             R13 R0
      341 LOADNIL                          R14
      342 NAMECALL                         R11 R4 K8 ["SetAttribute"]
      344 CALL                             R11 3 0
      345 GETUPVAL                         R11 8
      346 CALL                             R11 0 1
      347 JUMPIFNOT                        R11 ; [+5]
      348 GETUPVAL                         R11 9
      349 GETTABLEKS                       R11 R11 K28 ["markDirty"]
      351 MOVE                             R12 R4
      352 CALL                             R11 1 0
      353 JUMPIFNOT                        R7 ; [+7]
      354 GETUPVAL                         R11 5
      355 MOVE                             R13 R7
      356 GETIMPORT                        R14 K32 [Enum.FinishRecordingOperation.Commit]
      358 NAMECALL                         R11 R11 K33 ["FinishRecording"]
      360 CALL                             R11 3 0
      361 RETURN                           R0 0

PROTO_54:
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
       59 GETUPVAL                         R6 5
       60 CALL                             R6 0 1
       61 JUMPIFNOT                        R6 ; [+5]
       62 GETUPVAL                         R6 6
       63 GETTABLEKS                       R6 R6 K9 ["markDirty"]
       65 MOVE                             R7 R3
       66 CALL                             R6 1 0
       67 JUMPIFNOT                        R5 ; [+7]
       68 GETUPVAL                         R6 2
       69 MOVE                             R8 R5
       70 GETIMPORT                        R9 K13 [Enum.FinishRecordingOperation.Commit]
       72 NAMECALL                         R6 R6 K14 ["FinishRecording"]
       74 CALL                             R6 3 0
       75 RETURN                           R0 0

PROTO_55:
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
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["markDirtyFromChild"]
       19 MOVE                             R4 R1
       20 CALL                             R3 1 0
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R1 K5 ["Parent"]
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETUPVAL                         R3 1
       26 MOVE                             R5 R2
       27 GETIMPORT                        R6 K9 [Enum.FinishRecordingOperation.Commit]
       29 NAMECALL                         R3 R3 K10 ["FinishRecording"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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
       57 GETUPVAL                         R6 6
       58 CALL                             R6 0 1
       59 JUMPIFNOT                        R6 ; [+5]
       60 GETUPVAL                         R6 7
       61 GETTABLEKS                       R6 R6 K14 ["markDirtyFromChild"]
       63 MOVE                             R7 R3
       64 CALL                             R6 1 0
       65 JUMPIFNOT                        R5 ; [+7]
       66 GETUPVAL                         R6 5
       67 MOVE                             R8 R5
       68 GETIMPORT                        R9 K18 [Enum.FinishRecordingOperation.Commit]
       70 NAMECALL                         R6 R6 K19 ["FinishRecording"]
       72 CALL                             R6 3 0
       73 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+109]
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
       28 GETUPVAL                         R5 4
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+35]
       31 JUMPIFNOT                        R3 ; [+34]
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R5 R5 K7 ["hasDynamicInputPins"]
       35 MOVE                             R6 R3
       36 GETTABLEKS                       R7 R4 K8 ["inputNodeId"]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+26]
       40 GETTABLEKS                       R6 R4 K9 ["wireId"]
       42 JUMPIFNOT                        R6 ; [+7]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R7 R4 K9 ["wireId"]
       46 NAMECALL                         R5 R5 K10 ["idToInstance"]
       48 CALL                             R5 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R5
       51 JUMPIFNOT                        R5 ; [+53]
       52 LOADK                            R8 K11 ["ObjectValue"]
       53 NAMECALL                         R6 R5 K12 ["IsA"]
       55 CALL                             R6 2 1
       56 JUMPIFNOT                        R6 ; [+48]
       57 GETTABLEKS                       R6 R5 K13 ["Value"]
       59 GETUPVAL                         R7 0
       60 JUMPIFNOTEQ                      R6 R7 ; [+44]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K13 ["Value"]
       65 JUMP                             ; [+39]
       66 JUMPIFNOT                        R4 ; [+38]
       67 JUMPIFNOT                        R3 ; [+10]
       68 GETUPVAL                         R5 5
       69 GETTABLEKS                       R5 R5 K14 ["removeOrderedInputPin"]
       71 GETUPVAL                         R6 1
       72 MOVE                             R7 R3
       73 GETTABLEKS                       R8 R4 K8 ["inputNodeId"]
       75 GETTABLEKS                       R9 R4 K15 ["inputNodePinId"]
       77 CALL                             R5 4 0
       78 GETTABLEKS                       R5 R4 K9 ["wireId"]
       80 JUMPIFNOT                        R5 ; [+24]
       81 GETUPVAL                         R5 1
       82 GETTABLEKS                       R7 R4 K9 ["wireId"]
       84 NAMECALL                         R5 R5 K10 ["idToInstance"]
       86 CALL                             R5 2 1
       87 JUMPIFNOT                        R5 ; [+17]
       88 LOADK                            R8 K11 ["ObjectValue"]
       89 NAMECALL                         R6 R5 K12 ["IsA"]
       91 CALL                             R6 2 1
       92 JUMPIFNOT                        R6 ; [+12]
       93 GETTABLEKS                       R6 R5 K13 ["Value"]
       95 JUMPIFEQKNIL                     R6 ; [+6]
       97 GETTABLEKS                       R6 R5 K13 ["Value"]
       99 GETUPVAL                         R7 0
      100 JUMPIFNOTEQ                      R6 R7 ; [+4]
      102 LOADNIL                          R6
      103 SETTABLEKS                       R6 R5 K16 ["Parent"]
      105 GETIMPORT                        R5 K19 [table.clone]
      107 MOVE                             R6 R1
      108 CALL                             R5 1 1
      109 LOADNIL                          R6
      110 SETTABLE                         R6 R5 R0
      111 GETUPVAL                         R6 2
      112 GETTABLEKS                       R6 R6 K20 ["setNodeDestroyConnectionMap"]
      114 MOVE                             R7 R5
      115 CALL                             R6 1 0
      116 RETURN                           R0 0

PROTO_59:
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

PROTO_60:
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
       13 CAPTURE                          UPVAL U6
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeDestroyConnectionMapRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["destroyConnectionMapRef"]
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

PROTO_72:
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
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_75:
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

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_77:
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
      220 CAPTURE                          UPVAL U16
      221 CAPTURE                          UPVAL U17
      222 CAPTURE                          UPVAL U14
      223 CAPTURE                          UPVAL U18
      224 NEWTABLE                         R30 0 1
      226 MOVE                             R31 R16
      227 SETLIST                          R30 R31 1 [1]
      229 CALL                             R28 2 1
      230 GETUPVAL                         R29 2
      231 GETTABLEKS                       R29 R29 K18 ["useCallback"]
      233 NEWCLOSURE                       R30 P7
      234 CAPTURE                          VAL R16
      235 CAPTURE                          UPVAL U14
      236 NEWTABLE                         R31 0 1
      238 MOVE                             R32 R16
      239 SETLIST                          R31 R32 1 [1]
      241 CALL                             R29 2 1
      242 GETUPVAL                         R30 2
      243 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      245 NEWCLOSURE                       R31 P8
      246 CAPTURE                          UPVAL U17
      247 CAPTURE                          VAL R16
      248 CAPTURE                          UPVAL U14
      249 CAPTURE                          UPVAL U16
      250 CAPTURE                          UPVAL U18
      251 NEWTABLE                         R32 0 1
      253 MOVE                             R33 R16
      254 SETLIST                          R32 R33 1 [1]
      256 CALL                             R30 2 1
      257 GETUPVAL                         R31 2
      258 GETTABLEKS                       R31 R31 K18 ["useCallback"]
      260 NEWCLOSURE                       R32 P9
      261 CAPTURE                          VAL R16
      262 CAPTURE                          UPVAL U14
      263 NEWTABLE                         R33 0 1
      265 MOVE                             R34 R16
      266 SETLIST                          R33 R34 1 [1]
      268 CALL                             R31 2 1
      269 GETUPVAL                         R32 2
      270 GETTABLEKS                       R32 R32 K18 ["useCallback"]
      272 NEWCLOSURE                       R33 P10
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R16
      275 NEWTABLE                         R34 0 3
      277 MOVE                             R35 R16
      278 MOVE                             R36 R8
      279 MOVE                             R37 R15
      280 SETLIST                          R34 R35 3 [1]
      282 CALL                             R32 2 1
      283 GETUPVAL                         R33 2
      284 GETTABLEKS                       R33 R33 K18 ["useCallback"]
      286 NEWCLOSURE                       R34 P11
      287 CAPTURE                          VAL R8
      288 CAPTURE                          VAL R19
      289 CAPTURE                          VAL R3
      290 CAPTURE                          VAL R16
      291 NEWTABLE                         R35 0 4
      293 GETTABLEKS                       R36 R3 K19 ["get"]
      295 MOVE                             R37 R8
      296 MOVE                             R38 R16
      297 MOVE                             R39 R19
      298 SETLIST                          R35 R36 4 [1]
      300 CALL                             R33 2 1
      301 GETUPVAL                         R34 2
      302 GETTABLEKS                       R34 R34 K6 ["useState"]
      304 LOADNIL                          R35
      305 CALL                             R34 1 2
      306 GETUPVAL                         R36 19
      307 GETTABLEKS                       R36 R36 K20 ["useSignalState"]
      309 GETTABLEKS                       R37 R9 K14 ["observeSelectedGraphInstance"]
      311 CALL                             R36 1 1
      312 GETUPVAL                         R37 2
      313 GETTABLEKS                       R37 R37 K11 ["useMemo"]
      315 NEWCLOSURE                       R38 P12
      316 CAPTURE                          VAL R36
      317 NEWTABLE                         R39 0 1
      319 MOVE                             R40 R36
      320 SETLIST                          R39 R40 1 [1]
      322 CALL                             R37 2 1
      323 GETUPVAL                         R38 19
      324 GETTABLEKS                       R38 R38 K20 ["useSignalState"]
      326 GETTABLEKS                       R39 R9 K14 ["observeSelectedGraphInstance"]
      328 CALL                             R38 1 1
      329 GETUPVAL                         R39 2
      330 GETTABLEKS                       R39 R39 K12 ["useEffect"]
      332 NEWCLOSURE                       R40 P13
      333 CAPTURE                          VAL R38
      334 CAPTURE                          VAL R35
      335 NEWTABLE                         R41 0 1
      337 MOVE                             R42 R38
      338 SETLIST                          R41 R42 1 [1]
      340 CALL                             R39 2 0
      341 GETUPVAL                         R39 2
      342 GETTABLEKS                       R39 R39 K18 ["useCallback"]
      344 NEWCLOSURE                       R40 P14
      345 CAPTURE                          VAL R9
      346 CAPTURE                          UPVAL U7
      347 CAPTURE                          VAL R10
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R19
      350 CAPTURE                          UPVAL U20
      351 CAPTURE                          UPVAL U17
      352 CAPTURE                          UPVAL U21
      353 CAPTURE                          UPVAL U14
      354 CAPTURE                          UPVAL U22
      355 CAPTURE                          VAL R3
      356 CAPTURE                          VAL R15
      357 CAPTURE                          UPVAL U23
      358 CAPTURE                          UPVAL U24
      359 CAPTURE                          UPVAL U25
      360 CAPTURE                          UPVAL U26
      361 CAPTURE                          UPVAL U27
      362 CAPTURE                          UPVAL U28
      363 CAPTURE                          VAL R8
      364 CAPTURE                          UPVAL U16
      365 CAPTURE                          UPVAL U18
      366 NEWTABLE                         R41 0 8
      368 MOVE                             R42 R8
      369 GETTABLEKS                       R43 R9 K14 ["observeSelectedGraphInstance"]
      371 MOVE                             R44 R19
      372 MOVE                             R45 R16
      373 MOVE                             R46 R3
      374 MOVE                             R47 R15
      375 GETUPVAL                         R49 7
      376 CALL                             R49 0 1
      377 JUMPIFNOT                        R49 ; [+3]
      378 GETTABLEKS                       R48 R10 K21 ["canCreateGraph"]
      380 JUMP                             ; [+1]
      381 LOADNIL                          R48
      382 GETUPVAL                         R50 7
      383 CALL                             R50 0 1
      384 JUMPIFNOT                        R50 ; [+3]
      385 GETTABLEKS                       R49 R10 K22 ["createNewGraphAsync"]
      387 JUMP                             ; [+1]
      388 LOADNIL                          R49
      389 SETLIST                          R41 R42 8 [1]
      391 CALL                             R39 2 1
      392 GETUPVAL                         R40 29
      393 GETTABLEKS                       R40 R40 K23 ["useProducer"]
      395 GETUPVAL                         R41 2
      396 GETTABLEKS                       R41 R41 K18 ["useCallback"]
      398 NEWCLOSURE                       R42 P15
      399 CAPTURE                          VAL R39
      400 NEWTABLE                         R43 0 1
      402 MOVE                             R44 R39
      403 SETLIST                          R43 R44 1 [1]
      405 CALL                             R41 2 -1
      406 CALL                             R40 -1 0
      407 GETUPVAL                         R40 2
      408 GETTABLEKS                       R40 R40 K18 ["useCallback"]
      410 NEWCLOSURE                       R41 P16
      411 CAPTURE                          VAL R8
      412 CAPTURE                          UPVAL U30
      413 CAPTURE                          UPVAL U17
      414 CAPTURE                          UPVAL U16
      415 CAPTURE                          UPVAL U18
      416 NEWTABLE                         R42 0 1
      418 MOVE                             R43 R8
      419 SETLIST                          R42 R43 1 [1]
      421 CALL                             R40 2 1
      422 GETUPVAL                         R41 31
      423 GETTABLEKS                       R41 R41 K23 ["useProducer"]
      425 MOVE                             R42 R40
      426 CALL                             R41 1 0
      427 GETUPVAL                         R41 2
      428 GETTABLEKS                       R41 R41 K18 ["useCallback"]
      430 NEWCLOSURE                       R42 P17
      431 CAPTURE                          VAL R9
      432 CAPTURE                          VAL R8
      433 CAPTURE                          UPVAL U17
      434 CAPTURE                          UPVAL U14
      435 CAPTURE                          UPVAL U16
      436 CAPTURE                          UPVAL U18
      437 NEWTABLE                         R43 0 2
      439 MOVE                             R44 R8
      440 GETTABLEKS                       R45 R9 K14 ["observeSelectedGraphInstance"]
      442 SETLIST                          R43 R44 2 [1]
      444 CALL                             R41 2 1
      445 GETUPVAL                         R42 32
      446 GETTABLEKS                       R42 R42 K24 ["useBoundAction"]
      448 LOADK                            R43 K25 ["NativeGraphContext_DuplicateSelectedNodes"]
      449 MOVE                             R44 R41
      450 CALL                             R42 2 0
      451 GETUPVAL                         R42 2
      452 GETTABLEKS                       R42 R42 K18 ["useCallback"]
      454 NEWCLOSURE                       R43 P18
      455 CAPTURE                          VAL R8
      456 NEWTABLE                         R44 0 1
      458 MOVE                             R45 R8
      459 SETLIST                          R44 R45 1 [1]
      461 CALL                             R42 2 1
      462 GETUPVAL                         R43 32
      463 GETTABLEKS                       R43 R43 K24 ["useBoundAction"]
      465 LOADK                            R44 K26 ["NativeGraphContext_ClearNodeSelection"]
      466 MOVE                             R45 R42
      467 CALL                             R43 2 0
      468 GETUPVAL                         R43 2
      469 GETTABLEKS                       R43 R43 K18 ["useCallback"]
      471 NEWCLOSURE                       R44 P19
      472 CAPTURE                          VAL R9
      473 CAPTURE                          VAL R8
      474 NEWTABLE                         R45 0 2
      476 MOVE                             R46 R8
      477 GETTABLEKS                       R47 R9 K14 ["observeSelectedGraphInstance"]
      479 SETLIST                          R45 R46 2 [1]
      481 CALL                             R43 2 1
      482 GETUPVAL                         R44 32
      483 GETTABLEKS                       R44 R44 K24 ["useBoundAction"]
      485 LOADK                            R45 K27 ["NativeGraphContext_SelectAllNodes"]
      486 MOVE                             R46 R43
      487 CALL                             R44 2 0
      488 GETUPVAL                         R44 2
      489 GETTABLEKS                       R44 R44 K18 ["useCallback"]
      491 NEWCLOSURE                       R45 P20
      492 CAPTURE                          VAL R8
      493 CAPTURE                          VAL R7
      494 NEWTABLE                         R46 0 2
      496 MOVE                             R47 R8
      497 MOVE                             R48 R7
      498 SETLIST                          R46 R47 2 [1]
      500 CALL                             R44 2 1
      501 GETUPVAL                         R45 32
      502 GETTABLEKS                       R45 R45 K24 ["useBoundAction"]
      504 LOADK                            R46 K28 ["NativeGraphContext_CopySelectedNodes"]
      505 MOVE                             R47 R44
      506 CALL                             R45 2 0
      507 GETUPVAL                         R45 2
      508 GETTABLEKS                       R45 R45 K18 ["useCallback"]
      510 NEWCLOSURE                       R46 P21
      511 CAPTURE                          VAL R8
      512 CAPTURE                          UPVAL U30
      513 CAPTURE                          VAL R7
      514 CAPTURE                          UPVAL U17
      515 CAPTURE                          UPVAL U16
      516 CAPTURE                          UPVAL U18
      517 NEWTABLE                         R47 0 2
      519 MOVE                             R48 R8
      520 MOVE                             R49 R7
      521 SETLIST                          R47 R48 2 [1]
      523 CALL                             R45 2 1
      524 GETUPVAL                         R46 32
      525 GETTABLEKS                       R46 R46 K24 ["useBoundAction"]
      527 LOADK                            R47 K29 ["NativeGraphContext_CutSelectedNodes"]
      528 MOVE                             R48 R45
      529 CALL                             R46 2 0
      530 GETUPVAL                         R46 2
      531 GETTABLEKS                       R46 R46 K18 ["useCallback"]
      533 NEWCLOSURE                       R47 P22
      534 CAPTURE                          VAL R9
      535 CAPTURE                          VAL R7
      536 CAPTURE                          UPVAL U17
      537 CAPTURE                          UPVAL U14
      538 CAPTURE                          UPVAL U16
      539 CAPTURE                          UPVAL U18
      540 CAPTURE                          VAL R8
      541 NEWTABLE                         R48 0 3
      543 MOVE                             R49 R8
      544 MOVE                             R50 R7
      545 GETTABLEKS                       R51 R9 K14 ["observeSelectedGraphInstance"]
      547 SETLIST                          R48 R49 3 [1]
      549 CALL                             R46 2 1
      550 GETUPVAL                         R47 32
      551 GETTABLEKS                       R47 R47 K24 ["useBoundAction"]
      553 LOADK                            R48 K30 ["NativeGraphContext_PasteNodes"]
      554 MOVE                             R49 R46
      555 CALL                             R47 2 0
      556 GETUPVAL                         R47 2
      557 GETTABLEKS                       R47 R47 K18 ["useCallback"]
      559 NEWCLOSURE                       R48 P23
      560 CAPTURE                          VAL R9
      561 CAPTURE                          UPVAL U14
      562 CAPTURE                          UPVAL U33
      563 CAPTURE                          VAL R8
      564 NEWTABLE                         R49 0 2
      566 GETTABLEKS                       R50 R9 K14 ["observeSelectedGraphInstance"]
      568 MOVE                             R51 R8
      569 SETLIST                          R49 R50 2 [1]
      571 CALL                             R47 2 1
      572 GETUPVAL                         R48 2
      573 GETTABLEKS                       R48 R48 K18 ["useCallback"]
      575 NEWCLOSURE                       R49 P24
      576 CAPTURE                          VAL R9
      577 CAPTURE                          VAL R19
      578 CAPTURE                          UPVAL U17
      579 CAPTURE                          UPVAL U34
      580 CAPTURE                          UPVAL U35
      581 CAPTURE                          UPVAL U14
      582 CAPTURE                          VAL R16
      583 CAPTURE                          UPVAL U22
      584 CAPTURE                          VAL R3
      585 CAPTURE                          UPVAL U33
      586 CAPTURE                          VAL R8
      587 CAPTURE                          UPVAL U16
      588 CAPTURE                          UPVAL U18
      589 NEWTABLE                         R50 0 5
      591 MOVE                             R51 R8
      592 GETTABLEKS                       R52 R9 K14 ["observeSelectedGraphInstance"]
      594 MOVE                             R53 R16
      595 MOVE                             R54 R3
      596 MOVE                             R55 R19
      597 SETLIST                          R50 R51 5 [1]
      599 CALL                             R48 2 1
      600 GETUPVAL                         R49 2
      601 GETTABLEKS                       R49 R49 K18 ["useCallback"]
      603 NEWCLOSURE                       R50 P25
      604 CAPTURE                          VAL R9
      605 CAPTURE                          VAL R19
      606 CAPTURE                          UPVAL U14
      607 CAPTURE                          UPVAL U33
      608 CAPTURE                          UPVAL U35
      609 CAPTURE                          UPVAL U17
      610 CAPTURE                          VAL R16
      611 CAPTURE                          VAL R48
      612 CAPTURE                          VAL R8
      613 CAPTURE                          UPVAL U16
      614 CAPTURE                          UPVAL U18
      615 NEWTABLE                         R51 0 5
      617 MOVE                             R52 R8
      618 GETTABLEKS                       R53 R9 K14 ["observeSelectedGraphInstance"]
      620 MOVE                             R54 R16
      621 MOVE                             R55 R19
      622 MOVE                             R56 R48
      623 SETLIST                          R51 R52 5 [1]
      625 CALL                             R49 2 1
      626 GETUPVAL                         R50 2
      627 GETTABLEKS                       R50 R50 K18 ["useCallback"]
      629 NEWCLOSURE                       R51 P26
      630 CAPTURE                          VAL R19
      631 CAPTURE                          UPVAL U17
      632 CAPTURE                          UPVAL U14
      633 CAPTURE                          VAL R16
      634 CAPTURE                          UPVAL U16
      635 CAPTURE                          UPVAL U18
      636 NEWTABLE                         R52 0 2
      638 MOVE                             R53 R16
      639 MOVE                             R54 R19
      640 SETLIST                          R52 R53 2 [1]
      642 CALL                             R50 2 1
      643 GETUPVAL                         R51 2
      644 GETTABLEKS                       R51 R51 K18 ["useCallback"]
      646 NEWCLOSURE                       R52 P27
      647 CAPTURE                          VAL R19
      648 CAPTURE                          UPVAL U17
      649 CAPTURE                          UPVAL U14
      650 CAPTURE                          VAL R16
      651 CAPTURE                          UPVAL U16
      652 CAPTURE                          UPVAL U18
      653 NEWTABLE                         R53 0 2
      655 MOVE                             R54 R16
      656 MOVE                             R55 R19
      657 SETLIST                          R53 R54 2 [1]
      659 CALL                             R51 2 1
      660 GETUPVAL                         R52 2
      661 GETTABLEKS                       R52 R52 K18 ["useCallback"]
      663 NEWCLOSURE                       R53 P28
      664 CAPTURE                          VAL R19
      665 CAPTURE                          UPVAL U17
      666 CAPTURE                          UPVAL U14
      667 CAPTURE                          VAL R16
      668 CAPTURE                          UPVAL U16
      669 CAPTURE                          UPVAL U18
      670 NEWTABLE                         R54 0 2
      672 MOVE                             R55 R16
      673 MOVE                             R56 R19
      674 SETLIST                          R54 R55 2 [1]
      676 CALL                             R52 2 1
      677 GETUPVAL                         R53 36
      678 MOVE                             R54 R16
      679 GETTABLEKS                       R55 R9 K14 ["observeSelectedGraphInstance"]
      681 CALL                             R53 2 1
      682 GETUPVAL                         R54 37
      683 MOVE                             R55 R16
      684 GETTABLEKS                       R56 R9 K14 ["observeSelectedGraphInstance"]
      686 CALL                             R54 2 1
      687 GETUPVAL                         R55 38
      688 MOVE                             R56 R16
      689 GETTABLEKS                       R57 R9 K14 ["observeSelectedGraphInstance"]
      691 CALL                             R55 2 1
      692 GETUPVAL                         R56 2
      693 GETTABLEKS                       R56 R56 K18 ["useCallback"]
      695 NEWCLOSURE                       R57 P29
      696 CAPTURE                          VAL R19
      697 CAPTURE                          UPVAL U17
      698 CAPTURE                          UPVAL U14
      699 CAPTURE                          VAL R16
      700 CAPTURE                          UPVAL U16
      701 CAPTURE                          UPVAL U18
      702 NEWTABLE                         R58 0 2
      704 MOVE                             R59 R16
      705 MOVE                             R60 R19
      706 SETLIST                          R58 R59 2 [1]
      708 CALL                             R56 2 1
      709 GETUPVAL                         R57 2
      710 GETTABLEKS                       R57 R57 K18 ["useCallback"]
      712 NEWCLOSURE                       R58 P30
      713 CAPTURE                          VAL R19
      714 CAPTURE                          UPVAL U17
      715 CAPTURE                          UPVAL U14
      716 CAPTURE                          VAL R16
      717 NEWTABLE                         R59 0 2
      719 MOVE                             R60 R16
      720 MOVE                             R61 R19
      721 SETLIST                          R59 R60 2 [1]
      723 CALL                             R57 2 1
      724 GETUPVAL                         R58 39
      725 GETTABLEKS                       R58 R58 K23 ["useProducer"]
      727 MOVE                             R59 R57
      728 CALL                             R58 1 0
      729 GETUPVAL                         R58 2
      730 GETTABLEKS                       R58 R58 K18 ["useCallback"]
      732 NEWCLOSURE                       R59 P31
      733 CAPTURE                          VAL R19
      734 CAPTURE                          UPVAL U17
      735 CAPTURE                          UPVAL U14
      736 CAPTURE                          VAL R16
      737 CAPTURE                          UPVAL U40
      738 CAPTURE                          VAL R53
      739 CAPTURE                          UPVAL U16
      740 CAPTURE                          UPVAL U18
      741 NEWTABLE                         R60 0 3
      743 MOVE                             R61 R16
      744 MOVE                             R62 R19
      745 GETTABLEKS                       R63 R53 K31 ["setNodeOutputInfoInDestroyMapRef"]
      747 SETLIST                          R60 R61 3 [1]
      749 CALL                             R58 2 1
      750 GETUPVAL                         R59 2
      751 GETTABLEKS                       R59 R59 K18 ["useCallback"]
      753 NEWCLOSURE                       R60 P32
      754 CAPTURE                          UPVAL U22
      755 CAPTURE                          UPVAL U35
      756 CAPTURE                          VAL R9
      757 CAPTURE                          UPVAL U17
      758 CAPTURE                          VAL R16
      759 CAPTURE                          UPVAL U14
      760 CAPTURE                          UPVAL U34
      761 CAPTURE                          VAL R48
      762 CAPTURE                          VAL R49
      763 CAPTURE                          VAL R58
      764 CAPTURE                          UPVAL U16
      765 CAPTURE                          UPVAL U18
      766 NEWTABLE                         R61 0 6
      768 GETTABLEKS                       R62 R9 K14 ["observeSelectedGraphInstance"]
      770 MOVE                             R63 R19
      771 MOVE                             R64 R16
      772 MOVE                             R65 R48
      773 MOVE                             R66 R49
      774 MOVE                             R67 R58
      775 SETLIST                          R61 R62 6 [1]
      777 CALL                             R59 2 1
      778 GETUPVAL                         R60 2
      779 GETTABLEKS                       R60 R60 K18 ["useCallback"]
      781 NEWCLOSURE                       R61 P33
      782 CAPTURE                          VAL R13
      783 CAPTURE                          UPVAL U17
      784 NEWTABLE                         R62 0 0
      786 CALL                             R60 2 1
      787 GETUPVAL                         R61 2
      788 GETTABLEKS                       R61 R61 K18 ["useCallback"]
      790 NEWCLOSURE                       R62 P34
      791 CAPTURE                          VAL R13
      792 CAPTURE                          UPVAL U17
      793 NEWTABLE                         R63 0 0
      795 CALL                             R61 2 1
      796 GETUPVAL                         R62 2
      797 GETTABLEKS                       R62 R62 K12 ["useEffect"]
      799 NEWCLOSURE                       R63 P35
      800 CAPTURE                          VAL R13
      801 CAPTURE                          UPVAL U17
      802 NEWTABLE                         R64 0 0
      804 CALL                             R62 2 0
      805 GETUPVAL                         R62 2
      806 GETTABLEKS                       R62 R62 K18 ["useCallback"]
      808 NEWCLOSURE                       R63 P36
      809 CAPTURE                          UPVAL U17
      810 CAPTURE                          VAL R16
      811 CAPTURE                          UPVAL U28
      812 CAPTURE                          UPVAL U16
      813 CAPTURE                          UPVAL U18
      814 NEWTABLE                         R64 0 1
      816 MOVE                             R65 R16
      817 SETLIST                          R64 R65 1 [1]
      819 CALL                             R62 2 1
      820 GETUPVAL                         R63 2
      821 GETTABLEKS                       R63 R63 K18 ["useCallback"]
      823 NEWCLOSURE                       R64 P37
      824 CAPTURE                          UPVAL U17
      825 CAPTURE                          VAL R16
      826 CAPTURE                          UPVAL U16
      827 CAPTURE                          UPVAL U18
      828 NEWTABLE                         R65 0 1
      830 MOVE                             R66 R16
      831 SETLIST                          R65 R66 1 [1]
      833 CALL                             R63 2 1
      834 GETUPVAL                         R64 2
      835 GETTABLEKS                       R64 R64 K18 ["useCallback"]
      837 NEWCLOSURE                       R65 P38
      838 CAPTURE                          UPVAL U17
      839 CAPTURE                          VAL R16
      840 CAPTURE                          UPVAL U40
      841 CAPTURE                          UPVAL U14
      842 CAPTURE                          UPVAL U41
      843 CAPTURE                          VAL R1
      844 CAPTURE                          UPVAL U27
      845 CAPTURE                          VAL R2
      846 CAPTURE                          VAL R19
      847 CAPTURE                          UPVAL U16
      848 CAPTURE                          UPVAL U18
      849 NEWTABLE                         R66 0 4
      851 MOVE                             R67 R16
      852 MOVE                             R68 R19
      853 GETTABLEKS                       R69 R2 K32 ["observe"]
      855 MOVE                             R70 R1
      856 SETLIST                          R66 R67 4 [1]
      858 CALL                             R64 2 1
      859 GETUPVAL                         R65 2
      860 GETTABLEKS                       R65 R65 K18 ["useCallback"]
      862 NEWCLOSURE                       R66 P39
      863 CAPTURE                          UPVAL U17
      864 CAPTURE                          UPVAL U14
      865 CAPTURE                          VAL R16
      866 CAPTURE                          UPVAL U16
      867 CAPTURE                          UPVAL U18
      868 NEWTABLE                         R67 0 1
      870 MOVE                             R68 R16
      871 SETLIST                          R67 R68 1 [1]
      873 CALL                             R65 2 1
      874 GETUPVAL                         R66 2
      875 GETTABLEKS                       R66 R66 K18 ["useCallback"]
      877 NEWCLOSURE                       R67 P40
      878 CAPTURE                          VAL R9
      879 CAPTURE                          VAL R19
      880 CAPTURE                          VAL R16
      881 CAPTURE                          UPVAL U33
      882 CAPTURE                          UPVAL U14
      883 CAPTURE                          UPVAL U17
      884 CAPTURE                          UPVAL U16
      885 CAPTURE                          UPVAL U18
      886 NEWTABLE                         R68 0 3
      888 GETTABLEKS                       R69 R9 K14 ["observeSelectedGraphInstance"]
      890 MOVE                             R70 R16
      891 MOVE                             R71 R19
      892 SETLIST                          R68 R69 3 [1]
      894 CALL                             R66 2 1
      895 GETUPVAL                         R67 2
      896 GETTABLEKS                       R67 R67 K18 ["useCallback"]
      898 NEWCLOSURE                       R68 P41
      899 CAPTURE                          UPVAL U42
      900 CAPTURE                          UPVAL U33
      901 CAPTURE                          VAL R9
      902 CAPTURE                          VAL R16
      903 CAPTURE                          UPVAL U14
      904 CAPTURE                          UPVAL U17
      905 CAPTURE                          UPVAL U35
      906 CAPTURE                          VAL R54
      907 CAPTURE                          UPVAL U16
      908 CAPTURE                          UPVAL U18
      909 NEWTABLE                         R69 0 5
      911 MOVE                             R70 R16
      912 GETTABLEKS                       R71 R9 K14 ["observeSelectedGraphInstance"]
      914 MOVE                             R72 R19
      915 GETTABLEKS                       R73 R54 K33 ["parameterDestroyConnectionMapRef"]
      917 GETTABLEKS                       R74 R54 K34 ["setParameterDestroyConnectionMap"]
      919 SETLIST                          R69 R70 5 [1]
      921 CALL                             R67 2 1
      922 GETUPVAL                         R68 2
      923 GETTABLEKS                       R68 R68 K18 ["useCallback"]
      925 NEWCLOSURE                       R69 P42
      926 CAPTURE                          VAL R9
      927 CAPTURE                          UPVAL U14
      928 CAPTURE                          UPVAL U17
      929 CAPTURE                          UPVAL U33
      930 CAPTURE                          UPVAL U35
      931 CAPTURE                          UPVAL U16
      932 CAPTURE                          UPVAL U18
      933 NEWTABLE                         R70 0 1
      935 GETTABLEKS                       R71 R9 K14 ["observeSelectedGraphInstance"]
      937 SETLIST                          R70 R71 1 [1]
      939 CALL                             R68 2 1
      940 GETUPVAL                         R69 2
      941 GETTABLEKS                       R69 R69 K18 ["useCallback"]
      943 NEWCLOSURE                       R70 P43
      944 CAPTURE                          VAL R16
      945 CAPTURE                          UPVAL U17
      946 CAPTURE                          UPVAL U16
      947 CAPTURE                          UPVAL U18
      948 NEWTABLE                         R71 0 1
      950 MOVE                             R72 R16
      951 SETLIST                          R71 R72 1 [1]
      953 CALL                             R69 2 1
      954 GETUPVAL                         R70 2
      955 GETTABLEKS                       R70 R70 K18 ["useCallback"]
      957 NEWCLOSURE                       R71 P44
      958 CAPTURE                          VAL R16
      959 CAPTURE                          VAL R6
      960 NEWTABLE                         R72 0 2
      962 MOVE                             R73 R16
      963 GETTABLEKS                       R74 R6 K35 ["selectionService"]
      965 SETLIST                          R72 R73 2 [1]
      967 CALL                             R70 2 1
      968 GETUPVAL                         R71 2
      969 GETTABLEKS                       R71 R71 K18 ["useCallback"]
      971 NEWCLOSURE                       R72 P45
      972 CAPTURE                          UPVAL U34
      973 CAPTURE                          VAL R9
      974 CAPTURE                          VAL R16
      975 CAPTURE                          UPVAL U14
      976 CAPTURE                          UPVAL U35
      977 CAPTURE                          UPVAL U17
      978 CAPTURE                          UPVAL U16
      979 CAPTURE                          UPVAL U18
      980 NEWTABLE                         R73 0 2
      982 GETTABLEKS                       R74 R9 K14 ["observeSelectedGraphInstance"]
      984 MOVE                             R75 R16
      985 SETLIST                          R73 R74 2 [1]
      987 CALL                             R71 2 1
      988 GETUPVAL                         R72 2
      989 GETTABLEKS                       R72 R72 K12 ["useEffect"]
      991 NEWCLOSURE                       R73 P46
      992 CAPTURE                          UPVAL U40
      993 CAPTURE                          UPVAL U13
      994 CAPTURE                          VAL R53
      995 CAPTURE                          VAL R16
      996 CAPTURE                          VAL R27
      997 CAPTURE                          UPVAL U43
      998 CAPTURE                          UPVAL U14
      999 NEWTABLE                         R74 0 2
     1001 MOVE                             R75 R16
     1002 GETTABLEKS                       R76 R53 K36 ["nodeDestroyConnectionMapRef"]
     1004 SETLIST                          R74 R75 2 [1]
     1006 CALL                             R72 2 0
     1007 GETUPVAL                         R72 2
     1008 GETTABLEKS                       R72 R72 K12 ["useEffect"]
     1010 NEWCLOSURE                       R73 P47
     1011 CAPTURE                          UPVAL U13
     1012 CAPTURE                          VAL R54
     1013 CAPTURE                          VAL R16
     1014 CAPTURE                          UPVAL U40
     1015 CAPTURE                          UPVAL U14
     1016 CAPTURE                          UPVAL U33
     1017 CAPTURE                          UPVAL U35
     1018 CAPTURE                          VAL R66
     1019 NEWTABLE                         R74 0 3
     1021 MOVE                             R75 R16
     1022 GETTABLEKS                       R76 R54 K33 ["parameterDestroyConnectionMapRef"]
     1024 MOVE                             R77 R66
     1025 SETLIST                          R74 R75 3 [1]
     1027 CALL                             R72 2 0
     1028 NEWCLOSURE                       R72 P48
     1029 CAPTURE                          VAL R16
     1030 CAPTURE                          VAL R27
     1031 CAPTURE                          UPVAL U14
     1032 GETUPVAL                         R73 2
     1033 GETTABLEKS                       R73 R73 K12 ["useEffect"]
     1035 NEWCLOSURE                       R74 P49
     1036 CAPTURE                          UPVAL U40
     1037 CAPTURE                          UPVAL U13
     1038 CAPTURE                          VAL R53
     1039 CAPTURE                          VAL R16
     1040 CAPTURE                          VAL R27
     1041 CAPTURE                          UPVAL U14
     1042 NEWTABLE                         R75 0 3
     1044 MOVE                             R76 R16
     1045 GETTABLEKS                       R77 R53 K36 ["nodeDestroyConnectionMapRef"]
     1047 GETTABLEKS                       R78 R53 K37 ["observeNodeInfoLookupListRef"]
     1049 SETLIST                          R75 R76 3 [1]
     1051 CALL                             R73 2 0
     1052 GETUPVAL                         R73 2
     1053 GETTABLEKS                       R73 R73 K12 ["useEffect"]
     1055 NEWCLOSURE                       R74 P50
     1056 CAPTURE                          UPVAL U40
     1057 CAPTURE                          UPVAL U13
     1058 CAPTURE                          VAL R55
     1059 CAPTURE                          VAL R16
     1060 CAPTURE                          VAL R27
     1061 CAPTURE                          UPVAL U14
     1062 NEWTABLE                         R75 0 3
     1064 MOVE                             R76 R16
     1065 GETTABLEKS                       R77 R55 K38 ["destroyConnectionMapRef"]
     1067 GETTABLEKS                       R78 R55 K39 ["observeValueNodeInfoLookupListRef"]
     1069 SETLIST                          R75 R76 3 [1]
     1071 CALL                             R73 2 0
     1072 GETUPVAL                         R73 44
     1073 MOVE                             R74 R3
     1074 MOVE                             R75 R2
     1075 CALL                             R73 2 1
     1076 GETUPVAL                         R74 19
     1077 GETTABLEKS                       R74 R74 K20 ["useSignalState"]
     1079 GETTABLEKS                       R75 R9 K40 ["observeSelectedGraphIsEphemeral"]
     1081 CALL                             R74 1 1
     1082 NEWTABLE                         R75 64 0
     1084 SETTABLEKS                       R74 R75 K41 ["isReadonly"]
     1086 SETTABLEKS                       R65 R75 K42 ["reorderPinsAsync"]
     1088 SETTABLEKS                       R39 R75 K43 ["createNodeAsync"]
     1090 SETTABLEKS                       R48 R75 K44 ["createParameterAsync"]
     1092 SETTABLEKS                       R49 R75 K45 ["createExistingParameterAsync"]
     1094 SETTABLEKS                       R59 R75 K46 ["createConnectedParameterAsync"]
     1096 SETTABLEKS                       R11 R75 K47 ["graphRect"]
     1098 SETTABLEKS                       R47 R75 K48 ["selectAllParameterNodesWithNameAsync"]
     1100 SETTABLEKS                       R32 R75 K49 ["selectNodesAsync"]
     1102 SETTABLEKS                       R33 R75 K50 ["selectNodesFromRectAsync"]
     1104 SETTABLEKS                       R40 R75 K51 ["removeSelectedNodesAsync"]
     1106 SETTABLEKS                       R41 R75 K52 ["duplicateSelectedNodesAsync"]
     1108 SETTABLEKS                       R43 R75 K53 ["selectAllNodesAsync"]
     1110 SETTABLEKS                       R42 R75 K54 ["clearNodeSelectionAsync"]
     1112 SETTABLEKS                       R44 R75 K55 ["copySelectedNodesAsync"]
     1114 SETTABLEKS                       R45 R75 K56 ["cutSelectedNodesAsync"]
     1116 SETTABLEKS                       R46 R75 K57 ["pasteNodesAsync"]
     1118 SETTABLEKS                       R30 R75 K58 ["setNodePositionsAsync"]
     1120 SETTABLEKS                       R31 R75 K59 ["setNodeSizeAsync"]
     1122 SETTABLEKS                       R58 R75 K60 ["setNodeConnectionAsync"]
     1124 SETTABLEKS                       R50 R75 K61 ["deleteNodeInput"]
     1126 SETTABLEKS                       R51 R75 K62 ["renameNodeInputAsync"]
     1128 SETTABLEKS                       R56 R75 K63 ["removeNodeOutputConnectionAsync"]
     1130 SETTABLEKS                       R52 R75 K64 ["removeNodeInputConnectionAsync"]
     1132 SETTABLEKS                       R57 R75 K65 ["breakNodeConnectionsAsync"]
     1134 SETTABLEKS                       R66 R75 K66 ["removeParameterAsync"]
     1136 SETTABLEKS                       R64 R75 K67 ["renameNodeAsync"]
     1138 SETTABLEKS                       R67 R75 K68 ["renameParameterAsync"]
     1140 SETTABLEKS                       R69 R75 K69 ["deleteNodeInstanceAsync"]
     1142 SETTABLEKS                       R70 R75 K70 ["showNodeInExplorerAsync"]
     1144 SETTABLEKS                       R28 R75 K71 ["setCollapsedAsync"]
     1146 SETTABLEKS                       R62 R75 K72 ["setNodePropertyAsync"]
     1148 SETTABLEKS                       R63 R75 K73 ["setInputPinNodePropertyAsync"]
     1150 SETTABLEKS                       R68 R75 K74 ["setParameterNodeTypeAsync"]
     1152 SETTABLEKS                       R34 R75 K75 ["sourceAssetId"]
     1154 SETTABLEKS                       R37 R75 K76 ["selectedGraphKey"]
     1156 GETTABLEKS                       R76 R2 K32 ["observe"]
     1158 SETTABLEKS                       R76 R75 K77 ["observeGraphNodeById"]
     1160 GETTABLEKS                       R76 R3 K32 ["observe"]
     1162 SETTABLEKS                       R76 R75 K78 ["observeNodeRenderInfoById"]
     1164 SETTABLEKS                       R60 R75 K79 ["beginUndoTransaction"]
     1166 SETTABLEKS                       R61 R75 K80 ["finishUndoTransaction"]
     1168 GETTABLEKS                       R76 R2 K81 ["observeMap"]
     1170 SETTABLEKS                       R76 R75 K82 ["observeGraphNodeMap"]
     1172 GETTABLEKS                       R76 R3 K81 ["observeMap"]
     1174 SETTABLEKS                       R76 R75 K83 ["observeRenderInfoMap"]
     1176 GETTABLEKS                       R76 R73 K84 ["hasGraphOutput"]
     1178 SETTABLEKS                       R76 R75 K84 ["hasGraphOutput"]
     1180 GETTABLEKS                       R76 R4 K32 ["observe"]
     1182 SETTABLEKS                       R76 R75 K85 ["observeNodePropsById"]
     1184 SETTABLEKS                       R71 R75 K86 ["setExpressionNodeValueAsync"]
     1186 SETTABLEKS                       R18 R75 K87 ["observeExpressionNodes"]
     1188 GETUPVAL                         R76 2
     1189 GETTABLEKS                       R76 R76 K11 ["useMemo"]
     1191 DUPCLOSURE                       R77 K88 [PROTO_74]
     1192 NEWTABLE                         R78 0 0
     1194 CALL                             R76 2 1
     1195 GETUPVAL                         R77 2
     1196 GETTABLEKS                       R77 R77 K11 ["useMemo"]
     1198 NEWCLOSURE                       R78 P52
     1199 CAPTURE                          UPVAL U45
     1200 CAPTURE                          VAL R9
     1201 NEWTABLE                         R79 0 2
     1203 GETTABLEKS                       R80 R9 K14 ["observeSelectedGraphInstance"]
     1205 MOVE                             R81 R19
     1206 SETLIST                          R79 R80 2 [1]
     1208 CALL                             R77 2 1
     1209 GETUPVAL                         R78 5
     1210 GETTABLEKS                       R78 R78 K89 ["usePasteHooks"]
     1212 GETTABLEKS                       R79 R9 K14 ["observeSelectedGraphInstance"]
     1214 CALL                             R78 1 0
     1215 GETUPVAL                         R78 19
     1216 GETTABLEKS                       R78 R78 K20 ["useSignalState"]
     1218 MOVE                             R79 R77
     1219 CALL                             R78 1 1
     1220 GETUPVAL                         R79 32
     1221 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1223 LOADK                            R80 K91 ["NativeGraphContext_GraphPayloadMap"]
     1224 MOVE                             R81 R19
     1225 CALL                             R79 2 0
     1226 GETUPVAL                         R79 32
     1227 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1229 LOADK                            R80 K92 ["NativeGraphContext_GraphRenderInfo"]
     1230 MOVE                             R81 R21
     1231 CALL                             R79 2 0
     1232 GETUPVAL                         R79 32
     1233 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1235 LOADK                            R80 K93 ["NativeGraphContext_GraphNodeProps"]
     1236 MOVE                             R81 R23
     1237 CALL                             R79 2 0
     1238 GETUPVAL                         R79 32
     1239 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1241 LOADK                            R80 K94 ["NativeGraphContext_ExpressionNodes"]
     1242 MOVE                             R81 R25
     1243 CALL                             R79 2 0
     1244 GETUPVAL                         R79 32
     1245 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1247 LOADK                            R80 K95 ["NativeGraphContext_TimeRange"]
     1248 MOVE                             R81 R76
     1249 CALL                             R79 2 0
     1250 GETUPVAL                         R79 32
     1251 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1253 LOADK                            R80 K96 ["NativeGraphContext_GraphPayloadGraphRect"]
     1254 MOVE                             R81 R11
     1255 CALL                             R79 2 0
     1256 GETUPVAL                         R79 32
     1257 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1259 LOADK                            R80 K97 ["NativeGraphContext_SourceAssetId"]
     1260 MOVE                             R81 R34
     1261 CALL                             R79 2 0
     1262 GETUPVAL                         R79 32
     1263 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1265 LOADK                            R80 K98 ["NativeGraphContext_SelectedGraphKey"]
     1266 MOVE                             R81 R37
     1267 CALL                             R79 2 0
     1268 GETUPVAL                         R79 32
     1269 GETTABLEKS                       R79 R79 K90 ["useReplicatedState"]
     1271 LOADK                            R80 K99 ["NativeGraphContext_UndoTransaction"]
     1272 MOVE                             R81 R13
     1273 CALL                             R79 2 0
     1274 GETUPVAL                         R79 32
     1275 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1277 LOADK                            R80 K100 ["NativeGraphContext_CreateNode"]
     1278 MOVE                             R81 R39
     1279 CALL                             R79 2 0
     1280 GETUPVAL                         R79 32
     1281 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1283 LOADK                            R80 K101 ["NativeGraphContext_CreateParameterAsync"]
     1284 MOVE                             R81 R48
     1285 CALL                             R79 2 0
     1286 GETUPVAL                         R79 32
     1287 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1289 LOADK                            R80 K102 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1290 MOVE                             R81 R59
     1291 CALL                             R79 2 0
     1292 GETUPVAL                         R79 32
     1293 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1295 LOADK                            R80 K103 ["NativeGraphContext_CreateExistingParameterAsync"]
     1296 MOVE                             R81 R49
     1297 CALL                             R79 2 0
     1298 GETUPVAL                         R79 32
     1299 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1301 LOADK                            R80 K104 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1302 MOVE                             R81 R47
     1303 CALL                             R79 2 0
     1304 GETUPVAL                         R79 32
     1305 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1307 LOADK                            R80 K105 ["NativeGraphContext_SelectNodes"]
     1308 MOVE                             R81 R32
     1309 CALL                             R79 2 0
     1310 GETUPVAL                         R79 32
     1311 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1313 LOADK                            R80 K106 ["NativeGraphContext_SelectNodesFromRect"]
     1314 MOVE                             R81 R33
     1315 CALL                             R79 2 0
     1316 GETUPVAL                         R79 32
     1317 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1319 LOADK                            R80 K107 ["NativeGraphContext_SetNodePositionsAsync"]
     1320 MOVE                             R81 R30
     1321 CALL                             R79 2 0
     1322 GETUPVAL                         R79 32
     1323 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1325 LOADK                            R80 K108 ["NativeGraphContext_SetNodeSizeAsync"]
     1326 MOVE                             R81 R31
     1327 CALL                             R79 2 0
     1328 GETUPVAL                         R79 32
     1329 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1331 LOADK                            R80 K109 ["NativeGraphContext_SetNodeConnectionAsync"]
     1332 MOVE                             R81 R58
     1333 CALL                             R79 2 0
     1334 GETUPVAL                         R79 32
     1335 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1337 LOADK                            R80 K110 ["NativeGraphContext_DeleteNodeInput"]
     1338 MOVE                             R81 R50
     1339 CALL                             R79 2 0
     1340 GETUPVAL                         R79 32
     1341 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1343 LOADK                            R80 K111 ["NativeGraphContext_RenameNodeInput"]
     1344 MOVE                             R81 R51
     1345 CALL                             R79 2 0
     1346 GETUPVAL                         R79 32
     1347 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1349 LOADK                            R80 K112 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1350 MOVE                             R81 R56
     1351 CALL                             R79 2 0
     1352 GETUPVAL                         R79 32
     1353 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1355 LOADK                            R80 K113 ["NativeGraphContext_RemoveNodeInputConnection"]
     1356 MOVE                             R81 R52
     1357 CALL                             R79 2 0
     1358 GETUPVAL                         R79 32
     1359 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1361 LOADK                            R80 K114 ["NativeGraphContext_RemoveParameterAsync"]
     1362 MOVE                             R81 R66
     1363 CALL                             R79 2 0
     1364 GETUPVAL                         R79 32
     1365 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1367 LOADK                            R80 K115 ["NativeGraphContext_RenameNodeAsync"]
     1368 MOVE                             R81 R64
     1369 CALL                             R79 2 0
     1370 GETUPVAL                         R79 32
     1371 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1373 LOADK                            R80 K116 ["NativeGraphContext_RenameParameterAsync"]
     1374 MOVE                             R81 R67
     1375 CALL                             R79 2 0
     1376 GETUPVAL                         R79 32
     1377 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1379 LOADK                            R80 K117 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1380 MOVE                             R81 R69
     1381 CALL                             R79 2 0
     1382 GETUPVAL                         R79 32
     1383 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1385 LOADK                            R80 K118 ["NativeGraphContext_ShowNodeInExplorer"]
     1386 MOVE                             R81 R70
     1387 CALL                             R79 2 0
     1388 GETUPVAL                         R79 32
     1389 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1391 LOADK                            R80 K119 ["NativeGraphContext_SetCollapsedAsync"]
     1392 MOVE                             R81 R28
     1393 CALL                             R79 2 0
     1394 GETUPVAL                         R79 32
     1395 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1397 LOADK                            R80 K120 ["NativeGraphContext_setNodePropertyAsync"]
     1398 MOVE                             R81 R62
     1399 CALL                             R79 2 0
     1400 GETUPVAL                         R79 32
     1401 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1403 LOADK                            R80 K121 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1404 MOVE                             R81 R63
     1405 CALL                             R79 2 0
     1406 GETUPVAL                         R79 32
     1407 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1409 LOADK                            R80 K122 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1410 MOVE                             R81 R68
     1411 CALL                             R79 2 0
     1412 GETUPVAL                         R79 32
     1413 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1415 LOADK                            R80 K123 ["NativeGraphContext_ReorderPinsAsync"]
     1416 MOVE                             R81 R65
     1417 CALL                             R79 2 0
     1418 GETUPVAL                         R79 32
     1419 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1421 LOADK                            R80 K124 ["NativeGraphContext_beginUndoTransaction"]
     1422 MOVE                             R81 R60
     1423 CALL                             R79 2 0
     1424 GETUPVAL                         R79 32
     1425 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1427 LOADK                            R80 K125 ["NativeGraphContext_finishUndoTransaction"]
     1428 MOVE                             R81 R61
     1429 CALL                             R79 2 0
     1430 GETUPVAL                         R79 32
     1431 GETTABLEKS                       R79 R79 K24 ["useBoundAction"]
     1433 LOADK                            R80 K126 ["NativeGraphContext_SetExpressionNodeValueAsync"]
     1434 MOVE                             R81 R71
     1435 CALL                             R79 2 0
     1436 GETUPVAL                         R79 46
     1437 GETTABLEKS                       R79 R79 K23 ["useProducer"]
     1439 MOVE                             R80 R29
     1440 CALL                             R79 1 0
     1441 GETUPVAL                         R79 2
     1442 GETTABLEKS                       R79 R79 K127 ["createElement"]
     1444 GETUPVAL                         R80 47
     1445 GETTABLEKS                       R80 R80 K128 ["Provider"]
     1447 DUPTABLE                         R81 K130 [{"value"}]
     1448 SETTABLEKS                       R75 R81 K129 ["value"]
     1450 DUPTABLE                         R82 K132 [{"ContextStack"}]
     1451 GETUPVAL                         R83 2
     1452 GETTABLEKS                       R83 R83 K127 ["createElement"]
     1454 GETUPVAL                         R84 15
     1455 GETTABLEKS                       R84 R84 K131 ["ContextStack"]
     1457 DUPTABLE                         R85 K134 [{"providers"}]
     1458 NEWTABLE                         R86 0 2
     1460 GETUPVAL                         R87 2
     1461 GETTABLEKS                       R87 R87 K127 ["createElement"]
     1463 GETUPVAL                         R88 48
     1464 GETTABLEKS                       R88 R88 K128 ["Provider"]
     1466 DUPTABLE                         R89 K136 [{"timeRange"}]
     1467 SETTABLEKS                       R76 R89 K135 ["timeRange"]
     1469 CALL                             R87 2 1
     1470 GETUPVAL                         R88 2
     1471 GETTABLEKS                       R88 R88 K127 ["createElement"]
     1473 GETUPVAL                         R89 49
     1474 GETTABLEKS                       R89 R89 K128 ["Provider"]
     1476 DUPTABLE                         R90 K138 [{"animationClipsList"}]
     1477 SETTABLEKS                       R78 R90 K137 ["animationClipsList"]
     1479 CALL                             R88 2 -1
     1480 SETLIST                          R86 R87 -1 [1]
     1482 SETTABLEKS                       R86 R85 K133 ["providers"]
     1484 GETTABLEKS                       R86 R0 K139 ["children"]
     1486 CALL                             R83 3 1
     1487 SETTABLEKS                       R83 R82 K131 ["ContextStack"]
     1489 CALL                             R79 3 -1
     1490 RETURN                           R79 -1

PROTO_78:
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

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_81:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_82:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_83:
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

PROTO_84:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_85:
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

PROTO_86:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_95:
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
       93 GETUPVAL                         R10 3
       94 GETTABLEKS                       R10 R10 K12 ["useReplicatedStateListener"]
       96 LOADK                            R11 K21 ["NativeGraphContext_SelectedGraphKey"]
       97 LOADNIL                          R12
       98 CALL                             R10 2 1
       99 GETUPVAL                         R11 4
      100 MOVE                             R12 R2
      101 MOVE                             R13 R1
      102 CALL                             R11 2 1
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K22 ["useBoundAction"]
      106 LOADK                            R13 K23 ["NativeGraphContext_ReorderPinsAsync"]
      107 CALL                             R12 1 1
      108 GETUPVAL                         R13 3
      109 GETTABLEKS                       R13 R13 K22 ["useBoundAction"]
      111 LOADK                            R14 K24 ["NativeGraphContext_CreateNode"]
      112 CALL                             R13 1 1
      113 GETUPVAL                         R14 3
      114 GETTABLEKS                       R14 R14 K22 ["useBoundAction"]
      116 LOADK                            R15 K25 ["NativeGraphContext_CreateParameterAsync"]
      117 CALL                             R14 1 1
      118 GETUPVAL                         R15 3
      119 GETTABLEKS                       R15 R15 K22 ["useBoundAction"]
      121 LOADK                            R16 K26 ["NativeGraphContext_CreateConnectedParameterAsync"]
      122 CALL                             R15 1 1
      123 GETUPVAL                         R16 3
      124 GETTABLEKS                       R16 R16 K22 ["useBoundAction"]
      126 LOADK                            R17 K27 ["NativeGraphContext_CreateExistingParameterAsync"]
      127 CALL                             R16 1 1
      128 GETUPVAL                         R17 3
      129 GETTABLEKS                       R17 R17 K22 ["useBoundAction"]
      131 LOADK                            R18 K28 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      132 CALL                             R17 1 1
      133 GETUPVAL                         R18 3
      134 GETTABLEKS                       R18 R18 K22 ["useBoundAction"]
      136 LOADK                            R19 K29 ["NativeGraphContext_SelectNodes"]
      137 CALL                             R18 1 1
      138 GETUPVAL                         R19 3
      139 GETTABLEKS                       R19 R19 K22 ["useBoundAction"]
      141 LOADK                            R20 K30 ["NativeGraphContext_SetNodePositionsAsync"]
      142 CALL                             R19 1 1
      143 GETUPVAL                         R20 3
      144 GETTABLEKS                       R20 R20 K22 ["useBoundAction"]
      146 LOADK                            R21 K31 ["NativeGraphContext_SetNodeSizeAsync"]
      147 CALL                             R20 1 1
      148 GETUPVAL                         R21 3
      149 GETTABLEKS                       R21 R21 K22 ["useBoundAction"]
      151 LOADK                            R22 K32 ["NativeGraphContext_SetNodeConnectionAsync"]
      152 CALL                             R21 1 1
      153 GETUPVAL                         R22 3
      154 GETTABLEKS                       R22 R22 K22 ["useBoundAction"]
      156 LOADK                            R23 K33 ["NativeGraphContext_DeleteNodeInput"]
      157 CALL                             R22 1 1
      158 GETUPVAL                         R23 3
      159 GETTABLEKS                       R23 R23 K22 ["useBoundAction"]
      161 LOADK                            R24 K34 ["NativeGraphContext_RenameNodeInput"]
      162 CALL                             R23 1 1
      163 GETUPVAL                         R24 3
      164 GETTABLEKS                       R24 R24 K22 ["useBoundAction"]
      166 LOADK                            R25 K35 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      167 CALL                             R24 1 1
      168 GETUPVAL                         R25 3
      169 GETTABLEKS                       R25 R25 K22 ["useBoundAction"]
      171 LOADK                            R26 K36 ["NativeGraphContext_RemoveNodeInputConnection"]
      172 CALL                             R25 1 1
      173 GETUPVAL                         R26 5
      174 GETTABLEKS                       R26 R26 K37 ["useConsumer"]
      176 CALL                             R26 0 1
      177 GETUPVAL                         R27 3
      178 GETTABLEKS                       R27 R27 K22 ["useBoundAction"]
      180 LOADK                            R28 K38 ["NativeGraphContext_RemoveParameterAsync"]
      181 CALL                             R27 1 1
      182 GETUPVAL                         R28 3
      183 GETTABLEKS                       R28 R28 K22 ["useBoundAction"]
      185 LOADK                            R29 K39 ["NativeGraphContext_RenameNodeAsync"]
      186 CALL                             R28 1 1
      187 GETUPVAL                         R29 3
      188 GETTABLEKS                       R29 R29 K22 ["useBoundAction"]
      190 LOADK                            R30 K40 ["NativeGraphContext_RenameParameterAsync"]
      191 CALL                             R29 1 1
      192 GETUPVAL                         R30 3
      193 GETTABLEKS                       R30 R30 K22 ["useBoundAction"]
      195 LOADK                            R31 K41 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      196 CALL                             R30 1 1
      197 GETUPVAL                         R31 3
      198 GETTABLEKS                       R31 R31 K22 ["useBoundAction"]
      200 LOADK                            R32 K42 ["NativeGraphContext_ShowNodeInExplorer"]
      201 CALL                             R31 1 1
      202 GETUPVAL                         R32 3
      203 GETTABLEKS                       R32 R32 K22 ["useBoundAction"]
      205 LOADK                            R33 K43 ["NativeGraphContext_SetCollapsedAsync"]
      206 CALL                             R32 1 1
      207 GETUPVAL                         R33 6
      208 GETTABLEKS                       R33 R33 K37 ["useConsumer"]
      210 CALL                             R33 0 1
      211 GETUPVAL                         R34 3
      212 GETTABLEKS                       R34 R34 K22 ["useBoundAction"]
      214 LOADK                            R35 K44 ["NativeGraphContext_setNodePropertyAsync"]
      215 CALL                             R34 1 1
      216 GETUPVAL                         R35 3
      217 GETTABLEKS                       R35 R35 K22 ["useBoundAction"]
      219 LOADK                            R36 K45 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      220 CALL                             R35 1 1
      221 GETUPVAL                         R36 3
      222 GETTABLEKS                       R36 R36 K22 ["useBoundAction"]
      224 LOADK                            R37 K46 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      225 CALL                             R36 1 1
      226 GETUPVAL                         R37 3
      227 GETTABLEKS                       R37 R37 K22 ["useBoundAction"]
      229 LOADK                            R38 K47 ["NativeGraphContext_SelectNodesFromRect"]
      230 CALL                             R37 1 1
      231 GETUPVAL                         R38 3
      232 GETTABLEKS                       R38 R38 K22 ["useBoundAction"]
      234 LOADK                            R39 K48 ["NativeGraphContext_DuplicateSelectedNodes"]
      235 CALL                             R38 1 1
      236 GETUPVAL                         R39 3
      237 GETTABLEKS                       R39 R39 K22 ["useBoundAction"]
      239 LOADK                            R40 K49 ["NativeGraphContext_SelectAllNodes"]
      240 CALL                             R39 1 1
      241 GETUPVAL                         R40 3
      242 GETTABLEKS                       R40 R40 K22 ["useBoundAction"]
      244 LOADK                            R41 K50 ["NativeGraphContext_ClearNodeSelection"]
      245 CALL                             R40 1 1
      246 GETUPVAL                         R41 3
      247 GETTABLEKS                       R41 R41 K22 ["useBoundAction"]
      249 LOADK                            R42 K51 ["NativeGraphContext_CopySelectedNodes"]
      250 CALL                             R41 1 1
      251 GETUPVAL                         R42 3
      252 GETTABLEKS                       R42 R42 K22 ["useBoundAction"]
      254 LOADK                            R43 K52 ["NativeGraphContext_CutSelectedNodes"]
      255 CALL                             R42 1 1
      256 GETUPVAL                         R43 3
      257 GETTABLEKS                       R43 R43 K22 ["useBoundAction"]
      259 LOADK                            R44 K53 ["NativeGraphContext_PasteNodes"]
      260 CALL                             R43 1 1
      261 GETUPVAL                         R44 7
      262 GETTABLEKS                       R44 R44 K37 ["useConsumer"]
      264 CALL                             R44 0 1
      265 GETUPVAL                         R45 3
      266 GETTABLEKS                       R45 R45 K22 ["useBoundAction"]
      268 LOADK                            R46 K54 ["NativeGraphContext_beginUndoTransaction"]
      269 CALL                             R45 1 1
      270 GETUPVAL                         R46 3
      271 GETTABLEKS                       R46 R46 K22 ["useBoundAction"]
      273 LOADK                            R47 K55 ["NativeGraphContext_finishUndoTransaction"]
      274 CALL                             R46 1 1
      275 GETUPVAL                         R47 3
      276 GETTABLEKS                       R47 R47 K22 ["useBoundAction"]
      278 LOADK                            R48 K56 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      279 CALL                             R47 1 1
      280 NEWTABLE                         R48 64 0
      282 SETTABLEKS                       R12 R48 K57 ["reorderPinsAsync"]
      284 SETTABLEKS                       R13 R48 K58 ["createNodeAsync"]
      286 SETTABLEKS                       R14 R48 K59 ["createParameterAsync"]
      288 SETTABLEKS                       R15 R48 K60 ["createConnectedParameterAsync"]
      290 SETTABLEKS                       R16 R48 K61 ["createExistingParameterAsync"]
      292 SETTABLEKS                       R8 R48 K62 ["graphRect"]
      294 SETTABLEKS                       R17 R48 K63 ["selectAllParameterNodesWithNameAsync"]
      296 SETTABLEKS                       R18 R48 K64 ["selectNodesAsync"]
      298 SETTABLEKS                       R37 R48 K65 ["selectNodesFromRectAsync"]
      300 NEWCLOSURE                       R49 P2
      301 CAPTURE                          VAL R44
      302 SETTABLEKS                       R49 R48 K66 ["removeSelectedNodesAsync"]
      304 SETTABLEKS                       R38 R48 K67 ["duplicateSelectedNodesAsync"]
      306 SETTABLEKS                       R39 R48 K68 ["selectAllNodesAsync"]
      308 SETTABLEKS                       R40 R48 K69 ["clearNodeSelectionAsync"]
      310 SETTABLEKS                       R41 R48 K70 ["copySelectedNodesAsync"]
      312 SETTABLEKS                       R42 R48 K71 ["cutSelectedNodesAsync"]
      314 SETTABLEKS                       R43 R48 K72 ["pasteNodesAsync"]
      316 SETTABLEKS                       R19 R48 K73 ["setNodePositionsAsync"]
      318 SETTABLEKS                       R20 R48 K74 ["setNodeSizeAsync"]
      320 SETTABLEKS                       R21 R48 K75 ["setNodeConnectionAsync"]
      322 SETTABLEKS                       R22 R48 K76 ["deleteNodeInput"]
      324 SETTABLEKS                       R23 R48 K77 ["renameNodeInputAsync"]
      326 SETTABLEKS                       R24 R48 K78 ["removeNodeOutputConnectionAsync"]
      328 SETTABLEKS                       R25 R48 K79 ["removeNodeInputConnectionAsync"]
      330 SETTABLEKS                       R26 R48 K80 ["breakNodeConnectionsAsync"]
      332 SETTABLEKS                       R27 R48 K81 ["removeParameterAsync"]
      334 SETTABLEKS                       R28 R48 K82 ["renameNodeAsync"]
      336 SETTABLEKS                       R29 R48 K83 ["renameParameterAsync"]
      338 SETTABLEKS                       R30 R48 K84 ["deleteNodeInstanceAsync"]
      340 SETTABLEKS                       R31 R48 K85 ["showNodeInExplorerAsync"]
      342 SETTABLEKS                       R32 R48 K86 ["setCollapsedAsync"]
      344 SETTABLEKS                       R34 R48 K87 ["setNodePropertyAsync"]
      346 SETTABLEKS                       R35 R48 K88 ["setInputPinNodePropertyAsync"]
      348 SETTABLEKS                       R47 R48 K89 ["setExpressionNodeValueAsync"]
      350 SETTABLEKS                       R36 R48 K90 ["setParameterNodeTypeAsync"]
      352 SETTABLEKS                       R9 R48 K91 ["sourceAssetId"]
      354 SETTABLEKS                       R10 R48 K92 ["selectedGraphKey"]
      356 GETTABLEKS                       R49 R1 K93 ["observe"]
      358 SETTABLEKS                       R49 R48 K94 ["observeGraphNodeById"]
      360 GETTABLEKS                       R49 R2 K93 ["observe"]
      362 SETTABLEKS                       R49 R48 K95 ["observeNodeRenderInfoById"]
      364 SETTABLEKS                       R45 R48 K96 ["beginUndoTransaction"]
      366 SETTABLEKS                       R46 R48 K97 ["finishUndoTransaction"]
      368 GETTABLEKS                       R49 R1 K98 ["observeMap"]
      370 SETTABLEKS                       R49 R48 K99 ["observeGraphNodeMap"]
      372 GETTABLEKS                       R49 R2 K98 ["observeMap"]
      374 SETTABLEKS                       R49 R48 K100 ["observeRenderInfoMap"]
      376 GETTABLEKS                       R49 R11 K101 ["hasGraphOutput"]
      378 SETTABLEKS                       R49 R48 K101 ["hasGraphOutput"]
      380 GETTABLEKS                       R49 R3 K93 ["observe"]
      382 SETTABLEKS                       R49 R48 K102 ["observeNodePropsById"]
      384 SETTABLEKS                       R6 R48 K103 ["observeExpressionNodes"]
      386 DUPCLOSURE                       R49 K104 [PROTO_82]
      387 GETUPVAL                         R50 1
      388 GETTABLEKS                       R50 R50 K0 ["useContext"]
      390 GETUPVAL                         R51 8
      391 GETTABLEKS                       R51 R51 K1 ["Context"]
      393 CALL                             R50 1 1
      394 GETUPVAL                         R51 1
      395 GETTABLEKS                       R51 R51 K2 ["useCallback"]
      397 NEWCLOSURE                       R52 P4
      398 CAPTURE                          UPVAL U9
      399 CAPTURE                          VAL R50
      400 CAPTURE                          UPVAL U10
      401 NEWTABLE                         R53 0 2
      403 GETTABLEKS                       R54 R50 K105 ["observeDebugData"]
      405 GETTABLEKS                       R55 R50 K106 ["observeActiveDebugTargetIdentifier"]
      407 SETLIST                          R53 R54 2 [1]
      409 CALL                             R51 2 1
      410 GETUPVAL                         R52 1
      411 GETTABLEKS                       R52 R52 K2 ["useCallback"]
      413 NEWCLOSURE                       R53 P5
      414 CAPTURE                          UPVAL U9
      415 CAPTURE                          VAL R50
      416 CAPTURE                          UPVAL U10
      417 NEWTABLE                         R54 0 2
      419 GETTABLEKS                       R55 R50 K105 ["observeDebugData"]
      421 GETTABLEKS                       R56 R50 K106 ["observeActiveDebugTargetIdentifier"]
      423 SETLIST                          R54 R55 2 [1]
      425 CALL                             R52 2 1
      426 GETUPVAL                         R53 1
      427 GETTABLEKS                       R53 R53 K2 ["useCallback"]
      429 NEWCLOSURE                       R54 P6
      430 CAPTURE                          VAL R52
      431 CAPTURE                          UPVAL U11
      432 NEWTABLE                         R55 0 1
      434 MOVE                             R56 R52
      435 SETLIST                          R55 R56 1 [1]
      437 CALL                             R53 2 1
      438 GETUPVAL                         R54 1
      439 GETTABLEKS                       R54 R54 K2 ["useCallback"]
      441 NEWCLOSURE                       R55 P7
      442 CAPTURE                          UPVAL U11
      443 CAPTURE                          VAL R1
      444 NEWTABLE                         R56 0 1
      446 GETTABLEKS                       R57 R1 K98 ["observeMap"]
      448 SETLIST                          R56 R57 1 [1]
      450 CALL                             R54 2 1
      451 GETUPVAL                         R55 12
      452 GETTABLEKS                       R55 R55 K37 ["useConsumer"]
      454 CALL                             R55 0 1
      455 GETUPVAL                         R56 13
      456 GETTABLEKS                       R56 R56 K107 ["useSignalState"]
      458 GETTABLEKS                       R57 R4 K108 ["observeSelectedGraphIsEphemeral"]
      460 CALL                             R56 1 1
      461 GETUPVAL                         R57 1
      462 GETTABLEKS                       R57 R57 K109 ["useMemo"]
      464 NEWCLOSURE                       R58 P8
      465 CAPTURE                          VAL R1
      466 CAPTURE                          VAL R2
      467 CAPTURE                          VAL R56
      468 CAPTURE                          VAL R55
      469 CAPTURE                          VAL R12
      470 CAPTURE                          VAL R14
      471 CAPTURE                          VAL R16
      472 CAPTURE                          VAL R15
      473 CAPTURE                          VAL R17
      474 CAPTURE                          VAL R18
      475 CAPTURE                          VAL R32
      476 CAPTURE                          VAL R33
      477 CAPTURE                          VAL R22
      478 CAPTURE                          VAL R25
      479 CAPTURE                          VAL R24
      480 CAPTURE                          VAL R27
      481 CAPTURE                          VAL R28
      482 CAPTURE                          VAL R29
      483 CAPTURE                          VAL R30
      484 CAPTURE                          VAL R44
      485 CAPTURE                          VAL R21
      486 CAPTURE                          VAL R19
      487 CAPTURE                          VAL R34
      488 CAPTURE                          VAL R35
      489 CAPTURE                          VAL R20
      490 CAPTURE                          VAL R36
      491 CAPTURE                          VAL R3
      492 CAPTURE                          VAL R51
      493 CAPTURE                          VAL R53
      494 CAPTURE                          VAL R54
      495 NEWTABLE                         R59 0 30
      497 MOVE                             R60 R1
      498 MOVE                             R61 R2
      499 MOVE                             R62 R55
      500 MOVE                             R63 R12
      501 MOVE                             R64 R14
      502 MOVE                             R65 R16
      503 MOVE                             R66 R15
      504 MOVE                             R67 R17
      505 MOVE                             R68 R18
      506 MOVE                             R69 R32
      507 MOVE                             R70 R33
      508 MOVE                             R71 R22
      509 MOVE                             R72 R25
      510 MOVE                             R73 R24
      511 MOVE                             R74 R27
      512 MOVE                             R75 R28
      513 SETLIST                          R59 R60 16 [1]
      515 MOVE                             R60 R29
      516 MOVE                             R61 R30
      517 MOVE                             R62 R44
      518 MOVE                             R63 R21
      519 MOVE                             R64 R19
      520 MOVE                             R65 R34
      521 MOVE                             R66 R35
      522 MOVE                             R67 R20
      523 MOVE                             R68 R36
      524 GETTABLEKS                       R69 R3 K93 ["observe"]
      526 MOVE                             R70 R51
      527 MOVE                             R71 R53
      528 MOVE                             R72 R56
      529 MOVE                             R73 R54
      530 SETLIST                          R59 R60 14 [17]
      532 CALL                             R57 2 1
      533 GETUPVAL                         R58 1
      534 GETTABLEKS                       R58 R58 K110 ["createElement"]
      536 GETUPVAL                         R59 14
      537 GETTABLEKS                       R59 R59 K111 ["Provider"]
      539 DUPTABLE                         R60 K113 [{"value"}]
      540 SETTABLEKS                       R48 R60 K112 ["value"]
      542 DUPTABLE                         R61 K115 [{"ContextStack"}]
      543 GETUPVAL                         R62 1
      544 GETTABLEKS                       R62 R62 K110 ["createElement"]
      546 GETUPVAL                         R63 15
      547 GETTABLEKS                       R63 R63 K114 ["ContextStack"]
      549 DUPTABLE                         R64 K117 [{"providers"}]
      550 NEWTABLE                         R65 0 3
      552 GETUPVAL                         R66 1
      553 GETTABLEKS                       R66 R66 K110 ["createElement"]
      555 GETUPVAL                         R67 16
      556 GETTABLEKS                       R67 R67 K118 ["GraphContext"]
      558 GETTABLEKS                       R67 R67 K111 ["Provider"]
      560 DUPTABLE                         R68 K113 [{"value"}]
      561 SETTABLEKS                       R57 R68 K112 ["value"]
      563 CALL                             R66 2 1
      564 GETUPVAL                         R67 1
      565 GETTABLEKS                       R67 R67 K110 ["createElement"]
      567 GETUPVAL                         R68 17
      568 GETTABLEKS                       R68 R68 K119 ["UIDataModelProvider"]
      570 CALL                             R67 1 1
      571 GETUPVAL                         R68 1
      572 GETTABLEKS                       R68 R68 K110 ["createElement"]
      574 GETUPVAL                         R69 18
      575 GETTABLEKS                       R69 R69 K111 ["Provider"]
      577 DUPTABLE                         R70 K121 [{"timeRange"}]
      578 SETTABLEKS                       R7 R70 K120 ["timeRange"]
      580 CALL                             R68 2 -1
      581 SETLIST                          R65 R66 -1 [1]
      583 SETTABLEKS                       R65 R64 K116 ["providers"]
      585 GETTABLEKS                       R65 R0 K122 ["children"]
      587 CALL                             R62 3 1
      588 SETTABLEKS                       R62 R61 K114 ["ContextStack"]
      590 CALL                             R58 3 -1
      591 RETURN                           R58 -1

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
       43 LOADK                            R15 K17 ["GraphName"]
       44 NAMECALL                         R13 R10 K18 ["GetAttribute"]
       46 CALL                             R13 2 1
       47 MOVE                             R11 R13
       48 LOADK                            R15 K19 ["CharacterName"]
       49 NAMECALL                         R13 R10 K18 ["GetAttribute"]
       51 CALL                             R13 2 1
       52 MOVE                             R12 R13
       53 JUMPIFNOT                        R11 ; [+30]
       54 JUMPIFEQKS                       R11 K20 [""] ; [+29]
       56 JUMPIFNOT                        R12 ; [+27]
       57 JUMPIFEQKS                       R12 K20 [""] ; [+26]
       59 MOVE                             R14 R12
       60 LOADK                            R15 K21 ["_"]
       61 MOVE                             R16 R11
       62 CONCAT                           R13 R14 R16
       63 GETTABLE                         R14 R5 R13
       64 JUMPIF                           R14 ; [+19]
       65 MOVE                             R16 R12
       66 NAMECALL                         R14 R3 K7 ["FindFirstChild"]
       68 CALL                             R14 2 1
       69 JUMPIFNOT                        R14 ; [+14]
       70 MOVE                             R17 R11
       71 NAMECALL                         R15 R14 K7 ["FindFirstChild"]
       73 CALL                             R15 2 1
       74 JUMPIFNOT                        R15 ; [+9]
       75 NAMECALL                         R16 R15 K22 ["Clone"]
       77 CALL                             R16 1 1
       78 SETTABLEKS                       R13 R16 K13 ["Name"]
       80 SETTABLEKS                       R4 R16 K14 ["Parent"]
       82 LOADB                            R17 1
       83 SETTABLE                         R17 R5 R13
       84 FORGLOOP                         R6 2 ; [-44]
       86 NEWCLOSURE                       R6 P0
       87 CAPTURE                          VAL R4
       88 RETURN                           R6 1

PROTO_98:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsServer"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_98]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["createElement"]
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 GETTABLEKS                       R4 R0 K3 ["children"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

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
       75 GETTABLEKS                       R11 R11 K22 ["GraphDirtyStateContext"]
       77 GETTABLEKS                       R11 R11 K23 ["GraphDirtyUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K11 [require]
       82 GETTABLEKS                       R12 R0 K12 ["Contexts"]
       84 GETTABLEKS                       R12 R12 K24 ["InstanceRegistryContext"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K11 [require]
       89 GETTABLEKS                       R13 R0 K14 ["Util"]
       91 GETTABLEKS                       R13 R13 K25 ["Instances"]
       93 GETTABLEKS                       R13 R13 K26 ["InstanceSelectionRegistry"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K11 [require]
       98 GETTABLEKS                       R14 R0 K12 ["Contexts"]
      100 GETTABLEKS                       R14 R14 K27 ["NativeGraphContext"]
      102 GETTABLEKS                       R14 R14 K28 ["NativeGraphUtils"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K11 [require]
      107 GETTABLEKS                       R15 R0 K14 ["Util"]
      109 GETTABLEKS                       R15 R15 K29 ["Networking"]
      111 GETTABLEKS                       R15 R15 K30 ["NetworkUtils"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K11 [require]
      116 GETTABLEKS                       R16 R0 K18 ["Parent"]
      118 GETTABLEKS                       R16 R16 K31 ["NodeGraphing"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K11 [require]
      123 GETTABLEKS                       R17 R0 K12 ["Contexts"]
      125 GETTABLEKS                       R17 R17 K32 ["NodeSelectionContext"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K11 [require]
      130 GETTABLEKS                       R18 R0 K33 ["NodeViewTypes"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K11 [require]
      135 GETTABLEKS                       R19 R0 K12 ["Contexts"]
      137 GETTABLEKS                       R19 R19 K34 ["PasteHookContext"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K11 [require]
      142 GETTABLEKS                       R20 R0 K18 ["Parent"]
      144 GETTABLEKS                       R20 R20 K35 ["React"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K11 [require]
      149 GETTABLEKS                       R21 R0 K18 ["Parent"]
      151 GETTABLEKS                       R21 R21 K36 ["ReactUtils"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K11 [require]
      156 GETTABLEKS                       R22 R0 K12 ["Contexts"]
      158 GETTABLEKS                       R22 R22 K37 ["SelectedGraphContext"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K11 [require]
      163 GETTABLEKS                       R23 R0 K12 ["Contexts"]
      165 GETTABLEKS                       R23 R23 K38 ["SelectionServiceContext"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K11 [require]
      170 GETTABLEKS                       R24 R0 K14 ["Util"]
      172 GETTABLEKS                       R24 R24 K39 ["Signals"]
      174 GETTABLEKS                       R24 R24 K40 ["Experimental"]
      176 GETTABLEKS                       R24 R24 K41 ["SignalExperimentalUtils"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K11 [require]
      181 GETTABLEKS                       R25 R0 K18 ["Parent"]
      183 GETTABLEKS                       R25 R25 K39 ["Signals"]
      185 CALL                             R24 1 1
      186 GETIMPORT                        R25 K11 [require]
      188 GETTABLEKS                       R26 R0 K14 ["Util"]
      190 GETTABLEKS                       R26 R26 K39 ["Signals"]
      192 GETTABLEKS                       R26 R26 K40 ["Experimental"]
      194 GETTABLEKS                       R26 R26 K41 ["SignalExperimentalUtils"]
      196 CALL                             R25 1 1
      197 GETIMPORT                        R26 K11 [require]
      199 GETTABLEKS                       R27 R0 K14 ["Util"]
      201 GETTABLEKS                       R27 R27 K39 ["Signals"]
      203 GETTABLEKS                       R27 R27 K42 ["SignalsInstanceUtils"]
      205 CALL                             R26 1 1
      206 GETIMPORT                        R27 K11 [require]
      208 GETTABLEKS                       R28 R0 K18 ["Parent"]
      210 GETTABLEKS                       R28 R28 K43 ["SignalsReact"]
      212 CALL                             R27 1 1
      213 GETIMPORT                        R28 K11 [require]
      215 GETTABLEKS                       R29 R0 K12 ["Contexts"]
      217 GETTABLEKS                       R29 R29 K44 ["SpotlightedNodeContext"]
      219 CALL                             R28 1 1
      220 GETIMPORT                        R29 K11 [require]
      222 GETTABLEKS                       R30 R0 K45 ["Components"]
      224 GETTABLEKS                       R30 R30 K46 ["NodeView"]
      226 GETTABLEKS                       R30 R30 K47 ["StateMachine"]
      228 GETTABLEKS                       R30 R30 K48 ["StateMachineMaterializer"]
      230 CALL                             R29 1 1
      231 GETIMPORT                        R30 K11 [require]
      233 GETTABLEKS                       R31 R0 K12 ["Contexts"]
      235 GETTABLEKS                       R31 R31 K49 ["TimeRangeContext"]
      237 CALL                             R30 1 1
      238 GETIMPORT                        R31 K11 [require]
      240 GETTABLEKS                       R32 R0 K50 ["Flags"]
      242 GETTABLEKS                       R32 R32 K51 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      244 CALL                             R31 1 1
      245 GETIMPORT                        R32 K11 [require]
      247 GETTABLEKS                       R33 R0 K50 ["Flags"]
      249 GETTABLEKS                       R33 R33 K52 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      251 CALL                             R32 1 1
      252 GETIMPORT                        R33 K11 [require]
      254 GETTABLEKS                       R34 R0 K50 ["Flags"]
      256 GETTABLEKS                       R34 R34 K53 ["getFFlagAnimGraphUIEnableValueNodes"]
      258 CALL                             R33 1 1
      259 GETIMPORT                        R34 K11 [require]
      261 GETTABLEKS                       R35 R0 K50 ["Flags"]
      263 GETTABLEKS                       R35 R35 K54 ["getFFlagAnimGraphUIInputIds"]
      265 CALL                             R34 1 1
      266 GETIMPORT                        R35 K11 [require]
      268 GETTABLEKS                       R36 R0 K50 ["Flags"]
      270 GETTABLEKS                       R36 R36 K55 ["getFFlagAnimGraphUI_FixUndoHistory"]
      272 CALL                             R35 1 1
      273 GETIMPORT                        R36 K11 [require]
      275 GETTABLEKS                       R37 R0 K50 ["Flags"]
      277 GETTABLEKS                       R37 R37 K56 ["getFFlagAnimGraphUI_KeepDynamicInputOnNodeDelete"]
      279 CALL                             R36 1 1
      280 GETIMPORT                        R37 K11 [require]
      282 GETTABLEKS                       R38 R0 K50 ["Flags"]
      284 GETTABLEKS                       R38 R38 K57 ["getFFlagAnimGraphUI_Localization2"]
      286 CALL                             R37 1 1
      287 GETIMPORT                        R38 K11 [require]
      289 GETTABLEKS                       R39 R0 K50 ["Flags"]
      291 GETTABLEKS                       R39 R39 K58 ["getFFlagAnimGraphUI_NewGraphOnInsertNode"]
      293 CALL                             R38 1 1
      294 GETIMPORT                        R39 K11 [require]
      296 GETTABLEKS                       R40 R0 K50 ["Flags"]
      298 GETTABLEKS                       R40 R40 K59 ["getFFlagAnimGraphUI_NoDuplicateGraphOutputOnInsert"]
      300 CALL                             R39 1 1
      301 GETIMPORT                        R40 K11 [require]
      303 GETTABLEKS                       R41 R0 K50 ["Flags"]
      305 GETTABLEKS                       R41 R41 K60 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      307 CALL                             R40 1 1
      308 GETIMPORT                        R41 K11 [require]
      310 GETTABLEKS                       R42 R0 K14 ["Util"]
      312 GETTABLEKS                       R42 R42 K61 ["parseAnimationNodeType"]
      314 CALL                             R41 1 1
      315 GETIMPORT                        R42 K11 [require]
      317 GETTABLEKS                       R43 R0 K14 ["Util"]
      319 GETTABLEKS                       R43 R43 K62 ["sanitizeParameterNames"]
      321 CALL                             R42 1 1
      322 GETIMPORT                        R43 K11 [require]
      324 GETTABLEKS                       R44 R0 K45 ["Components"]
      326 GETTABLEKS                       R44 R44 K46 ["NodeView"]
      328 GETTABLEKS                       R44 R44 K47 ["StateMachine"]
      330 GETTABLEKS                       R44 R44 K63 ["supportsStateMachineNode"]
      332 CALL                             R43 1 1
      333 GETIMPORT                        R44 K11 [require]
      335 GETIMPORT                        R45 K1 [script]
      337 GETTABLEKS                       R45 R45 K64 ["useGraphAnalytics"]
      339 CALL                             R44 1 1
      340 GETIMPORT                        R45 K11 [require]
      342 GETTABLEKS                       R46 R0 K65 ["Hooks"]
      344 GETTABLEKS                       R46 R46 K66 ["useNodeDefinitionDestroyHelper"]
      346 CALL                             R45 1 1
      347 GETIMPORT                        R46 K11 [require]
      349 GETTABLEKS                       R47 R0 K65 ["Hooks"]
      351 GETTABLEKS                       R47 R47 K67 ["useObserveNodeSelection"]
      353 CALL                             R46 1 1
      354 GETIMPORT                        R47 K11 [require]
      356 GETTABLEKS                       R48 R0 K65 ["Hooks"]
      358 GETTABLEKS                       R48 R48 K68 ["useParameterDestroyHelper"]
      360 CALL                             R47 1 1
      361 GETIMPORT                        R48 K11 [require]
      363 GETTABLEKS                       R49 R0 K65 ["Hooks"]
      365 GETTABLEKS                       R49 R49 K69 ["useSignalDispatcher"]
      367 CALL                             R48 1 1
      368 GETIMPORT                        R49 K11 [require]
      370 GETTABLEKS                       R50 R0 K65 ["Hooks"]
      372 GETTABLEKS                       R50 R50 K70 ["useValueNodeDestroyHelper"]
      374 CALL                             R49 1 1
      375 NEWTABLE                         R50 64 0
      377 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      379 LOADK                            R52 K72 ["observeGraphNodeMap"]
      380 CALL                             R51 1 1
      381 SETTABLEKS                       R51 R50 K72 ["observeGraphNodeMap"]
      383 GETIMPORT                        R51 K75 [Rect.new]
      385 LOADN                            R52 0
      386 LOADN                            R53 0
      387 LOADN                            R54 0
      388 LOADN                            R55 0
      389 CALL                             R51 4 1
      390 SETTABLEKS                       R51 R50 K76 ["graphRect"]
      392 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      394 LOADK                            R52 K77 ["reorderPinsAsync"]
      395 CALL                             R51 1 1
      396 SETTABLEKS                       R51 R50 K77 ["reorderPinsAsync"]
      398 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      400 LOADK                            R52 K78 ["createNodeAsync"]
      401 CALL                             R51 1 1
      402 SETTABLEKS                       R51 R50 K78 ["createNodeAsync"]
      404 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      406 LOADK                            R52 K79 ["createParameterAsync"]
      407 CALL                             R51 1 1
      408 SETTABLEKS                       R51 R50 K79 ["createParameterAsync"]
      410 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      412 LOADK                            R52 K80 ["createConnectedParameterAsync"]
      413 CALL                             R51 1 1
      414 SETTABLEKS                       R51 R50 K80 ["createConnectedParameterAsync"]
      416 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      418 LOADK                            R52 K81 ["createExistingParameterAsync"]
      419 CALL                             R51 1 1
      420 SETTABLEKS                       R51 R50 K81 ["createExistingParameterAsync"]
      422 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      424 LOADK                            R52 K82 ["selectAllParameterNodesWithNameAsync"]
      425 CALL                             R51 1 1
      426 SETTABLEKS                       R51 R50 K82 ["selectAllParameterNodesWithNameAsync"]
      428 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      430 LOADK                            R52 K83 ["selectNodesAsync"]
      431 CALL                             R51 1 1
      432 SETTABLEKS                       R51 R50 K83 ["selectNodesAsync"]
      434 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      436 LOADK                            R52 K84 ["selectNodesFromRectAsync"]
      437 CALL                             R51 1 1
      438 SETTABLEKS                       R51 R50 K84 ["selectNodesFromRectAsync"]
      440 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      442 LOADK                            R52 K85 ["removeSelectedNodesAsync"]
      443 CALL                             R51 1 1
      444 SETTABLEKS                       R51 R50 K85 ["removeSelectedNodesAsync"]
      446 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      448 LOADK                            R52 K86 ["duplicateSelectedNodesAsync"]
      449 CALL                             R51 1 1
      450 SETTABLEKS                       R51 R50 K86 ["duplicateSelectedNodesAsync"]
      452 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      454 LOADK                            R52 K87 ["selectAllNodesAsync"]
      455 CALL                             R51 1 1
      456 SETTABLEKS                       R51 R50 K87 ["selectAllNodesAsync"]
      458 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      460 LOADK                            R52 K88 ["clearNodeSelectionAsync"]
      461 CALL                             R51 1 1
      462 SETTABLEKS                       R51 R50 K88 ["clearNodeSelectionAsync"]
      464 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      466 LOADK                            R52 K89 ["copySelectedNodesAsync"]
      467 CALL                             R51 1 1
      468 SETTABLEKS                       R51 R50 K89 ["copySelectedNodesAsync"]
      470 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      472 LOADK                            R52 K90 ["cutSelectedNodesAsync"]
      473 CALL                             R51 1 1
      474 SETTABLEKS                       R51 R50 K90 ["cutSelectedNodesAsync"]
      476 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      478 LOADK                            R52 K91 ["pasteNodesAsync"]
      479 CALL                             R51 1 1
      480 SETTABLEKS                       R51 R50 K91 ["pasteNodesAsync"]
      482 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      484 LOADK                            R52 K92 ["setNodePositionsAsync"]
      485 CALL                             R51 1 1
      486 SETTABLEKS                       R51 R50 K92 ["setNodePositionsAsync"]
      488 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      490 LOADK                            R52 K93 ["setNodeSizeAsync"]
      491 CALL                             R51 1 1
      492 SETTABLEKS                       R51 R50 K93 ["setNodeSizeAsync"]
      494 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      496 LOADK                            R52 K94 ["deleteNodeInput"]
      497 CALL                             R51 1 1
      498 SETTABLEKS                       R51 R50 K94 ["deleteNodeInput"]
      500 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      502 LOADK                            R52 K95 ["renameNodeInputAsync"]
      503 CALL                             R51 1 1
      504 SETTABLEKS                       R51 R50 K95 ["renameNodeInputAsync"]
      506 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      508 LOADK                            R52 K96 ["removeNodeInputConnectionAsync"]
      509 CALL                             R51 1 1
      510 SETTABLEKS                       R51 R50 K96 ["removeNodeInputConnectionAsync"]
      512 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      514 LOADK                            R52 K97 ["removeNodeOutputConnectionAsync"]
      515 CALL                             R51 1 1
      516 SETTABLEKS                       R51 R50 K97 ["removeNodeOutputConnectionAsync"]
      518 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      520 LOADK                            R52 K98 ["breakNodeConnectionsAsync"]
      521 CALL                             R51 1 1
      522 SETTABLEKS                       R51 R50 K98 ["breakNodeConnectionsAsync"]
      524 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      526 LOADK                            R52 K99 ["removeParameterAsync"]
      527 CALL                             R51 1 1
      528 SETTABLEKS                       R51 R50 K99 ["removeParameterAsync"]
      530 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      532 LOADK                            R52 K100 ["renameNodeAsync"]
      533 CALL                             R51 1 1
      534 SETTABLEKS                       R51 R50 K100 ["renameNodeAsync"]
      536 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      538 LOADK                            R52 K101 ["renameParameterAsync"]
      539 CALL                             R51 1 1
      540 SETTABLEKS                       R51 R50 K101 ["renameParameterAsync"]
      542 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      544 LOADK                            R52 K102 ["deleteNodeInstanceAsync"]
      545 CALL                             R51 1 1
      546 SETTABLEKS                       R51 R50 K102 ["deleteNodeInstanceAsync"]
      548 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      550 LOADK                            R52 K103 ["showNodeInExplorerAsync"]
      551 CALL                             R51 1 1
      552 SETTABLEKS                       R51 R50 K103 ["showNodeInExplorerAsync"]
      554 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      556 LOADK                            R52 K104 ["setNewConnection"]
      557 CALL                             R51 1 1
      558 SETTABLEKS                       R51 R50 K105 ["setNodeConnectionAsync"]
      560 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      562 LOADK                            R52 K106 ["setCollapsedAsync"]
      563 CALL                             R51 1 1
      564 SETTABLEKS                       R51 R50 K106 ["setCollapsedAsync"]
      566 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      568 LOADK                            R52 K107 ["setNodePropertyAsync"]
      569 CALL                             R51 1 1
      570 SETTABLEKS                       R51 R50 K107 ["setNodePropertyAsync"]
      572 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      574 LOADK                            R52 K108 ["setInputPinNodePropertyAsync"]
      575 CALL                             R51 1 1
      576 SETTABLEKS                       R51 R50 K108 ["setInputPinNodePropertyAsync"]
      578 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      580 LOADK                            R52 K109 ["setParameterNodeTypeAsync"]
      581 CALL                             R51 1 1
      582 SETTABLEKS                       R51 R50 K109 ["setParameterNodeTypeAsync"]
      584 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      586 LOADK                            R52 K110 ["setExpressionNodeValueAsync"]
      587 CALL                             R51 1 1
      588 SETTABLEKS                       R51 R50 K110 ["setExpressionNodeValueAsync"]
      590 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      592 LOADK                            R52 K111 ["hasGraphOutput"]
      593 CALL                             R51 1 1
      594 SETTABLEKS                       R51 R50 K111 ["hasGraphOutput"]
      596 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      598 LOADK                            R52 K112 ["observeGraphNodeById"]
      599 CALL                             R51 1 1
      600 SETTABLEKS                       R51 R50 K112 ["observeGraphNodeById"]
      602 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      604 LOADK                            R52 K113 ["observeNodeRenderInfoById"]
      605 CALL                             R51 1 1
      606 SETTABLEKS                       R51 R50 K113 ["observeNodeRenderInfoById"]
      608 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      610 LOADK                            R52 K114 ["observeRenderInfoMap"]
      611 CALL                             R51 1 1
      612 SETTABLEKS                       R51 R50 K114 ["observeRenderInfoMap"]
      614 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      616 LOADK                            R52 K115 ["observeNodePropsById"]
      617 CALL                             R51 1 1
      618 SETTABLEKS                       R51 R50 K115 ["observeNodePropsById"]
      620 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      622 LOADK                            R52 K116 ["observeExpressionNodes"]
      623 CALL                             R51 1 1
      624 SETTABLEKS                       R51 R50 K116 ["observeExpressionNodes"]
      626 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      628 LOADK                            R52 K117 ["beginUndoTransaction"]
      629 CALL                             R51 1 1
      630 SETTABLEKS                       R51 R50 K117 ["beginUndoTransaction"]
      632 GETTABLEKS                       R51 R20 K71 ["createUnimplemented"]
      634 LOADK                            R52 K118 ["finishUndoTransaction"]
      635 CALL                             R51 1 1
      636 SETTABLEKS                       R51 R50 K118 ["finishUndoTransaction"]
      638 LOADNIL                          R51
      639 SETTABLEKS                       R51 R50 K119 ["sourceAssetId"]
      641 LOADNIL                          R51
      642 SETTABLEKS                       R51 R50 K120 ["selectedGraphKey"]
      644 GETTABLEKS                       R51 R19 K121 ["createContext"]
      646 MOVE                             R52 R50
      647 CALL                             R51 1 1
      648 DUPTABLE                         R52 K140 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction", ["EXPRESSION_NODES"] = "NativeGraphContext_ExpressionNodes"}]
      649 NEWTABLE                         R53 64 0
      651 LOADK                            R54 K141 ["NativeGraphContext_CreateNode"]
      652 SETTABLEKS                       R54 R53 K142 ["CREATE_NODE"]
      654 LOADK                            R54 K143 ["NativeGraphContext_CreateParameterAsync"]
      655 SETTABLEKS                       R54 R53 K144 ["CREATE_PARAMETER"]
      657 LOADK                            R54 K145 ["NativeGraphContext_CreateConnectedParameterAsync"]
      658 SETTABLEKS                       R54 R53 K146 ["CREATE_CONNECTED_PARAMETER"]
      660 LOADK                            R54 K147 ["NativeGraphContext_CreateExistingParameterAsync"]
      661 SETTABLEKS                       R54 R53 K148 ["CREATE_EXISTING_PARAMETER"]
      663 LOADK                            R54 K149 ["NativeGraphContext_GetSelectedGraphInstance"]
      664 SETTABLEKS                       R54 R53 K150 ["GET_SELECTED_GRAPH_INSTANCE"]
      666 LOADK                            R54 K151 ["NativeGraphContext_SetNodeConnectionAsync"]
      667 SETTABLEKS                       R54 R53 K152 ["SET_NODE_CONNECTION"]
      669 LOADK                            R54 K153 ["NativeGraphContext_setNodePropertyAsync"]
      670 SETTABLEKS                       R54 R53 K154 ["SET_NODE_PROPERTY"]
      672 LOADK                            R54 K155 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      673 SETTABLEKS                       R54 R53 K156 ["SET_INPUT_PIN_NODE_PROPERTY"]
      675 LOADK                            R54 K157 ["NativeGraphContext_ReorderPinsAsync"]
      676 SETTABLEKS                       R54 R53 K158 ["REORDER_PINS"]
      678 LOADK                            R54 K159 ["NativeGraphContext_DeleteNodeInput"]
      679 SETTABLEKS                       R54 R53 K160 ["DELETE_NODE_INPUT"]
      681 LOADK                            R54 K161 ["NativeGraphContext_RenameNodeInput"]
      682 SETTABLEKS                       R54 R53 K162 ["RENAME_NODE_INPUT"]
      684 LOADK                            R54 K163 ["NativeGraphContext_RemoveNodeInputConnection"]
      685 SETTABLEKS                       R54 R53 K164 ["REMOVE_NODE_INPUT_CONNECTION"]
      687 LOADK                            R54 K165 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      688 SETTABLEKS                       R54 R53 K166 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      690 LOADK                            R54 K167 ["NativeGraphContext_RemoveParameterAsync"]
      691 SETTABLEKS                       R54 R53 K168 ["REMOVE_PARAMETER"]
      693 LOADK                            R54 K169 ["NativeGraphContext_RenameNodeAsync"]
      694 SETTABLEKS                       R54 R53 K170 ["RENAME_NODE"]
      696 LOADK                            R54 K171 ["NativeGraphContext_RenameParameterAsync"]
      697 SETTABLEKS                       R54 R53 K172 ["RENAME_PARAMETER"]
      699 LOADK                            R54 K173 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      700 SETTABLEKS                       R54 R53 K174 ["DELETE_NODE_INSTANCE"]
      702 LOADK                            R54 K175 ["NativeGraphContext_ShowNodeInExplorer"]
      703 SETTABLEKS                       R54 R53 K176 ["SHOW_NODE_IN_EXPLORER"]
      705 LOADK                            R54 K177 ["NativeGraphContext_SetNodeSizeAsync"]
      706 SETTABLEKS                       R54 R53 K178 ["SET_NODE_SIZE"]
      708 LOADK                            R54 K179 ["NativeGraphContext_SetCollapsedAsync"]
      709 SETTABLEKS                       R54 R53 K180 ["SET_COLLAPSED"]
      711 LOADK                            R54 K181 ["NativeGraphContext_SetNodePositionsAsync"]
      712 SETTABLEKS                       R54 R53 K182 ["SET_NODE_POSITIONS"]
      714 LOADK                            R54 K183 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      715 SETTABLEKS                       R54 R53 K184 ["SET_PARAMETER_NODE_TYPE"]
      717 LOADK                            R54 K185 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      718 SETTABLEKS                       R54 R53 K186 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      720 LOADK                            R54 K187 ["NativeGraphContext_SelectNodes"]
      721 SETTABLEKS                       R54 R53 K188 ["SELECT_NODES"]
      723 LOADK                            R54 K189 ["NativeGraphContext_SelectNodesFromRect"]
      724 SETTABLEKS                       R54 R53 K190 ["SELECT_NODES_FROM_RECT"]
      726 LOADK                            R54 K191 ["NativeGraphContext_DuplicateSelectedNodes"]
      727 SETTABLEKS                       R54 R53 K192 ["DUPLICATE_SELECTED_NODES"]
      729 LOADK                            R54 K193 ["NativeGraphContext_SelectAllNodes"]
      730 SETTABLEKS                       R54 R53 K194 ["SELECT_ALL_NODES"]
      732 LOADK                            R54 K195 ["NativeGraphContext_ClearNodeSelection"]
      733 SETTABLEKS                       R54 R53 K196 ["CLEAR_NODE_SELECTION"]
      735 LOADK                            R54 K197 ["NativeGraphContext_CopySelectedNodes"]
      736 SETTABLEKS                       R54 R53 K198 ["COPY_SELECTED_NODES"]
      738 LOADK                            R54 K199 ["NativeGraphContext_CutSelectedNodes"]
      739 SETTABLEKS                       R54 R53 K200 ["CUT_SELECTED_NODES"]
      741 LOADK                            R54 K201 ["NativeGraphContext_PasteNodes"]
      742 SETTABLEKS                       R54 R53 K202 ["PASTE_NODES"]
      744 LOADK                            R54 K203 ["NativeGraphContext_beginUndoTransaction"]
      745 SETTABLEKS                       R54 R53 K204 ["BEGIN_UNDO_TRANSACTION"]
      747 LOADK                            R54 K205 ["NativeGraphContext_finishUndoTransaction"]
      748 SETTABLEKS                       R54 R53 K206 ["FINISH_UNDO_TRANSACTION"]
      750 LOADK                            R54 K207 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      751 SETTABLEKS                       R54 R53 K208 ["SET_EXPRESSION_NODE_VALUE"]
      753 GETTABLEKS                       R54 R14 K209 ["createBoundAction"]
      755 LOADK                            R55 K210 ["NativeGraphContext_createNode"]
      756 CALL                             R54 1 1
      757 GETTABLEKS                       R55 R14 K209 ["createBoundAction"]
      759 LOADK                            R56 K211 ["NativeGraphContext_setZIndex"]
      760 CALL                             R55 1 1
      761 GETTABLEKS                       R56 R14 K209 ["createBoundAction"]
      763 LOADK                            R57 K212 ["NativeGraphContext_removeNodes"]
      764 CALL                             R56 1 1
      765 GETTABLEKS                       R57 R14 K209 ["createBoundAction"]
      767 LOADK                            R58 K213 ["NativeGraphContext_breakNodeConnections"]
      768 CALL                             R57 1 1
      769 DUPCLOSURE                       R58 K214 [PROTO_0]
      770 DUPCLOSURE                       R59 K215 [PROTO_2]
      771 CAPTURE                          VAL R19
      772 DUPCLOSURE                       R60 K216 [PROTO_77]
      773 CAPTURE                          VAL R7
      774 CAPTURE                          VAL R48
      775 CAPTURE                          VAL R19
      776 CAPTURE                          VAL R16
      777 CAPTURE                          VAL R22
      778 CAPTURE                          VAL R18
      779 CAPTURE                          VAL R21
      780 CAPTURE                          VAL R38
      781 CAPTURE                          VAL R6
      782 CAPTURE                          VAL R46
      783 CAPTURE                          VAL R12
      784 CAPTURE                          VAL R44
      785 CAPTURE                          VAL R11
      786 CAPTURE                          VAL R24
      787 CAPTURE                          VAL R13
      788 CAPTURE                          VAL R20
      789 CAPTURE                          VAL R35
      790 CAPTURE                          VAL R2
      791 CAPTURE                          VAL R10
      792 CAPTURE                          VAL R27
      793 CAPTURE                          VAL R41
      794 CAPTURE                          VAL R39
      795 CAPTURE                          VAL R15
      796 CAPTURE                          VAL R26
      797 CAPTURE                          VAL R40
      798 CAPTURE                          VAL R43
      799 CAPTURE                          VAL R29
      800 CAPTURE                          VAL R34
      801 CAPTURE                          VAL R1
      802 CAPTURE                          VAL R54
      803 CAPTURE                          VAL R58
      804 CAPTURE                          VAL R56
      805 CAPTURE                          VAL R14
      806 CAPTURE                          VAL R31
      807 CAPTURE                          VAL R32
      808 CAPTURE                          VAL R5
      809 CAPTURE                          VAL R45
      810 CAPTURE                          VAL R47
      811 CAPTURE                          VAL R49
      812 CAPTURE                          VAL R57
      813 CAPTURE                          VAL R33
      814 CAPTURE                          VAL R37
      815 CAPTURE                          VAL R42
      816 CAPTURE                          VAL R36
      817 CAPTURE                          VAL R59
      818 CAPTURE                          VAL R23
      819 CAPTURE                          VAL R55
      820 CAPTURE                          VAL R51
      821 CAPTURE                          VAL R30
      822 CAPTURE                          VAL R4
      823 DUPCLOSURE                       R61 K217 [PROTO_95]
      824 CAPTURE                          VAL R48
      825 CAPTURE                          VAL R19
      826 CAPTURE                          VAL R21
      827 CAPTURE                          VAL R14
      828 CAPTURE                          VAL R59
      829 CAPTURE                          VAL R57
      830 CAPTURE                          VAL R55
      831 CAPTURE                          VAL R56
      832 CAPTURE                          VAL R8
      833 CAPTURE                          VAL R26
      834 CAPTURE                          VAL R25
      835 CAPTURE                          VAL R23
      836 CAPTURE                          VAL R54
      837 CAPTURE                          VAL R27
      838 CAPTURE                          VAL R51
      839 CAPTURE                          VAL R20
      840 CAPTURE                          VAL R15
      841 CAPTURE                          VAL R28
      842 CAPTURE                          VAL R30
      843 DUPCLOSURE                       R62 K218 [PROTO_97]
      844 DUPCLOSURE                       R63 K219 [PROTO_99]
      845 CAPTURE                          VAL R19
      846 CAPTURE                          VAL R3
      847 CAPTURE                          VAL R62
      848 CAPTURE                          VAL R60
      849 DUPTABLE                         R64 K225 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      850 SETTABLEKS                       R51 R64 K220 ["Context"]
      852 SETTABLEKS                       R60 R64 K221 ["EditableDataModelProvider"]
      854 SETTABLEKS                       R63 R64 K222 ["PreviewDataModelProvider"]
      856 SETTABLEKS                       R61 R64 K223 ["UIDataModelProvider"]
      858 SETTABLEKS                       R62 R64 K224 ["_setupEditorFolderForPreview"]
      860 RETURN                           R64 1
