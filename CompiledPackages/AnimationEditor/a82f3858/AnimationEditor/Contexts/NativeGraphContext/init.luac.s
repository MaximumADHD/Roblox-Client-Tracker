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
      241 JUMPIFNOT                        R2 ; [+7]
      242 GETUPVAL                         R7 2
      243 MOVE                             R9 R2
      244 GETIMPORT                        R10 K36 [Enum.FinishRecordingOperation.Commit]
      246 NAMECALL                         R7 R7 K37 ["FinishRecording"]
      248 CALL                             R7 3 0
      249 RETURN                           R6 1

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
      135 JUMPIFNOT                        R3 ; [+7]
      136 GETUPVAL                         R6 5
      137 MOVE                             R8 R3
      138 GETIMPORT                        R9 K32 [Enum.FinishRecordingOperation.Commit]
      140 NAMECALL                         R6 R6 K33 ["FinishRecording"]
      142 CALL                             R6 3 0
      143 RETURN                           R5 1

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
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETUPVAL                         R6 1
       27 MOVE                             R8 R4
       28 GETIMPORT                        R9 K9 [Enum.FinishRecordingOperation.Commit]
       30 NAMECALL                         R6 R6 K10 ["FinishRecording"]
       32 CALL                             R6 3 0
       33 RETURN                           R5 1

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
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETUPVAL                         R4 1
       24 MOVE                             R6 R3
       25 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       27 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       29 CALL                             R4 3 0
       30 RETURN                           R0 0

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
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETUPVAL                         R6 1
       27 MOVE                             R8 R4
       28 GETIMPORT                        R9 K10 [Enum.FinishRecordingOperation.Commit]
       30 NAMECALL                         R6 R6 K11 ["FinishRecording"]
       32 CALL                             R6 3 0
       33 RETURN                           R5 1

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
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETUPVAL                         R4 1
       25 MOVE                             R6 R2
       26 GETIMPORT                        R7 K10 [Enum.FinishRecordingOperation.Commit]
       28 NAMECALL                         R4 R4 K11 ["FinishRecording"]
       30 CALL                             R4 3 0
       31 RETURN                           R3 1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+62]
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
       64 JUMPIF                           R4 ; [+9]
       65 GETIMPORT                        R5 K18 [xpcall]
       67 NEWCLOSURE                       R6 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 NEWCLOSURE                       R7 P1
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          UPVAL U5
       73 CALL                             R5 2 0
       74 GETUPVAL                         R4 6
       75 CALL                             R4 0 1
       76 JUMPIF                           R4 ; [+38]
       77 GETUPVAL                         R4 7
       78 GETTABLEKS                       R4 R4 K19 ["observe"]
       80 MOVE                             R5 R0
       81 CALL                             R4 1 1
       82 LOADB                            R5 0
       83 CALL                             R4 1 1
       84 JUMPIFNOT                        R4 ; [+30]
       85 GETUPVAL                         R5 8
       86 JUMPIFNOT                        R5 ; [+28]
       87 GETTABLEKS                       R5 R4 K20 ["outputPinToConnectionMap"]
       89 LOADNIL                          R6
       90 LOADNIL                          R7
       91 FORGPREP                         R5
       92 JUMPIFEQKNIL                     R9 ; [+20]
       94 GETUPVAL                         R10 3
       95 GETTABLEKS                       R10 R10 K21 ["hasDynamicInputPins"]
       97 GETUPVAL                         R11 8
       98 GETTABLEKS                       R12 R9 K22 ["inputNodeId"]
      100 CALL                             R10 2 1
      101 JUMPIFNOT                        R10 ; [+11]
      102 GETUPVAL                         R10 3
      103 GETTABLEKS                       R10 R10 K23 ["renameDynamicInputPin"]
      105 GETUPVAL                         R11 1
      106 GETUPVAL                         R12 8
      107 GETTABLEKS                       R13 R9 K22 ["inputNodeId"]
      109 GETTABLEKS                       R14 R9 K24 ["inputNodePinId"]
      111 MOVE                             R15 R1
      112 CALL                             R10 5 0
      113 FORGLOOP                         R5 2 ; [-22]
      115 JUMPIFNOT                        R2 ; [+7]
      116 GETUPVAL                         R4 0
      117 MOVE                             R6 R2
      118 GETIMPORT                        R7 K26 [Enum.FinishRecordingOperation.Commit]
      120 NAMECALL                         R4 R4 K16 ["FinishRecording"]
      122 CALL                             R4 3 0
      123 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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
       33 JUMPIFNOT                        R6 ; [+153]
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
      178 JUMPIFNOT                        R8 ; [+7]
      179 GETUPVAL                         R13 5
      180 MOVE                             R15 R8
      181 GETIMPORT                        R16 K31 [Enum.FinishRecordingOperation.Commit]
      183 NAMECALL                         R13 R13 K32 ["FinishRecording"]
      185 CALL                             R13 3 0
      186 RETURN                           R0 0
      187 NEWTABLE                         R6 0 0
      189 JUMPIFNOT                        R5 ; [+18]
      190 LOADK                            R10 K33 ["Folder"]
      191 NAMECALL                         R8 R5 K34 ["IsA"]
      193 CALL                             R8 2 1
      194 FASTCALL2K                       ASSERT R8 K35 ; [+4]
      196 LOADK                            R9 K35 ["Expected specified parameterNodeInstance to be a Folder"]
      197 GETIMPORT                        R7 K37 [assert]
      199 CALL                             R7 2 0
      200 FASTCALL2                        TABLE_INSERT R6 R5 ; [+5]
      202 MOVE                             R8 R6
      203 MOVE                             R9 R5
      204 GETIMPORT                        R7 K39 [table.insert]
      206 CALL                             R7 2 0
      207 JUMP                             ; [+7]
      208 GETUPVAL                         R7 4
      209 GETTABLEKS                       R7 R7 K3 ["getAllParameterInstancesFromName"]
      211 MOVE                             R8 R4
      212 MOVE                             R9 R0
      213 CALL                             R7 2 1
      214 MOVE                             R6 R7
      215 LENGTH                           R7 R6
      216 JUMPIFNOTEQKN                    R7 K40 [0] ; [+2]
      218 RETURN                           R0 0
      219 GETUPVAL                         R7 5
      220 LOADK                            R9 K4 ["NativeGraphContext"]
      221 LOADK                            R10 K5 ["renameParameterAsync"]
      222 NAMECALL                         R7 R7 K6 ["TryBeginRecording"]
      224 CALL                             R7 3 1
      225 MOVE                             R10 R1
      226 NAMECALL                         R8 R4 K7 ["GetAttribute"]
      228 CALL                             R8 2 1
      229 JUMPIF                           R8 ; [+8]
      230 MOVE                             R10 R1
      231 MOVE                             R13 R0
      232 NAMECALL                         R11 R4 K7 ["GetAttribute"]
      234 CALL                             R11 2 -1
      235 NAMECALL                         R8 R4 K8 ["SetAttribute"]
      237 CALL                             R8 -1 0
      238 GETUPVAL                         R8 7
      239 GETTABLEKS                       R8 R8 K15 ["parameterDestroyConnectionMapRef"]
      241 GETTABLEKS                       R8 R8 K16 ["current"]
      243 GETIMPORT                        R9 K19 [table.clone]
      245 MOVE                             R10 R8
      246 CALL                             R9 1 1
      247 MOVE                             R10 R6
      248 LOADNIL                          R11
      249 LOADNIL                          R12
      250 FORGPREP                         R10
      251 NAMECALL                         R15 R14 K41 ["GetChildren"]
      253 CALL                             R15 1 3
      254 FORGPREP                         R15
      255 LOADK                            R22 K42 ["ObjectValue"]
      256 NAMECALL                         R20 R19 K34 ["IsA"]
      258 CALL                             R20 2 1
      259 JUMPIFNOT                        R20 ; [+17]
      260 GETTABLEKS                       R20 R19 K43 ["Value"]
      262 JUMPIFNOT                        R20 ; [+14]
      263 GETUPVAL                         R21 4
      264 GETTABLEKS                       R21 R21 K44 ["getParameterWireInputPinId"]
      266 GETTABLEKS                       R22 R19 K10 ["Name"]
      268 CALL                             R21 1 1
      269 JUMPIFNOT                        R21 ; [+7]
      270 GETUPVAL                         R22 4
      271 GETTABLEKS                       R22 R22 K45 ["setParameterBindingName"]
      273 MOVE                             R23 R20
      274 MOVE                             R24 R21
      275 MOVE                             R25 R1
      276 CALL                             R22 3 0
      277 FORGLOOP                         R15 2 ; [-23]
      279 GETUPVAL                         R15 4
      280 GETTABLEKS                       R15 R15 K9 ["getParameterInstanceName"]
      282 MOVE                             R16 R1
      283 CALL                             R15 1 1
      284 SETTABLEKS                       R15 R14 K10 ["Name"]
      286 GETUPVAL                         R17 6
      287 GETTABLEKS                       R17 R17 K11 ["NODE_ATTRIBUTES"]
      289 GETTABLEKS                       R17 R17 K12 ["BindingName"]
      291 MOVE                             R18 R1
      292 NAMECALL                         R15 R14 K8 ["SetAttribute"]
      294 CALL                             R15 3 0
      295 GETUPVAL                         R15 3
      296 MOVE                             R17 R14
      297 NAMECALL                         R15 R15 K22 ["instanceToId"]
      299 CALL                             R15 2 1
      300 GETTABLE                         R16 R8 R15
      301 JUMPIFNOT                        R16 ; [+11]
      302 DUPTABLE                         R16 K26 [{"connection", "nodeId", "parameterName"}]
      303 GETTABLE                         R17 R8 R15
      304 GETTABLEKS                       R17 R17 K23 ["connection"]
      306 SETTABLEKS                       R17 R16 K23 ["connection"]
      308 SETTABLEKS                       R15 R16 K24 ["nodeId"]
      310 SETTABLEKS                       R1 R16 K25 ["parameterName"]
      312 SETTABLE                         R16 R9 R15
      313 FORGLOOP                         R10 2 ; [-63]
      315 GETUPVAL                         R10 7
      316 GETTABLEKS                       R10 R10 K27 ["setParameterDestroyConnectionMap"]
      318 MOVE                             R11 R9
      319 CALL                             R10 1 0
      320 LOADB                            R10 0
      321 JUMPIFEQKNIL                     R2 ; [+9]
      323 GETUPVAL                         R12 4
      324 GETTABLEKS                       R12 R12 K9 ["getParameterInstanceName"]
      326 MOVE                             R13 R0
      327 CALL                             R12 1 -1
      328 NAMECALL                         R10 R4 K46 ["FindFirstChild"]
      330 CALL                             R10 -1 1
      331 JUMPIF                           R10 ; [+5]
      332 MOVE                             R13 R0
      333 LOADNIL                          R14
      334 NAMECALL                         R11 R4 K8 ["SetAttribute"]
      336 CALL                             R11 3 0
      337 JUMPIFNOT                        R7 ; [+7]
      338 GETUPVAL                         R11 5
      339 MOVE                             R13 R7
      340 GETIMPORT                        R14 K31 [Enum.FinishRecordingOperation.Commit]
      342 NAMECALL                         R11 R11 K32 ["FinishRecording"]
      344 CALL                             R11 3 0
      345 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeDestroyConnectionMapRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["destroyConnectionMapRef"]
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

PROTO_71:
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
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_76:
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
      299 LOADNIL                          R35
      300 CALL                             R34 1 2
      301 GETUPVAL                         R36 17
      302 GETTABLEKS                       R36 R36 K20 ["useSignalState"]
      304 GETTABLEKS                       R37 R9 K14 ["observeSelectedGraphInstance"]
      306 CALL                             R36 1 1
      307 GETUPVAL                         R37 2
      308 GETTABLEKS                       R37 R37 K11 ["useMemo"]
      310 NEWCLOSURE                       R38 P12
      311 CAPTURE                          VAL R36
      312 NEWTABLE                         R39 0 1
      314 MOVE                             R40 R36
      315 SETLIST                          R39 R40 1 [1]
      317 CALL                             R37 2 1
      318 GETUPVAL                         R38 17
      319 GETTABLEKS                       R38 R38 K20 ["useSignalState"]
      321 GETTABLEKS                       R39 R9 K14 ["observeSelectedGraphInstance"]
      323 CALL                             R38 1 1
      324 GETUPVAL                         R39 2
      325 GETTABLEKS                       R39 R39 K12 ["useEffect"]
      327 NEWCLOSURE                       R40 P13
      328 CAPTURE                          VAL R38
      329 CAPTURE                          VAL R35
      330 NEWTABLE                         R41 0 1
      332 MOVE                             R42 R38
      333 SETLIST                          R41 R42 1 [1]
      335 CALL                             R39 2 0
      336 GETUPVAL                         R39 2
      337 GETTABLEKS                       R39 R39 K18 ["useCallback"]
      339 NEWCLOSURE                       R40 P14
      340 CAPTURE                          VAL R9
      341 CAPTURE                          UPVAL U7
      342 CAPTURE                          VAL R10
      343 CAPTURE                          VAL R16
      344 CAPTURE                          VAL R19
      345 CAPTURE                          UPVAL U18
      346 CAPTURE                          UPVAL U16
      347 CAPTURE                          UPVAL U14
      348 CAPTURE                          UPVAL U19
      349 CAPTURE                          VAL R3
      350 CAPTURE                          VAL R15
      351 CAPTURE                          UPVAL U20
      352 CAPTURE                          UPVAL U21
      353 CAPTURE                          UPVAL U22
      354 CAPTURE                          UPVAL U23
      355 CAPTURE                          UPVAL U24
      356 CAPTURE                          UPVAL U25
      357 CAPTURE                          VAL R8
      358 NEWTABLE                         R41 0 8
      360 MOVE                             R42 R8
      361 GETTABLEKS                       R43 R9 K14 ["observeSelectedGraphInstance"]
      363 MOVE                             R44 R19
      364 MOVE                             R45 R16
      365 MOVE                             R46 R3
      366 MOVE                             R47 R15
      367 GETUPVAL                         R49 7
      368 CALL                             R49 0 1
      369 JUMPIFNOT                        R49 ; [+3]
      370 GETTABLEKS                       R48 R10 K21 ["canCreateGraph"]
      372 JUMP                             ; [+1]
      373 LOADNIL                          R48
      374 GETUPVAL                         R50 7
      375 CALL                             R50 0 1
      376 JUMPIFNOT                        R50 ; [+3]
      377 GETTABLEKS                       R49 R10 K22 ["createNewGraphAsync"]
      379 JUMP                             ; [+1]
      380 LOADNIL                          R49
      381 SETLIST                          R41 R42 8 [1]
      383 CALL                             R39 2 1
      384 GETUPVAL                         R40 26
      385 GETTABLEKS                       R40 R40 K23 ["useProducer"]
      387 GETUPVAL                         R41 2
      388 GETTABLEKS                       R41 R41 K18 ["useCallback"]
      390 NEWCLOSURE                       R42 P15
      391 CAPTURE                          VAL R39
      392 NEWTABLE                         R43 0 1
      394 MOVE                             R44 R39
      395 SETLIST                          R43 R44 1 [1]
      397 CALL                             R41 2 -1
      398 CALL                             R40 -1 0
      399 GETUPVAL                         R40 2
      400 GETTABLEKS                       R40 R40 K18 ["useCallback"]
      402 NEWCLOSURE                       R41 P16
      403 CAPTURE                          VAL R8
      404 CAPTURE                          UPVAL U27
      405 CAPTURE                          UPVAL U16
      406 NEWTABLE                         R42 0 1
      408 MOVE                             R43 R8
      409 SETLIST                          R42 R43 1 [1]
      411 CALL                             R40 2 1
      412 GETUPVAL                         R41 28
      413 GETTABLEKS                       R41 R41 K23 ["useProducer"]
      415 MOVE                             R42 R40
      416 CALL                             R41 1 0
      417 GETUPVAL                         R41 2
      418 GETTABLEKS                       R41 R41 K18 ["useCallback"]
      420 NEWCLOSURE                       R42 P17
      421 CAPTURE                          VAL R9
      422 CAPTURE                          VAL R8
      423 CAPTURE                          UPVAL U16
      424 CAPTURE                          UPVAL U14
      425 NEWTABLE                         R43 0 2
      427 MOVE                             R44 R8
      428 GETTABLEKS                       R45 R9 K14 ["observeSelectedGraphInstance"]
      430 SETLIST                          R43 R44 2 [1]
      432 CALL                             R41 2 1
      433 GETUPVAL                         R42 29
      434 GETTABLEKS                       R42 R42 K24 ["useBoundAction"]
      436 LOADK                            R43 K25 ["NativeGraphContext_DuplicateSelectedNodes"]
      437 MOVE                             R44 R41
      438 CALL                             R42 2 0
      439 GETUPVAL                         R42 2
      440 GETTABLEKS                       R42 R42 K18 ["useCallback"]
      442 NEWCLOSURE                       R43 P18
      443 CAPTURE                          VAL R8
      444 NEWTABLE                         R44 0 1
      446 MOVE                             R45 R8
      447 SETLIST                          R44 R45 1 [1]
      449 CALL                             R42 2 1
      450 GETUPVAL                         R43 29
      451 GETTABLEKS                       R43 R43 K24 ["useBoundAction"]
      453 LOADK                            R44 K26 ["NativeGraphContext_ClearNodeSelection"]
      454 MOVE                             R45 R42
      455 CALL                             R43 2 0
      456 GETUPVAL                         R43 2
      457 GETTABLEKS                       R43 R43 K18 ["useCallback"]
      459 NEWCLOSURE                       R44 P19
      460 CAPTURE                          VAL R9
      461 CAPTURE                          VAL R8
      462 NEWTABLE                         R45 0 2
      464 MOVE                             R46 R8
      465 GETTABLEKS                       R47 R9 K14 ["observeSelectedGraphInstance"]
      467 SETLIST                          R45 R46 2 [1]
      469 CALL                             R43 2 1
      470 GETUPVAL                         R44 29
      471 GETTABLEKS                       R44 R44 K24 ["useBoundAction"]
      473 LOADK                            R45 K27 ["NativeGraphContext_SelectAllNodes"]
      474 MOVE                             R46 R43
      475 CALL                             R44 2 0
      476 GETUPVAL                         R44 2
      477 GETTABLEKS                       R44 R44 K18 ["useCallback"]
      479 NEWCLOSURE                       R45 P20
      480 CAPTURE                          VAL R8
      481 CAPTURE                          VAL R7
      482 NEWTABLE                         R46 0 2
      484 MOVE                             R47 R8
      485 MOVE                             R48 R7
      486 SETLIST                          R46 R47 2 [1]
      488 CALL                             R44 2 1
      489 GETUPVAL                         R45 29
      490 GETTABLEKS                       R45 R45 K24 ["useBoundAction"]
      492 LOADK                            R46 K28 ["NativeGraphContext_CopySelectedNodes"]
      493 MOVE                             R47 R44
      494 CALL                             R45 2 0
      495 GETUPVAL                         R45 2
      496 GETTABLEKS                       R45 R45 K18 ["useCallback"]
      498 NEWCLOSURE                       R46 P21
      499 CAPTURE                          VAL R8
      500 CAPTURE                          UPVAL U27
      501 CAPTURE                          VAL R7
      502 CAPTURE                          UPVAL U16
      503 NEWTABLE                         R47 0 2
      505 MOVE                             R48 R8
      506 MOVE                             R49 R7
      507 SETLIST                          R47 R48 2 [1]
      509 CALL                             R45 2 1
      510 GETUPVAL                         R46 29
      511 GETTABLEKS                       R46 R46 K24 ["useBoundAction"]
      513 LOADK                            R47 K29 ["NativeGraphContext_CutSelectedNodes"]
      514 MOVE                             R48 R45
      515 CALL                             R46 2 0
      516 GETUPVAL                         R46 2
      517 GETTABLEKS                       R46 R46 K18 ["useCallback"]
      519 NEWCLOSURE                       R47 P22
      520 CAPTURE                          VAL R9
      521 CAPTURE                          VAL R7
      522 CAPTURE                          UPVAL U16
      523 CAPTURE                          UPVAL U14
      524 CAPTURE                          VAL R8
      525 NEWTABLE                         R48 0 3
      527 MOVE                             R49 R8
      528 MOVE                             R50 R7
      529 GETTABLEKS                       R51 R9 K14 ["observeSelectedGraphInstance"]
      531 SETLIST                          R48 R49 3 [1]
      533 CALL                             R46 2 1
      534 GETUPVAL                         R47 29
      535 GETTABLEKS                       R47 R47 K24 ["useBoundAction"]
      537 LOADK                            R48 K30 ["NativeGraphContext_PasteNodes"]
      538 MOVE                             R49 R46
      539 CALL                             R47 2 0
      540 GETUPVAL                         R47 2
      541 GETTABLEKS                       R47 R47 K18 ["useCallback"]
      543 NEWCLOSURE                       R48 P23
      544 CAPTURE                          VAL R9
      545 CAPTURE                          UPVAL U14
      546 CAPTURE                          UPVAL U30
      547 CAPTURE                          VAL R8
      548 NEWTABLE                         R49 0 2
      550 GETTABLEKS                       R50 R9 K14 ["observeSelectedGraphInstance"]
      552 MOVE                             R51 R8
      553 SETLIST                          R49 R50 2 [1]
      555 CALL                             R47 2 1
      556 GETUPVAL                         R48 2
      557 GETTABLEKS                       R48 R48 K18 ["useCallback"]
      559 NEWCLOSURE                       R49 P24
      560 CAPTURE                          VAL R9
      561 CAPTURE                          VAL R19
      562 CAPTURE                          UPVAL U16
      563 CAPTURE                          UPVAL U31
      564 CAPTURE                          UPVAL U32
      565 CAPTURE                          UPVAL U14
      566 CAPTURE                          VAL R16
      567 CAPTURE                          UPVAL U19
      568 CAPTURE                          VAL R3
      569 CAPTURE                          UPVAL U30
      570 CAPTURE                          VAL R8
      571 NEWTABLE                         R50 0 5
      573 MOVE                             R51 R8
      574 GETTABLEKS                       R52 R9 K14 ["observeSelectedGraphInstance"]
      576 MOVE                             R53 R16
      577 MOVE                             R54 R3
      578 MOVE                             R55 R19
      579 SETLIST                          R50 R51 5 [1]
      581 CALL                             R48 2 1
      582 GETUPVAL                         R49 2
      583 GETTABLEKS                       R49 R49 K18 ["useCallback"]
      585 NEWCLOSURE                       R50 P25
      586 CAPTURE                          VAL R9
      587 CAPTURE                          VAL R19
      588 CAPTURE                          UPVAL U14
      589 CAPTURE                          UPVAL U30
      590 CAPTURE                          UPVAL U32
      591 CAPTURE                          UPVAL U16
      592 CAPTURE                          VAL R16
      593 CAPTURE                          VAL R48
      594 CAPTURE                          VAL R8
      595 NEWTABLE                         R51 0 5
      597 MOVE                             R52 R8
      598 GETTABLEKS                       R53 R9 K14 ["observeSelectedGraphInstance"]
      600 MOVE                             R54 R16
      601 MOVE                             R55 R19
      602 MOVE                             R56 R48
      603 SETLIST                          R51 R52 5 [1]
      605 CALL                             R49 2 1
      606 GETUPVAL                         R50 2
      607 GETTABLEKS                       R50 R50 K18 ["useCallback"]
      609 NEWCLOSURE                       R51 P26
      610 CAPTURE                          VAL R19
      611 CAPTURE                          UPVAL U16
      612 CAPTURE                          UPVAL U14
      613 CAPTURE                          VAL R16
      614 NEWTABLE                         R52 0 2
      616 MOVE                             R53 R16
      617 MOVE                             R54 R19
      618 SETLIST                          R52 R53 2 [1]
      620 CALL                             R50 2 1
      621 GETUPVAL                         R51 2
      622 GETTABLEKS                       R51 R51 K18 ["useCallback"]
      624 NEWCLOSURE                       R52 P27
      625 CAPTURE                          VAL R19
      626 CAPTURE                          UPVAL U16
      627 CAPTURE                          UPVAL U14
      628 CAPTURE                          VAL R16
      629 NEWTABLE                         R53 0 2
      631 MOVE                             R54 R16
      632 MOVE                             R55 R19
      633 SETLIST                          R53 R54 2 [1]
      635 CALL                             R51 2 1
      636 GETUPVAL                         R52 2
      637 GETTABLEKS                       R52 R52 K18 ["useCallback"]
      639 NEWCLOSURE                       R53 P28
      640 CAPTURE                          VAL R19
      641 CAPTURE                          UPVAL U16
      642 CAPTURE                          UPVAL U14
      643 CAPTURE                          VAL R16
      644 NEWTABLE                         R54 0 2
      646 MOVE                             R55 R16
      647 MOVE                             R56 R19
      648 SETLIST                          R54 R55 2 [1]
      650 CALL                             R52 2 1
      651 GETUPVAL                         R53 33
      652 MOVE                             R54 R16
      653 GETTABLEKS                       R55 R9 K14 ["observeSelectedGraphInstance"]
      655 CALL                             R53 2 1
      656 GETUPVAL                         R54 34
      657 MOVE                             R55 R16
      658 GETTABLEKS                       R56 R9 K14 ["observeSelectedGraphInstance"]
      660 CALL                             R54 2 1
      661 GETUPVAL                         R55 35
      662 MOVE                             R56 R16
      663 GETTABLEKS                       R57 R9 K14 ["observeSelectedGraphInstance"]
      665 CALL                             R55 2 1
      666 GETUPVAL                         R56 2
      667 GETTABLEKS                       R56 R56 K18 ["useCallback"]
      669 NEWCLOSURE                       R57 P29
      670 CAPTURE                          VAL R19
      671 CAPTURE                          UPVAL U16
      672 CAPTURE                          UPVAL U14
      673 CAPTURE                          VAL R16
      674 NEWTABLE                         R58 0 2
      676 MOVE                             R59 R16
      677 MOVE                             R60 R19
      678 SETLIST                          R58 R59 2 [1]
      680 CALL                             R56 2 1
      681 GETUPVAL                         R57 2
      682 GETTABLEKS                       R57 R57 K18 ["useCallback"]
      684 NEWCLOSURE                       R58 P30
      685 CAPTURE                          VAL R19
      686 CAPTURE                          UPVAL U16
      687 CAPTURE                          UPVAL U14
      688 CAPTURE                          VAL R16
      689 CAPTURE                          UPVAL U36
      690 CAPTURE                          VAL R53
      691 NEWTABLE                         R59 0 3
      693 MOVE                             R60 R16
      694 MOVE                             R61 R19
      695 GETTABLEKS                       R62 R53 K31 ["setNodeOutputInfoInDestroyMapRef"]
      697 SETLIST                          R59 R60 3 [1]
      699 CALL                             R57 2 1
      700 GETUPVAL                         R58 2
      701 GETTABLEKS                       R58 R58 K18 ["useCallback"]
      703 NEWCLOSURE                       R59 P31
      704 CAPTURE                          UPVAL U19
      705 CAPTURE                          UPVAL U32
      706 CAPTURE                          VAL R9
      707 CAPTURE                          UPVAL U16
      708 CAPTURE                          VAL R16
      709 CAPTURE                          UPVAL U14
      710 CAPTURE                          UPVAL U31
      711 CAPTURE                          VAL R48
      712 CAPTURE                          VAL R49
      713 CAPTURE                          VAL R57
      714 NEWTABLE                         R60 0 6
      716 GETTABLEKS                       R61 R9 K14 ["observeSelectedGraphInstance"]
      718 MOVE                             R62 R19
      719 MOVE                             R63 R16
      720 MOVE                             R64 R48
      721 MOVE                             R65 R49
      722 MOVE                             R66 R57
      723 SETLIST                          R60 R61 6 [1]
      725 CALL                             R58 2 1
      726 GETUPVAL                         R59 2
      727 GETTABLEKS                       R59 R59 K18 ["useCallback"]
      729 NEWCLOSURE                       R60 P32
      730 CAPTURE                          VAL R13
      731 CAPTURE                          UPVAL U16
      732 NEWTABLE                         R61 0 0
      734 CALL                             R59 2 1
      735 GETUPVAL                         R60 2
      736 GETTABLEKS                       R60 R60 K18 ["useCallback"]
      738 NEWCLOSURE                       R61 P33
      739 CAPTURE                          VAL R13
      740 CAPTURE                          UPVAL U16
      741 NEWTABLE                         R62 0 0
      743 CALL                             R60 2 1
      744 GETUPVAL                         R61 2
      745 GETTABLEKS                       R61 R61 K12 ["useEffect"]
      747 NEWCLOSURE                       R62 P34
      748 CAPTURE                          VAL R13
      749 CAPTURE                          UPVAL U16
      750 NEWTABLE                         R63 0 0
      752 CALL                             R61 2 0
      753 GETUPVAL                         R61 2
      754 GETTABLEKS                       R61 R61 K18 ["useCallback"]
      756 NEWCLOSURE                       R62 P35
      757 CAPTURE                          UPVAL U16
      758 CAPTURE                          VAL R16
      759 CAPTURE                          UPVAL U25
      760 NEWTABLE                         R63 0 1
      762 MOVE                             R64 R16
      763 SETLIST                          R63 R64 1 [1]
      765 CALL                             R61 2 1
      766 GETUPVAL                         R62 2
      767 GETTABLEKS                       R62 R62 K18 ["useCallback"]
      769 NEWCLOSURE                       R63 P36
      770 CAPTURE                          UPVAL U16
      771 CAPTURE                          VAL R16
      772 NEWTABLE                         R64 0 1
      774 MOVE                             R65 R16
      775 SETLIST                          R64 R65 1 [1]
      777 CALL                             R62 2 1
      778 GETUPVAL                         R63 2
      779 GETTABLEKS                       R63 R63 K18 ["useCallback"]
      781 NEWCLOSURE                       R64 P37
      782 CAPTURE                          UPVAL U16
      783 CAPTURE                          VAL R16
      784 CAPTURE                          UPVAL U36
      785 CAPTURE                          UPVAL U14
      786 CAPTURE                          UPVAL U37
      787 CAPTURE                          VAL R1
      788 CAPTURE                          UPVAL U24
      789 CAPTURE                          VAL R2
      790 CAPTURE                          VAL R19
      791 NEWTABLE                         R65 0 4
      793 MOVE                             R66 R16
      794 MOVE                             R67 R19
      795 GETTABLEKS                       R68 R2 K32 ["observe"]
      797 MOVE                             R69 R1
      798 SETLIST                          R65 R66 4 [1]
      800 CALL                             R63 2 1
      801 GETUPVAL                         R64 2
      802 GETTABLEKS                       R64 R64 K18 ["useCallback"]
      804 NEWCLOSURE                       R65 P38
      805 CAPTURE                          UPVAL U16
      806 CAPTURE                          UPVAL U14
      807 CAPTURE                          VAL R16
      808 NEWTABLE                         R66 0 1
      810 MOVE                             R67 R16
      811 SETLIST                          R66 R67 1 [1]
      813 CALL                             R64 2 1
      814 GETUPVAL                         R65 2
      815 GETTABLEKS                       R65 R65 K18 ["useCallback"]
      817 NEWCLOSURE                       R66 P39
      818 CAPTURE                          VAL R9
      819 CAPTURE                          VAL R19
      820 CAPTURE                          VAL R16
      821 CAPTURE                          UPVAL U30
      822 CAPTURE                          UPVAL U14
      823 CAPTURE                          UPVAL U16
      824 NEWTABLE                         R67 0 3
      826 GETTABLEKS                       R68 R9 K14 ["observeSelectedGraphInstance"]
      828 MOVE                             R69 R16
      829 MOVE                             R70 R19
      830 SETLIST                          R67 R68 3 [1]
      832 CALL                             R65 2 1
      833 GETUPVAL                         R66 2
      834 GETTABLEKS                       R66 R66 K18 ["useCallback"]
      836 NEWCLOSURE                       R67 P40
      837 CAPTURE                          UPVAL U38
      838 CAPTURE                          UPVAL U30
      839 CAPTURE                          VAL R9
      840 CAPTURE                          VAL R16
      841 CAPTURE                          UPVAL U14
      842 CAPTURE                          UPVAL U16
      843 CAPTURE                          UPVAL U32
      844 CAPTURE                          VAL R54
      845 NEWTABLE                         R68 0 5
      847 MOVE                             R69 R16
      848 GETTABLEKS                       R70 R9 K14 ["observeSelectedGraphInstance"]
      850 MOVE                             R71 R19
      851 GETTABLEKS                       R72 R54 K33 ["parameterDestroyConnectionMapRef"]
      853 GETTABLEKS                       R73 R54 K34 ["setParameterDestroyConnectionMap"]
      855 SETLIST                          R68 R69 5 [1]
      857 CALL                             R66 2 1
      858 GETUPVAL                         R67 2
      859 GETTABLEKS                       R67 R67 K18 ["useCallback"]
      861 NEWCLOSURE                       R68 P41
      862 CAPTURE                          VAL R9
      863 CAPTURE                          UPVAL U14
      864 CAPTURE                          UPVAL U16
      865 CAPTURE                          UPVAL U30
      866 CAPTURE                          UPVAL U32
      867 NEWTABLE                         R69 0 1
      869 GETTABLEKS                       R70 R9 K14 ["observeSelectedGraphInstance"]
      871 SETLIST                          R69 R70 1 [1]
      873 CALL                             R67 2 1
      874 GETUPVAL                         R68 2
      875 GETTABLEKS                       R68 R68 K18 ["useCallback"]
      877 NEWCLOSURE                       R69 P42
      878 CAPTURE                          VAL R16
      879 CAPTURE                          UPVAL U16
      880 NEWTABLE                         R70 0 1
      882 MOVE                             R71 R16
      883 SETLIST                          R70 R71 1 [1]
      885 CALL                             R68 2 1
      886 GETUPVAL                         R69 2
      887 GETTABLEKS                       R69 R69 K18 ["useCallback"]
      889 NEWCLOSURE                       R70 P43
      890 CAPTURE                          VAL R16
      891 CAPTURE                          VAL R6
      892 NEWTABLE                         R71 0 2
      894 MOVE                             R72 R16
      895 GETTABLEKS                       R73 R6 K35 ["selectionService"]
      897 SETLIST                          R71 R72 2 [1]
      899 CALL                             R69 2 1
      900 GETUPVAL                         R70 2
      901 GETTABLEKS                       R70 R70 K18 ["useCallback"]
      903 NEWCLOSURE                       R71 P44
      904 CAPTURE                          UPVAL U31
      905 CAPTURE                          VAL R9
      906 CAPTURE                          VAL R16
      907 CAPTURE                          UPVAL U14
      908 CAPTURE                          UPVAL U32
      909 CAPTURE                          UPVAL U16
      910 NEWTABLE                         R72 0 2
      912 GETTABLEKS                       R73 R9 K14 ["observeSelectedGraphInstance"]
      914 MOVE                             R74 R16
      915 SETLIST                          R72 R73 2 [1]
      917 CALL                             R70 2 1
      918 GETUPVAL                         R71 2
      919 GETTABLEKS                       R71 R71 K12 ["useEffect"]
      921 NEWCLOSURE                       R72 P45
      922 CAPTURE                          UPVAL U36
      923 CAPTURE                          UPVAL U13
      924 CAPTURE                          VAL R53
      925 CAPTURE                          VAL R16
      926 CAPTURE                          VAL R27
      927 CAPTURE                          UPVAL U14
      928 NEWTABLE                         R73 0 2
      930 MOVE                             R74 R16
      931 GETTABLEKS                       R75 R53 K36 ["nodeDestroyConnectionMapRef"]
      933 SETLIST                          R73 R74 2 [1]
      935 CALL                             R71 2 0
      936 GETUPVAL                         R71 2
      937 GETTABLEKS                       R71 R71 K12 ["useEffect"]
      939 NEWCLOSURE                       R72 P46
      940 CAPTURE                          UPVAL U13
      941 CAPTURE                          VAL R54
      942 CAPTURE                          VAL R16
      943 CAPTURE                          UPVAL U36
      944 CAPTURE                          UPVAL U14
      945 CAPTURE                          UPVAL U30
      946 CAPTURE                          UPVAL U32
      947 CAPTURE                          VAL R65
      948 NEWTABLE                         R73 0 3
      950 MOVE                             R74 R16
      951 GETTABLEKS                       R75 R54 K33 ["parameterDestroyConnectionMapRef"]
      953 MOVE                             R76 R65
      954 SETLIST                          R73 R74 3 [1]
      956 CALL                             R71 2 0
      957 NEWCLOSURE                       R71 P47
      958 CAPTURE                          VAL R16
      959 CAPTURE                          VAL R27
      960 CAPTURE                          UPVAL U14
      961 GETUPVAL                         R72 2
      962 GETTABLEKS                       R72 R72 K12 ["useEffect"]
      964 NEWCLOSURE                       R73 P48
      965 CAPTURE                          UPVAL U36
      966 CAPTURE                          UPVAL U13
      967 CAPTURE                          VAL R53
      968 CAPTURE                          VAL R16
      969 CAPTURE                          VAL R27
      970 CAPTURE                          UPVAL U14
      971 NEWTABLE                         R74 0 3
      973 MOVE                             R75 R16
      974 GETTABLEKS                       R76 R53 K36 ["nodeDestroyConnectionMapRef"]
      976 GETTABLEKS                       R77 R53 K37 ["observeNodeInfoLookupListRef"]
      978 SETLIST                          R74 R75 3 [1]
      980 CALL                             R72 2 0
      981 GETUPVAL                         R72 2
      982 GETTABLEKS                       R72 R72 K12 ["useEffect"]
      984 NEWCLOSURE                       R73 P49
      985 CAPTURE                          UPVAL U36
      986 CAPTURE                          UPVAL U13
      987 CAPTURE                          VAL R55
      988 CAPTURE                          VAL R16
      989 CAPTURE                          VAL R27
      990 CAPTURE                          UPVAL U14
      991 NEWTABLE                         R74 0 3
      993 MOVE                             R75 R16
      994 GETTABLEKS                       R76 R55 K38 ["destroyConnectionMapRef"]
      996 GETTABLEKS                       R77 R55 K39 ["observeValueNodeInfoLookupListRef"]
      998 SETLIST                          R74 R75 3 [1]
     1000 CALL                             R72 2 0
     1001 GETUPVAL                         R72 39
     1002 MOVE                             R73 R3
     1003 MOVE                             R74 R2
     1004 CALL                             R72 2 1
     1005 GETUPVAL                         R73 17
     1006 GETTABLEKS                       R73 R73 K20 ["useSignalState"]
     1008 GETTABLEKS                       R74 R9 K40 ["observeSelectedGraphIsEphemeral"]
     1010 CALL                             R73 1 1
     1011 NEWTABLE                         R74 64 0
     1013 SETTABLEKS                       R73 R74 K41 ["isReadonly"]
     1015 SETTABLEKS                       R64 R74 K42 ["reorderPinsAsync"]
     1017 SETTABLEKS                       R39 R74 K43 ["createNodeAsync"]
     1019 SETTABLEKS                       R48 R74 K44 ["createParameterAsync"]
     1021 SETTABLEKS                       R49 R74 K45 ["createExistingParameterAsync"]
     1023 SETTABLEKS                       R58 R74 K46 ["createConnectedParameterAsync"]
     1025 SETTABLEKS                       R11 R74 K47 ["graphRect"]
     1027 SETTABLEKS                       R47 R74 K48 ["selectAllParameterNodesWithNameAsync"]
     1029 SETTABLEKS                       R32 R74 K49 ["selectNodesAsync"]
     1031 SETTABLEKS                       R33 R74 K50 ["selectNodesFromRectAsync"]
     1033 SETTABLEKS                       R40 R74 K51 ["removeSelectedNodesAsync"]
     1035 SETTABLEKS                       R41 R74 K52 ["duplicateSelectedNodesAsync"]
     1037 SETTABLEKS                       R43 R74 K53 ["selectAllNodesAsync"]
     1039 SETTABLEKS                       R42 R74 K54 ["clearNodeSelectionAsync"]
     1041 SETTABLEKS                       R44 R74 K55 ["copySelectedNodesAsync"]
     1043 SETTABLEKS                       R45 R74 K56 ["cutSelectedNodesAsync"]
     1045 SETTABLEKS                       R46 R74 K57 ["pasteNodesAsync"]
     1047 SETTABLEKS                       R30 R74 K58 ["setNodePositionsAsync"]
     1049 SETTABLEKS                       R31 R74 K59 ["setNodeSizeAsync"]
     1051 SETTABLEKS                       R57 R74 K60 ["setNodeConnectionAsync"]
     1053 SETTABLEKS                       R50 R74 K61 ["deleteNodeInput"]
     1055 SETTABLEKS                       R51 R74 K62 ["renameNodeInputAsync"]
     1057 SETTABLEKS                       R56 R74 K63 ["removeNodeOutputConnectionAsync"]
     1059 SETTABLEKS                       R52 R74 K64 ["removeNodeInputConnectionAsync"]
     1061 SETTABLEKS                       R65 R74 K65 ["removeParameterAsync"]
     1063 SETTABLEKS                       R63 R74 K66 ["renameNodeAsync"]
     1065 SETTABLEKS                       R66 R74 K67 ["renameParameterAsync"]
     1067 SETTABLEKS                       R68 R74 K68 ["deleteNodeInstanceAsync"]
     1069 SETTABLEKS                       R69 R74 K69 ["showNodeInExplorerAsync"]
     1071 SETTABLEKS                       R28 R74 K70 ["setCollapsedAsync"]
     1073 SETTABLEKS                       R61 R74 K71 ["setNodePropertyAsync"]
     1075 SETTABLEKS                       R62 R74 K72 ["setInputPinNodePropertyAsync"]
     1077 SETTABLEKS                       R67 R74 K73 ["setParameterNodeTypeAsync"]
     1079 SETTABLEKS                       R34 R74 K74 ["sourceAssetId"]
     1081 SETTABLEKS                       R37 R74 K75 ["selectedGraphKey"]
     1083 GETTABLEKS                       R75 R2 K32 ["observe"]
     1085 SETTABLEKS                       R75 R74 K76 ["observeGraphNodeById"]
     1087 GETTABLEKS                       R75 R3 K32 ["observe"]
     1089 SETTABLEKS                       R75 R74 K77 ["observeNodeRenderInfoById"]
     1091 SETTABLEKS                       R59 R74 K78 ["beginUndoTransaction"]
     1093 SETTABLEKS                       R60 R74 K79 ["finishUndoTransaction"]
     1095 GETTABLEKS                       R75 R2 K80 ["observeMap"]
     1097 SETTABLEKS                       R75 R74 K81 ["observeGraphNodeMap"]
     1099 GETTABLEKS                       R75 R3 K80 ["observeMap"]
     1101 SETTABLEKS                       R75 R74 K82 ["observeRenderInfoMap"]
     1103 GETTABLEKS                       R75 R72 K83 ["hasGraphOutput"]
     1105 SETTABLEKS                       R75 R74 K83 ["hasGraphOutput"]
     1107 GETTABLEKS                       R75 R4 K32 ["observe"]
     1109 SETTABLEKS                       R75 R74 K84 ["observeNodePropsById"]
     1111 SETTABLEKS                       R70 R74 K85 ["setExpressionNodeValueAsync"]
     1113 SETTABLEKS                       R18 R74 K86 ["observeExpressionNodes"]
     1115 GETUPVAL                         R75 2
     1116 GETTABLEKS                       R75 R75 K11 ["useMemo"]
     1118 DUPCLOSURE                       R76 K87 [PROTO_73]
     1119 NEWTABLE                         R77 0 0
     1121 CALL                             R75 2 1
     1122 GETUPVAL                         R76 2
     1123 GETTABLEKS                       R76 R76 K11 ["useMemo"]
     1125 NEWCLOSURE                       R77 P51
     1126 CAPTURE                          UPVAL U40
     1127 CAPTURE                          VAL R9
     1128 NEWTABLE                         R78 0 2
     1130 GETTABLEKS                       R79 R9 K14 ["observeSelectedGraphInstance"]
     1132 MOVE                             R80 R19
     1133 SETLIST                          R78 R79 2 [1]
     1135 CALL                             R76 2 1
     1136 GETUPVAL                         R77 5
     1137 GETTABLEKS                       R77 R77 K88 ["usePasteHooks"]
     1139 GETTABLEKS                       R78 R9 K14 ["observeSelectedGraphInstance"]
     1141 CALL                             R77 1 0
     1142 GETUPVAL                         R77 17
     1143 GETTABLEKS                       R77 R77 K20 ["useSignalState"]
     1145 MOVE                             R78 R76
     1146 CALL                             R77 1 1
     1147 GETUPVAL                         R78 29
     1148 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1150 LOADK                            R79 K90 ["NativeGraphContext_GraphPayloadMap"]
     1151 MOVE                             R80 R19
     1152 CALL                             R78 2 0
     1153 GETUPVAL                         R78 29
     1154 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1156 LOADK                            R79 K91 ["NativeGraphContext_GraphRenderInfo"]
     1157 MOVE                             R80 R21
     1158 CALL                             R78 2 0
     1159 GETUPVAL                         R78 29
     1160 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1162 LOADK                            R79 K92 ["NativeGraphContext_GraphNodeProps"]
     1163 MOVE                             R80 R23
     1164 CALL                             R78 2 0
     1165 GETUPVAL                         R78 29
     1166 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1168 LOADK                            R79 K93 ["NativeGraphContext_ExpressionNodes"]
     1169 MOVE                             R80 R25
     1170 CALL                             R78 2 0
     1171 GETUPVAL                         R78 29
     1172 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1174 LOADK                            R79 K94 ["NativeGraphContext_TimeRange"]
     1175 MOVE                             R80 R75
     1176 CALL                             R78 2 0
     1177 GETUPVAL                         R78 29
     1178 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1180 LOADK                            R79 K95 ["NativeGraphContext_GraphPayloadGraphRect"]
     1181 MOVE                             R80 R11
     1182 CALL                             R78 2 0
     1183 GETUPVAL                         R78 29
     1184 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1186 LOADK                            R79 K96 ["NativeGraphContext_SourceAssetId"]
     1187 MOVE                             R80 R34
     1188 CALL                             R78 2 0
     1189 GETUPVAL                         R78 29
     1190 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1192 LOADK                            R79 K97 ["NativeGraphContext_SelectedGraphKey"]
     1193 MOVE                             R80 R37
     1194 CALL                             R78 2 0
     1195 GETUPVAL                         R78 29
     1196 GETTABLEKS                       R78 R78 K89 ["useReplicatedState"]
     1198 LOADK                            R79 K98 ["NativeGraphContext_UndoTransaction"]
     1199 MOVE                             R80 R13
     1200 CALL                             R78 2 0
     1201 GETUPVAL                         R78 29
     1202 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1204 LOADK                            R79 K99 ["NativeGraphContext_CreateNode"]
     1205 MOVE                             R80 R39
     1206 CALL                             R78 2 0
     1207 GETUPVAL                         R78 29
     1208 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1210 LOADK                            R79 K100 ["NativeGraphContext_CreateParameterAsync"]
     1211 MOVE                             R80 R48
     1212 CALL                             R78 2 0
     1213 GETUPVAL                         R78 29
     1214 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1216 LOADK                            R79 K101 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1217 MOVE                             R80 R58
     1218 CALL                             R78 2 0
     1219 GETUPVAL                         R78 29
     1220 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1222 LOADK                            R79 K102 ["NativeGraphContext_CreateExistingParameterAsync"]
     1223 MOVE                             R80 R49
     1224 CALL                             R78 2 0
     1225 GETUPVAL                         R78 29
     1226 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1228 LOADK                            R79 K103 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1229 MOVE                             R80 R47
     1230 CALL                             R78 2 0
     1231 GETUPVAL                         R78 29
     1232 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1234 LOADK                            R79 K104 ["NativeGraphContext_SelectNodes"]
     1235 MOVE                             R80 R32
     1236 CALL                             R78 2 0
     1237 GETUPVAL                         R78 29
     1238 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1240 LOADK                            R79 K105 ["NativeGraphContext_SelectNodesFromRect"]
     1241 MOVE                             R80 R33
     1242 CALL                             R78 2 0
     1243 GETUPVAL                         R78 29
     1244 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1246 LOADK                            R79 K106 ["NativeGraphContext_SetNodePositionsAsync"]
     1247 MOVE                             R80 R30
     1248 CALL                             R78 2 0
     1249 GETUPVAL                         R78 29
     1250 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1252 LOADK                            R79 K107 ["NativeGraphContext_SetNodeSizeAsync"]
     1253 MOVE                             R80 R31
     1254 CALL                             R78 2 0
     1255 GETUPVAL                         R78 29
     1256 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1258 LOADK                            R79 K108 ["NativeGraphContext_SetNodeConnectionAsync"]
     1259 MOVE                             R80 R57
     1260 CALL                             R78 2 0
     1261 GETUPVAL                         R78 29
     1262 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1264 LOADK                            R79 K109 ["NativeGraphContext_DeleteNodeInput"]
     1265 MOVE                             R80 R50
     1266 CALL                             R78 2 0
     1267 GETUPVAL                         R78 29
     1268 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1270 LOADK                            R79 K110 ["NativeGraphContext_RenameNodeInput"]
     1271 MOVE                             R80 R51
     1272 CALL                             R78 2 0
     1273 GETUPVAL                         R78 29
     1274 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1276 LOADK                            R79 K111 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1277 MOVE                             R80 R56
     1278 CALL                             R78 2 0
     1279 GETUPVAL                         R78 29
     1280 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1282 LOADK                            R79 K112 ["NativeGraphContext_RemoveNodeInputConnection"]
     1283 MOVE                             R80 R52
     1284 CALL                             R78 2 0
     1285 GETUPVAL                         R78 29
     1286 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1288 LOADK                            R79 K113 ["NativeGraphContext_RemoveParameterAsync"]
     1289 MOVE                             R80 R65
     1290 CALL                             R78 2 0
     1291 GETUPVAL                         R78 29
     1292 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1294 LOADK                            R79 K114 ["NativeGraphContext_RenameNodeAsync"]
     1295 MOVE                             R80 R63
     1296 CALL                             R78 2 0
     1297 GETUPVAL                         R78 29
     1298 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1300 LOADK                            R79 K115 ["NativeGraphContext_RenameParameterAsync"]
     1301 MOVE                             R80 R66
     1302 CALL                             R78 2 0
     1303 GETUPVAL                         R78 29
     1304 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1306 LOADK                            R79 K116 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1307 MOVE                             R80 R68
     1308 CALL                             R78 2 0
     1309 GETUPVAL                         R78 29
     1310 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1312 LOADK                            R79 K117 ["NativeGraphContext_ShowNodeInExplorer"]
     1313 MOVE                             R80 R69
     1314 CALL                             R78 2 0
     1315 GETUPVAL                         R78 29
     1316 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1318 LOADK                            R79 K118 ["NativeGraphContext_SetCollapsedAsync"]
     1319 MOVE                             R80 R28
     1320 CALL                             R78 2 0
     1321 GETUPVAL                         R78 29
     1322 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1324 LOADK                            R79 K119 ["NativeGraphContext_setNodePropertyAsync"]
     1325 MOVE                             R80 R61
     1326 CALL                             R78 2 0
     1327 GETUPVAL                         R78 29
     1328 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1330 LOADK                            R79 K120 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1331 MOVE                             R80 R62
     1332 CALL                             R78 2 0
     1333 GETUPVAL                         R78 29
     1334 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1336 LOADK                            R79 K121 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1337 MOVE                             R80 R67
     1338 CALL                             R78 2 0
     1339 GETUPVAL                         R78 29
     1340 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1342 LOADK                            R79 K122 ["NativeGraphContext_ReorderPinsAsync"]
     1343 MOVE                             R80 R64
     1344 CALL                             R78 2 0
     1345 GETUPVAL                         R78 29
     1346 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1348 LOADK                            R79 K123 ["NativeGraphContext_beginUndoTransaction"]
     1349 MOVE                             R80 R59
     1350 CALL                             R78 2 0
     1351 GETUPVAL                         R78 29
     1352 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1354 LOADK                            R79 K124 ["NativeGraphContext_finishUndoTransaction"]
     1355 MOVE                             R80 R60
     1356 CALL                             R78 2 0
     1357 GETUPVAL                         R78 29
     1358 GETTABLEKS                       R78 R78 K24 ["useBoundAction"]
     1360 LOADK                            R79 K125 ["NativeGraphContext_SetExpressionNodeValueAsync"]
     1361 MOVE                             R80 R70
     1362 CALL                             R78 2 0
     1363 GETUPVAL                         R78 41
     1364 GETTABLEKS                       R78 R78 K23 ["useProducer"]
     1366 MOVE                             R79 R29
     1367 CALL                             R78 1 0
     1368 GETUPVAL                         R78 2
     1369 GETTABLEKS                       R78 R78 K126 ["createElement"]
     1371 GETUPVAL                         R79 42
     1372 GETTABLEKS                       R79 R79 K127 ["Provider"]
     1374 DUPTABLE                         R80 K129 [{"value"}]
     1375 SETTABLEKS                       R74 R80 K128 ["value"]
     1377 DUPTABLE                         R81 K131 [{"ContextStack"}]
     1378 GETUPVAL                         R82 2
     1379 GETTABLEKS                       R82 R82 K126 ["createElement"]
     1381 GETUPVAL                         R83 15
     1382 GETTABLEKS                       R83 R83 K130 ["ContextStack"]
     1384 DUPTABLE                         R84 K133 [{"providers"}]
     1385 NEWTABLE                         R85 0 2
     1387 GETUPVAL                         R86 2
     1388 GETTABLEKS                       R86 R86 K126 ["createElement"]
     1390 GETUPVAL                         R87 43
     1391 GETTABLEKS                       R87 R87 K127 ["Provider"]
     1393 DUPTABLE                         R88 K135 [{"timeRange"}]
     1394 SETTABLEKS                       R75 R88 K134 ["timeRange"]
     1396 CALL                             R86 2 1
     1397 GETUPVAL                         R87 2
     1398 GETTABLEKS                       R87 R87 K126 ["createElement"]
     1400 GETUPVAL                         R88 44
     1401 GETTABLEKS                       R88 R88 K127 ["Provider"]
     1403 DUPTABLE                         R89 K137 [{"animationClipsList"}]
     1404 SETTABLEKS                       R77 R89 K136 ["animationClipsList"]
     1406 CALL                             R87 2 -1
     1407 SETLIST                          R85 R86 -1 [1]
     1409 SETTABLEKS                       R85 R84 K132 ["providers"]
     1411 GETTABLEKS                       R85 R0 K138 ["children"]
     1413 CALL                             R82 3 1
     1414 SETTABLEKS                       R82 R81 K130 ["ContextStack"]
     1416 CALL                             R78 3 -1
     1417 RETURN                           R78 -1

PROTO_77:
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

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_80:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_81:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_82:
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

PROTO_83:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_84:
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

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_93:
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

PROTO_94:
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
      173 GETUPVAL                         R26 3
      174 GETTABLEKS                       R26 R26 K22 ["useBoundAction"]
      176 LOADK                            R27 K37 ["NativeGraphContext_RemoveParameterAsync"]
      177 CALL                             R26 1 1
      178 GETUPVAL                         R27 3
      179 GETTABLEKS                       R27 R27 K22 ["useBoundAction"]
      181 LOADK                            R28 K38 ["NativeGraphContext_RenameNodeAsync"]
      182 CALL                             R27 1 1
      183 GETUPVAL                         R28 3
      184 GETTABLEKS                       R28 R28 K22 ["useBoundAction"]
      186 LOADK                            R29 K39 ["NativeGraphContext_RenameParameterAsync"]
      187 CALL                             R28 1 1
      188 GETUPVAL                         R29 3
      189 GETTABLEKS                       R29 R29 K22 ["useBoundAction"]
      191 LOADK                            R30 K40 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      192 CALL                             R29 1 1
      193 GETUPVAL                         R30 3
      194 GETTABLEKS                       R30 R30 K22 ["useBoundAction"]
      196 LOADK                            R31 K41 ["NativeGraphContext_ShowNodeInExplorer"]
      197 CALL                             R30 1 1
      198 GETUPVAL                         R31 3
      199 GETTABLEKS                       R31 R31 K22 ["useBoundAction"]
      201 LOADK                            R32 K42 ["NativeGraphContext_SetCollapsedAsync"]
      202 CALL                             R31 1 1
      203 GETUPVAL                         R32 5
      204 GETTABLEKS                       R32 R32 K43 ["useConsumer"]
      206 CALL                             R32 0 1
      207 GETUPVAL                         R33 3
      208 GETTABLEKS                       R33 R33 K22 ["useBoundAction"]
      210 LOADK                            R34 K44 ["NativeGraphContext_setNodePropertyAsync"]
      211 CALL                             R33 1 1
      212 GETUPVAL                         R34 3
      213 GETTABLEKS                       R34 R34 K22 ["useBoundAction"]
      215 LOADK                            R35 K45 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      216 CALL                             R34 1 1
      217 GETUPVAL                         R35 3
      218 GETTABLEKS                       R35 R35 K22 ["useBoundAction"]
      220 LOADK                            R36 K46 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      221 CALL                             R35 1 1
      222 GETUPVAL                         R36 3
      223 GETTABLEKS                       R36 R36 K22 ["useBoundAction"]
      225 LOADK                            R37 K47 ["NativeGraphContext_SelectNodesFromRect"]
      226 CALL                             R36 1 1
      227 GETUPVAL                         R37 3
      228 GETTABLEKS                       R37 R37 K22 ["useBoundAction"]
      230 LOADK                            R38 K48 ["NativeGraphContext_DuplicateSelectedNodes"]
      231 CALL                             R37 1 1
      232 GETUPVAL                         R38 3
      233 GETTABLEKS                       R38 R38 K22 ["useBoundAction"]
      235 LOADK                            R39 K49 ["NativeGraphContext_SelectAllNodes"]
      236 CALL                             R38 1 1
      237 GETUPVAL                         R39 3
      238 GETTABLEKS                       R39 R39 K22 ["useBoundAction"]
      240 LOADK                            R40 K50 ["NativeGraphContext_ClearNodeSelection"]
      241 CALL                             R39 1 1
      242 GETUPVAL                         R40 3
      243 GETTABLEKS                       R40 R40 K22 ["useBoundAction"]
      245 LOADK                            R41 K51 ["NativeGraphContext_CopySelectedNodes"]
      246 CALL                             R40 1 1
      247 GETUPVAL                         R41 3
      248 GETTABLEKS                       R41 R41 K22 ["useBoundAction"]
      250 LOADK                            R42 K52 ["NativeGraphContext_CutSelectedNodes"]
      251 CALL                             R41 1 1
      252 GETUPVAL                         R42 3
      253 GETTABLEKS                       R42 R42 K22 ["useBoundAction"]
      255 LOADK                            R43 K53 ["NativeGraphContext_PasteNodes"]
      256 CALL                             R42 1 1
      257 GETUPVAL                         R43 6
      258 GETTABLEKS                       R43 R43 K43 ["useConsumer"]
      260 CALL                             R43 0 1
      261 GETUPVAL                         R44 3
      262 GETTABLEKS                       R44 R44 K22 ["useBoundAction"]
      264 LOADK                            R45 K54 ["NativeGraphContext_beginUndoTransaction"]
      265 CALL                             R44 1 1
      266 GETUPVAL                         R45 3
      267 GETTABLEKS                       R45 R45 K22 ["useBoundAction"]
      269 LOADK                            R46 K55 ["NativeGraphContext_finishUndoTransaction"]
      270 CALL                             R45 1 1
      271 GETUPVAL                         R46 3
      272 GETTABLEKS                       R46 R46 K22 ["useBoundAction"]
      274 LOADK                            R47 K56 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      275 CALL                             R46 1 1
      276 NEWTABLE                         R47 64 0
      278 SETTABLEKS                       R12 R47 K57 ["reorderPinsAsync"]
      280 SETTABLEKS                       R13 R47 K58 ["createNodeAsync"]
      282 SETTABLEKS                       R14 R47 K59 ["createParameterAsync"]
      284 SETTABLEKS                       R15 R47 K60 ["createConnectedParameterAsync"]
      286 SETTABLEKS                       R16 R47 K61 ["createExistingParameterAsync"]
      288 SETTABLEKS                       R8 R47 K62 ["graphRect"]
      290 SETTABLEKS                       R17 R47 K63 ["selectAllParameterNodesWithNameAsync"]
      292 SETTABLEKS                       R18 R47 K64 ["selectNodesAsync"]
      294 SETTABLEKS                       R36 R47 K65 ["selectNodesFromRectAsync"]
      296 NEWCLOSURE                       R48 P2
      297 CAPTURE                          VAL R43
      298 SETTABLEKS                       R48 R47 K66 ["removeSelectedNodesAsync"]
      300 SETTABLEKS                       R37 R47 K67 ["duplicateSelectedNodesAsync"]
      302 SETTABLEKS                       R38 R47 K68 ["selectAllNodesAsync"]
      304 SETTABLEKS                       R39 R47 K69 ["clearNodeSelectionAsync"]
      306 SETTABLEKS                       R40 R47 K70 ["copySelectedNodesAsync"]
      308 SETTABLEKS                       R41 R47 K71 ["cutSelectedNodesAsync"]
      310 SETTABLEKS                       R42 R47 K72 ["pasteNodesAsync"]
      312 SETTABLEKS                       R19 R47 K73 ["setNodePositionsAsync"]
      314 SETTABLEKS                       R20 R47 K74 ["setNodeSizeAsync"]
      316 SETTABLEKS                       R21 R47 K75 ["setNodeConnectionAsync"]
      318 SETTABLEKS                       R22 R47 K76 ["deleteNodeInput"]
      320 SETTABLEKS                       R23 R47 K77 ["renameNodeInputAsync"]
      322 SETTABLEKS                       R24 R47 K78 ["removeNodeOutputConnectionAsync"]
      324 SETTABLEKS                       R25 R47 K79 ["removeNodeInputConnectionAsync"]
      326 SETTABLEKS                       R26 R47 K80 ["removeParameterAsync"]
      328 SETTABLEKS                       R27 R47 K81 ["renameNodeAsync"]
      330 SETTABLEKS                       R28 R47 K82 ["renameParameterAsync"]
      332 SETTABLEKS                       R29 R47 K83 ["deleteNodeInstanceAsync"]
      334 SETTABLEKS                       R30 R47 K84 ["showNodeInExplorerAsync"]
      336 SETTABLEKS                       R31 R47 K85 ["setCollapsedAsync"]
      338 SETTABLEKS                       R33 R47 K86 ["setNodePropertyAsync"]
      340 SETTABLEKS                       R34 R47 K87 ["setInputPinNodePropertyAsync"]
      342 SETTABLEKS                       R46 R47 K88 ["setExpressionNodeValueAsync"]
      344 SETTABLEKS                       R35 R47 K89 ["setParameterNodeTypeAsync"]
      346 SETTABLEKS                       R9 R47 K90 ["sourceAssetId"]
      348 SETTABLEKS                       R10 R47 K91 ["selectedGraphKey"]
      350 GETTABLEKS                       R48 R1 K92 ["observe"]
      352 SETTABLEKS                       R48 R47 K93 ["observeGraphNodeById"]
      354 GETTABLEKS                       R48 R2 K92 ["observe"]
      356 SETTABLEKS                       R48 R47 K94 ["observeNodeRenderInfoById"]
      358 SETTABLEKS                       R44 R47 K95 ["beginUndoTransaction"]
      360 SETTABLEKS                       R45 R47 K96 ["finishUndoTransaction"]
      362 GETTABLEKS                       R48 R1 K97 ["observeMap"]
      364 SETTABLEKS                       R48 R47 K98 ["observeGraphNodeMap"]
      366 GETTABLEKS                       R48 R2 K97 ["observeMap"]
      368 SETTABLEKS                       R48 R47 K99 ["observeRenderInfoMap"]
      370 GETTABLEKS                       R48 R11 K100 ["hasGraphOutput"]
      372 SETTABLEKS                       R48 R47 K100 ["hasGraphOutput"]
      374 GETTABLEKS                       R48 R3 K92 ["observe"]
      376 SETTABLEKS                       R48 R47 K101 ["observeNodePropsById"]
      378 SETTABLEKS                       R6 R47 K102 ["observeExpressionNodes"]
      380 DUPCLOSURE                       R48 K103 [PROTO_81]
      381 GETUPVAL                         R49 1
      382 GETTABLEKS                       R49 R49 K0 ["useContext"]
      384 GETUPVAL                         R50 7
      385 GETTABLEKS                       R50 R50 K1 ["Context"]
      387 CALL                             R49 1 1
      388 GETUPVAL                         R50 1
      389 GETTABLEKS                       R50 R50 K2 ["useCallback"]
      391 NEWCLOSURE                       R51 P4
      392 CAPTURE                          UPVAL U8
      393 CAPTURE                          VAL R49
      394 CAPTURE                          UPVAL U9
      395 NEWTABLE                         R52 0 2
      397 GETTABLEKS                       R53 R49 K104 ["observeDebugData"]
      399 GETTABLEKS                       R54 R49 K105 ["observeActiveDebugTargetIdentifier"]
      401 SETLIST                          R52 R53 2 [1]
      403 CALL                             R50 2 1
      404 GETUPVAL                         R51 1
      405 GETTABLEKS                       R51 R51 K2 ["useCallback"]
      407 NEWCLOSURE                       R52 P5
      408 CAPTURE                          UPVAL U8
      409 CAPTURE                          VAL R49
      410 CAPTURE                          UPVAL U9
      411 NEWTABLE                         R53 0 2
      413 GETTABLEKS                       R54 R49 K104 ["observeDebugData"]
      415 GETTABLEKS                       R55 R49 K105 ["observeActiveDebugTargetIdentifier"]
      417 SETLIST                          R53 R54 2 [1]
      419 CALL                             R51 2 1
      420 GETUPVAL                         R52 1
      421 GETTABLEKS                       R52 R52 K2 ["useCallback"]
      423 NEWCLOSURE                       R53 P6
      424 CAPTURE                          VAL R51
      425 CAPTURE                          UPVAL U10
      426 NEWTABLE                         R54 0 1
      428 MOVE                             R55 R51
      429 SETLIST                          R54 R55 1 [1]
      431 CALL                             R52 2 1
      432 GETUPVAL                         R53 1
      433 GETTABLEKS                       R53 R53 K2 ["useCallback"]
      435 NEWCLOSURE                       R54 P7
      436 CAPTURE                          UPVAL U10
      437 CAPTURE                          VAL R1
      438 NEWTABLE                         R55 0 1
      440 GETTABLEKS                       R56 R1 K97 ["observeMap"]
      442 SETLIST                          R55 R56 1 [1]
      444 CALL                             R53 2 1
      445 GETUPVAL                         R54 11
      446 GETTABLEKS                       R54 R54 K43 ["useConsumer"]
      448 CALL                             R54 0 1
      449 GETUPVAL                         R55 12
      450 GETTABLEKS                       R55 R55 K106 ["useSignalState"]
      452 GETTABLEKS                       R56 R4 K107 ["observeSelectedGraphIsEphemeral"]
      454 CALL                             R55 1 1
      455 GETUPVAL                         R56 1
      456 GETTABLEKS                       R56 R56 K108 ["useMemo"]
      458 NEWCLOSURE                       R57 P8
      459 CAPTURE                          VAL R1
      460 CAPTURE                          VAL R2
      461 CAPTURE                          VAL R55
      462 CAPTURE                          VAL R54
      463 CAPTURE                          VAL R12
      464 CAPTURE                          VAL R14
      465 CAPTURE                          VAL R16
      466 CAPTURE                          VAL R15
      467 CAPTURE                          VAL R17
      468 CAPTURE                          VAL R18
      469 CAPTURE                          VAL R31
      470 CAPTURE                          VAL R32
      471 CAPTURE                          VAL R22
      472 CAPTURE                          VAL R25
      473 CAPTURE                          VAL R24
      474 CAPTURE                          VAL R26
      475 CAPTURE                          VAL R27
      476 CAPTURE                          VAL R28
      477 CAPTURE                          VAL R29
      478 CAPTURE                          VAL R43
      479 CAPTURE                          VAL R21
      480 CAPTURE                          VAL R19
      481 CAPTURE                          VAL R33
      482 CAPTURE                          VAL R34
      483 CAPTURE                          VAL R20
      484 CAPTURE                          VAL R35
      485 CAPTURE                          VAL R3
      486 CAPTURE                          VAL R50
      487 CAPTURE                          VAL R52
      488 CAPTURE                          VAL R53
      489 NEWTABLE                         R58 0 30
      491 MOVE                             R59 R1
      492 MOVE                             R60 R2
      493 MOVE                             R61 R54
      494 MOVE                             R62 R12
      495 MOVE                             R63 R14
      496 MOVE                             R64 R16
      497 MOVE                             R65 R15
      498 MOVE                             R66 R17
      499 MOVE                             R67 R18
      500 MOVE                             R68 R31
      501 MOVE                             R69 R32
      502 MOVE                             R70 R22
      503 MOVE                             R71 R25
      504 MOVE                             R72 R24
      505 MOVE                             R73 R26
      506 MOVE                             R74 R27
      507 SETLIST                          R58 R59 16 [1]
      509 MOVE                             R59 R28
      510 MOVE                             R60 R29
      511 MOVE                             R61 R43
      512 MOVE                             R62 R21
      513 MOVE                             R63 R19
      514 MOVE                             R64 R33
      515 MOVE                             R65 R34
      516 MOVE                             R66 R20
      517 MOVE                             R67 R35
      518 GETTABLEKS                       R68 R3 K92 ["observe"]
      520 MOVE                             R69 R50
      521 MOVE                             R70 R52
      522 MOVE                             R71 R55
      523 MOVE                             R72 R53
      524 SETLIST                          R58 R59 14 [17]
      526 CALL                             R56 2 1
      527 GETUPVAL                         R57 1
      528 GETTABLEKS                       R57 R57 K109 ["createElement"]
      530 GETUPVAL                         R58 13
      531 GETTABLEKS                       R58 R58 K110 ["Provider"]
      533 DUPTABLE                         R59 K112 [{"value"}]
      534 SETTABLEKS                       R47 R59 K111 ["value"]
      536 DUPTABLE                         R60 K114 [{"ContextStack"}]
      537 GETUPVAL                         R61 1
      538 GETTABLEKS                       R61 R61 K109 ["createElement"]
      540 GETUPVAL                         R62 14
      541 GETTABLEKS                       R62 R62 K113 ["ContextStack"]
      543 DUPTABLE                         R63 K116 [{"providers"}]
      544 NEWTABLE                         R64 0 3
      546 GETUPVAL                         R65 1
      547 GETTABLEKS                       R65 R65 K109 ["createElement"]
      549 GETUPVAL                         R66 15
      550 GETTABLEKS                       R66 R66 K117 ["GraphContext"]
      552 GETTABLEKS                       R66 R66 K110 ["Provider"]
      554 DUPTABLE                         R67 K112 [{"value"}]
      555 SETTABLEKS                       R56 R67 K111 ["value"]
      557 CALL                             R65 2 1
      558 GETUPVAL                         R66 1
      559 GETTABLEKS                       R66 R66 K109 ["createElement"]
      561 GETUPVAL                         R67 16
      562 GETTABLEKS                       R67 R67 K118 ["UIDataModelProvider"]
      564 CALL                             R66 1 1
      565 GETUPVAL                         R67 1
      566 GETTABLEKS                       R67 R67 K109 ["createElement"]
      568 GETUPVAL                         R68 17
      569 GETTABLEKS                       R68 R68 K110 ["Provider"]
      571 DUPTABLE                         R69 K120 [{"timeRange"}]
      572 SETTABLEKS                       R7 R69 K119 ["timeRange"]
      574 CALL                             R67 2 -1
      575 SETLIST                          R64 R65 -1 [1]
      577 SETTABLEKS                       R64 R63 K115 ["providers"]
      579 GETTABLEKS                       R64 R0 K121 ["children"]
      581 CALL                             R61 3 1
      582 SETTABLEKS                       R61 R60 K113 ["ContextStack"]
      584 CALL                             R57 3 -1
      585 RETURN                           R57 -1

PROTO_95:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_96:
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

PROTO_97:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsServer"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

PROTO_98:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_97]
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
      233 GETTABLEKS                       R31 R31 K49 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      235 CALL                             R30 1 1
      236 GETIMPORT                        R31 K11 [require]
      238 GETTABLEKS                       R32 R0 K48 ["Flags"]
      240 GETTABLEKS                       R32 R32 K50 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      242 CALL                             R31 1 1
      243 GETIMPORT                        R32 K11 [require]
      245 GETTABLEKS                       R33 R0 K48 ["Flags"]
      247 GETTABLEKS                       R33 R33 K51 ["getFFlagAnimGraphUIEnableValueNodes"]
      249 CALL                             R32 1 1
      250 GETIMPORT                        R33 K11 [require]
      252 GETTABLEKS                       R34 R0 K48 ["Flags"]
      254 GETTABLEKS                       R34 R34 K52 ["getFFlagAnimGraphUIInputIds"]
      256 CALL                             R33 1 1
      257 GETIMPORT                        R34 K11 [require]
      259 GETTABLEKS                       R35 R0 K48 ["Flags"]
      261 GETTABLEKS                       R35 R35 K53 ["getFFlagAnimGraphUI_Localization2"]
      263 CALL                             R34 1 1
      264 GETIMPORT                        R35 K11 [require]
      266 GETTABLEKS                       R36 R0 K48 ["Flags"]
      268 GETTABLEKS                       R36 R36 K54 ["getFFlagAnimGraphUI_NewGraphOnInsertNode"]
      270 CALL                             R35 1 1
      271 GETIMPORT                        R36 K11 [require]
      273 GETTABLEKS                       R37 R0 K48 ["Flags"]
      275 GETTABLEKS                       R37 R37 K55 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      277 CALL                             R36 1 1
      278 GETIMPORT                        R37 K11 [require]
      280 GETTABLEKS                       R38 R0 K14 ["Util"]
      282 GETTABLEKS                       R38 R38 K56 ["parseAnimationNodeType"]
      284 CALL                             R37 1 1
      285 GETIMPORT                        R38 K11 [require]
      287 GETTABLEKS                       R39 R0 K14 ["Util"]
      289 GETTABLEKS                       R39 R39 K57 ["sanitizeParameterNames"]
      291 CALL                             R38 1 1
      292 GETIMPORT                        R39 K11 [require]
      294 GETTABLEKS                       R40 R0 K43 ["Components"]
      296 GETTABLEKS                       R40 R40 K44 ["NodeView"]
      298 GETTABLEKS                       R40 R40 K45 ["StateMachine"]
      300 GETTABLEKS                       R40 R40 K58 ["supportsStateMachineNode"]
      302 CALL                             R39 1 1
      303 GETIMPORT                        R40 K11 [require]
      305 GETIMPORT                        R41 K1 [script]
      307 GETTABLEKS                       R41 R41 K59 ["useGraphAnalytics"]
      309 CALL                             R40 1 1
      310 GETIMPORT                        R41 K11 [require]
      312 GETTABLEKS                       R42 R0 K60 ["Hooks"]
      314 GETTABLEKS                       R42 R42 K61 ["useNodeDefinitionDestroyHelper"]
      316 CALL                             R41 1 1
      317 GETIMPORT                        R42 K11 [require]
      319 GETTABLEKS                       R43 R0 K60 ["Hooks"]
      321 GETTABLEKS                       R43 R43 K62 ["useObserveNodeSelection"]
      323 CALL                             R42 1 1
      324 GETIMPORT                        R43 K11 [require]
      326 GETTABLEKS                       R44 R0 K60 ["Hooks"]
      328 GETTABLEKS                       R44 R44 K63 ["useParameterDestroyHelper"]
      330 CALL                             R43 1 1
      331 GETIMPORT                        R44 K11 [require]
      333 GETTABLEKS                       R45 R0 K60 ["Hooks"]
      335 GETTABLEKS                       R45 R45 K64 ["useSignalDispatcher"]
      337 CALL                             R44 1 1
      338 GETIMPORT                        R45 K11 [require]
      340 GETTABLEKS                       R46 R0 K60 ["Hooks"]
      342 GETTABLEKS                       R46 R46 K65 ["useValueNodeDestroyHelper"]
      344 CALL                             R45 1 1
      345 NEWTABLE                         R46 64 0
      347 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      349 LOADK                            R48 K67 ["observeGraphNodeMap"]
      350 CALL                             R47 1 1
      351 SETTABLEKS                       R47 R46 K67 ["observeGraphNodeMap"]
      353 GETIMPORT                        R47 K70 [Rect.new]
      355 LOADN                            R48 0
      356 LOADN                            R49 0
      357 LOADN                            R50 0
      358 LOADN                            R51 0
      359 CALL                             R47 4 1
      360 SETTABLEKS                       R47 R46 K71 ["graphRect"]
      362 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      364 LOADK                            R48 K72 ["reorderPinsAsync"]
      365 CALL                             R47 1 1
      366 SETTABLEKS                       R47 R46 K72 ["reorderPinsAsync"]
      368 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      370 LOADK                            R48 K73 ["createNodeAsync"]
      371 CALL                             R47 1 1
      372 SETTABLEKS                       R47 R46 K73 ["createNodeAsync"]
      374 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      376 LOADK                            R48 K74 ["createParameterAsync"]
      377 CALL                             R47 1 1
      378 SETTABLEKS                       R47 R46 K74 ["createParameterAsync"]
      380 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      382 LOADK                            R48 K75 ["createConnectedParameterAsync"]
      383 CALL                             R47 1 1
      384 SETTABLEKS                       R47 R46 K75 ["createConnectedParameterAsync"]
      386 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      388 LOADK                            R48 K76 ["createExistingParameterAsync"]
      389 CALL                             R47 1 1
      390 SETTABLEKS                       R47 R46 K76 ["createExistingParameterAsync"]
      392 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      394 LOADK                            R48 K77 ["selectAllParameterNodesWithNameAsync"]
      395 CALL                             R47 1 1
      396 SETTABLEKS                       R47 R46 K77 ["selectAllParameterNodesWithNameAsync"]
      398 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      400 LOADK                            R48 K78 ["selectNodesAsync"]
      401 CALL                             R47 1 1
      402 SETTABLEKS                       R47 R46 K78 ["selectNodesAsync"]
      404 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      406 LOADK                            R48 K79 ["selectNodesFromRectAsync"]
      407 CALL                             R47 1 1
      408 SETTABLEKS                       R47 R46 K79 ["selectNodesFromRectAsync"]
      410 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      412 LOADK                            R48 K80 ["removeSelectedNodesAsync"]
      413 CALL                             R47 1 1
      414 SETTABLEKS                       R47 R46 K80 ["removeSelectedNodesAsync"]
      416 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      418 LOADK                            R48 K81 ["duplicateSelectedNodesAsync"]
      419 CALL                             R47 1 1
      420 SETTABLEKS                       R47 R46 K81 ["duplicateSelectedNodesAsync"]
      422 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      424 LOADK                            R48 K82 ["selectAllNodesAsync"]
      425 CALL                             R47 1 1
      426 SETTABLEKS                       R47 R46 K82 ["selectAllNodesAsync"]
      428 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      430 LOADK                            R48 K83 ["clearNodeSelectionAsync"]
      431 CALL                             R47 1 1
      432 SETTABLEKS                       R47 R46 K83 ["clearNodeSelectionAsync"]
      434 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      436 LOADK                            R48 K84 ["copySelectedNodesAsync"]
      437 CALL                             R47 1 1
      438 SETTABLEKS                       R47 R46 K84 ["copySelectedNodesAsync"]
      440 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      442 LOADK                            R48 K85 ["cutSelectedNodesAsync"]
      443 CALL                             R47 1 1
      444 SETTABLEKS                       R47 R46 K85 ["cutSelectedNodesAsync"]
      446 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      448 LOADK                            R48 K86 ["pasteNodesAsync"]
      449 CALL                             R47 1 1
      450 SETTABLEKS                       R47 R46 K86 ["pasteNodesAsync"]
      452 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      454 LOADK                            R48 K87 ["setNodePositionsAsync"]
      455 CALL                             R47 1 1
      456 SETTABLEKS                       R47 R46 K87 ["setNodePositionsAsync"]
      458 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      460 LOADK                            R48 K88 ["setNodeSizeAsync"]
      461 CALL                             R47 1 1
      462 SETTABLEKS                       R47 R46 K88 ["setNodeSizeAsync"]
      464 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      466 LOADK                            R48 K89 ["deleteNodeInput"]
      467 CALL                             R47 1 1
      468 SETTABLEKS                       R47 R46 K89 ["deleteNodeInput"]
      470 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      472 LOADK                            R48 K90 ["renameNodeInputAsync"]
      473 CALL                             R47 1 1
      474 SETTABLEKS                       R47 R46 K90 ["renameNodeInputAsync"]
      476 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      478 LOADK                            R48 K91 ["removeNodeInputConnectionAsync"]
      479 CALL                             R47 1 1
      480 SETTABLEKS                       R47 R46 K91 ["removeNodeInputConnectionAsync"]
      482 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      484 LOADK                            R48 K92 ["removeNodeOutputConnectionAsync"]
      485 CALL                             R47 1 1
      486 SETTABLEKS                       R47 R46 K92 ["removeNodeOutputConnectionAsync"]
      488 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      490 LOADK                            R48 K93 ["removeParameterAsync"]
      491 CALL                             R47 1 1
      492 SETTABLEKS                       R47 R46 K93 ["removeParameterAsync"]
      494 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      496 LOADK                            R48 K94 ["renameNodeAsync"]
      497 CALL                             R47 1 1
      498 SETTABLEKS                       R47 R46 K94 ["renameNodeAsync"]
      500 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      502 LOADK                            R48 K95 ["renameParameterAsync"]
      503 CALL                             R47 1 1
      504 SETTABLEKS                       R47 R46 K95 ["renameParameterAsync"]
      506 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      508 LOADK                            R48 K96 ["deleteNodeInstanceAsync"]
      509 CALL                             R47 1 1
      510 SETTABLEKS                       R47 R46 K96 ["deleteNodeInstanceAsync"]
      512 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      514 LOADK                            R48 K97 ["showNodeInExplorerAsync"]
      515 CALL                             R47 1 1
      516 SETTABLEKS                       R47 R46 K97 ["showNodeInExplorerAsync"]
      518 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      520 LOADK                            R48 K98 ["setNewConnection"]
      521 CALL                             R47 1 1
      522 SETTABLEKS                       R47 R46 K99 ["setNodeConnectionAsync"]
      524 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      526 LOADK                            R48 K100 ["setCollapsedAsync"]
      527 CALL                             R47 1 1
      528 SETTABLEKS                       R47 R46 K100 ["setCollapsedAsync"]
      530 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      532 LOADK                            R48 K101 ["setNodePropertyAsync"]
      533 CALL                             R47 1 1
      534 SETTABLEKS                       R47 R46 K101 ["setNodePropertyAsync"]
      536 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      538 LOADK                            R48 K102 ["setInputPinNodePropertyAsync"]
      539 CALL                             R47 1 1
      540 SETTABLEKS                       R47 R46 K102 ["setInputPinNodePropertyAsync"]
      542 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      544 LOADK                            R48 K103 ["setParameterNodeTypeAsync"]
      545 CALL                             R47 1 1
      546 SETTABLEKS                       R47 R46 K103 ["setParameterNodeTypeAsync"]
      548 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      550 LOADK                            R48 K104 ["setExpressionNodeValueAsync"]
      551 CALL                             R47 1 1
      552 SETTABLEKS                       R47 R46 K104 ["setExpressionNodeValueAsync"]
      554 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      556 LOADK                            R48 K105 ["hasGraphOutput"]
      557 CALL                             R47 1 1
      558 SETTABLEKS                       R47 R46 K105 ["hasGraphOutput"]
      560 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      562 LOADK                            R48 K106 ["observeGraphNodeById"]
      563 CALL                             R47 1 1
      564 SETTABLEKS                       R47 R46 K106 ["observeGraphNodeById"]
      566 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      568 LOADK                            R48 K107 ["observeNodeRenderInfoById"]
      569 CALL                             R47 1 1
      570 SETTABLEKS                       R47 R46 K107 ["observeNodeRenderInfoById"]
      572 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      574 LOADK                            R48 K108 ["observeRenderInfoMap"]
      575 CALL                             R47 1 1
      576 SETTABLEKS                       R47 R46 K108 ["observeRenderInfoMap"]
      578 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      580 LOADK                            R48 K109 ["observeNodePropsById"]
      581 CALL                             R47 1 1
      582 SETTABLEKS                       R47 R46 K109 ["observeNodePropsById"]
      584 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      586 LOADK                            R48 K110 ["observeExpressionNodes"]
      587 CALL                             R47 1 1
      588 SETTABLEKS                       R47 R46 K110 ["observeExpressionNodes"]
      590 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      592 LOADK                            R48 K111 ["beginUndoTransaction"]
      593 CALL                             R47 1 1
      594 SETTABLEKS                       R47 R46 K111 ["beginUndoTransaction"]
      596 GETTABLEKS                       R47 R19 K66 ["createUnimplemented"]
      598 LOADK                            R48 K112 ["finishUndoTransaction"]
      599 CALL                             R47 1 1
      600 SETTABLEKS                       R47 R46 K112 ["finishUndoTransaction"]
      602 LOADNIL                          R47
      603 SETTABLEKS                       R47 R46 K113 ["sourceAssetId"]
      605 LOADNIL                          R47
      606 SETTABLEKS                       R47 R46 K114 ["selectedGraphKey"]
      608 GETTABLEKS                       R47 R18 K115 ["createContext"]
      610 MOVE                             R48 R46
      611 CALL                             R47 1 1
      612 DUPTABLE                         R48 K134 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction", ["EXPRESSION_NODES"] = "NativeGraphContext_ExpressionNodes"}]
      613 NEWTABLE                         R49 64 0
      615 LOADK                            R50 K135 ["NativeGraphContext_CreateNode"]
      616 SETTABLEKS                       R50 R49 K136 ["CREATE_NODE"]
      618 LOADK                            R50 K137 ["NativeGraphContext_CreateParameterAsync"]
      619 SETTABLEKS                       R50 R49 K138 ["CREATE_PARAMETER"]
      621 LOADK                            R50 K139 ["NativeGraphContext_CreateConnectedParameterAsync"]
      622 SETTABLEKS                       R50 R49 K140 ["CREATE_CONNECTED_PARAMETER"]
      624 LOADK                            R50 K141 ["NativeGraphContext_CreateExistingParameterAsync"]
      625 SETTABLEKS                       R50 R49 K142 ["CREATE_EXISTING_PARAMETER"]
      627 LOADK                            R50 K143 ["NativeGraphContext_GetSelectedGraphInstance"]
      628 SETTABLEKS                       R50 R49 K144 ["GET_SELECTED_GRAPH_INSTANCE"]
      630 LOADK                            R50 K145 ["NativeGraphContext_SetNodeConnectionAsync"]
      631 SETTABLEKS                       R50 R49 K146 ["SET_NODE_CONNECTION"]
      633 LOADK                            R50 K147 ["NativeGraphContext_setNodePropertyAsync"]
      634 SETTABLEKS                       R50 R49 K148 ["SET_NODE_PROPERTY"]
      636 LOADK                            R50 K149 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      637 SETTABLEKS                       R50 R49 K150 ["SET_INPUT_PIN_NODE_PROPERTY"]
      639 LOADK                            R50 K151 ["NativeGraphContext_ReorderPinsAsync"]
      640 SETTABLEKS                       R50 R49 K152 ["REORDER_PINS"]
      642 LOADK                            R50 K153 ["NativeGraphContext_DeleteNodeInput"]
      643 SETTABLEKS                       R50 R49 K154 ["DELETE_NODE_INPUT"]
      645 LOADK                            R50 K155 ["NativeGraphContext_RenameNodeInput"]
      646 SETTABLEKS                       R50 R49 K156 ["RENAME_NODE_INPUT"]
      648 LOADK                            R50 K157 ["NativeGraphContext_RemoveNodeInputConnection"]
      649 SETTABLEKS                       R50 R49 K158 ["REMOVE_NODE_INPUT_CONNECTION"]
      651 LOADK                            R50 K159 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      652 SETTABLEKS                       R50 R49 K160 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      654 LOADK                            R50 K161 ["NativeGraphContext_RemoveParameterAsync"]
      655 SETTABLEKS                       R50 R49 K162 ["REMOVE_PARAMETER"]
      657 LOADK                            R50 K163 ["NativeGraphContext_RenameNodeAsync"]
      658 SETTABLEKS                       R50 R49 K164 ["RENAME_NODE"]
      660 LOADK                            R50 K165 ["NativeGraphContext_RenameParameterAsync"]
      661 SETTABLEKS                       R50 R49 K166 ["RENAME_PARAMETER"]
      663 LOADK                            R50 K167 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      664 SETTABLEKS                       R50 R49 K168 ["DELETE_NODE_INSTANCE"]
      666 LOADK                            R50 K169 ["NativeGraphContext_ShowNodeInExplorer"]
      667 SETTABLEKS                       R50 R49 K170 ["SHOW_NODE_IN_EXPLORER"]
      669 LOADK                            R50 K171 ["NativeGraphContext_SetNodeSizeAsync"]
      670 SETTABLEKS                       R50 R49 K172 ["SET_NODE_SIZE"]
      672 LOADK                            R50 K173 ["NativeGraphContext_SetCollapsedAsync"]
      673 SETTABLEKS                       R50 R49 K174 ["SET_COLLAPSED"]
      675 LOADK                            R50 K175 ["NativeGraphContext_SetNodePositionsAsync"]
      676 SETTABLEKS                       R50 R49 K176 ["SET_NODE_POSITIONS"]
      678 LOADK                            R50 K177 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      679 SETTABLEKS                       R50 R49 K178 ["SET_PARAMETER_NODE_TYPE"]
      681 LOADK                            R50 K179 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      682 SETTABLEKS                       R50 R49 K180 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      684 LOADK                            R50 K181 ["NativeGraphContext_SelectNodes"]
      685 SETTABLEKS                       R50 R49 K182 ["SELECT_NODES"]
      687 LOADK                            R50 K183 ["NativeGraphContext_SelectNodesFromRect"]
      688 SETTABLEKS                       R50 R49 K184 ["SELECT_NODES_FROM_RECT"]
      690 LOADK                            R50 K185 ["NativeGraphContext_DuplicateSelectedNodes"]
      691 SETTABLEKS                       R50 R49 K186 ["DUPLICATE_SELECTED_NODES"]
      693 LOADK                            R50 K187 ["NativeGraphContext_SelectAllNodes"]
      694 SETTABLEKS                       R50 R49 K188 ["SELECT_ALL_NODES"]
      696 LOADK                            R50 K189 ["NativeGraphContext_ClearNodeSelection"]
      697 SETTABLEKS                       R50 R49 K190 ["CLEAR_NODE_SELECTION"]
      699 LOADK                            R50 K191 ["NativeGraphContext_CopySelectedNodes"]
      700 SETTABLEKS                       R50 R49 K192 ["COPY_SELECTED_NODES"]
      702 LOADK                            R50 K193 ["NativeGraphContext_CutSelectedNodes"]
      703 SETTABLEKS                       R50 R49 K194 ["CUT_SELECTED_NODES"]
      705 LOADK                            R50 K195 ["NativeGraphContext_PasteNodes"]
      706 SETTABLEKS                       R50 R49 K196 ["PASTE_NODES"]
      708 LOADK                            R50 K197 ["NativeGraphContext_beginUndoTransaction"]
      709 SETTABLEKS                       R50 R49 K198 ["BEGIN_UNDO_TRANSACTION"]
      711 LOADK                            R50 K199 ["NativeGraphContext_finishUndoTransaction"]
      712 SETTABLEKS                       R50 R49 K200 ["FINISH_UNDO_TRANSACTION"]
      714 LOADK                            R50 K201 ["NativeGraphContext_SetExpressionNodeValueAsync"]
      715 SETTABLEKS                       R50 R49 K202 ["SET_EXPRESSION_NODE_VALUE"]
      717 GETTABLEKS                       R50 R13 K203 ["createBoundAction"]
      719 LOADK                            R51 K204 ["NativeGraphContext_createNode"]
      720 CALL                             R50 1 1
      721 GETTABLEKS                       R51 R13 K203 ["createBoundAction"]
      723 LOADK                            R52 K205 ["NativeGraphContext_setZIndex"]
      724 CALL                             R51 1 1
      725 GETTABLEKS                       R52 R13 K203 ["createBoundAction"]
      727 LOADK                            R53 K206 ["NativeGraphContext_removeNodes"]
      728 CALL                             R52 1 1
      729 DUPCLOSURE                       R53 K207 [PROTO_0]
      730 DUPCLOSURE                       R54 K208 [PROTO_2]
      731 CAPTURE                          VAL R18
      732 DUPCLOSURE                       R55 K209 [PROTO_76]
      733 CAPTURE                          VAL R7
      734 CAPTURE                          VAL R44
      735 CAPTURE                          VAL R18
      736 CAPTURE                          VAL R15
      737 CAPTURE                          VAL R21
      738 CAPTURE                          VAL R17
      739 CAPTURE                          VAL R20
      740 CAPTURE                          VAL R35
      741 CAPTURE                          VAL R6
      742 CAPTURE                          VAL R42
      743 CAPTURE                          VAL R11
      744 CAPTURE                          VAL R40
      745 CAPTURE                          VAL R10
      746 CAPTURE                          VAL R23
      747 CAPTURE                          VAL R12
      748 CAPTURE                          VAL R19
      749 CAPTURE                          VAL R2
      750 CAPTURE                          VAL R26
      751 CAPTURE                          VAL R37
      752 CAPTURE                          VAL R14
      753 CAPTURE                          VAL R25
      754 CAPTURE                          VAL R36
      755 CAPTURE                          VAL R39
      756 CAPTURE                          VAL R28
      757 CAPTURE                          VAL R33
      758 CAPTURE                          VAL R1
      759 CAPTURE                          VAL R50
      760 CAPTURE                          VAL R53
      761 CAPTURE                          VAL R52
      762 CAPTURE                          VAL R13
      763 CAPTURE                          VAL R30
      764 CAPTURE                          VAL R31
      765 CAPTURE                          VAL R5
      766 CAPTURE                          VAL R41
      767 CAPTURE                          VAL R43
      768 CAPTURE                          VAL R45
      769 CAPTURE                          VAL R32
      770 CAPTURE                          VAL R34
      771 CAPTURE                          VAL R38
      772 CAPTURE                          VAL R54
      773 CAPTURE                          VAL R22
      774 CAPTURE                          VAL R51
      775 CAPTURE                          VAL R47
      776 CAPTURE                          VAL R29
      777 CAPTURE                          VAL R4
      778 DUPCLOSURE                       R56 K210 [PROTO_94]
      779 CAPTURE                          VAL R44
      780 CAPTURE                          VAL R18
      781 CAPTURE                          VAL R20
      782 CAPTURE                          VAL R13
      783 CAPTURE                          VAL R54
      784 CAPTURE                          VAL R51
      785 CAPTURE                          VAL R52
      786 CAPTURE                          VAL R8
      787 CAPTURE                          VAL R25
      788 CAPTURE                          VAL R24
      789 CAPTURE                          VAL R22
      790 CAPTURE                          VAL R50
      791 CAPTURE                          VAL R26
      792 CAPTURE                          VAL R47
      793 CAPTURE                          VAL R19
      794 CAPTURE                          VAL R14
      795 CAPTURE                          VAL R27
      796 CAPTURE                          VAL R29
      797 DUPCLOSURE                       R57 K211 [PROTO_96]
      798 DUPCLOSURE                       R58 K212 [PROTO_98]
      799 CAPTURE                          VAL R18
      800 CAPTURE                          VAL R3
      801 CAPTURE                          VAL R57
      802 CAPTURE                          VAL R55
      803 DUPTABLE                         R59 K218 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      804 SETTABLEKS                       R47 R59 K213 ["Context"]
      806 SETTABLEKS                       R55 R59 K214 ["EditableDataModelProvider"]
      808 SETTABLEKS                       R58 R59 K215 ["PreviewDataModelProvider"]
      810 SETTABLEKS                       R56 R59 K216 ["UIDataModelProvider"]
      812 SETTABLEKS                       R57 R59 K217 ["_setupEditorFolderForPreview"]
      814 RETURN                           R59 1
