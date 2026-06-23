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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
       44 JUMPIFNOT                        R6 ; [+6]
       45 GETUPVAL                         R7 7
       46 MOVE                             R9 R6
       47 NAMECALL                         R7 R7 K8 ["instanceToId"]
       49 CALL                             R7 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R7
       52 FASTCALL2K                       ASSERT R7 K9 ; [+5]
       54 MOVE                             R9 R7
       55 LOADK                            R10 K9 ["Failed to get new node ID after creation"]
       56 GETIMPORT                        R8 K11 [assert]
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 8
       60 CALL                             R8 0 1
       61 JUMPIFNOT                        R8 ; [+41]
       62 GETIMPORT                        R8 K15 [Enum.AnimationNodeType.Blend1DNode]
       64 JUMPIFNOTEQ                      R4 R8 ; [+38]
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R8 R8 K16 ["setNodeConnection"]
       69 GETUPVAL                         R9 7
       70 GETUPVAL                         R10 3
       71 MOVE                             R11 R7
       72 LOADK                            R12 K17 ["A"]
       73 LOADNIL                          R13
       74 LOADNIL                          R14
       75 LOADN                            R15 1
       76 CALL                             R8 7 3
       77 JUMPIFNOT                        R10 ; [+5]
       78 LOADK                            R13 K18 ["Position"]
       79 LOADN                            R14 0
       80 NAMECALL                         R11 R10 K19 ["SetAttribute"]
       82 CALL                             R11 3 0
       83 GETUPVAL                         R11 6
       84 GETTABLEKS                       R11 R11 K16 ["setNodeConnection"]
       86 GETUPVAL                         R12 7
       87 GETUPVAL                         R13 3
       88 MOVE                             R14 R7
       89 LOADK                            R15 K20 ["B"]
       90 LOADNIL                          R16
       91 LOADNIL                          R17
       92 LOADN                            R18 2
       93 CALL                             R11 7 3
       94 MOVE                             R9 R11
       95 MOVE                             R9 R12
       96 MOVE                             R10 R13
       97 JUMPIFNOT                        R10 ; [+5]
       98 LOADK                            R13 K18 ["Position"]
       99 LOADN                            R14 1
      100 NAMECALL                         R11 R10 K19 ["SetAttribute"]
      102 CALL                             R11 3 0
      103 JUMPIFNOT                        R2 ; [+86]
      104 GETTABLEKS                       R8 R2 K21 ["sourcePinSide"]
      106 JUMPIFNOTEQKS                    R8 K22 ["Input"] ; [+16]
      108 JUMPIFEQKNIL                     R7 ; [+81]
      110 GETUPVAL                         R8 6
      111 GETTABLEKS                       R8 R8 K16 ["setNodeConnection"]
      113 GETUPVAL                         R9 7
      114 GETUPVAL                         R10 3
      115 GETTABLEKS                       R11 R2 K23 ["sourcePinNodeId"]
      117 GETTABLEKS                       R12 R2 K24 ["sourcePinName"]
      119 MOVE                             R13 R7
      120 LOADK                            R14 K25 ["Output"]
      121 CALL                             R8 6 0
      122 JUMP                             ; [+67]
      123 GETTABLEKS                       R8 R2 K21 ["sourcePinSide"]
      125 JUMPIFNOTEQKS                    R8 K25 ["Output"] ; [+60]
      127 GETUPVAL                         R8 9
      128 MOVE                             R10 R4
      129 NAMECALL                         R8 R8 K26 ["GetAnimationNodeDefinition"]
      131 CALL                             R8 2 1
      132 LOADNIL                          R9
      133 GETUPVAL                         R10 6
      134 GETTABLEKS                       R10 R10 K27 ["hasDynamicInputPins"]
      136 GETUPVAL                         R11 3
      137 GETTABLEKS                       R12 R2 K23 ["sourcePinNodeId"]
      139 CALL                             R10 2 1
      140 JUMPIFNOT                        R10 ; [+9]
      141 GETUPVAL                         R10 6
      142 GETTABLEKS                       R10 R10 K28 ["getDynamicInputPinNameFromInputNode"]
      144 MOVE                             R11 R6
      145 GETTABLEKS                       R12 R2 K24 ["sourcePinName"]
      147 CALL                             R10 2 1
      148 MOVE                             R9 R10
      149 JUMP                             ; [+13]
      150 JUMPIFNOT                        R8 ; [+12]
      151 GETTABLEKS                       R10 R8 K29 ["Inputs"]
      153 JUMPIFNOT                        R10 ; [+9]
      154 GETTABLEKS                       R11 R8 K29 ["Inputs"]
      156 GETTABLEN                        R10 R11 1
      157 JUMPIFNOT                        R10 ; [+5]
      158 GETTABLEKS                       R11 R8 K29 ["Inputs"]
      160 GETTABLEN                        R10 R11 1
      161 GETTABLEKS                       R9 R10 K30 ["InputName"]
      163 JUMPIFEQKNIL                     R9 ; [+16]
      165 JUMPIFEQKNIL                     R7 ; [+24]
      167 GETUPVAL                         R10 6
      168 GETTABLEKS                       R10 R10 K16 ["setNodeConnection"]
      170 GETUPVAL                         R11 7
      171 GETUPVAL                         R12 3
      172 MOVE                             R13 R7
      173 MOVE                             R14 R9
      174 GETTABLEKS                       R15 R2 K23 ["sourcePinNodeId"]
      176 GETTABLEKS                       R16 R2 K24 ["sourcePinName"]
      178 CALL                             R10 6 0
      179 JUMP                             ; [+10]
      180 GETIMPORT                        R10 K2 [warn]
      182 LOADK                            R11 K31 ["Failed to find input pin name for node type:"]
      183 MOVE                             R12 R0
      184 CALL                             R10 2 0
      185 JUMP                             ; [+4]
      186 GETIMPORT                        R8 K33 [error]
      188 LOADK                            R9 K34 ["Bad sourcePinSide state"]
      189 CALL                             R8 1 0
      190 GETUPVAL                         R8 10
      191 GETTABLEKS                       R8 R8 K35 ["selectionService"]
      193 NEWTABLE                         R10 0 1
      195 MOVE                             R11 R6
      196 SETLIST                          R10 R11 1 [1]
      198 NAMECALL                         R8 R8 K36 ["Set"]
      200 CALL                             R8 2 0
      201 JUMPIFNOT                        R5 ; [+7]
      202 GETUPVAL                         R8 5
      203 MOVE                             R10 R5
      204 GETIMPORT                        R11 K39 [Enum.FinishRecordingOperation.Commit]
      206 NAMECALL                         R8 R8 K40 ["FinishRecording"]
      208 CALL                             R8 3 0
      209 RETURN                           R7 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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
       44 GETUPVAL                         R6 7
       45 GETTABLEKS                       R6 R6 K10 ["NODE_ATTRIBUTES"]
       47 GETTABLEKS                       R6 R6 K11 ["BindingName"]
       49 NAMECALL                         R4 R3 K12 ["GetAttribute"]
       51 CALL                             R4 2 1
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R1 K12 ["GetAttribute"]
       55 CALL                             R5 2 1
       56 JUMPIFNOTEQKNIL                  R5 ; [+24]
       58 GETTABLEKS                       R5 R0 K13 ["initializeWithValue"]
       60 JUMPIFEQKNIL                     R5 ; [+20]
       62 GETTABLEKS                       R6 R0 K13 ["initializeWithValue"]
       64 FASTCALL1                        TYPE R6 ; [+2]
       65 GETIMPORT                        R5 K15 [type]
       67 CALL                             R5 1 1
       68 JUMPIFNOTEQKS                    R5 K16 ["table"] ; [+6]
       70 GETIMPORT                        R5 K7 [warn]
       72 LOADK                            R6 K17 ["TODO: JSONEncode initial value to support safely"]
       73 CALL                             R5 1 0
       74 JUMP                             ; [+6]
       75 MOVE                             R7 R4
       76 GETTABLEKS                       R8 R0 K13 ["initializeWithValue"]
       78 NAMECALL                         R5 R1 K18 ["SetAttribute"]
       80 CALL                             R5 3 0
       81 GETUPVAL                         R5 8
       82 GETTABLEKS                       R5 R5 K19 ["selectionService"]
       84 NEWTABLE                         R7 0 1
       86 MOVE                             R8 R3
       87 SETLIST                          R7 R8 1 [1]
       89 NAMECALL                         R5 R5 K20 ["Set"]
       91 CALL                             R5 2 0
       92 GETTABLEKS                       R5 R0 K21 ["pinPosition"]
       94 JUMPIFNOT                        R5 ; [+17]
       95 GETUPVAL                         R5 5
       96 GETTABLEKS                       R5 R5 K22 ["setNodePosition"]
       98 MOVE                             R6 R3
       99 GETUPVAL                         R8 0
      100 CALL                             R8 0 1
      101 JUMPIFNOT                        R8 ; [+7]
      102 GETUPVAL                         R7 5
      103 GETTABLEKS                       R7 R7 K23 ["predictOutputPosition"]
      105 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
      107 CALL                             R7 1 1
      108 JUMP                             ; [+2]
      109 GETTABLEKS                       R7 R0 K21 ["pinPosition"]
      111 CALL                             R5 2 0
      112 GETUPVAL                         R5 6
      113 MOVE                             R7 R3
      114 NAMECALL                         R5 R5 K24 ["instanceToId"]
      116 CALL                             R5 2 1
      117 JUMPIFNOT                        R2 ; [+7]
      118 GETUPVAL                         R6 4
      119 MOVE                             R8 R2
      120 GETIMPORT                        R9 K28 [Enum.FinishRecordingOperation.Commit]
      122 NAMECALL                         R6 R6 K29 ["FinishRecording"]
      124 CALL                             R6 3 0
      125 RETURN                           R5 1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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
       75 JUMPIF                           R6 ; [+18]
       76 GETUPVAL                         R7 6
       77 DUPTABLE                         R8 K23 [{"parameterType", "pinPosition", "initializeWithValue", "parameterName"}]
       78 SETTABLEKS                       R4 R8 K20 ["parameterType"]
       80 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
       82 SETTABLEKS                       R9 R8 K21 ["pinPosition"]
       84 GETTABLEKS                       R9 R0 K24 ["existingValue"]
       86 SETTABLEKS                       R9 R8 K22 ["initializeWithValue"]
       88 LOADK                            R9 K25 [""]
       89 SETTABLEKS                       R9 R8 K19 ["parameterName"]
       91 CALL                             R7 1 1
       92 MOVE                             R5 R7
       93 JUMP                             ; [+31]
       94 GETUPVAL                         R7 7
       95 DUPTABLE                         R8 K26 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
       96 SETTABLEKS                       R4 R8 K20 ["parameterType"]
       98 SETTABLEKS                       R6 R8 K19 ["parameterName"]
      100 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
      102 SETTABLEKS                       R9 R8 K21 ["pinPosition"]
      104 GETTABLEKS                       R9 R0 K24 ["existingValue"]
      106 SETTABLEKS                       R9 R8 K22 ["initializeWithValue"]
      108 CALL                             R7 1 1
      109 MOVE                             R5 R7
      110 GETTABLEKS                       R7 R0 K24 ["existingValue"]
      112 JUMPIFNOT                        R7 ; [+12]
      113 MOVE                             R9 R6
      114 NAMECALL                         R7 R1 K27 ["GetAttribute"]
      116 CALL                             R7 2 1
      117 JUMPIFNOTEQKNIL                  R7 ; [+7]
      119 MOVE                             R9 R6
      120 GETTABLEKS                       R10 R0 K24 ["existingValue"]
      122 NAMECALL                         R7 R1 K28 ["SetAttribute"]
      124 CALL                             R7 3 0
      125 JUMPIFNOT                        R5 ; [+46]
      126 GETTABLEKS                       R7 R0 K4 ["sourcePinInfo"]
      128 GETTABLEKS                       R7 R7 K5 ["sourcePinNodeId"]
      130 GETTABLEKS                       R8 R0 K4 ["sourcePinInfo"]
      132 GETTABLEKS                       R8 R8 K18 ["sourcePinName"]
      134 GETUPVAL                         R9 4
      135 MOVE                             R11 R5
      136 NAMECALL                         R9 R9 K6 ["idToInstance"]
      138 CALL                             R9 2 1
      139 JUMPIFNOT                        R9 ; [+32]
      140 GETUPVAL                         R10 5
      141 GETTABLEKS                       R10 R10 K29 ["setNodePosition"]
      143 MOVE                             R11 R9
      144 GETUPVAL                         R13 0
      145 CALL                             R13 0 1
      146 JUMPIFNOT                        R13 ; [+7]
      147 GETUPVAL                         R12 5
      148 GETTABLEKS                       R12 R12 K30 ["predictOutputPosition"]
      150 GETTABLEKS                       R13 R0 K21 ["pinPosition"]
      152 CALL                             R12 1 1
      153 JUMP                             ; [+2]
      154 GETTABLEKS                       R12 R0 K21 ["pinPosition"]
      156 CALL                             R10 2 0
      157 GETUPVAL                         R10 8
      158 MOVE                             R11 R7
      159 MOVE                             R12 R8
      160 MOVE                             R13 R5
      161 LOADK                            R14 K31 ["Output"]
      162 GETUPVAL                         R16 9
      163 CALL                             R16 0 1
      164 JUMPIFNOT                        R16 ; [+5]
      165 GETTABLEKS                       R15 R0 K4 ["sourcePinInfo"]
      167 GETTABLEKS                       R15 R15 K32 ["sourcePinDynamicIndex"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R15
      171 CALL                             R10 5 0
      172 JUMPIFNOT                        R2 ; [+7]
      173 GETUPVAL                         R7 3
      174 MOVE                             R9 R2
      175 GETIMPORT                        R10 K36 [Enum.FinishRecordingOperation.Commit]
      177 NAMECALL                         R7 R7 K37 ["FinishRecording"]
      179 CALL                             R7 3 0
      180 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_41:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+46]
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
       47 GETUPVAL                         R5 5
       48 CALL                             R5 0 1
       49 JUMPIFNOT                        R5 ; [+8]
       50 JUMPIF                           R4 ; [+7]
       51 GETIMPORT                        R5 K13 [xpcall]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R7 K14 [PROTO_41]
       57 CALL                             R5 2 0
       58 GETUPVAL                         R4 6
       59 GETTABLEKS                       R4 R4 K15 ["observe"]
       61 MOVE                             R5 R0
       62 CALL                             R4 1 1
       63 LOADB                            R5 0
       64 CALL                             R4 1 1
       65 JUMPIFNOT                        R4 ; [+30]
       66 GETUPVAL                         R5 7
       67 JUMPIFNOT                        R5 ; [+28]
       68 GETTABLEKS                       R5 R4 K16 ["outputPinToConnectionMap"]
       70 LOADNIL                          R6
       71 LOADNIL                          R7
       72 FORGPREP                         R5
       73 JUMPIFEQKNIL                     R9 ; [+20]
       75 GETUPVAL                         R10 3
       76 GETTABLEKS                       R10 R10 K17 ["hasDynamicInputPins"]
       78 GETUPVAL                         R11 7
       79 GETTABLEKS                       R12 R9 K18 ["inputNodeId"]
       81 CALL                             R10 2 1
       82 JUMPIFNOT                        R10 ; [+11]
       83 GETUPVAL                         R10 3
       84 GETTABLEKS                       R10 R10 K19 ["renameDynamicInputPin"]
       86 GETUPVAL                         R11 1
       87 GETUPVAL                         R12 7
       88 GETTABLEKS                       R13 R9 K18 ["inputNodeId"]
       90 GETTABLEKS                       R14 R9 K20 ["inputNodePinId"]
       92 MOVE                             R15 R1
       93 CALL                             R10 5 0
       94 FORGLOOP                         R5 2 ; [-22]
       96 JUMPIFNOT                        R2 ; [+7]
       97 GETUPVAL                         R5 0
       98 MOVE                             R7 R2
       99 GETIMPORT                        R8 K24 [Enum.FinishRecordingOperation.Commit]
      101 NAMECALL                         R5 R5 K25 ["FinishRecording"]
      103 CALL                             R5 3 0
      104 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R4 3
       16 MOVE                             R6 R2
       17 NAMECALL                         R4 R4 K1 ["idToInstance"]
       19 CALL                             R4 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 JUMPIFEQKNIL                     R2 ; [+3]
       24 JUMPIF                           R4 ; [+1]
       25 RETURN                           R0 0
       26 NEWTABLE                         R5 0 0
       28 JUMPIFNOT                        R4 ; [+18]
       29 LOADK                            R9 K2 ["Folder"]
       30 NAMECALL                         R7 R4 K3 ["IsA"]
       32 CALL                             R7 2 1
       33 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       35 LOADK                            R8 K4 ["Expected specified parameterNodeInstance to be a Folder"]
       36 GETIMPORT                        R6 K6 [assert]
       38 CALL                             R6 2 0
       39 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       41 MOVE                             R7 R5
       42 MOVE                             R8 R4
       43 GETIMPORT                        R6 K9 [table.insert]
       45 CALL                             R6 2 0
       46 JUMP                             ; [+7]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K10 ["getAllParameterInstancesFromName"]
       50 MOVE                             R7 R3
       51 MOVE                             R8 R0
       52 CALL                             R6 2 1
       53 MOVE                             R5 R6
       54 LENGTH                           R6 R5
       55 JUMPIFNOTEQKN                    R6 K11 [0] ; [+2]
       57 RETURN                           R0 0
       58 GETUPVAL                         R6 5
       59 LOADK                            R8 K12 ["NativeGraphContext"]
       60 LOADK                            R9 K13 ["renameParameterAsync"]
       61 NAMECALL                         R6 R6 K14 ["TryBeginRecording"]
       63 CALL                             R6 3 1
       64 MOVE                             R9 R1
       65 NAMECALL                         R7 R3 K15 ["GetAttribute"]
       67 CALL                             R7 2 1
       68 JUMPIF                           R7 ; [+8]
       69 MOVE                             R9 R1
       70 MOVE                             R12 R0
       71 NAMECALL                         R10 R3 K15 ["GetAttribute"]
       73 CALL                             R10 2 -1
       74 NAMECALL                         R7 R3 K16 ["SetAttribute"]
       76 CALL                             R7 -1 0
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R7 R7 K17 ["parameterDestroyConnectionMapRef"]
       80 GETTABLEKS                       R7 R7 K18 ["current"]
       82 GETIMPORT                        R8 K20 [table.clone]
       84 MOVE                             R9 R7
       85 CALL                             R8 1 1
       86 MOVE                             R9 R5
       87 LOADNIL                          R10
       88 LOADNIL                          R11
       89 FORGPREP                         R9
       90 NAMECALL                         R14 R13 K21 ["GetChildren"]
       92 CALL                             R14 1 3
       93 FORGPREP                         R14
       94 LOADK                            R21 K22 ["ObjectValue"]
       95 NAMECALL                         R19 R18 K3 ["IsA"]
       97 CALL                             R19 2 1
       98 JUMPIFNOT                        R19 ; [+17]
       99 GETTABLEKS                       R19 R18 K23 ["Value"]
      101 JUMPIFNOT                        R19 ; [+14]
      102 GETUPVAL                         R20 4
      103 GETTABLEKS                       R20 R20 K24 ["getParameterWireInputPinId"]
      105 GETTABLEKS                       R21 R18 K25 ["Name"]
      107 CALL                             R20 1 1
      108 JUMPIFNOT                        R20 ; [+7]
      109 GETUPVAL                         R21 4
      110 GETTABLEKS                       R21 R21 K26 ["setParameterBindingName"]
      112 MOVE                             R22 R19
      113 MOVE                             R23 R20
      114 MOVE                             R24 R1
      115 CALL                             R21 3 0
      116 FORGLOOP                         R14 2 ; [-23]
      118 GETUPVAL                         R14 4
      119 GETTABLEKS                       R14 R14 K27 ["getParameterInstanceName"]
      121 MOVE                             R15 R1
      122 CALL                             R14 1 1
      123 SETTABLEKS                       R14 R13 K25 ["Name"]
      125 GETUPVAL                         R16 7
      126 GETTABLEKS                       R16 R16 K28 ["NODE_ATTRIBUTES"]
      128 GETTABLEKS                       R16 R16 K29 ["BindingName"]
      130 MOVE                             R17 R1
      131 NAMECALL                         R14 R13 K16 ["SetAttribute"]
      133 CALL                             R14 3 0
      134 GETUPVAL                         R14 3
      135 MOVE                             R16 R13
      136 NAMECALL                         R14 R14 K30 ["instanceToId"]
      138 CALL                             R14 2 1
      139 GETTABLE                         R15 R7 R14
      140 JUMPIFNOT                        R15 ; [+11]
      141 DUPTABLE                         R15 K34 [{"connection", "nodeId", "parameterName"}]
      142 GETTABLE                         R16 R7 R14
      143 GETTABLEKS                       R16 R16 K31 ["connection"]
      145 SETTABLEKS                       R16 R15 K31 ["connection"]
      147 SETTABLEKS                       R14 R15 K32 ["nodeId"]
      149 SETTABLEKS                       R1 R15 K33 ["parameterName"]
      151 SETTABLE                         R15 R8 R14
      152 FORGLOOP                         R9 2 ; [-63]
      154 GETUPVAL                         R9 6
      155 GETTABLEKS                       R9 R9 K35 ["setParameterDestroyConnectionMap"]
      157 MOVE                             R10 R8
      158 CALL                             R9 1 0
      159 LOADB                            R9 0
      160 JUMPIFEQKNIL                     R2 ; [+9]
      162 GETUPVAL                         R11 4
      163 GETTABLEKS                       R11 R11 K27 ["getParameterInstanceName"]
      165 MOVE                             R12 R0
      166 CALL                             R11 1 -1
      167 NAMECALL                         R9 R3 K36 ["FindFirstChild"]
      169 CALL                             R9 -1 1
      170 JUMPIF                           R9 ; [+5]
      171 MOVE                             R12 R0
      172 LOADNIL                          R13
      173 NAMECALL                         R10 R3 K16 ["SetAttribute"]
      175 CALL                             R10 3 0
      176 JUMPIFNOT                        R6 ; [+7]
      177 GETUPVAL                         R10 5
      178 MOVE                             R12 R6
      179 GETIMPORT                        R13 K40 [Enum.FinishRecordingOperation.Commit]
      181 NAMECALL                         R10 R10 K41 ["FinishRecording"]
      183 CALL                             R10 3 0
      184 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_54:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_57:
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
      185 CAPTURE                          UPVAL U12
      186 CAPTURE                          VAL R11
      187 CAPTURE                          UPVAL U9
      188 NEWTABLE                         R24 0 1
      190 MOVE                             R25 R11
      191 SETLIST                          R24 R25 1 [1]
      193 CALL                             R22 2 1
      194 GETUPVAL                         R23 1
      195 GETTABLEKS                       R23 R23 K14 ["useCallback"]
      197 NEWCLOSURE                       R24 P7
      198 CAPTURE                          VAL R11
      199 CAPTURE                          UPVAL U9
      200 NEWTABLE                         R25 0 1
      202 MOVE                             R26 R11
      203 SETLIST                          R25 R26 1 [1]
      205 CALL                             R23 2 1
      206 GETUPVAL                         R24 1
      207 GETTABLEKS                       R24 R24 K14 ["useCallback"]
      209 NEWCLOSURE                       R25 P8
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R11
      212 NEWTABLE                         R26 0 3
      214 MOVE                             R27 R11
      215 GETTABLEKS                       R28 R4 K15 ["selectionService"]
      217 MOVE                             R29 R10
      218 SETLIST                          R26 R27 3 [1]
      220 CALL                             R24 2 1
      221 GETUPVAL                         R25 1
      222 GETTABLEKS                       R25 R25 K14 ["useCallback"]
      224 NEWCLOSURE                       R26 P9
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R11
      229 NEWTABLE                         R27 0 4
      231 GETTABLEKS                       R28 R2 K16 ["get"]
      233 GETTABLEKS                       R29 R4 K15 ["selectionService"]
      235 MOVE                             R30 R11
      236 MOVE                             R31 R14
      237 SETLIST                          R27 R28 4 [1]
      239 CALL                             R25 2 1
      240 GETUPVAL                         R26 1
      241 GETTABLEKS                       R26 R26 K2 ["useState"]
      243 LOADK                            R27 K17 [""]
      244 CALL                             R26 1 2
      245 GETUPVAL                         R28 1
      246 GETTABLEKS                       R28 R28 K2 ["useState"]
      248 LOADNIL                          R29
      249 CALL                             R28 1 2
      250 GETUPVAL                         R31 13
      251 CALL                             R31 0 1
      252 JUMPIFNOT                        R31 ; [+16]
      253 GETUPVAL                         R31 3
      254 CALL                             R31 0 1
      255 JUMPIFNOT                        R31 ; [+7]
      256 GETUPVAL                         R30 14
      257 GETTABLEKS                       R30 R30 K18 ["useSignalState"]
      259 GETTABLEKS                       R31 R5 K10 ["observeSelectedGraphInstance"]
      261 CALL                             R30 1 1
      262 JUMP                             ; [+7]
      263 GETUPVAL                         R30 14
      264 GETTABLEKS                       R30 R30 K18 ["useSignalState"]
      266 MOVE                             R31 R12
      267 CALL                             R30 1 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R30
      270 GETUPVAL                         R32 13
      271 CALL                             R32 0 1
      272 JUMPIFNOT                        R32 ; [+12]
      273 GETUPVAL                         R31 1
      274 GETTABLEKS                       R31 R31 K7 ["useMemo"]
      276 NEWCLOSURE                       R32 P10
      277 CAPTURE                          VAL R30
      278 NEWTABLE                         R33 0 1
      280 MOVE                             R34 R30
      281 SETLIST                          R33 R34 1 [1]
      283 CALL                             R31 2 1
      284 JUMP                             ; [+1]
      285 LOADNIL                          R31
      286 GETUPVAL                         R33 3
      287 CALL                             R33 0 1
      288 JUMPIFNOT                        R33 ; [+7]
      289 GETUPVAL                         R32 14
      290 GETTABLEKS                       R32 R32 K18 ["useSignalState"]
      292 GETTABLEKS                       R33 R5 K10 ["observeSelectedGraphInstance"]
      294 CALL                             R32 1 1
      295 JUMP                             ; [+5]
      296 GETUPVAL                         R32 14
      297 GETTABLEKS                       R32 R32 K18 ["useSignalState"]
      299 MOVE                             R33 R12
      300 CALL                             R32 1 1
      301 GETUPVAL                         R33 1
      302 GETTABLEKS                       R33 R33 K8 ["useEffect"]
      304 NEWCLOSURE                       R34 P11
      305 CAPTURE                          VAL R32
      306 CAPTURE                          UPVAL U13
      307 CAPTURE                          VAL R27
      308 CAPTURE                          VAL R29
      309 CAPTURE                          UPVAL U15
      310 NEWTABLE                         R35 0 1
      312 MOVE                             R36 R32
      313 SETLIST                          R35 R36 1 [1]
      315 CALL                             R33 2 0
      316 GETUPVAL                         R33 13
      317 CALL                             R33 0 1
      318 JUMPIF                           R33 ; [+14]
      319 GETUPVAL                         R33 1
      320 GETTABLEKS                       R33 R33 K8 ["useEffect"]
      322 NEWCLOSURE                       R34 P12
      323 CAPTURE                          VAL R26
      324 CAPTURE                          VAL R32
      325 CAPTURE                          UPVAL U16
      326 NEWTABLE                         R35 0 2
      328 MOVE                             R36 R26
      329 MOVE                             R37 R32
      330 SETLIST                          R35 R36 2 [1]
      332 CALL                             R33 2 0
      333 GETUPVAL                         R32 1
      334 GETTABLEKS                       R32 R32 K14 ["useCallback"]
      336 NEWCLOSURE                       R33 P13
      337 CAPTURE                          UPVAL U3
      338 CAPTURE                          VAL R5
      339 CAPTURE                          VAL R12
      340 CAPTURE                          VAL R14
      341 CAPTURE                          UPVAL U17
      342 CAPTURE                          UPVAL U12
      343 CAPTURE                          UPVAL U9
      344 CAPTURE                          VAL R11
      345 CAPTURE                          UPVAL U18
      346 CAPTURE                          UPVAL U19
      347 CAPTURE                          VAL R4
      348 NEWTABLE                         R34 0 4
      350 GETTABLEKS                       R35 R4 K15 ["selectionService"]
      352 GETUPVAL                         R37 3
      353 CALL                             R37 0 1
      354 JUMPIFNOT                        R37 ; [+3]
      355 GETTABLEKS                       R36 R5 K10 ["observeSelectedGraphInstance"]
      357 JUMP                             ; [+1]
      358 MOVE                             R36 R12
      359 MOVE                             R37 R14
      360 MOVE                             R38 R11
      361 SETLIST                          R34 R35 4 [1]
      363 CALL                             R32 2 1
      364 GETUPVAL                         R33 20
      365 GETTABLEKS                       R33 R33 K19 ["useProducer"]
      367 GETUPVAL                         R34 1
      368 GETTABLEKS                       R34 R34 K14 ["useCallback"]
      370 NEWCLOSURE                       R35 P14
      371 CAPTURE                          VAL R32
      372 NEWTABLE                         R36 0 1
      374 MOVE                             R37 R32
      375 SETLIST                          R36 R37 1 [1]
      377 CALL                             R34 2 -1
      378 CALL                             R33 -1 0
      379 GETUPVAL                         R33 21
      380 GETTABLEKS                       R33 R33 K19 ["useProducer"]
      382 NEWCLOSURE                       R34 P15
      383 CAPTURE                          UPVAL U22
      384 CAPTURE                          VAL R4
      385 CAPTURE                          UPVAL U12
      386 CALL                             R33 1 0
      387 GETUPVAL                         R33 1
      388 GETTABLEKS                       R33 R33 K14 ["useCallback"]
      390 NEWCLOSURE                       R34 P16
      391 CAPTURE                          UPVAL U3
      392 CAPTURE                          VAL R5
      393 CAPTURE                          VAL R12
      394 CAPTURE                          UPVAL U9
      395 CAPTURE                          VAL R4
      396 NEWTABLE                         R35 0 2
      398 GETUPVAL                         R37 3
      399 CALL                             R37 0 1
      400 JUMPIFNOT                        R37 ; [+3]
      401 GETTABLEKS                       R36 R5 K10 ["observeSelectedGraphInstance"]
      403 JUMP                             ; [+1]
      404 MOVE                             R36 R12
      405 GETTABLEKS                       R37 R4 K15 ["selectionService"]
      407 SETLIST                          R35 R36 2 [1]
      409 CALL                             R33 2 1
      410 GETUPVAL                         R34 1
      411 GETTABLEKS                       R34 R34 K14 ["useCallback"]
      413 NEWCLOSURE                       R35 P17
      414 CAPTURE                          UPVAL U3
      415 CAPTURE                          VAL R5
      416 CAPTURE                          VAL R12
      417 CAPTURE                          VAL R14
      418 CAPTURE                          UPVAL U12
      419 CAPTURE                          UPVAL U9
      420 CAPTURE                          VAL R11
      421 CAPTURE                          UPVAL U23
      422 CAPTURE                          VAL R4
      423 NEWTABLE                         R36 0 4
      425 GETTABLEKS                       R37 R4 K15 ["selectionService"]
      427 GETUPVAL                         R39 3
      428 CALL                             R39 0 1
      429 JUMPIFNOT                        R39 ; [+3]
      430 GETTABLEKS                       R38 R5 K10 ["observeSelectedGraphInstance"]
      432 JUMP                             ; [+1]
      433 MOVE                             R38 R12
      434 MOVE                             R39 R11
      435 MOVE                             R40 R14
      436 SETLIST                          R36 R37 4 [1]
      438 CALL                             R34 2 1
      439 GETUPVAL                         R35 1
      440 GETTABLEKS                       R35 R35 K14 ["useCallback"]
      442 NEWCLOSURE                       R36 P18
      443 CAPTURE                          UPVAL U3
      444 CAPTURE                          VAL R5
      445 CAPTURE                          VAL R12
      446 CAPTURE                          VAL R14
      447 CAPTURE                          UPVAL U9
      448 CAPTURE                          UPVAL U23
      449 CAPTURE                          UPVAL U12
      450 CAPTURE                          VAL R11
      451 CAPTURE                          VAL R34
      452 CAPTURE                          VAL R4
      453 NEWTABLE                         R37 0 5
      455 GETTABLEKS                       R38 R4 K15 ["selectionService"]
      457 GETUPVAL                         R40 3
      458 CALL                             R40 0 1
      459 JUMPIFNOT                        R40 ; [+3]
      460 GETTABLEKS                       R39 R5 K10 ["observeSelectedGraphInstance"]
      462 JUMP                             ; [+1]
      463 MOVE                             R39 R12
      464 MOVE                             R40 R11
      465 MOVE                             R41 R14
      466 MOVE                             R42 R34
      467 SETLIST                          R37 R38 5 [1]
      469 CALL                             R35 2 1
      470 GETUPVAL                         R36 1
      471 GETTABLEKS                       R36 R36 K14 ["useCallback"]
      473 NEWCLOSURE                       R37 P19
      474 CAPTURE                          VAL R14
      475 CAPTURE                          UPVAL U12
      476 CAPTURE                          UPVAL U9
      477 CAPTURE                          VAL R11
      478 CAPTURE                          UPVAL U24
      479 NEWTABLE                         R38 0 2
      481 MOVE                             R39 R11
      482 MOVE                             R40 R14
      483 SETLIST                          R38 R39 2 [1]
      485 CALL                             R36 2 1
      486 GETUPVAL                         R37 1
      487 GETTABLEKS                       R37 R37 K14 ["useCallback"]
      489 NEWCLOSURE                       R38 P20
      490 CAPTURE                          VAL R14
      491 CAPTURE                          UPVAL U12
      492 CAPTURE                          UPVAL U9
      493 CAPTURE                          VAL R11
      494 CAPTURE                          UPVAL U24
      495 NEWTABLE                         R39 0 2
      497 MOVE                             R40 R11
      498 MOVE                             R41 R14
      499 SETLIST                          R39 R40 2 [1]
      501 CALL                             R37 2 1
      502 GETUPVAL                         R38 25
      503 MOVE                             R39 R11
      504 GETUPVAL                         R41 3
      505 CALL                             R41 0 1
      506 JUMPIFNOT                        R41 ; [+3]
      507 GETTABLEKS                       R40 R5 K10 ["observeSelectedGraphInstance"]
      509 JUMP                             ; [+1]
      510 MOVE                             R40 R12
      511 CALL                             R38 2 1
      512 GETUPVAL                         R39 26
      513 MOVE                             R40 R11
      514 GETUPVAL                         R42 3
      515 CALL                             R42 0 1
      516 JUMPIFNOT                        R42 ; [+3]
      517 GETTABLEKS                       R41 R5 K10 ["observeSelectedGraphInstance"]
      519 JUMP                             ; [+1]
      520 MOVE                             R41 R12
      521 CALL                             R39 2 1
      522 GETUPVAL                         R40 1
      523 GETTABLEKS                       R40 R40 K14 ["useCallback"]
      525 NEWCLOSURE                       R41 P21
      526 CAPTURE                          VAL R14
      527 CAPTURE                          UPVAL U12
      528 CAPTURE                          UPVAL U9
      529 CAPTURE                          VAL R11
      530 NEWTABLE                         R42 0 2
      532 MOVE                             R43 R11
      533 MOVE                             R44 R14
      534 SETLIST                          R42 R43 2 [1]
      536 CALL                             R40 2 1
      537 GETUPVAL                         R41 1
      538 GETTABLEKS                       R41 R41 K14 ["useCallback"]
      540 NEWCLOSURE                       R42 P22
      541 CAPTURE                          VAL R14
      542 CAPTURE                          UPVAL U12
      543 CAPTURE                          UPVAL U9
      544 CAPTURE                          VAL R11
      545 CAPTURE                          UPVAL U24
      546 CAPTURE                          VAL R38
      547 NEWTABLE                         R43 0 3
      549 MOVE                             R44 R11
      550 MOVE                             R45 R14
      551 GETTABLEKS                       R46 R38 K20 ["setNodeOutputInfoInDestroyMapRef"]
      553 SETLIST                          R43 R44 3 [1]
      555 CALL                             R41 2 1
      556 GETUPVAL                         R42 1
      557 GETTABLEKS                       R42 R42 K14 ["useCallback"]
      559 NEWCLOSURE                       R43 P23
      560 CAPTURE                          UPVAL U3
      561 CAPTURE                          VAL R5
      562 CAPTURE                          VAL R12
      563 CAPTURE                          UPVAL U12
      564 CAPTURE                          VAL R11
      565 CAPTURE                          UPVAL U9
      566 CAPTURE                          VAL R34
      567 CAPTURE                          VAL R35
      568 CAPTURE                          VAL R41
      569 CAPTURE                          UPVAL U24
      570 NEWTABLE                         R44 0 7
      572 GETTABLEKS                       R45 R4 K15 ["selectionService"]
      574 GETUPVAL                         R47 3
      575 CALL                             R47 0 1
      576 JUMPIFNOT                        R47 ; [+3]
      577 GETTABLEKS                       R46 R5 K10 ["observeSelectedGraphInstance"]
      579 JUMP                             ; [+1]
      580 MOVE                             R46 R12
      581 MOVE                             R47 R14
      582 MOVE                             R48 R11
      583 MOVE                             R49 R34
      584 MOVE                             R50 R35
      585 MOVE                             R51 R41
      586 SETLIST                          R44 R45 7 [1]
      588 CALL                             R42 2 1
      589 GETUPVAL                         R43 1
      590 GETTABLEKS                       R43 R43 K14 ["useCallback"]
      592 NEWCLOSURE                       R44 P24
      593 CAPTURE                          VAL R8
      594 CAPTURE                          UPVAL U12
      595 NEWTABLE                         R45 0 0
      597 CALL                             R43 2 1
      598 GETUPVAL                         R44 1
      599 GETTABLEKS                       R44 R44 K14 ["useCallback"]
      601 NEWCLOSURE                       R45 P25
      602 CAPTURE                          VAL R8
      603 CAPTURE                          UPVAL U12
      604 NEWTABLE                         R46 0 0
      606 CALL                             R44 2 1
      607 GETUPVAL                         R45 1
      608 GETTABLEKS                       R45 R45 K8 ["useEffect"]
      610 NEWCLOSURE                       R46 P26
      611 CAPTURE                          VAL R8
      612 CAPTURE                          UPVAL U12
      613 NEWTABLE                         R47 0 0
      615 CALL                             R45 2 0
      616 GETUPVAL                         R45 1
      617 GETTABLEKS                       R45 R45 K14 ["useCallback"]
      619 NEWCLOSURE                       R46 P27
      620 CAPTURE                          UPVAL U12
      621 CAPTURE                          VAL R11
      622 CAPTURE                          UPVAL U15
      623 CAPTURE                          UPVAL U27
      624 NEWTABLE                         R47 0 1
      626 MOVE                             R48 R11
      627 SETLIST                          R47 R48 1 [1]
      629 CALL                             R45 2 1
      630 GETUPVAL                         R46 1
      631 GETTABLEKS                       R46 R46 K14 ["useCallback"]
      633 NEWCLOSURE                       R47 P28
      634 CAPTURE                          UPVAL U12
      635 CAPTURE                          VAL R11
      636 NEWTABLE                         R48 0 1
      638 MOVE                             R49 R11
      639 SETLIST                          R48 R49 1 [1]
      641 CALL                             R46 2 1
      642 GETUPVAL                         R47 1
      643 GETTABLEKS                       R47 R47 K14 ["useCallback"]
      645 NEWCLOSURE                       R48 P29
      646 CAPTURE                          UPVAL U12
      647 CAPTURE                          VAL R11
      648 CAPTURE                          UPVAL U28
      649 CAPTURE                          UPVAL U9
      650 CAPTURE                          UPVAL U23
      651 CAPTURE                          UPVAL U29
      652 CAPTURE                          VAL R1
      653 CAPTURE                          VAL R14
      654 NEWTABLE                         R49 0 3
      656 MOVE                             R50 R11
      657 MOVE                             R51 R14
      658 GETTABLEKS                       R52 R1 K21 ["observe"]
      660 SETLIST                          R49 R50 3 [1]
      662 CALL                             R47 2 1
      663 GETUPVAL                         R48 1
      664 GETTABLEKS                       R48 R48 K14 ["useCallback"]
      666 NEWCLOSURE                       R49 P30
      667 CAPTURE                          UPVAL U12
      668 CAPTURE                          UPVAL U9
      669 CAPTURE                          VAL R11
      670 NEWTABLE                         R50 0 1
      672 MOVE                             R51 R11
      673 SETLIST                          R50 R51 1 [1]
      675 CALL                             R48 2 1
      676 GETUPVAL                         R49 1
      677 GETTABLEKS                       R49 R49 K14 ["useCallback"]
      679 NEWCLOSURE                       R50 P31
      680 CAPTURE                          UPVAL U3
      681 CAPTURE                          VAL R5
      682 CAPTURE                          VAL R12
      683 CAPTURE                          VAL R14
      684 CAPTURE                          VAL R11
      685 CAPTURE                          UPVAL U9
      686 CAPTURE                          UPVAL U12
      687 CAPTURE                          UPVAL U16
      688 NEWTABLE                         R51 0 3
      690 MOVE                             R52 R12
      691 MOVE                             R53 R11
      692 MOVE                             R54 R14
      693 SETLIST                          R51 R52 3 [1]
      695 CALL                             R49 2 1
      696 GETUPVAL                         R50 1
      697 GETTABLEKS                       R50 R50 K14 ["useCallback"]
      699 NEWCLOSURE                       R51 P32
      700 CAPTURE                          UPVAL U3
      701 CAPTURE                          VAL R5
      702 CAPTURE                          VAL R12
      703 CAPTURE                          VAL R11
      704 CAPTURE                          UPVAL U9
      705 CAPTURE                          UPVAL U12
      706 CAPTURE                          VAL R39
      707 CAPTURE                          UPVAL U23
      708 NEWTABLE                         R52 0 4
      710 MOVE                             R53 R11
      711 MOVE                             R54 R12
      712 MOVE                             R55 R14
      713 GETTABLEKS                       R56 R39 K22 ["parameterDestroyConnectionMapRef"]
      715 SETLIST                          R52 R53 4 [1]
      717 CALL                             R50 2 1
      718 GETUPVAL                         R51 1
      719 GETTABLEKS                       R51 R51 K14 ["useCallback"]
      721 NEWCLOSURE                       R52 P33
      722 CAPTURE                          UPVAL U3
      723 CAPTURE                          VAL R5
      724 CAPTURE                          VAL R12
      725 CAPTURE                          UPVAL U9
      726 CAPTURE                          UPVAL U12
      727 CAPTURE                          UPVAL U23
      728 NEWTABLE                         R53 0 1
      730 GETUPVAL                         R55 3
      731 CALL                             R55 0 1
      732 JUMPIFNOT                        R55 ; [+3]
      733 GETTABLEKS                       R54 R5 K10 ["observeSelectedGraphInstance"]
      735 JUMP                             ; [+1]
      736 MOVE                             R54 R12
      737 SETLIST                          R53 R54 1 [1]
      739 CALL                             R51 2 1
      740 GETUPVAL                         R52 1
      741 GETTABLEKS                       R52 R52 K14 ["useCallback"]
      743 NEWCLOSURE                       R53 P34
      744 CAPTURE                          VAL R11
      745 CAPTURE                          UPVAL U12
      746 CAPTURE                          UPVAL U16
      747 NEWTABLE                         R54 0 1
      749 MOVE                             R55 R11
      750 SETLIST                          R54 R55 1 [1]
      752 CALL                             R52 2 1
      753 GETUPVAL                         R53 1
      754 GETTABLEKS                       R53 R53 K8 ["useEffect"]
      756 NEWCLOSURE                       R54 P35
      757 CAPTURE                          UPVAL U11
      758 CAPTURE                          VAL R38
      759 CAPTURE                          VAL R11
      760 CAPTURE                          VAL R20
      761 CAPTURE                          UPVAL U9
      762 CAPTURE                          UPVAL U16
      763 NEWTABLE                         R55 0 2
      765 MOVE                             R56 R11
      766 GETTABLEKS                       R57 R38 K23 ["nodeDestroyConnectionMapRef"]
      768 SETLIST                          R55 R56 2 [1]
      770 CALL                             R53 2 0
      771 GETUPVAL                         R53 1
      772 GETTABLEKS                       R53 R53 K8 ["useEffect"]
      774 NEWCLOSURE                       R54 P36
      775 CAPTURE                          UPVAL U11
      776 CAPTURE                          VAL R39
      777 CAPTURE                          VAL R11
      778 CAPTURE                          VAL R49
      779 CAPTURE                          UPVAL U23
      780 NEWTABLE                         R55 0 3
      782 MOVE                             R56 R11
      783 GETTABLEKS                       R57 R39 K22 ["parameterDestroyConnectionMapRef"]
      785 MOVE                             R58 R49
      786 SETLIST                          R55 R56 3 [1]
      788 CALL                             R53 2 0
      789 GETUPVAL                         R53 30
      790 MOVE                             R54 R2
      791 MOVE                             R55 R1
      792 CALL                             R53 2 1
      793 NEWTABLE                         R54 64 0
      795 GETUPVAL                         R56 3
      796 CALL                             R56 0 1
      797 JUMPIF                           R56 ; [+4]
      798 JUMPIFNOT                        R14 ; [+3]
      799 GETTABLEKS                       R55 R14 K24 ["graphInstanceId"]
      801 JUMP                             ; [+1]
      802 LOADNIL                          R55
      803 SETTABLEKS                       R55 R54 K25 ["selectedGraphInstanceId_DEPRECATED"]
      805 SETTABLEKS                       R48 R54 K26 ["reorderPinsAsync"]
      807 SETTABLEKS                       R32 R54 K27 ["createNodeAsync"]
      809 SETTABLEKS                       R34 R54 K28 ["createParameterAsync"]
      811 SETTABLEKS                       R35 R54 K29 ["createExistingParameterAsync"]
      813 SETTABLEKS                       R42 R54 K30 ["createConnectedParameterAsync"]
      815 SETTABLEKS                       R6 R54 K31 ["graphRect"]
      817 SETTABLEKS                       R33 R54 K32 ["selectAllParameterNodesWithNameAsync"]
      819 SETTABLEKS                       R24 R54 K33 ["selectNodesAsync"]
      821 SETTABLEKS                       R25 R54 K34 ["selectNodesFromRectAsync"]
      823 SETTABLEKS                       R22 R54 K35 ["setNodePositionsAsync"]
      825 SETTABLEKS                       R23 R54 K36 ["setNodeSizeAsync"]
      827 SETTABLEKS                       R41 R54 K37 ["setNodeConnectionAsync"]
      829 SETTABLEKS                       R36 R54 K38 ["deleteNodeInput"]
      831 SETTABLEKS                       R40 R54 K39 ["removeNodeOutputConnectionAsync"]
      833 SETTABLEKS                       R37 R54 K40 ["removeNodeInputConnectionAsync"]
      835 SETTABLEKS                       R49 R54 K41 ["removeParameterAsync"]
      837 SETTABLEKS                       R47 R54 K42 ["renameNodeAsync"]
      839 SETTABLEKS                       R50 R54 K43 ["renameParameterAsync"]
      841 SETTABLEKS                       R52 R54 K44 ["deleteNodeInstanceAsync"]
      843 SETTABLEKS                       R21 R54 K45 ["setCollapsedAsync"]
      845 SETTABLEKS                       R45 R54 K46 ["setNodePropertyAsync"]
      847 SETTABLEKS                       R46 R54 K47 ["setInputPinNodePropertyAsync"]
      849 SETTABLEKS                       R51 R54 K48 ["setParameterNodeTypeAsync"]
      851 SETTABLEKS                       R26 R54 K49 ["currentAnimationId"]
      853 SETTABLEKS                       R28 R54 K50 ["sourceAssetId"]
      855 SETTABLEKS                       R31 R54 K51 ["selectedGraphKey"]
      857 GETUPVAL                         R56 3
      858 CALL                             R56 0 1
      859 JUMPIFNOT                        R56 ; [+2]
      860 LOADNIL                          R55
      861 JUMP                             ; [+1]
      862 MOVE                             R55 R12
      863 SETTABLEKS                       R55 R54 K52 ["observeSelectedGraphInstance_DEPRECATED"]
      865 GETTABLEKS                       R55 R1 K21 ["observe"]
      867 SETTABLEKS                       R55 R54 K53 ["observeGraphNodeById"]
      869 GETTABLEKS                       R55 R2 K21 ["observe"]
      871 SETTABLEKS                       R55 R54 K54 ["observeNodeRenderInfoById"]
      873 SETTABLEKS                       R43 R54 K55 ["beginUndoTransaction"]
      875 SETTABLEKS                       R44 R54 K56 ["finishUndoTransaction"]
      877 GETTABLEKS                       R55 R1 K57 ["observeMap"]
      879 SETTABLEKS                       R55 R54 K58 ["observeGraphNodeMap"]
      881 GETTABLEKS                       R55 R2 K57 ["observeMap"]
      883 SETTABLEKS                       R55 R54 K59 ["observeRenderInfoMap"]
      885 GETTABLEKS                       R55 R53 K60 ["hasGraphOutput"]
      887 SETTABLEKS                       R55 R54 K60 ["hasGraphOutput"]
      889 GETTABLEKS                       R55 R3 K21 ["observe"]
      891 SETTABLEKS                       R55 R54 K61 ["observeNodePropsById"]
      893 GETUPVAL                         R55 1
      894 GETTABLEKS                       R55 R55 K7 ["useMemo"]
      896 DUPCLOSURE                       R56 K62 [PROTO_54]
      897 NEWTABLE                         R57 0 0
      899 CALL                             R55 2 1
      900 GETUPVAL                         R56 1
      901 GETTABLEKS                       R56 R56 K7 ["useMemo"]
      903 NEWCLOSURE                       R57 P38
      904 CAPTURE                          UPVAL U31
      905 CAPTURE                          UPVAL U3
      906 CAPTURE                          VAL R5
      907 CAPTURE                          VAL R12
      908 NEWTABLE                         R58 0 2
      910 GETUPVAL                         R60 3
      911 CALL                             R60 0 1
      912 JUMPIFNOT                        R60 ; [+3]
      913 GETTABLEKS                       R59 R5 K10 ["observeSelectedGraphInstance"]
      915 JUMP                             ; [+1]
      916 MOVE                             R59 R12
      917 MOVE                             R60 R14
      918 SETLIST                          R58 R59 2 [1]
      920 CALL                             R56 2 1
      921 GETUPVAL                         R57 32
      922 GETTABLEKS                       R57 R57 K63 ["usePasteHooks"]
      924 GETUPVAL                         R59 3
      925 CALL                             R59 0 1
      926 JUMPIFNOT                        R59 ; [+3]
      927 GETTABLEKS                       R58 R5 K10 ["observeSelectedGraphInstance"]
      929 JUMP                             ; [+1]
      930 MOVE                             R58 R12
      931 CALL                             R57 1 0
      932 GETUPVAL                         R57 14
      933 GETTABLEKS                       R57 R57 K18 ["useSignalState"]
      935 MOVE                             R58 R56
      936 CALL                             R57 1 1
      937 GETUPVAL                         R58 33
      938 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      940 GETUPVAL                         R59 34
      941 GETTABLEKS                       R59 R59 K65 ["GRAPH_PAYLOAD_MAP"]
      943 MOVE                             R60 R14
      944 CALL                             R58 2 0
      945 GETUPVAL                         R58 33
      946 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      948 GETUPVAL                         R59 34
      949 GETTABLEKS                       R59 R59 K66 ["GRAPH_RENDER_INFO"]
      951 MOVE                             R60 R16
      952 CALL                             R58 2 0
      953 GETUPVAL                         R58 33
      954 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      956 GETUPVAL                         R59 34
      957 GETTABLEKS                       R59 R59 K67 ["GRAPH_NODE_PROPS"]
      959 MOVE                             R60 R18
      960 CALL                             R58 2 0
      961 GETUPVAL                         R58 33
      962 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      964 GETUPVAL                         R59 34
      965 GETTABLEKS                       R59 R59 K68 ["TIME_RANGE"]
      967 MOVE                             R60 R55
      968 CALL                             R58 2 0
      969 GETUPVAL                         R58 33
      970 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      972 GETUPVAL                         R59 34
      973 GETTABLEKS                       R59 R59 K69 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      975 MOVE                             R60 R6
      976 CALL                             R58 2 0
      977 GETUPVAL                         R58 33
      978 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      980 GETUPVAL                         R59 34
      981 GETTABLEKS                       R59 R59 K70 ["SOURCE_ASSET_ID"]
      983 MOVE                             R60 R28
      984 CALL                             R58 2 0
      985 GETUPVAL                         R58 13
      986 CALL                             R58 0 1
      987 JUMPIF                           R58 ; [+8]
      988 GETUPVAL                         R58 33
      989 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
      991 GETUPVAL                         R59 34
      992 GETTABLEKS                       R59 R59 K71 ["CURRENT_ANIMATION_ID"]
      994 MOVE                             R60 R26
      995 CALL                             R58 2 0
      996 GETUPVAL                         R58 13
      997 CALL                             R58 0 1
      998 JUMPIFNOT                        R58 ; [+8]
      999 GETUPVAL                         R58 33
     1000 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
     1002 GETUPVAL                         R59 34
     1003 GETTABLEKS                       R59 R59 K72 ["SELECTED_GRAPH_KEY"]
     1005 MOVE                             R60 R31
     1006 CALL                             R58 2 0
     1007 GETUPVAL                         R58 33
     1008 GETTABLEKS                       R58 R58 K64 ["useReplicatedState"]
     1010 GETUPVAL                         R59 34
     1011 GETTABLEKS                       R59 R59 K73 ["UNDO_TRANSACTION"]
     1013 MOVE                             R60 R8
     1014 CALL                             R58 2 0
     1015 GETUPVAL                         R58 33
     1016 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1018 GETUPVAL                         R59 35
     1019 GETTABLEKS                       R59 R59 K75 ["CREATE_NODE"]
     1021 MOVE                             R60 R32
     1022 CALL                             R58 2 0
     1023 GETUPVAL                         R58 33
     1024 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1026 GETUPVAL                         R59 35
     1027 GETTABLEKS                       R59 R59 K76 ["CREATE_PARAMETER"]
     1029 MOVE                             R60 R34
     1030 CALL                             R58 2 0
     1031 GETUPVAL                         R58 33
     1032 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1034 GETUPVAL                         R59 35
     1035 GETTABLEKS                       R59 R59 K77 ["CREATE_CONNECTED_PARAMETER"]
     1037 MOVE                             R60 R42
     1038 CALL                             R58 2 0
     1039 GETUPVAL                         R58 33
     1040 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1042 GETUPVAL                         R59 35
     1043 GETTABLEKS                       R59 R59 K78 ["CREATE_EXISTING_PARAMETER"]
     1045 MOVE                             R60 R35
     1046 CALL                             R58 2 0
     1047 GETUPVAL                         R58 33
     1048 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1050 GETUPVAL                         R59 35
     1051 GETTABLEKS                       R59 R59 K79 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
     1053 MOVE                             R60 R33
     1054 CALL                             R58 2 0
     1055 GETUPVAL                         R58 33
     1056 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1058 GETUPVAL                         R59 35
     1059 GETTABLEKS                       R59 R59 K80 ["SELECT_NODES"]
     1061 MOVE                             R60 R24
     1062 CALL                             R58 2 0
     1063 GETUPVAL                         R58 33
     1064 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1066 GETUPVAL                         R59 35
     1067 GETTABLEKS                       R59 R59 K81 ["SELECT_NODES_FROM_RECT"]
     1069 MOVE                             R60 R25
     1070 CALL                             R58 2 0
     1071 GETUPVAL                         R58 33
     1072 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1074 GETUPVAL                         R59 35
     1075 GETTABLEKS                       R59 R59 K82 ["SET_NODE_POSITIONS"]
     1077 MOVE                             R60 R22
     1078 CALL                             R58 2 0
     1079 GETUPVAL                         R58 33
     1080 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1082 GETUPVAL                         R59 35
     1083 GETTABLEKS                       R59 R59 K83 ["SET_NODE_SIZE"]
     1085 MOVE                             R60 R23
     1086 CALL                             R58 2 0
     1087 GETUPVAL                         R58 33
     1088 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1090 GETUPVAL                         R59 35
     1091 GETTABLEKS                       R59 R59 K84 ["SET_NODE_CONNECTION"]
     1093 MOVE                             R60 R41
     1094 CALL                             R58 2 0
     1095 GETUPVAL                         R58 33
     1096 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1098 GETUPVAL                         R59 35
     1099 GETTABLEKS                       R59 R59 K85 ["DELETE_NODE_INPUT"]
     1101 MOVE                             R60 R36
     1102 CALL                             R58 2 0
     1103 GETUPVAL                         R58 33
     1104 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1106 GETUPVAL                         R59 35
     1107 GETTABLEKS                       R59 R59 K86 ["REMOVE_NODE_OUTPUT_CONNECTION"]
     1109 MOVE                             R60 R40
     1110 CALL                             R58 2 0
     1111 GETUPVAL                         R58 33
     1112 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1114 GETUPVAL                         R59 35
     1115 GETTABLEKS                       R59 R59 K87 ["REMOVE_NODE_INPUT_CONNECTION"]
     1117 MOVE                             R60 R37
     1118 CALL                             R58 2 0
     1119 GETUPVAL                         R58 33
     1120 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1122 GETUPVAL                         R59 35
     1123 GETTABLEKS                       R59 R59 K88 ["REMOVE_PARAMETER"]
     1125 MOVE                             R60 R49
     1126 CALL                             R58 2 0
     1127 GETUPVAL                         R58 33
     1128 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1130 GETUPVAL                         R59 35
     1131 GETTABLEKS                       R59 R59 K89 ["RENAME_NODE"]
     1133 MOVE                             R60 R47
     1134 CALL                             R58 2 0
     1135 GETUPVAL                         R58 33
     1136 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1138 GETUPVAL                         R59 35
     1139 GETTABLEKS                       R59 R59 K90 ["RENAME_PARAMETER"]
     1141 MOVE                             R60 R50
     1142 CALL                             R58 2 0
     1143 GETUPVAL                         R58 33
     1144 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1146 GETUPVAL                         R59 35
     1147 GETTABLEKS                       R59 R59 K91 ["DELETE_NODE_INSTANCE"]
     1149 MOVE                             R60 R52
     1150 CALL                             R58 2 0
     1151 GETUPVAL                         R58 33
     1152 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1154 GETUPVAL                         R59 35
     1155 GETTABLEKS                       R59 R59 K92 ["SET_COLLAPSED"]
     1157 MOVE                             R60 R21
     1158 CALL                             R58 2 0
     1159 GETUPVAL                         R58 33
     1160 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1162 GETUPVAL                         R59 35
     1163 GETTABLEKS                       R59 R59 K93 ["SET_NODE_PROPERTY"]
     1165 MOVE                             R60 R45
     1166 CALL                             R58 2 0
     1167 GETUPVAL                         R58 33
     1168 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1170 GETUPVAL                         R59 35
     1171 GETTABLEKS                       R59 R59 K94 ["SET_INPUT_PIN_NODE_PROPERTY"]
     1173 MOVE                             R60 R46
     1174 CALL                             R58 2 0
     1175 GETUPVAL                         R58 33
     1176 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1178 GETUPVAL                         R59 35
     1179 GETTABLEKS                       R59 R59 K95 ["SET_PARAMETER_NODE_TYPE"]
     1181 MOVE                             R60 R51
     1182 CALL                             R58 2 0
     1183 GETUPVAL                         R58 33
     1184 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1186 GETUPVAL                         R59 35
     1187 GETTABLEKS                       R59 R59 K96 ["REORDER_PINS"]
     1189 MOVE                             R60 R48
     1190 CALL                             R58 2 0
     1191 GETUPVAL                         R58 33
     1192 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1194 GETUPVAL                         R59 35
     1195 GETTABLEKS                       R59 R59 K97 ["BEGIN_UNDO_TRANSACTION"]
     1197 MOVE                             R60 R43
     1198 CALL                             R58 2 0
     1199 GETUPVAL                         R58 33
     1200 GETTABLEKS                       R58 R58 K74 ["useBoundAction"]
     1202 GETUPVAL                         R59 35
     1203 GETTABLEKS                       R59 R59 K98 ["FINISH_UNDO_TRANSACTION"]
     1205 MOVE                             R60 R44
     1206 CALL                             R58 2 0
     1207 GETUPVAL                         R58 1
     1208 GETTABLEKS                       R58 R58 K99 ["createElement"]
     1210 GETUPVAL                         R59 36
     1211 GETTABLEKS                       R59 R59 K100 ["Provider"]
     1213 DUPTABLE                         R60 K102 [{"value"}]
     1214 SETTABLEKS                       R54 R60 K101 ["value"]
     1216 DUPTABLE                         R61 K104 [{"ContextStack"}]
     1217 GETUPVAL                         R62 1
     1218 GETTABLEKS                       R62 R62 K99 ["createElement"]
     1220 GETUPVAL                         R63 10
     1221 GETTABLEKS                       R63 R63 K103 ["ContextStack"]
     1223 DUPTABLE                         R64 K106 [{"providers"}]
     1224 NEWTABLE                         R65 0 2
     1226 GETUPVAL                         R66 1
     1227 GETTABLEKS                       R66 R66 K99 ["createElement"]
     1229 GETUPVAL                         R67 37
     1230 GETTABLEKS                       R67 R67 K100 ["Provider"]
     1232 DUPTABLE                         R68 K108 [{"timeRange"}]
     1233 SETTABLEKS                       R55 R68 K107 ["timeRange"]
     1235 CALL                             R66 2 1
     1236 GETUPVAL                         R67 1
     1237 GETTABLEKS                       R67 R67 K99 ["createElement"]
     1239 GETUPVAL                         R68 38
     1240 GETTABLEKS                       R68 R68 K100 ["Provider"]
     1242 DUPTABLE                         R69 K110 [{"animationClipsList"}]
     1243 SETTABLEKS                       R57 R69 K109 ["animationClipsList"]
     1245 CALL                             R67 2 -1
     1246 SETLIST                          R65 R66 -1 [1]
     1248 SETTABLEKS                       R65 R64 K105 ["providers"]
     1250 GETTABLEKS                       R65 R0 K111 ["children"]
     1252 CALL                             R62 3 1
     1253 SETTABLEKS                       R62 R61 K103 ["ContextStack"]
     1255 CALL                             R58 3 -1
     1256 RETURN                           R58 -1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_62:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_63:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_66:
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

PROTO_67:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
        0 DUPTABLE                         R0 K28 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "deleteNodeInput", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "DEPRECATED_observeIsDisabledByNodeId"}]
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
       43 GETUPVAL                         R1 10
       44 SETTABLEKS                       R1 R0 K10 ["deleteNodeInput"]
       46 GETUPVAL                         R1 11
       47 SETTABLEKS                       R1 R0 K11 ["removeNodeInputConnectionAsync"]
       49 GETUPVAL                         R1 12
       50 SETTABLEKS                       R1 R0 K12 ["removeNodeOutputConnectionAsync"]
       52 GETUPVAL                         R2 13
       53 NEWCLOSURE                       R1 P0
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R1 R0 K13 ["removeParameter"]
       57 GETUPVAL                         R2 14
       58 NEWCLOSURE                       R1 P0
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R1 R0 K14 ["renameNode"]
       62 GETUPVAL                         R2 15
       63 NEWCLOSURE                       R1 P0
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R1 R0 K15 ["renameParameter"]
       67 GETUPVAL                         R2 16
       68 NEWCLOSURE                       R1 P0
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R1 R0 K16 ["deleteNodeInstance"]
       72 GETUPVAL                         R2 17
       73 NEWCLOSURE                       R1 P0
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R1 R0 K17 ["removeNodes"]
       77 GETUPVAL                         R2 18
       78 NEWCLOSURE                       R1 P0
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R1 R0 K18 ["setNodeConnection"]
       82 GETUPVAL                         R2 19
       83 NEWCLOSURE                       R1 P0
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R1 R0 K19 ["setNodePositions"]
       87 GETUPVAL                         R2 20
       88 NEWCLOSURE                       R1 P0
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R1 R0 K20 ["setNodeProperty"]
       92 GETUPVAL                         R2 21
       93 NEWCLOSURE                       R1 P0
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R1 R0 K21 ["setInputPinNodeProperty"]
       97 GETUPVAL                         R2 22
       98 NEWCLOSURE                       R1 P0
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R1 R0 K22 ["setNodeSize"]
      102 GETUPVAL                         R2 23
      103 NEWCLOSURE                       R1 P0
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R1 R0 K23 ["setParameterNodeType"]
      107 GETUPVAL                         R1 24
      108 GETTABLEKS                       R1 R1 K29 ["observe"]
      110 SETTABLEKS                       R1 R0 K24 ["observeNodePropsById"]
      112 GETUPVAL                         R1 25
      113 SETTABLEKS                       R1 R0 K25 ["observeNodeStateById"]
      115 GETUPVAL                         R1 26
      116 SETTABLEKS                       R1 R0 K26 ["observeFadeByNodeId"]
      118 GETUPVAL                         R1 27
      119 SETTABLEKS                       R1 R0 K27 ["DEPRECATED_observeIsDisabledByNodeId"]
      121 RETURN                           R0 1

PROTO_76:
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
       14 DUPCLOSURE                       R7 K1 [PROTO_58]
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R8 0 0
       18 CALL                             R6 2 2
       19 MOVE                             R4 R6
       20 MOVE                             R5 R7
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       24 GETUPVAL                         R7 5
       25 GETTABLEKS                       R7 R7 K3 ["GRAPH_PAYLOAD_MAP"]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       30 NEWCLOSURE                       R9 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          REF R5
       34 NEWTABLE                         R10 0 2
       36 GETTABLEKS                       R11 R1 K5 ["setMap"]
       38 GETUPVAL                         R13 1
       39 CALL                             R13 0 1
       40 JUMPIFNOT                        R13 ; [+2]
       41 LOADNIL                          R12
       42 JUMP                             ; [+1]
       43 MOVE                             R12 R5
       44 SETLIST                          R10 R11 2 [1]
       46 CALL                             R8 2 -1
       47 CALL                             R6 -1 0
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R7 R7 K6 ["GRAPH_RENDER_INFO"]
       54 GETTABLEKS                       R8 R2 K5 ["setMap"]
       56 CALL                             R6 2 0
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       60 GETUPVAL                         R7 5
       61 GETTABLEKS                       R7 R7 K7 ["GRAPH_NODE_PROPS"]
       63 GETTABLEKS                       R8 R3 K5 ["setMap"]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R6 R6 K8 ["useEffect"]
       69 NEWCLOSURE                       R7 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 NEWTABLE                         R8 0 1
       74 GETTABLEKS                       R9 R0 K9 ["testOverrideGraphPayloadMap"]
       76 SETLIST                          R8 R9 1 [1]
       78 CALL                             R6 2 0
       79 GETUPVAL                         R6 4
       80 GETTABLEKS                       R6 R6 K10 ["useReplicatedStateListener"]
       82 GETUPVAL                         R7 5
       83 GETTABLEKS                       R7 R7 K11 ["TIME_RANGE"]
       85 GETIMPORT                        R8 K14 [NumberRange.new]
       87 LOADN                            R9 0
       88 LOADN                            R10 10
       89 CALL                             R8 2 -1
       90 CALL                             R6 -1 1
       91 GETUPVAL                         R7 4
       92 GETTABLEKS                       R7 R7 K10 ["useReplicatedStateListener"]
       94 GETUPVAL                         R8 5
       95 GETTABLEKS                       R8 R8 K15 ["GRAPH_PAYLOAD_GRAPH_RECT"]
       97 GETIMPORT                        R9 K17 [Rect.new]
       99 LOADN                            R10 0
      100 LOADN                            R11 0
      101 LOADN                            R12 0
      102 LOADN                            R13 0
      103 CALL                             R9 4 -1
      104 CALL                             R7 -1 1
      105 GETUPVAL                         R8 4
      106 GETTABLEKS                       R8 R8 K10 ["useReplicatedStateListener"]
      108 GETUPVAL                         R9 5
      109 GETTABLEKS                       R9 R9 K18 ["SOURCE_ASSET_ID"]
      111 LOADNIL                          R10
      112 CALL                             R8 2 1
      113 GETUPVAL                         R10 6
      114 CALL                             R10 0 1
      115 JUMPIFNOT                        R10 ; [+2]
      116 LOADK                            R9 K19 [""]
      117 JUMP                             ; [+8]
      118 GETUPVAL                         R9 4
      119 GETTABLEKS                       R9 R9 K10 ["useReplicatedStateListener"]
      121 GETUPVAL                         R10 5
      122 GETTABLEKS                       R10 R10 K20 ["CURRENT_ANIMATION_ID"]
      124 LOADK                            R11 K19 [""]
      125 CALL                             R9 2 1
      126 GETUPVAL                         R11 6
      127 CALL                             R11 0 1
      128 JUMPIFNOT                        R11 ; [+9]
      129 GETUPVAL                         R10 4
      130 GETTABLEKS                       R10 R10 K10 ["useReplicatedStateListener"]
      132 GETUPVAL                         R11 5
      133 GETTABLEKS                       R11 R11 K21 ["SELECTED_GRAPH_KEY"]
      135 LOADNIL                          R12
      136 CALL                             R10 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R10
      139 GETUPVAL                         R11 7
      140 GETTABLEKS                       R11 R11 K22 ["createComputed"]
      142 DUPCLOSURE                       R12 K23 [PROTO_61]
      143 CALL                             R11 1 1
      144 GETUPVAL                         R12 8
      145 MOVE                             R13 R2
      146 MOVE                             R14 R1
      147 CALL                             R12 2 1
      148 GETUPVAL                         R14 1
      149 CALL                             R14 0 1
      150 JUMPIFNOT                        R14 ; [+2]
      151 LOADNIL                          R13
      152 JUMP                             ; [+5]
      153 GETUPVAL                         R13 9
      154 GETTABLEKS                       R13 R13 K24 ["useSignalState"]
      156 MOVE                             R14 R4
      157 CALL                             R13 1 1
      158 GETUPVAL                         R14 4
      159 GETTABLEKS                       R14 R14 K25 ["useBoundAction"]
      161 GETUPVAL                         R15 10
      162 GETTABLEKS                       R15 R15 K26 ["REORDER_PINS"]
      164 CALL                             R14 1 1
      165 GETUPVAL                         R15 4
      166 GETTABLEKS                       R15 R15 K25 ["useBoundAction"]
      168 GETUPVAL                         R16 10
      169 GETTABLEKS                       R16 R16 K27 ["CREATE_NODE"]
      171 CALL                             R15 1 1
      172 GETUPVAL                         R16 4
      173 GETTABLEKS                       R16 R16 K25 ["useBoundAction"]
      175 GETUPVAL                         R17 10
      176 GETTABLEKS                       R17 R17 K28 ["CREATE_PARAMETER"]
      178 CALL                             R16 1 1
      179 GETUPVAL                         R17 4
      180 GETTABLEKS                       R17 R17 K25 ["useBoundAction"]
      182 GETUPVAL                         R18 10
      183 GETTABLEKS                       R18 R18 K29 ["CREATE_CONNECTED_PARAMETER"]
      185 CALL                             R17 1 1
      186 GETUPVAL                         R18 4
      187 GETTABLEKS                       R18 R18 K25 ["useBoundAction"]
      189 GETUPVAL                         R19 10
      190 GETTABLEKS                       R19 R19 K30 ["CREATE_EXISTING_PARAMETER"]
      192 CALL                             R18 1 1
      193 GETUPVAL                         R19 4
      194 GETTABLEKS                       R19 R19 K25 ["useBoundAction"]
      196 GETUPVAL                         R20 10
      197 GETTABLEKS                       R20 R20 K31 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      199 CALL                             R19 1 1
      200 GETUPVAL                         R20 4
      201 GETTABLEKS                       R20 R20 K25 ["useBoundAction"]
      203 GETUPVAL                         R21 10
      204 GETTABLEKS                       R21 R21 K32 ["SELECT_NODES"]
      206 CALL                             R20 1 1
      207 GETUPVAL                         R21 4
      208 GETTABLEKS                       R21 R21 K25 ["useBoundAction"]
      210 GETUPVAL                         R22 10
      211 GETTABLEKS                       R22 R22 K33 ["SET_NODE_POSITIONS"]
      213 CALL                             R21 1 1
      214 GETUPVAL                         R22 4
      215 GETTABLEKS                       R22 R22 K25 ["useBoundAction"]
      217 GETUPVAL                         R23 10
      218 GETTABLEKS                       R23 R23 K34 ["SET_NODE_SIZE"]
      220 CALL                             R22 1 1
      221 GETUPVAL                         R23 4
      222 GETTABLEKS                       R23 R23 K25 ["useBoundAction"]
      224 GETUPVAL                         R24 10
      225 GETTABLEKS                       R24 R24 K35 ["SET_NODE_CONNECTION"]
      227 CALL                             R23 1 1
      228 GETUPVAL                         R24 4
      229 GETTABLEKS                       R24 R24 K25 ["useBoundAction"]
      231 GETUPVAL                         R25 10
      232 GETTABLEKS                       R25 R25 K36 ["DELETE_NODE_INPUT"]
      234 CALL                             R24 1 1
      235 GETUPVAL                         R25 4
      236 GETTABLEKS                       R25 R25 K25 ["useBoundAction"]
      238 GETUPVAL                         R26 10
      239 GETTABLEKS                       R26 R26 K37 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      241 CALL                             R25 1 1
      242 GETUPVAL                         R26 4
      243 GETTABLEKS                       R26 R26 K25 ["useBoundAction"]
      245 GETUPVAL                         R27 10
      246 GETTABLEKS                       R27 R27 K38 ["REMOVE_NODE_INPUT_CONNECTION"]
      248 CALL                             R26 1 1
      249 GETUPVAL                         R27 4
      250 GETTABLEKS                       R27 R27 K25 ["useBoundAction"]
      252 GETUPVAL                         R28 10
      253 GETTABLEKS                       R28 R28 K39 ["REMOVE_PARAMETER"]
      255 CALL                             R27 1 1
      256 GETUPVAL                         R28 4
      257 GETTABLEKS                       R28 R28 K25 ["useBoundAction"]
      259 GETUPVAL                         R29 10
      260 GETTABLEKS                       R29 R29 K40 ["RENAME_NODE"]
      262 CALL                             R28 1 1
      263 GETUPVAL                         R29 4
      264 GETTABLEKS                       R29 R29 K25 ["useBoundAction"]
      266 GETUPVAL                         R30 10
      267 GETTABLEKS                       R30 R30 K41 ["RENAME_PARAMETER"]
      269 CALL                             R29 1 1
      270 GETUPVAL                         R30 4
      271 GETTABLEKS                       R30 R30 K25 ["useBoundAction"]
      273 GETUPVAL                         R31 10
      274 GETTABLEKS                       R31 R31 K42 ["DELETE_NODE_INSTANCE"]
      276 CALL                             R30 1 1
      277 GETUPVAL                         R31 4
      278 GETTABLEKS                       R31 R31 K25 ["useBoundAction"]
      280 GETUPVAL                         R32 10
      281 GETTABLEKS                       R32 R32 K43 ["SET_COLLAPSED"]
      283 CALL                             R31 1 1
      284 GETUPVAL                         R32 4
      285 GETTABLEKS                       R32 R32 K25 ["useBoundAction"]
      287 GETUPVAL                         R33 10
      288 GETTABLEKS                       R33 R33 K44 ["SET_NODE_PROPERTY"]
      290 CALL                             R32 1 1
      291 GETUPVAL                         R33 4
      292 GETTABLEKS                       R33 R33 K25 ["useBoundAction"]
      294 GETUPVAL                         R34 10
      295 GETTABLEKS                       R34 R34 K45 ["SET_INPUT_PIN_NODE_PROPERTY"]
      297 CALL                             R33 1 1
      298 GETUPVAL                         R34 4
      299 GETTABLEKS                       R34 R34 K25 ["useBoundAction"]
      301 GETUPVAL                         R35 10
      302 GETTABLEKS                       R35 R35 K46 ["SET_PARAMETER_NODE_TYPE"]
      304 CALL                             R34 1 1
      305 GETUPVAL                         R35 4
      306 GETTABLEKS                       R35 R35 K25 ["useBoundAction"]
      308 GETUPVAL                         R36 10
      309 GETTABLEKS                       R36 R36 K47 ["SELECT_NODES_FROM_RECT"]
      311 CALL                             R35 1 1
      312 GETUPVAL                         R36 4
      313 GETTABLEKS                       R36 R36 K25 ["useBoundAction"]
      315 GETUPVAL                         R37 10
      316 GETTABLEKS                       R37 R37 K48 ["BEGIN_UNDO_TRANSACTION"]
      318 CALL                             R36 1 1
      319 GETUPVAL                         R37 4
      320 GETTABLEKS                       R37 R37 K25 ["useBoundAction"]
      322 GETUPVAL                         R38 10
      323 GETTABLEKS                       R38 R38 K49 ["FINISH_UNDO_TRANSACTION"]
      325 CALL                             R37 1 1
      326 NEWTABLE                         R38 64 0
      328 GETUPVAL                         R40 1
      329 CALL                             R40 0 1
      330 JUMPIFNOT                        R40 ; [+2]
      331 LOADNIL                          R39
      332 JUMP                             ; [+1]
      333 MOVE                             R39 R13
      334 SETTABLEKS                       R39 R38 K50 ["selectedGraphInstanceId_DEPRECATED"]
      336 SETTABLEKS                       R14 R38 K51 ["reorderPinsAsync"]
      338 SETTABLEKS                       R15 R38 K52 ["createNodeAsync"]
      340 SETTABLEKS                       R16 R38 K53 ["createParameterAsync"]
      342 SETTABLEKS                       R17 R38 K54 ["createConnectedParameterAsync"]
      344 SETTABLEKS                       R18 R38 K55 ["createExistingParameterAsync"]
      346 SETTABLEKS                       R7 R38 K56 ["graphRect"]
      348 SETTABLEKS                       R19 R38 K57 ["selectAllParameterNodesWithNameAsync"]
      350 SETTABLEKS                       R20 R38 K58 ["selectNodesAsync"]
      352 SETTABLEKS                       R35 R38 K59 ["selectNodesFromRectAsync"]
      354 SETTABLEKS                       R21 R38 K60 ["setNodePositionsAsync"]
      356 SETTABLEKS                       R22 R38 K61 ["setNodeSizeAsync"]
      358 SETTABLEKS                       R23 R38 K62 ["setNodeConnectionAsync"]
      360 SETTABLEKS                       R24 R38 K63 ["deleteNodeInput"]
      362 SETTABLEKS                       R25 R38 K64 ["removeNodeOutputConnectionAsync"]
      364 SETTABLEKS                       R26 R38 K65 ["removeNodeInputConnectionAsync"]
      366 SETTABLEKS                       R27 R38 K66 ["removeParameterAsync"]
      368 SETTABLEKS                       R28 R38 K67 ["renameNodeAsync"]
      370 SETTABLEKS                       R29 R38 K68 ["renameParameterAsync"]
      372 SETTABLEKS                       R30 R38 K69 ["deleteNodeInstanceAsync"]
      374 SETTABLEKS                       R31 R38 K70 ["setCollapsedAsync"]
      376 SETTABLEKS                       R32 R38 K71 ["setNodePropertyAsync"]
      378 SETTABLEKS                       R33 R38 K72 ["setInputPinNodePropertyAsync"]
      380 SETTABLEKS                       R34 R38 K73 ["setParameterNodeTypeAsync"]
      382 SETTABLEKS                       R9 R38 K74 ["currentAnimationId"]
      384 SETTABLEKS                       R8 R38 K75 ["sourceAssetId"]
      386 SETTABLEKS                       R10 R38 K76 ["selectedGraphKey"]
      388 GETUPVAL                         R40 1
      389 CALL                             R40 0 1
      390 JUMPIFNOT                        R40 ; [+2]
      391 LOADNIL                          R39
      392 JUMP                             ; [+1]
      393 MOVE                             R39 R11
      394 SETTABLEKS                       R39 R38 K77 ["observeSelectedGraphInstance_DEPRECATED"]
      396 GETTABLEKS                       R39 R1 K78 ["observe"]
      398 SETTABLEKS                       R39 R38 K79 ["observeGraphNodeById"]
      400 GETTABLEKS                       R39 R2 K78 ["observe"]
      402 SETTABLEKS                       R39 R38 K80 ["observeNodeRenderInfoById"]
      404 SETTABLEKS                       R36 R38 K81 ["beginUndoTransaction"]
      406 SETTABLEKS                       R37 R38 K82 ["finishUndoTransaction"]
      408 GETTABLEKS                       R39 R1 K83 ["observeMap"]
      410 SETTABLEKS                       R39 R38 K84 ["observeGraphNodeMap"]
      412 GETTABLEKS                       R39 R2 K83 ["observeMap"]
      414 SETTABLEKS                       R39 R38 K85 ["observeRenderInfoMap"]
      416 GETTABLEKS                       R39 R12 K86 ["hasGraphOutput"]
      418 SETTABLEKS                       R39 R38 K86 ["hasGraphOutput"]
      420 GETTABLEKS                       R39 R3 K78 ["observe"]
      422 SETTABLEKS                       R39 R38 K87 ["observeNodePropsById"]
      424 DUPCLOSURE                       R39 K88 [PROTO_63]
      425 GETUPVAL                         R40 2
      426 GETTABLEKS                       R40 R40 K89 ["useContext"]
      428 GETUPVAL                         R41 11
      429 GETTABLEKS                       R41 R41 K90 ["Context"]
      431 CALL                             R40 1 1
      432 GETUPVAL                         R41 2
      433 GETTABLEKS                       R41 R41 K4 ["useCallback"]
      435 NEWCLOSURE                       R42 P5
      436 CAPTURE                          UPVAL U1
      437 CAPTURE                          UPVAL U12
      438 CAPTURE                          VAL R40
      439 CAPTURE                          UPVAL U13
      440 NEWTABLE                         R43 0 2
      442 GETUPVAL                         R45 1
      443 CALL                             R45 0 1
      444 JUMPIFNOT                        R45 ; [+3]
      445 GETTABLEKS                       R44 R40 K91 ["observeDebugData"]
      447 JUMP                             ; [+2]
      448 GETTABLEKS                       R44 R40 K92 ["observeDebugData_DEPRECATED"]
      450 GETUPVAL                         R46 1
      451 CALL                             R46 0 1
      452 JUMPIFNOT                        R46 ; [+3]
      453 GETTABLEKS                       R45 R40 K93 ["observeActiveDebugTargetIdentifier"]
      455 JUMP                             ; [+1]
      456 LOADNIL                          R45
      457 SETLIST                          R43 R44 2 [1]
      459 CALL                             R41 2 1
      460 GETUPVAL                         R42 2
      461 GETTABLEKS                       R42 R42 K4 ["useCallback"]
      463 NEWCLOSURE                       R43 P6
      464 CAPTURE                          UPVAL U12
      465 CAPTURE                          VAL R40
      466 CAPTURE                          UPVAL U13
      467 NEWTABLE                         R44 0 2
      469 GETTABLEKS                       R45 R40 K91 ["observeDebugData"]
      471 GETTABLEKS                       R46 R40 K93 ["observeActiveDebugTargetIdentifier"]
      473 SETLIST                          R44 R45 2 [1]
      475 CALL                             R42 2 1
      476 GETUPVAL                         R43 2
      477 GETTABLEKS                       R43 R43 K4 ["useCallback"]
      479 NEWCLOSURE                       R44 P7
      480 CAPTURE                          UPVAL U1
      481 CAPTURE                          VAL R42
      482 CAPTURE                          UPVAL U7
      483 CAPTURE                          VAL R40
      484 CAPTURE                          UPVAL U14
      485 NEWTABLE                         R45 0 2
      487 GETUPVAL                         R47 1
      488 CALL                             R47 0 1
      489 JUMPIFNOT                        R47 ; [+2]
      490 LOADNIL                          R46
      491 JUMP                             ; [+2]
      492 GETTABLEKS                       R46 R40 K92 ["observeDebugData_DEPRECATED"]
      494 GETUPVAL                         R48 1
      495 CALL                             R48 0 1
      496 JUMPIFNOT                        R48 ; [+2]
      497 MOVE                             R47 R42
      498 JUMP                             ; [+1]
      499 LOADNIL                          R47
      500 SETLIST                          R45 R46 2 [1]
      502 CALL                             R43 2 1
      503 GETUPVAL                         R44 2
      504 GETTABLEKS                       R44 R44 K4 ["useCallback"]
      506 NEWCLOSURE                       R45 P8
      507 CAPTURE                          UPVAL U1
      508 CAPTURE                          VAL R42
      509 CAPTURE                          UPVAL U7
      510 CAPTURE                          VAL R40
      511 NEWTABLE                         R46 0 2
      513 GETUPVAL                         R48 1
      514 CALL                             R48 0 1
      515 JUMPIFNOT                        R48 ; [+2]
      516 LOADNIL                          R47
      517 JUMP                             ; [+2]
      518 GETTABLEKS                       R47 R40 K92 ["observeDebugData_DEPRECATED"]
      520 GETUPVAL                         R49 1
      521 CALL                             R49 0 1
      522 JUMPIFNOT                        R49 ; [+2]
      523 MOVE                             R48 R42
      524 JUMP                             ; [+1]
      525 LOADNIL                          R48
      526 SETLIST                          R46 R47 2 [1]
      528 CALL                             R44 2 1
      529 GETUPVAL                         R45 15
      530 GETTABLEKS                       R45 R45 K94 ["useConsumer"]
      532 CALL                             R45 0 1
      533 GETUPVAL                         R46 16
      534 GETTABLEKS                       R46 R46 K94 ["useConsumer"]
      536 CALL                             R46 0 1
      537 GETUPVAL                         R47 2
      538 GETTABLEKS                       R47 R47 K0 ["useMemo"]
      540 NEWCLOSURE                       R48 P9
      541 CAPTURE                          VAL R1
      542 CAPTURE                          VAL R2
      543 CAPTURE                          VAL R45
      544 CAPTURE                          VAL R14
      545 CAPTURE                          VAL R16
      546 CAPTURE                          VAL R18
      547 CAPTURE                          VAL R17
      548 CAPTURE                          VAL R19
      549 CAPTURE                          VAL R20
      550 CAPTURE                          VAL R31
      551 CAPTURE                          VAL R24
      552 CAPTURE                          VAL R26
      553 CAPTURE                          VAL R25
      554 CAPTURE                          VAL R27
      555 CAPTURE                          VAL R28
      556 CAPTURE                          VAL R29
      557 CAPTURE                          VAL R30
      558 CAPTURE                          VAL R46
      559 CAPTURE                          VAL R23
      560 CAPTURE                          VAL R21
      561 CAPTURE                          VAL R32
      562 CAPTURE                          VAL R33
      563 CAPTURE                          VAL R22
      564 CAPTURE                          VAL R34
      565 CAPTURE                          VAL R3
      566 CAPTURE                          VAL R41
      567 CAPTURE                          VAL R43
      568 CAPTURE                          VAL R44
      569 NEWTABLE                         R49 0 28
      571 MOVE                             R50 R1
      572 MOVE                             R51 R2
      573 MOVE                             R52 R45
      574 MOVE                             R53 R14
      575 MOVE                             R54 R16
      576 MOVE                             R55 R18
      577 MOVE                             R56 R17
      578 MOVE                             R57 R19
      579 MOVE                             R58 R20
      580 MOVE                             R59 R31
      581 MOVE                             R60 R24
      582 MOVE                             R61 R26
      583 MOVE                             R62 R25
      584 MOVE                             R63 R27
      585 MOVE                             R64 R28
      586 MOVE                             R65 R29
      587 SETLIST                          R49 R50 16 [1]
      589 MOVE                             R50 R30
      590 MOVE                             R51 R46
      591 MOVE                             R52 R23
      592 MOVE                             R53 R21
      593 MOVE                             R54 R32
      594 MOVE                             R55 R33
      595 MOVE                             R56 R22
      596 MOVE                             R57 R34
      597 GETTABLEKS                       R58 R3 K78 ["observe"]
      599 MOVE                             R59 R41
      600 MOVE                             R60 R43
      601 MOVE                             R61 R44
      602 SETLIST                          R49 R50 12 [17]
      604 CALL                             R47 2 1
      605 GETUPVAL                         R48 2
      606 GETTABLEKS                       R48 R48 K95 ["createElement"]
      608 GETUPVAL                         R49 17
      609 GETTABLEKS                       R49 R49 K96 ["Provider"]
      611 DUPTABLE                         R50 K98 [{"value"}]
      612 SETTABLEKS                       R38 R50 K97 ["value"]
      614 DUPTABLE                         R51 K100 [{"ContextStack"}]
      615 GETUPVAL                         R52 2
      616 GETTABLEKS                       R52 R52 K95 ["createElement"]
      618 GETUPVAL                         R53 18
      619 GETTABLEKS                       R53 R53 K99 ["ContextStack"]
      621 DUPTABLE                         R54 K102 [{"providers"}]
      622 NEWTABLE                         R55 0 2
      624 GETUPVAL                         R56 2
      625 GETTABLEKS                       R56 R56 K95 ["createElement"]
      627 GETUPVAL                         R57 14
      628 GETTABLEKS                       R57 R57 K103 ["GraphContext"]
      630 GETTABLEKS                       R57 R57 K96 ["Provider"]
      632 DUPTABLE                         R58 K98 [{"value"}]
      633 SETTABLEKS                       R47 R58 K97 ["value"]
      635 CALL                             R56 2 1
      636 GETUPVAL                         R57 2
      637 GETTABLEKS                       R57 R57 K95 ["createElement"]
      639 GETUPVAL                         R58 19
      640 GETTABLEKS                       R58 R58 K96 ["Provider"]
      642 DUPTABLE                         R59 K105 [{"timeRange"}]
      643 SETTABLEKS                       R6 R59 K104 ["timeRange"]
      645 CALL                             R57 2 -1
      646 SETLIST                          R55 R56 -1 [1]
      648 SETTABLEKS                       R55 R54 K101 ["providers"]
      650 GETTABLEKS                       R55 R0 K106 ["children"]
      652 CALL                             R52 3 1
      653 SETTABLEKS                       R52 R51 K99 ["ContextStack"]
      655 CALL                             R48 3 -1
      656 CLOSEUPVALS                      R5
      657 RETURN                           R48 -1

PROTO_77:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_78:
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

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_79]
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
      199 GETTABLEKS                       R27 R27 K41 ["TimeRangeContext"]
      201 CALL                             R26 1 1
      202 GETIMPORT                        R27 K11 [require]
      204 GETTABLEKS                       R28 R0 K17 ["Flags"]
      206 GETTABLEKS                       R28 R28 K42 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      208 CALL                             R27 1 1
      209 GETIMPORT                        R28 K11 [require]
      211 GETTABLEKS                       R29 R0 K17 ["Flags"]
      213 GETTABLEKS                       R29 R29 K43 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      215 CALL                             R28 1 1
      216 GETIMPORT                        R29 K11 [require]
      218 GETTABLEKS                       R30 R0 K17 ["Flags"]
      220 GETTABLEKS                       R30 R30 K44 ["getFFlagAnimGraphUI_RunTimeDebug"]
      222 CALL                             R29 1 1
      223 GETIMPORT                        R30 K11 [require]
      225 GETTABLEKS                       R31 R0 K17 ["Flags"]
      227 GETTABLEKS                       R31 R31 K45 ["getFFlagAnimGraphUseRemove"]
      229 CALL                             R30 1 1
      230 GETIMPORT                        R31 K11 [require]
      232 GETTABLEKS                       R32 R0 K17 ["Flags"]
      234 GETTABLEKS                       R32 R32 K46 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      236 CALL                             R31 1 1
      237 GETIMPORT                        R32 K11 [require]
      239 GETTABLEKS                       R33 R0 K17 ["Flags"]
      241 GETTABLEKS                       R33 R33 K47 ["getFFlagAnimationEditorRenameInstanceToo"]
      243 CALL                             R32 1 1
      244 GETIMPORT                        R33 K11 [require]
      246 GETTABLEKS                       R34 R0 K12 ["Util"]
      248 GETTABLEKS                       R34 R34 K48 ["parseAnimationNodeType"]
      250 CALL                             R33 1 1
      251 GETIMPORT                        R34 K11 [require]
      253 GETIMPORT                        R35 K1 [script]
      255 GETTABLEKS                       R35 R35 K49 ["useGraphAnalytics"]
      257 CALL                             R34 1 1
      258 GETIMPORT                        R35 K11 [require]
      260 GETTABLEKS                       R36 R0 K50 ["Hooks"]
      262 GETTABLEKS                       R36 R36 K51 ["useNodeDefinitionDestroyHelper"]
      264 CALL                             R35 1 1
      265 GETIMPORT                        R36 K11 [require]
      267 GETTABLEKS                       R37 R0 K50 ["Hooks"]
      269 GETTABLEKS                       R37 R37 K52 ["useObserveSelection"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K11 [require]
      274 GETTABLEKS                       R38 R0 K50 ["Hooks"]
      276 GETTABLEKS                       R38 R38 K53 ["useParameterDestroyHelper"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K11 [require]
      281 GETTABLEKS                       R39 R0 K50 ["Hooks"]
      283 GETTABLEKS                       R39 R39 K54 ["useSignalDispatcher"]
      285 CALL                             R38 1 1
      286 GETTABLEKS                       R39 R14 K55 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      288 NEWTABLE                         R40 64 0
      290 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      292 LOADK                            R42 K57 ["observeGraphNodeMap"]
      293 CALL                             R41 1 1
      294 SETTABLEKS                       R41 R40 K57 ["observeGraphNodeMap"]
      296 GETIMPORT                        R41 K60 [Rect.new]
      298 LOADN                            R42 0
      299 LOADN                            R43 0
      300 LOADN                            R44 0
      301 LOADN                            R45 0
      302 CALL                             R41 4 1
      303 SETTABLEKS                       R41 R40 K61 ["graphRect"]
      305 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      307 LOADK                            R42 K62 ["reorderPinsAsync"]
      308 CALL                             R41 1 1
      309 SETTABLEKS                       R41 R40 K62 ["reorderPinsAsync"]
      311 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      313 LOADK                            R42 K63 ["createNodeAsync"]
      314 CALL                             R41 1 1
      315 SETTABLEKS                       R41 R40 K63 ["createNodeAsync"]
      317 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      319 LOADK                            R42 K64 ["createParameterAsync"]
      320 CALL                             R41 1 1
      321 SETTABLEKS                       R41 R40 K64 ["createParameterAsync"]
      323 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      325 LOADK                            R42 K65 ["createConnectedParameterAsync"]
      326 CALL                             R41 1 1
      327 SETTABLEKS                       R41 R40 K65 ["createConnectedParameterAsync"]
      329 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      331 LOADK                            R42 K66 ["createExistingParameterAsync"]
      332 CALL                             R41 1 1
      333 SETTABLEKS                       R41 R40 K66 ["createExistingParameterAsync"]
      335 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      337 LOADK                            R42 K67 ["selectAllParameterNodesWithNameAsync"]
      338 CALL                             R41 1 1
      339 SETTABLEKS                       R41 R40 K67 ["selectAllParameterNodesWithNameAsync"]
      341 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      343 LOADK                            R42 K68 ["selectNodesAsync"]
      344 CALL                             R41 1 1
      345 SETTABLEKS                       R41 R40 K68 ["selectNodesAsync"]
      347 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      349 LOADK                            R42 K69 ["selectNodesFromRectAsync"]
      350 CALL                             R41 1 1
      351 SETTABLEKS                       R41 R40 K69 ["selectNodesFromRectAsync"]
      353 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      355 LOADK                            R42 K70 ["setNodePositionsAsync"]
      356 CALL                             R41 1 1
      357 SETTABLEKS                       R41 R40 K70 ["setNodePositionsAsync"]
      359 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      361 LOADK                            R42 K71 ["setNodeSizeAsync"]
      362 CALL                             R41 1 1
      363 SETTABLEKS                       R41 R40 K71 ["setNodeSizeAsync"]
      365 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      367 LOADK                            R42 K72 ["deleteNodeInput"]
      368 CALL                             R41 1 1
      369 SETTABLEKS                       R41 R40 K72 ["deleteNodeInput"]
      371 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      373 LOADK                            R42 K73 ["removeNodeInputConnectionAsync"]
      374 CALL                             R41 1 1
      375 SETTABLEKS                       R41 R40 K73 ["removeNodeInputConnectionAsync"]
      377 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      379 LOADK                            R42 K74 ["removeNodeOutputConnectionAsync"]
      380 CALL                             R41 1 1
      381 SETTABLEKS                       R41 R40 K74 ["removeNodeOutputConnectionAsync"]
      383 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      385 LOADK                            R42 K75 ["removeParameterAsync"]
      386 CALL                             R41 1 1
      387 SETTABLEKS                       R41 R40 K75 ["removeParameterAsync"]
      389 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      391 LOADK                            R42 K76 ["renameNodeAsync"]
      392 CALL                             R41 1 1
      393 SETTABLEKS                       R41 R40 K76 ["renameNodeAsync"]
      395 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      397 LOADK                            R42 K77 ["renameParameterAsync"]
      398 CALL                             R41 1 1
      399 SETTABLEKS                       R41 R40 K77 ["renameParameterAsync"]
      401 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      403 LOADK                            R42 K78 ["deleteNodeInstanceAsync"]
      404 CALL                             R41 1 1
      405 SETTABLEKS                       R41 R40 K78 ["deleteNodeInstanceAsync"]
      407 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      409 LOADK                            R42 K79 ["setNewConnection"]
      410 CALL                             R41 1 1
      411 SETTABLEKS                       R41 R40 K80 ["setNodeConnectionAsync"]
      413 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      415 LOADK                            R42 K81 ["setCollapsedAsync"]
      416 CALL                             R41 1 1
      417 SETTABLEKS                       R41 R40 K81 ["setCollapsedAsync"]
      419 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      421 LOADK                            R42 K82 ["setNodePropertyAsync"]
      422 CALL                             R41 1 1
      423 SETTABLEKS                       R41 R40 K82 ["setNodePropertyAsync"]
      425 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      427 LOADK                            R42 K83 ["setInputPinNodePropertyAsync"]
      428 CALL                             R41 1 1
      429 SETTABLEKS                       R41 R40 K83 ["setInputPinNodePropertyAsync"]
      431 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      433 LOADK                            R42 K84 ["setParameterNodeTypeAsync"]
      434 CALL                             R41 1 1
      435 SETTABLEKS                       R41 R40 K84 ["setParameterNodeTypeAsync"]
      437 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      439 LOADK                            R42 K85 ["hasGraphOutput"]
      440 CALL                             R41 1 1
      441 SETTABLEKS                       R41 R40 K85 ["hasGraphOutput"]
      443 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      445 LOADK                            R42 K86 ["observeGraphNodeById"]
      446 CALL                             R41 1 1
      447 SETTABLEKS                       R41 R40 K86 ["observeGraphNodeById"]
      449 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      451 LOADK                            R42 K87 ["observeNodeRenderInfoById"]
      452 CALL                             R41 1 1
      453 SETTABLEKS                       R41 R40 K87 ["observeNodeRenderInfoById"]
      455 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      457 LOADK                            R42 K88 ["observeRenderInfoMap"]
      458 CALL                             R41 1 1
      459 SETTABLEKS                       R41 R40 K88 ["observeRenderInfoMap"]
      461 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      463 LOADK                            R42 K89 ["observeNodePropsById"]
      464 CALL                             R41 1 1
      465 SETTABLEKS                       R41 R40 K89 ["observeNodePropsById"]
      467 GETTABLEKS                       R41 R22 K90 ["createSignal"]
      469 LOADNIL                          R42
      470 CALL                             R41 1 1
      471 SETTABLEKS                       R41 R40 K91 ["observeSelectedGraphInstance_DEPRECATED"]
      473 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      475 LOADK                            R42 K92 ["beginUndoTransaction"]
      476 CALL                             R41 1 1
      477 SETTABLEKS                       R41 R40 K92 ["beginUndoTransaction"]
      479 GETTABLEKS                       R41 R18 K56 ["createUnimplemented"]
      481 LOADK                            R42 K93 ["finishUndoTransaction"]
      482 CALL                             R41 1 1
      483 SETTABLEKS                       R41 R40 K93 ["finishUndoTransaction"]
      485 LOADNIL                          R41
      486 SETTABLEKS                       R41 R40 K94 ["currentAnimationId"]
      488 LOADNIL                          R41
      489 SETTABLEKS                       R41 R40 K95 ["sourceAssetId"]
      491 LOADNIL                          R41
      492 SETTABLEKS                       R41 R40 K96 ["selectedGraphKey"]
      494 GETTABLEKS                       R41 R17 K97 ["createContext"]
      496 MOVE                             R42 R40
      497 CALL                             R41 1 1
      498 DUPTABLE                         R42 K107 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "GRAPH_NODE_PROPS", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "SELECTED_GRAPH_KEY", "UNDO_TRANSACTION"}]
      499 LOADK                            R43 K108 ["NativeGraphContext_GraphPayloadMap"]
      500 SETTABLEKS                       R43 R42 K98 ["GRAPH_PAYLOAD_MAP"]
      502 LOADK                            R43 K109 ["NativeGraphContext_GraphRenderInfo"]
      503 SETTABLEKS                       R43 R42 K99 ["GRAPH_RENDER_INFO"]
      505 LOADK                            R43 K110 ["NativeGraphContext_GraphNodeProps"]
      506 SETTABLEKS                       R43 R42 K100 ["GRAPH_NODE_PROPS"]
      508 LOADK                            R43 K111 ["NativeGraphContext_TimeRange"]
      509 SETTABLEKS                       R43 R42 K101 ["TIME_RANGE"]
      511 LOADK                            R43 K112 ["NativeGraphContext_GraphPayloadGraphRect"]
      512 SETTABLEKS                       R43 R42 K102 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      514 LOADK                            R43 K113 ["NativeGraphContext_CurrentAnimationId"]
      515 SETTABLEKS                       R43 R42 K103 ["CURRENT_ANIMATION_ID"]
      517 LOADK                            R43 K114 ["NativeGraphContext_SourceAssetId"]
      518 SETTABLEKS                       R43 R42 K104 ["SOURCE_ASSET_ID"]
      520 LOADK                            R43 K115 ["NativeGraphContext_SelectedGraphKey"]
      521 SETTABLEKS                       R43 R42 K105 ["SELECTED_GRAPH_KEY"]
      523 LOADK                            R43 K116 ["NativeGraphContext_UndoTransaction"]
      524 SETTABLEKS                       R43 R42 K106 ["UNDO_TRANSACTION"]
      526 DUPTABLE                         R43 K142 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "CREATE_EXISTING_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "DELETE_NODE_INPUT", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SET_PARAMETER_NODE_TYPE", "SELECT_ALL_PARAMETER_NODES_WITH_NAME", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      527 LOADK                            R44 K143 ["NativeGraphContext_CreateNode"]
      528 SETTABLEKS                       R44 R43 K117 ["CREATE_NODE"]
      530 LOADK                            R44 K144 ["NativeGraphContext_CreateParameterAsync"]
      531 SETTABLEKS                       R44 R43 K118 ["CREATE_PARAMETER"]
      533 LOADK                            R44 K145 ["NativeGraphContext_CreateConnectedParameterAsync"]
      534 SETTABLEKS                       R44 R43 K119 ["CREATE_CONNECTED_PARAMETER"]
      536 LOADK                            R44 K146 ["NativeGraphContext_CreateExistingParameterAsync"]
      537 SETTABLEKS                       R44 R43 K120 ["CREATE_EXISTING_PARAMETER"]
      539 LOADK                            R44 K147 ["NativeGraphContext_GetSelectedGraphInstance"]
      540 SETTABLEKS                       R44 R43 K121 ["GET_SELECTED_GRAPH_INSTANCE"]
      542 LOADK                            R44 K148 ["NativeGraphContext_SetNodeConnectionAsync"]
      543 SETTABLEKS                       R44 R43 K122 ["SET_NODE_CONNECTION"]
      545 LOADK                            R44 K149 ["NativeGraphContext_setNodePropertyAsync"]
      546 SETTABLEKS                       R44 R43 K123 ["SET_NODE_PROPERTY"]
      548 LOADK                            R44 K150 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      549 SETTABLEKS                       R44 R43 K124 ["SET_INPUT_PIN_NODE_PROPERTY"]
      551 LOADK                            R44 K151 ["NativeGraphContext_ReorderPinsAsync"]
      552 SETTABLEKS                       R44 R43 K125 ["REORDER_PINS"]
      554 LOADK                            R44 K152 ["NativeGraphContext_DeleteNodeInput"]
      555 SETTABLEKS                       R44 R43 K126 ["DELETE_NODE_INPUT"]
      557 LOADK                            R44 K153 ["NativeGraphContext_RemoveNodeInputConnection"]
      558 SETTABLEKS                       R44 R43 K127 ["REMOVE_NODE_INPUT_CONNECTION"]
      560 LOADK                            R44 K154 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      561 SETTABLEKS                       R44 R43 K128 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      563 LOADK                            R44 K155 ["NativeGraphContext_RemoveParameterAsync"]
      564 SETTABLEKS                       R44 R43 K129 ["REMOVE_PARAMETER"]
      566 LOADK                            R44 K156 ["NativeGraphContext_RenameNodeAsync"]
      567 SETTABLEKS                       R44 R43 K130 ["RENAME_NODE"]
      569 LOADK                            R44 K157 ["NativeGraphContext_RenameParameterAsync"]
      570 SETTABLEKS                       R44 R43 K131 ["RENAME_PARAMETER"]
      572 LOADK                            R44 K158 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      573 SETTABLEKS                       R44 R43 K132 ["DELETE_NODE_INSTANCE"]
      575 LOADK                            R44 K159 ["NativeGraphContext_SetNodeSizeAsync"]
      576 SETTABLEKS                       R44 R43 K133 ["SET_NODE_SIZE"]
      578 LOADK                            R44 K160 ["NativeGraphContext_SetCollapsedAsync"]
      579 SETTABLEKS                       R44 R43 K134 ["SET_COLLAPSED"]
      581 LOADK                            R44 K161 ["NativeGraphContext_SetNodePositionsAsync"]
      582 SETTABLEKS                       R44 R43 K135 ["SET_NODE_POSITIONS"]
      584 LOADK                            R44 K162 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      585 SETTABLEKS                       R44 R43 K136 ["SET_PARAMETER_NODE_TYPE"]
      587 LOADK                            R44 K163 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      588 SETTABLEKS                       R44 R43 K137 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      590 LOADK                            R44 K164 ["NativeGraphContext_SelectNodes"]
      591 SETTABLEKS                       R44 R43 K138 ["SELECT_NODES"]
      593 LOADK                            R44 K165 ["NativeGraphContext_SelectNodesFromRect"]
      594 SETTABLEKS                       R44 R43 K139 ["SELECT_NODES_FROM_RECT"]
      596 LOADK                            R44 K166 ["NativeGraphContext_beginUndoTransaction"]
      597 SETTABLEKS                       R44 R43 K140 ["BEGIN_UNDO_TRANSACTION"]
      599 LOADK                            R44 K167 ["NativeGraphContext_finishUndoTransaction"]
      600 SETTABLEKS                       R44 R43 K141 ["FINISH_UNDO_TRANSACTION"]
      602 GETTABLEKS                       R44 R13 K168 ["createBoundAction"]
      604 LOADK                            R45 K169 ["NativeGraphContext_createNode"]
      605 CALL                             R44 1 1
      606 GETTABLEKS                       R45 R13 K168 ["createBoundAction"]
      608 LOADK                            R46 K170 ["NativeGraphContext_removeNodes"]
      609 CALL                             R45 1 1
      610 DUPCLOSURE                       R46 K171 [PROTO_1]
      611 CAPTURE                          VAL R17
      612 DUPCLOSURE                       R47 K172 [PROTO_57]
      613 CAPTURE                          VAL R38
      614 CAPTURE                          VAL R17
      615 CAPTURE                          VAL R20
      616 CAPTURE                          VAL R29
      617 CAPTURE                          VAL R19
      618 CAPTURE                          VAL R36
      619 CAPTURE                          VAL R11
      620 CAPTURE                          VAL R34
      621 CAPTURE                          VAL R10
      622 CAPTURE                          VAL R12
      623 CAPTURE                          VAL R18
      624 CAPTURE                          VAL R22
      625 CAPTURE                          VAL R2
      626 CAPTURE                          VAL R27
      627 CAPTURE                          VAL R25
      628 CAPTURE                          VAL R1
      629 CAPTURE                          VAL R30
      630 CAPTURE                          VAL R33
      631 CAPTURE                          VAL R39
      632 CAPTURE                          VAL R4
      633 CAPTURE                          VAL R44
      634 CAPTURE                          VAL R45
      635 CAPTURE                          VAL R7
      636 CAPTURE                          VAL R6
      637 CAPTURE                          VAL R28
      638 CAPTURE                          VAL R35
      639 CAPTURE                          VAL R37
      640 CAPTURE                          VAL R14
      641 CAPTURE                          VAL R31
      642 CAPTURE                          VAL R32
      643 CAPTURE                          VAL R46
      644 CAPTURE                          VAL R21
      645 CAPTURE                          VAL R16
      646 CAPTURE                          VAL R13
      647 CAPTURE                          VAL R42
      648 CAPTURE                          VAL R43
      649 CAPTURE                          VAL R41
      650 CAPTURE                          VAL R26
      651 CAPTURE                          VAL R5
      652 DUPCLOSURE                       R48 K173 [PROTO_76]
      653 CAPTURE                          VAL R38
      654 CAPTURE                          VAL R29
      655 CAPTURE                          VAL R17
      656 CAPTURE                          VAL R22
      657 CAPTURE                          VAL R13
      658 CAPTURE                          VAL R42
      659 CAPTURE                          VAL R27
      660 CAPTURE                          VAL R21
      661 CAPTURE                          VAL R46
      662 CAPTURE                          VAL R25
      663 CAPTURE                          VAL R43
      664 CAPTURE                          VAL R8
      665 CAPTURE                          VAL R24
      666 CAPTURE                          VAL R23
      667 CAPTURE                          VAL R14
      668 CAPTURE                          VAL R44
      669 CAPTURE                          VAL R45
      670 CAPTURE                          VAL R41
      671 CAPTURE                          VAL R18
      672 CAPTURE                          VAL R26
      673 DUPCLOSURE                       R49 K174 [PROTO_78]
      674 DUPCLOSURE                       R50 K175 [PROTO_80]
      675 CAPTURE                          VAL R17
      676 CAPTURE                          VAL R27
      677 CAPTURE                          VAL R3
      678 CAPTURE                          VAL R49
      679 CAPTURE                          VAL R47
      680 DUPTABLE                         R51 K181 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      681 SETTABLEKS                       R41 R51 K176 ["Context"]
      683 SETTABLEKS                       R47 R51 K177 ["EditableDataModelProvider"]
      685 SETTABLEKS                       R50 R51 K178 ["PreviewDataModelProvider"]
      687 SETTABLEKS                       R48 R51 K179 ["UIDataModelProvider"]
      689 SETTABLEKS                       R49 R51 K180 ["_setupEditorFolderForPreview"]
      691 RETURN                           R51 1
