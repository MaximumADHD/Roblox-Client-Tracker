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
       59 JUMPIFNOT                        R2 ; [+86]
       60 GETTABLEKS                       R8 R2 K12 ["sourcePinSide"]
       62 JUMPIFNOTEQKS                    R8 K13 ["Input"] ; [+16]
       64 JUMPIFEQKNIL                     R7 ; [+81]
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R8 R8 K14 ["setNodeConnection"]
       69 GETUPVAL                         R9 7
       70 GETUPVAL                         R10 3
       71 GETTABLEKS                       R11 R2 K15 ["sourcePinNodeId"]
       73 GETTABLEKS                       R12 R2 K16 ["sourcePinName"]
       75 MOVE                             R13 R7
       76 LOADK                            R14 K17 ["Output"]
       77 CALL                             R8 6 0
       78 JUMP                             ; [+67]
       79 GETTABLEKS                       R8 R2 K12 ["sourcePinSide"]
       81 JUMPIFNOTEQKS                    R8 K17 ["Output"] ; [+60]
       83 GETUPVAL                         R8 8
       84 MOVE                             R10 R4
       85 NAMECALL                         R8 R8 K18 ["GetAnimationNodeDefinition"]
       87 CALL                             R8 2 1
       88 LOADNIL                          R9
       89 GETUPVAL                         R10 6
       90 GETTABLEKS                       R10 R10 K19 ["hasDynamicInputPins"]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R12 R2 K15 ["sourcePinNodeId"]
       95 CALL                             R10 2 1
       96 JUMPIFNOT                        R10 ; [+9]
       97 GETUPVAL                         R10 6
       98 GETTABLEKS                       R10 R10 K20 ["getDynamicInputPinNameFromInputNode"]
      100 MOVE                             R11 R6
      101 GETTABLEKS                       R12 R2 K16 ["sourcePinName"]
      103 CALL                             R10 2 1
      104 MOVE                             R9 R10
      105 JUMP                             ; [+13]
      106 JUMPIFNOT                        R8 ; [+12]
      107 GETTABLEKS                       R10 R8 K21 ["Inputs"]
      109 JUMPIFNOT                        R10 ; [+9]
      110 GETTABLEKS                       R11 R8 K21 ["Inputs"]
      112 GETTABLEN                        R10 R11 1
      113 JUMPIFNOT                        R10 ; [+5]
      114 GETTABLEKS                       R11 R8 K21 ["Inputs"]
      116 GETTABLEN                        R10 R11 1
      117 GETTABLEKS                       R9 R10 K22 ["InputName"]
      119 JUMPIFEQKNIL                     R9 ; [+16]
      121 JUMPIFEQKNIL                     R7 ; [+24]
      123 GETUPVAL                         R10 6
      124 GETTABLEKS                       R10 R10 K14 ["setNodeConnection"]
      126 GETUPVAL                         R11 7
      127 GETUPVAL                         R12 3
      128 MOVE                             R13 R7
      129 MOVE                             R14 R9
      130 GETTABLEKS                       R15 R2 K15 ["sourcePinNodeId"]
      132 GETTABLEKS                       R16 R2 K16 ["sourcePinName"]
      134 CALL                             R10 6 0
      135 JUMP                             ; [+10]
      136 GETIMPORT                        R10 K2 [warn]
      138 LOADK                            R11 K23 ["Failed to find input pin name for node type:"]
      139 MOVE                             R12 R0
      140 CALL                             R10 2 0
      141 JUMP                             ; [+4]
      142 GETIMPORT                        R8 K25 [error]
      144 LOADK                            R9 K26 ["Bad sourcePinSide state"]
      145 CALL                             R8 1 0
      146 GETUPVAL                         R8 9
      147 GETTABLEKS                       R8 R8 K27 ["selectionService"]
      149 NEWTABLE                         R10 0 1
      151 MOVE                             R11 R6
      152 SETLIST                          R10 R11 1 [1]
      154 NAMECALL                         R8 R8 K28 ["Set"]
      156 CALL                             R8 2 0
      157 JUMPIFNOT                        R5 ; [+7]
      158 GETUPVAL                         R8 5
      159 MOVE                             R10 R5
      160 GETIMPORT                        R11 K32 [Enum.FinishRecordingOperation.Commit]
      162 NAMECALL                         R8 R8 K33 ["FinishRecording"]
      164 CALL                             R8 3 0
      165 RETURN                           R7 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Should be unreachable since delete/backspace is overridden by the native actions, but if you see this file a bug report"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
       94 JUMPIFNOT                        R5 ; [+7]
       95 GETUPVAL                         R5 5
       96 GETTABLEKS                       R5 R5 K22 ["setNodePosition"]
       98 MOVE                             R6 R3
       99 GETTABLEKS                       R7 R0 K21 ["pinPosition"]
      101 CALL                             R5 2 0
      102 GETUPVAL                         R5 6
      103 MOVE                             R7 R3
      104 NAMECALL                         R5 R5 K23 ["instanceToId"]
      106 CALL                             R5 2 1
      107 JUMPIFNOT                        R2 ; [+7]
      108 GETUPVAL                         R6 4
      109 MOVE                             R8 R2
      110 GETIMPORT                        R9 K27 [Enum.FinishRecordingOperation.Commit]
      112 NAMECALL                         R6 R6 K28 ["FinishRecording"]
      114 CALL                             R6 3 0
      115 RETURN                           R5 1

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
      101 JUMP                             ; [+27]
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
      121 JUMPIFNOT                        R6 ; [+7]
      122 GETUPVAL                         R6 4
      123 GETTABLEKS                       R6 R6 K27 ["setNodePosition"]
      125 MOVE                             R7 R4
      126 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
      128 CALL                             R6 2 0
      129 JUMPIFNOT                        R3 ; [+7]
      130 GETUPVAL                         R6 6
      131 MOVE                             R8 R3
      132 GETIMPORT                        R9 K31 [Enum.FinishRecordingOperation.Commit]
      134 NAMECALL                         R6 R6 K32 ["FinishRecording"]
      136 CALL                             R6 3 0
      137 RETURN                           R5 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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
      125 JUMPIFNOT                        R5 ; [+36]
      126 GETTABLEKS                       R7 R0 K4 ["sourcePinInfo"]
      128 GETTABLEKS                       R7 R7 K5 ["sourcePinNodeId"]
      130 GETTABLEKS                       R8 R0 K4 ["sourcePinInfo"]
      132 GETTABLEKS                       R8 R8 K18 ["sourcePinName"]
      134 GETUPVAL                         R9 4
      135 MOVE                             R11 R5
      136 NAMECALL                         R9 R9 K6 ["idToInstance"]
      138 CALL                             R9 2 1
      139 JUMPIFNOT                        R9 ; [+22]
      140 GETUPVAL                         R10 5
      141 GETTABLEKS                       R10 R10 K29 ["setNodePosition"]
      143 MOVE                             R11 R9
      144 GETTABLEKS                       R12 R0 K21 ["pinPosition"]
      146 CALL                             R10 2 0
      147 GETUPVAL                         R10 8
      148 MOVE                             R11 R7
      149 MOVE                             R12 R8
      150 MOVE                             R13 R5
      151 LOADK                            R14 K30 ["Output"]
      152 GETUPVAL                         R16 9
      153 CALL                             R16 0 1
      154 JUMPIFNOT                        R16 ; [+5]
      155 GETTABLEKS                       R15 R0 K4 ["sourcePinInfo"]
      157 GETTABLEKS                       R15 R15 K31 ["sourcePinDynamicIndex"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R15
      161 CALL                             R10 5 0
      162 JUMPIFNOT                        R2 ; [+7]
      163 GETUPVAL                         R7 3
      164 MOVE                             R9 R2
      165 GETIMPORT                        R10 K35 [Enum.FinishRecordingOperation.Commit]
      167 NAMECALL                         R7 R7 K36 ["FinishRecording"]
      169 CALL                             R7 3 0
      170 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["NativeGraphContext"]
        2 LOADK                            R6 K1 ["setNodePropertyAsync"]
        3 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 1
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["idToInstance"]
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R4 ; [+71]
       12 LOADK                            R7 K4 ["AnimationNodeDefinition"]
       13 NAMECALL                         R5 R4 K5 ["IsA"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+66]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R7 R4 K6 ["NodeType"]
       20 NAMECALL                         R5 R5 K7 ["GetAnimationNodeDefinition"]
       22 CALL                             R5 2 1
       23 LOADB                            R6 0
       24 GETTABLEKS                       R7 R5 K8 ["Properties"]
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 GETTABLEKS                       R12 R11 K9 ["Name"]
       31 JUMPIFNOTEQ                      R12 R1 ; [+42]
       33 GETTABLEKS                       R12 R11 K10 ["Type"]
       35 JUMPIFNOTEQKS                    R12 K11 ["Mask"] ; [+40]
       37 LOADK                            R14 K11 ["Mask"]
       38 NAMECALL                         R12 R4 K12 ["FindFirstChild"]
       40 CALL                             R12 2 1
       41 JUMPIFEQKNIL                     R12 ; [+14]
       43 LOADK                            R15 K13 ["ObjectValue"]
       44 NAMECALL                         R13 R12 K5 ["IsA"]
       46 CALL                             R13 2 1
       47 JUMPIFNOT                        R13 ; [+8]
       48 GETUPVAL                         R13 1
       49 MOVE                             R15 R2
       50 NAMECALL                         R13 R13 K3 ["idToInstance"]
       52 CALL                             R13 2 1
       53 SETTABLEKS                       R13 R12 K14 ["Value"]
       55 JUMP                             ; [+16]
       56 GETIMPORT                        R13 K17 [Instance.new]
       58 LOADK                            R14 K13 ["ObjectValue"]
       59 CALL                             R13 1 1
       60 LOADK                            R14 K11 ["Mask"]
       61 SETTABLEKS                       R14 R13 K9 ["Name"]
       63 GETUPVAL                         R14 1
       64 MOVE                             R16 R2
       65 NAMECALL                         R14 R14 K3 ["idToInstance"]
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K14 ["Value"]
       70 SETTABLEKS                       R4 R13 K18 ["Parent"]
       72 LOADB                            R6 1
       73 JUMP                             ; [+2]
       74 FORGLOOP                         R7 2 ; [-46]
       76 JUMPIF                           R6 ; [+11]
       77 MOVE                             R9 R1
       78 MOVE                             R10 R2
       79 NAMECALL                         R7 R4 K19 ["SetAttribute"]
       81 CALL                             R7 3 0
       82 JUMP                             ; [+5]
       83 GETIMPORT                        R5 K21 [warn]
       85 LOADK                            R6 K22 ["Node instance not found for nodeId:"]
       86 MOVE                             R7 R0
       87 CALL                             R5 2 0
       88 JUMPIFNOT                        R3 ; [+7]
       89 GETUPVAL                         R5 0
       90 MOVE                             R7 R3
       91 GETIMPORT                        R8 K26 [Enum.FinishRecordingOperation.Commit]
       93 NAMECALL                         R5 R5 K27 ["FinishRecording"]
       95 CALL                             R5 3 0
       96 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_40:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_41:
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
       56 DUPCLOSURE                       R7 K14 [PROTO_40]
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_53:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_56:
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
      346 CAPTURE                          VAL R4
      347 NEWTABLE                         R34 0 4
      349 GETTABLEKS                       R35 R4 K15 ["selectionService"]
      351 GETUPVAL                         R37 3
      352 CALL                             R37 0 1
      353 JUMPIFNOT                        R37 ; [+3]
      354 GETTABLEKS                       R36 R5 K10 ["observeSelectedGraphInstance"]
      356 JUMP                             ; [+1]
      357 MOVE                             R36 R12
      358 MOVE                             R37 R14
      359 MOVE                             R38 R11
      360 SETLIST                          R34 R35 4 [1]
      362 CALL                             R32 2 1
      363 GETUPVAL                         R33 19
      364 GETTABLEKS                       R33 R33 K19 ["useProducer"]
      366 GETUPVAL                         R34 1
      367 GETTABLEKS                       R34 R34 K14 ["useCallback"]
      369 NEWCLOSURE                       R35 P14
      370 CAPTURE                          VAL R32
      371 NEWTABLE                         R36 0 1
      373 MOVE                             R37 R32
      374 SETLIST                          R36 R37 1 [1]
      376 CALL                             R34 2 -1
      377 CALL                             R33 -1 0
      378 GETUPVAL                         R33 20
      379 GETTABLEKS                       R33 R33 K19 ["useProducer"]
      381 DUPCLOSURE                       R34 K20 [PROTO_25]
      382 CALL                             R33 1 0
      383 GETUPVAL                         R33 1
      384 GETTABLEKS                       R33 R33 K14 ["useCallback"]
      386 NEWCLOSURE                       R34 P16
      387 CAPTURE                          UPVAL U3
      388 CAPTURE                          VAL R5
      389 CAPTURE                          VAL R12
      390 CAPTURE                          UPVAL U9
      391 CAPTURE                          VAL R4
      392 NEWTABLE                         R35 0 2
      394 GETUPVAL                         R37 3
      395 CALL                             R37 0 1
      396 JUMPIFNOT                        R37 ; [+3]
      397 GETTABLEKS                       R36 R5 K10 ["observeSelectedGraphInstance"]
      399 JUMP                             ; [+1]
      400 MOVE                             R36 R12
      401 GETTABLEKS                       R37 R4 K15 ["selectionService"]
      403 SETLIST                          R35 R36 2 [1]
      405 CALL                             R33 2 1
      406 GETUPVAL                         R34 1
      407 GETTABLEKS                       R34 R34 K14 ["useCallback"]
      409 NEWCLOSURE                       R35 P17
      410 CAPTURE                          UPVAL U3
      411 CAPTURE                          VAL R5
      412 CAPTURE                          VAL R12
      413 CAPTURE                          VAL R14
      414 CAPTURE                          UPVAL U12
      415 CAPTURE                          UPVAL U9
      416 CAPTURE                          VAL R11
      417 CAPTURE                          UPVAL U21
      418 CAPTURE                          VAL R4
      419 NEWTABLE                         R36 0 4
      421 GETTABLEKS                       R37 R4 K15 ["selectionService"]
      423 GETUPVAL                         R39 3
      424 CALL                             R39 0 1
      425 JUMPIFNOT                        R39 ; [+3]
      426 GETTABLEKS                       R38 R5 K10 ["observeSelectedGraphInstance"]
      428 JUMP                             ; [+1]
      429 MOVE                             R38 R12
      430 MOVE                             R39 R11
      431 MOVE                             R40 R14
      432 SETLIST                          R36 R37 4 [1]
      434 CALL                             R34 2 1
      435 GETUPVAL                         R35 1
      436 GETTABLEKS                       R35 R35 K14 ["useCallback"]
      438 NEWCLOSURE                       R36 P18
      439 CAPTURE                          UPVAL U3
      440 CAPTURE                          VAL R5
      441 CAPTURE                          VAL R12
      442 CAPTURE                          VAL R14
      443 CAPTURE                          UPVAL U9
      444 CAPTURE                          UPVAL U21
      445 CAPTURE                          UPVAL U12
      446 CAPTURE                          VAL R11
      447 CAPTURE                          VAL R34
      448 CAPTURE                          VAL R4
      449 NEWTABLE                         R37 0 5
      451 GETTABLEKS                       R38 R4 K15 ["selectionService"]
      453 GETUPVAL                         R40 3
      454 CALL                             R40 0 1
      455 JUMPIFNOT                        R40 ; [+3]
      456 GETTABLEKS                       R39 R5 K10 ["observeSelectedGraphInstance"]
      458 JUMP                             ; [+1]
      459 MOVE                             R39 R12
      460 MOVE                             R40 R11
      461 MOVE                             R41 R14
      462 MOVE                             R42 R34
      463 SETLIST                          R37 R38 5 [1]
      465 CALL                             R35 2 1
      466 GETUPVAL                         R36 1
      467 GETTABLEKS                       R36 R36 K14 ["useCallback"]
      469 NEWCLOSURE                       R37 P19
      470 CAPTURE                          VAL R14
      471 CAPTURE                          UPVAL U12
      472 CAPTURE                          UPVAL U9
      473 CAPTURE                          VAL R11
      474 CAPTURE                          UPVAL U22
      475 NEWTABLE                         R38 0 2
      477 MOVE                             R39 R11
      478 MOVE                             R40 R14
      479 SETLIST                          R38 R39 2 [1]
      481 CALL                             R36 2 1
      482 GETUPVAL                         R37 23
      483 MOVE                             R38 R11
      484 GETUPVAL                         R40 3
      485 CALL                             R40 0 1
      486 JUMPIFNOT                        R40 ; [+3]
      487 GETTABLEKS                       R39 R5 K10 ["observeSelectedGraphInstance"]
      489 JUMP                             ; [+1]
      490 MOVE                             R39 R12
      491 CALL                             R37 2 1
      492 GETUPVAL                         R38 24
      493 MOVE                             R39 R11
      494 GETUPVAL                         R41 3
      495 CALL                             R41 0 1
      496 JUMPIFNOT                        R41 ; [+3]
      497 GETTABLEKS                       R40 R5 K10 ["observeSelectedGraphInstance"]
      499 JUMP                             ; [+1]
      500 MOVE                             R40 R12
      501 CALL                             R38 2 1
      502 GETUPVAL                         R39 1
      503 GETTABLEKS                       R39 R39 K14 ["useCallback"]
      505 NEWCLOSURE                       R40 P20
      506 CAPTURE                          VAL R14
      507 CAPTURE                          UPVAL U12
      508 CAPTURE                          UPVAL U9
      509 CAPTURE                          VAL R11
      510 NEWTABLE                         R41 0 2
      512 MOVE                             R42 R11
      513 MOVE                             R43 R14
      514 SETLIST                          R41 R42 2 [1]
      516 CALL                             R39 2 1
      517 GETUPVAL                         R40 1
      518 GETTABLEKS                       R40 R40 K14 ["useCallback"]
      520 NEWCLOSURE                       R41 P21
      521 CAPTURE                          VAL R14
      522 CAPTURE                          UPVAL U12
      523 CAPTURE                          UPVAL U9
      524 CAPTURE                          VAL R11
      525 CAPTURE                          UPVAL U22
      526 CAPTURE                          VAL R37
      527 NEWTABLE                         R42 0 3
      529 MOVE                             R43 R11
      530 MOVE                             R44 R14
      531 GETTABLEKS                       R45 R37 K21 ["setNodeOutputInfoInDestroyMapRef"]
      533 SETLIST                          R42 R43 3 [1]
      535 CALL                             R40 2 1
      536 GETUPVAL                         R41 1
      537 GETTABLEKS                       R41 R41 K14 ["useCallback"]
      539 NEWCLOSURE                       R42 P22
      540 CAPTURE                          UPVAL U3
      541 CAPTURE                          VAL R5
      542 CAPTURE                          VAL R12
      543 CAPTURE                          UPVAL U12
      544 CAPTURE                          VAL R11
      545 CAPTURE                          UPVAL U9
      546 CAPTURE                          VAL R34
      547 CAPTURE                          VAL R35
      548 CAPTURE                          VAL R40
      549 CAPTURE                          UPVAL U22
      550 NEWTABLE                         R43 0 7
      552 GETTABLEKS                       R44 R4 K15 ["selectionService"]
      554 GETUPVAL                         R46 3
      555 CALL                             R46 0 1
      556 JUMPIFNOT                        R46 ; [+3]
      557 GETTABLEKS                       R45 R5 K10 ["observeSelectedGraphInstance"]
      559 JUMP                             ; [+1]
      560 MOVE                             R45 R12
      561 MOVE                             R46 R14
      562 MOVE                             R47 R11
      563 MOVE                             R48 R34
      564 MOVE                             R49 R35
      565 MOVE                             R50 R40
      566 SETLIST                          R43 R44 7 [1]
      568 CALL                             R41 2 1
      569 GETUPVAL                         R42 1
      570 GETTABLEKS                       R42 R42 K14 ["useCallback"]
      572 NEWCLOSURE                       R43 P23
      573 CAPTURE                          VAL R8
      574 CAPTURE                          UPVAL U12
      575 NEWTABLE                         R44 0 0
      577 CALL                             R42 2 1
      578 GETUPVAL                         R43 1
      579 GETTABLEKS                       R43 R43 K14 ["useCallback"]
      581 NEWCLOSURE                       R44 P24
      582 CAPTURE                          VAL R8
      583 CAPTURE                          UPVAL U12
      584 NEWTABLE                         R45 0 0
      586 CALL                             R43 2 1
      587 GETUPVAL                         R44 1
      588 GETTABLEKS                       R44 R44 K8 ["useEffect"]
      590 NEWCLOSURE                       R45 P25
      591 CAPTURE                          VAL R8
      592 CAPTURE                          UPVAL U12
      593 NEWTABLE                         R46 0 0
      595 CALL                             R44 2 0
      596 GETUPVAL                         R44 1
      597 GETTABLEKS                       R44 R44 K14 ["useCallback"]
      599 NEWCLOSURE                       R45 P26
      600 CAPTURE                          UPVAL U12
      601 CAPTURE                          VAL R11
      602 CAPTURE                          UPVAL U15
      603 NEWTABLE                         R46 0 1
      605 MOVE                             R47 R11
      606 SETLIST                          R46 R47 1 [1]
      608 CALL                             R44 2 1
      609 GETUPVAL                         R45 1
      610 GETTABLEKS                       R45 R45 K14 ["useCallback"]
      612 NEWCLOSURE                       R46 P27
      613 CAPTURE                          UPVAL U12
      614 CAPTURE                          VAL R11
      615 NEWTABLE                         R47 0 1
      617 MOVE                             R48 R11
      618 SETLIST                          R47 R48 1 [1]
      620 CALL                             R45 2 1
      621 GETUPVAL                         R46 1
      622 GETTABLEKS                       R46 R46 K14 ["useCallback"]
      624 NEWCLOSURE                       R47 P28
      625 CAPTURE                          UPVAL U12
      626 CAPTURE                          VAL R11
      627 CAPTURE                          UPVAL U25
      628 CAPTURE                          UPVAL U9
      629 CAPTURE                          UPVAL U21
      630 CAPTURE                          UPVAL U26
      631 CAPTURE                          VAL R1
      632 CAPTURE                          VAL R14
      633 NEWTABLE                         R48 0 3
      635 MOVE                             R49 R11
      636 MOVE                             R50 R14
      637 GETTABLEKS                       R51 R1 K22 ["observe"]
      639 SETLIST                          R48 R49 3 [1]
      641 CALL                             R46 2 1
      642 GETUPVAL                         R47 1
      643 GETTABLEKS                       R47 R47 K14 ["useCallback"]
      645 NEWCLOSURE                       R48 P29
      646 CAPTURE                          UPVAL U12
      647 CAPTURE                          UPVAL U9
      648 CAPTURE                          VAL R11
      649 NEWTABLE                         R49 0 1
      651 MOVE                             R50 R11
      652 SETLIST                          R49 R50 1 [1]
      654 CALL                             R47 2 1
      655 GETUPVAL                         R48 1
      656 GETTABLEKS                       R48 R48 K14 ["useCallback"]
      658 NEWCLOSURE                       R49 P30
      659 CAPTURE                          UPVAL U3
      660 CAPTURE                          VAL R5
      661 CAPTURE                          VAL R12
      662 CAPTURE                          VAL R14
      663 CAPTURE                          VAL R11
      664 CAPTURE                          UPVAL U9
      665 CAPTURE                          UPVAL U12
      666 CAPTURE                          UPVAL U16
      667 NEWTABLE                         R50 0 3
      669 MOVE                             R51 R12
      670 MOVE                             R52 R11
      671 MOVE                             R53 R14
      672 SETLIST                          R50 R51 3 [1]
      674 CALL                             R48 2 1
      675 GETUPVAL                         R49 1
      676 GETTABLEKS                       R49 R49 K14 ["useCallback"]
      678 NEWCLOSURE                       R50 P31
      679 CAPTURE                          UPVAL U3
      680 CAPTURE                          VAL R5
      681 CAPTURE                          VAL R12
      682 CAPTURE                          VAL R11
      683 CAPTURE                          UPVAL U9
      684 CAPTURE                          UPVAL U12
      685 CAPTURE                          VAL R38
      686 CAPTURE                          UPVAL U21
      687 NEWTABLE                         R51 0 4
      689 MOVE                             R52 R11
      690 MOVE                             R53 R12
      691 MOVE                             R54 R14
      692 GETTABLEKS                       R55 R38 K23 ["parameterDestroyConnectionMapRef"]
      694 SETLIST                          R51 R52 4 [1]
      696 CALL                             R49 2 1
      697 GETUPVAL                         R50 1
      698 GETTABLEKS                       R50 R50 K14 ["useCallback"]
      700 NEWCLOSURE                       R51 P32
      701 CAPTURE                          UPVAL U3
      702 CAPTURE                          VAL R5
      703 CAPTURE                          VAL R12
      704 CAPTURE                          UPVAL U9
      705 CAPTURE                          UPVAL U12
      706 CAPTURE                          UPVAL U21
      707 NEWTABLE                         R52 0 1
      709 GETUPVAL                         R54 3
      710 CALL                             R54 0 1
      711 JUMPIFNOT                        R54 ; [+3]
      712 GETTABLEKS                       R53 R5 K10 ["observeSelectedGraphInstance"]
      714 JUMP                             ; [+1]
      715 MOVE                             R53 R12
      716 SETLIST                          R52 R53 1 [1]
      718 CALL                             R50 2 1
      719 GETUPVAL                         R51 1
      720 GETTABLEKS                       R51 R51 K14 ["useCallback"]
      722 NEWCLOSURE                       R52 P33
      723 CAPTURE                          VAL R11
      724 CAPTURE                          UPVAL U12
      725 CAPTURE                          UPVAL U16
      726 NEWTABLE                         R53 0 1
      728 MOVE                             R54 R11
      729 SETLIST                          R53 R54 1 [1]
      731 CALL                             R51 2 1
      732 GETUPVAL                         R52 1
      733 GETTABLEKS                       R52 R52 K8 ["useEffect"]
      735 NEWCLOSURE                       R53 P34
      736 CAPTURE                          UPVAL U11
      737 CAPTURE                          VAL R37
      738 CAPTURE                          VAL R11
      739 CAPTURE                          VAL R20
      740 CAPTURE                          UPVAL U9
      741 CAPTURE                          UPVAL U16
      742 NEWTABLE                         R54 0 2
      744 MOVE                             R55 R11
      745 GETTABLEKS                       R56 R37 K24 ["nodeDestroyConnectionMapRef"]
      747 SETLIST                          R54 R55 2 [1]
      749 CALL                             R52 2 0
      750 GETUPVAL                         R52 1
      751 GETTABLEKS                       R52 R52 K8 ["useEffect"]
      753 NEWCLOSURE                       R53 P35
      754 CAPTURE                          UPVAL U11
      755 CAPTURE                          VAL R38
      756 CAPTURE                          VAL R11
      757 CAPTURE                          VAL R48
      758 CAPTURE                          UPVAL U21
      759 NEWTABLE                         R54 0 3
      761 MOVE                             R55 R11
      762 GETTABLEKS                       R56 R38 K23 ["parameterDestroyConnectionMapRef"]
      764 MOVE                             R57 R48
      765 SETLIST                          R54 R55 3 [1]
      767 CALL                             R52 2 0
      768 GETUPVAL                         R52 27
      769 MOVE                             R53 R2
      770 MOVE                             R54 R1
      771 CALL                             R52 2 1
      772 NEWTABLE                         R53 64 0
      774 GETUPVAL                         R55 3
      775 CALL                             R55 0 1
      776 JUMPIF                           R55 ; [+4]
      777 JUMPIFNOT                        R14 ; [+3]
      778 GETTABLEKS                       R54 R14 K25 ["graphInstanceId"]
      780 JUMP                             ; [+1]
      781 LOADNIL                          R54
      782 SETTABLEKS                       R54 R53 K26 ["selectedGraphInstanceId_DEPRECATED"]
      784 SETTABLEKS                       R47 R53 K27 ["reorderPinsAsync"]
      786 SETTABLEKS                       R32 R53 K28 ["createNodeAsync"]
      788 SETTABLEKS                       R34 R53 K29 ["createParameterAsync"]
      790 SETTABLEKS                       R35 R53 K30 ["createExistingParameterAsync"]
      792 SETTABLEKS                       R41 R53 K31 ["createConnectedParameterAsync"]
      794 SETTABLEKS                       R6 R53 K32 ["graphRect"]
      796 SETTABLEKS                       R33 R53 K33 ["selectAllParameterNodesWithNameAsync"]
      798 SETTABLEKS                       R24 R53 K34 ["selectNodesAsync"]
      800 SETTABLEKS                       R25 R53 K35 ["selectNodesFromRectAsync"]
      802 SETTABLEKS                       R22 R53 K36 ["setNodePositionsAsync"]
      804 SETTABLEKS                       R23 R53 K37 ["setNodeSizeAsync"]
      806 SETTABLEKS                       R40 R53 K38 ["setNodeConnectionAsync"]
      808 SETTABLEKS                       R39 R53 K39 ["removeNodeOutputConnectionAsync"]
      810 SETTABLEKS                       R36 R53 K40 ["removeNodeInputConnectionAsync"]
      812 SETTABLEKS                       R48 R53 K41 ["removeParameterAsync"]
      814 SETTABLEKS                       R46 R53 K42 ["renameNodeAsync"]
      816 SETTABLEKS                       R49 R53 K43 ["renameParameterAsync"]
      818 SETTABLEKS                       R51 R53 K44 ["deleteNodeInstanceAsync"]
      820 SETTABLEKS                       R21 R53 K45 ["setCollapsedAsync"]
      822 SETTABLEKS                       R44 R53 K46 ["setNodePropertyAsync"]
      824 SETTABLEKS                       R45 R53 K47 ["setInputPinNodePropertyAsync"]
      826 SETTABLEKS                       R50 R53 K48 ["setParameterNodeTypeAsync"]
      828 SETTABLEKS                       R26 R53 K49 ["currentAnimationId"]
      830 SETTABLEKS                       R28 R53 K50 ["sourceAssetId"]
      832 SETTABLEKS                       R31 R53 K51 ["selectedGraphKey"]
      834 GETUPVAL                         R55 3
      835 CALL                             R55 0 1
      836 JUMPIFNOT                        R55 ; [+2]
      837 LOADNIL                          R54
      838 JUMP                             ; [+1]
      839 MOVE                             R54 R12
      840 SETTABLEKS                       R54 R53 K52 ["observeSelectedGraphInstance_DEPRECATED"]
      842 GETTABLEKS                       R54 R1 K22 ["observe"]
      844 SETTABLEKS                       R54 R53 K53 ["observeGraphNodeById"]
      846 GETTABLEKS                       R54 R2 K22 ["observe"]
      848 SETTABLEKS                       R54 R53 K54 ["observeNodeRenderInfoById"]
      850 SETTABLEKS                       R42 R53 K55 ["beginUndoTransaction"]
      852 SETTABLEKS                       R43 R53 K56 ["finishUndoTransaction"]
      854 GETTABLEKS                       R54 R1 K57 ["observeMap"]
      856 SETTABLEKS                       R54 R53 K58 ["observeGraphNodeMap"]
      858 GETTABLEKS                       R54 R2 K57 ["observeMap"]
      860 SETTABLEKS                       R54 R53 K59 ["observeRenderInfoMap"]
      862 GETTABLEKS                       R54 R52 K60 ["hasGraphOutput"]
      864 SETTABLEKS                       R54 R53 K60 ["hasGraphOutput"]
      866 GETTABLEKS                       R54 R3 K22 ["observe"]
      868 SETTABLEKS                       R54 R53 K61 ["observeNodePropsById"]
      870 GETUPVAL                         R54 1
      871 GETTABLEKS                       R54 R54 K7 ["useMemo"]
      873 DUPCLOSURE                       R55 K62 [PROTO_53]
      874 NEWTABLE                         R56 0 0
      876 CALL                             R54 2 1
      877 GETUPVAL                         R55 1
      878 GETTABLEKS                       R55 R55 K7 ["useMemo"]
      880 NEWCLOSURE                       R56 P37
      881 CAPTURE                          UPVAL U28
      882 CAPTURE                          UPVAL U3
      883 CAPTURE                          VAL R5
      884 CAPTURE                          VAL R12
      885 NEWTABLE                         R57 0 2
      887 GETUPVAL                         R59 3
      888 CALL                             R59 0 1
      889 JUMPIFNOT                        R59 ; [+3]
      890 GETTABLEKS                       R58 R5 K10 ["observeSelectedGraphInstance"]
      892 JUMP                             ; [+1]
      893 MOVE                             R58 R12
      894 MOVE                             R59 R14
      895 SETLIST                          R57 R58 2 [1]
      897 CALL                             R55 2 1
      898 GETUPVAL                         R56 29
      899 GETTABLEKS                       R56 R56 K63 ["usePasteHooks"]
      901 GETUPVAL                         R58 3
      902 CALL                             R58 0 1
      903 JUMPIFNOT                        R58 ; [+3]
      904 GETTABLEKS                       R57 R5 K10 ["observeSelectedGraphInstance"]
      906 JUMP                             ; [+1]
      907 MOVE                             R57 R12
      908 CALL                             R56 1 0
      909 GETUPVAL                         R56 14
      910 GETTABLEKS                       R56 R56 K18 ["useSignalState"]
      912 MOVE                             R57 R55
      913 CALL                             R56 1 1
      914 GETUPVAL                         R57 30
      915 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      917 GETUPVAL                         R58 31
      918 GETTABLEKS                       R58 R58 K65 ["GRAPH_PAYLOAD_MAP"]
      920 MOVE                             R59 R14
      921 CALL                             R57 2 0
      922 GETUPVAL                         R57 30
      923 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      925 GETUPVAL                         R58 31
      926 GETTABLEKS                       R58 R58 K66 ["GRAPH_RENDER_INFO"]
      928 MOVE                             R59 R16
      929 CALL                             R57 2 0
      930 GETUPVAL                         R57 30
      931 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      933 GETUPVAL                         R58 31
      934 GETTABLEKS                       R58 R58 K67 ["GRAPH_NODE_PROPS"]
      936 MOVE                             R59 R18
      937 CALL                             R57 2 0
      938 GETUPVAL                         R57 30
      939 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      941 GETUPVAL                         R58 31
      942 GETTABLEKS                       R58 R58 K68 ["TIME_RANGE"]
      944 MOVE                             R59 R54
      945 CALL                             R57 2 0
      946 GETUPVAL                         R57 30
      947 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      949 GETUPVAL                         R58 31
      950 GETTABLEKS                       R58 R58 K69 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      952 MOVE                             R59 R6
      953 CALL                             R57 2 0
      954 GETUPVAL                         R57 30
      955 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      957 GETUPVAL                         R58 31
      958 GETTABLEKS                       R58 R58 K70 ["SOURCE_ASSET_ID"]
      960 MOVE                             R59 R28
      961 CALL                             R57 2 0
      962 GETUPVAL                         R57 13
      963 CALL                             R57 0 1
      964 JUMPIF                           R57 ; [+8]
      965 GETUPVAL                         R57 30
      966 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      968 GETUPVAL                         R58 31
      969 GETTABLEKS                       R58 R58 K71 ["CURRENT_ANIMATION_ID"]
      971 MOVE                             R59 R26
      972 CALL                             R57 2 0
      973 GETUPVAL                         R57 13
      974 CALL                             R57 0 1
      975 JUMPIFNOT                        R57 ; [+8]
      976 GETUPVAL                         R57 30
      977 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      979 GETUPVAL                         R58 31
      980 GETTABLEKS                       R58 R58 K72 ["SELECTED_GRAPH_KEY"]
      982 MOVE                             R59 R31
      983 CALL                             R57 2 0
      984 GETUPVAL                         R57 30
      985 GETTABLEKS                       R57 R57 K64 ["useReplicatedState"]
      987 GETUPVAL                         R58 31
      988 GETTABLEKS                       R58 R58 K73 ["UNDO_TRANSACTION"]
      990 MOVE                             R59 R8
      991 CALL                             R57 2 0
      992 GETUPVAL                         R57 30
      993 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
      995 GETUPVAL                         R58 32
      996 GETTABLEKS                       R58 R58 K75 ["CREATE_NODE"]
      998 MOVE                             R59 R32
      999 CALL                             R57 2 0
     1000 GETUPVAL                         R57 30
     1001 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1003 GETUPVAL                         R58 32
     1004 GETTABLEKS                       R58 R58 K76 ["CREATE_PARAMETER"]
     1006 MOVE                             R59 R34
     1007 CALL                             R57 2 0
     1008 GETUPVAL                         R57 30
     1009 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1011 GETUPVAL                         R58 32
     1012 GETTABLEKS                       R58 R58 K77 ["CREATE_CONNECTED_PARAMETER"]
     1014 MOVE                             R59 R41
     1015 CALL                             R57 2 0
     1016 GETUPVAL                         R57 30
     1017 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1019 GETUPVAL                         R58 32
     1020 GETTABLEKS                       R58 R58 K78 ["CREATE_EXISTING_PARAMETER"]
     1022 MOVE                             R59 R35
     1023 CALL                             R57 2 0
     1024 GETUPVAL                         R57 30
     1025 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1027 GETUPVAL                         R58 32
     1028 GETTABLEKS                       R58 R58 K79 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
     1030 MOVE                             R59 R33
     1031 CALL                             R57 2 0
     1032 GETUPVAL                         R57 30
     1033 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1035 GETUPVAL                         R58 32
     1036 GETTABLEKS                       R58 R58 K80 ["SELECT_NODES"]
     1038 MOVE                             R59 R24
     1039 CALL                             R57 2 0
     1040 GETUPVAL                         R57 30
     1041 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1043 GETUPVAL                         R58 32
     1044 GETTABLEKS                       R58 R58 K81 ["SELECT_NODES_FROM_RECT"]
     1046 MOVE                             R59 R25
     1047 CALL                             R57 2 0
     1048 GETUPVAL                         R57 30
     1049 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1051 GETUPVAL                         R58 32
     1052 GETTABLEKS                       R58 R58 K82 ["SET_NODE_POSITIONS"]
     1054 MOVE                             R59 R22
     1055 CALL                             R57 2 0
     1056 GETUPVAL                         R57 30
     1057 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1059 GETUPVAL                         R58 32
     1060 GETTABLEKS                       R58 R58 K83 ["SET_NODE_SIZE"]
     1062 MOVE                             R59 R23
     1063 CALL                             R57 2 0
     1064 GETUPVAL                         R57 30
     1065 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1067 GETUPVAL                         R58 32
     1068 GETTABLEKS                       R58 R58 K84 ["SET_NODE_CONNECTION"]
     1070 MOVE                             R59 R40
     1071 CALL                             R57 2 0
     1072 GETUPVAL                         R57 30
     1073 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1075 GETUPVAL                         R58 32
     1076 GETTABLEKS                       R58 R58 K85 ["REMOVE_NODE_OUTPUT_CONNECTION"]
     1078 MOVE                             R59 R39
     1079 CALL                             R57 2 0
     1080 GETUPVAL                         R57 30
     1081 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1083 GETUPVAL                         R58 32
     1084 GETTABLEKS                       R58 R58 K86 ["REMOVE_NODE_INPUT_CONNECTION"]
     1086 MOVE                             R59 R36
     1087 CALL                             R57 2 0
     1088 GETUPVAL                         R57 30
     1089 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1091 GETUPVAL                         R58 32
     1092 GETTABLEKS                       R58 R58 K87 ["REMOVE_PARAMETER"]
     1094 MOVE                             R59 R48
     1095 CALL                             R57 2 0
     1096 GETUPVAL                         R57 30
     1097 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1099 GETUPVAL                         R58 32
     1100 GETTABLEKS                       R58 R58 K88 ["RENAME_NODE"]
     1102 MOVE                             R59 R46
     1103 CALL                             R57 2 0
     1104 GETUPVAL                         R57 30
     1105 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1107 GETUPVAL                         R58 32
     1108 GETTABLEKS                       R58 R58 K89 ["RENAME_PARAMETER"]
     1110 MOVE                             R59 R49
     1111 CALL                             R57 2 0
     1112 GETUPVAL                         R57 30
     1113 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1115 GETUPVAL                         R58 32
     1116 GETTABLEKS                       R58 R58 K90 ["DELETE_NODE_INSTANCE"]
     1118 MOVE                             R59 R51
     1119 CALL                             R57 2 0
     1120 GETUPVAL                         R57 30
     1121 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1123 GETUPVAL                         R58 32
     1124 GETTABLEKS                       R58 R58 K91 ["SET_COLLAPSED"]
     1126 MOVE                             R59 R21
     1127 CALL                             R57 2 0
     1128 GETUPVAL                         R57 30
     1129 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1131 GETUPVAL                         R58 32
     1132 GETTABLEKS                       R58 R58 K92 ["SET_NODE_PROPERTY"]
     1134 MOVE                             R59 R44
     1135 CALL                             R57 2 0
     1136 GETUPVAL                         R57 30
     1137 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1139 GETUPVAL                         R58 32
     1140 GETTABLEKS                       R58 R58 K93 ["SET_INPUT_PIN_NODE_PROPERTY"]
     1142 MOVE                             R59 R45
     1143 CALL                             R57 2 0
     1144 GETUPVAL                         R57 30
     1145 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1147 GETUPVAL                         R58 32
     1148 GETTABLEKS                       R58 R58 K94 ["SET_PARAMETER_NODE_TYPE"]
     1150 MOVE                             R59 R50
     1151 CALL                             R57 2 0
     1152 GETUPVAL                         R57 30
     1153 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1155 GETUPVAL                         R58 32
     1156 GETTABLEKS                       R58 R58 K95 ["REORDER_PINS"]
     1158 MOVE                             R59 R47
     1159 CALL                             R57 2 0
     1160 GETUPVAL                         R57 30
     1161 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1163 GETUPVAL                         R58 32
     1164 GETTABLEKS                       R58 R58 K96 ["BEGIN_UNDO_TRANSACTION"]
     1166 MOVE                             R59 R42
     1167 CALL                             R57 2 0
     1168 GETUPVAL                         R57 30
     1169 GETTABLEKS                       R57 R57 K74 ["useBoundAction"]
     1171 GETUPVAL                         R58 32
     1172 GETTABLEKS                       R58 R58 K97 ["FINISH_UNDO_TRANSACTION"]
     1174 MOVE                             R59 R43
     1175 CALL                             R57 2 0
     1176 GETUPVAL                         R57 1
     1177 GETTABLEKS                       R57 R57 K98 ["createElement"]
     1179 GETUPVAL                         R58 33
     1180 GETTABLEKS                       R58 R58 K99 ["Provider"]
     1182 DUPTABLE                         R59 K101 [{"value"}]
     1183 SETTABLEKS                       R53 R59 K100 ["value"]
     1185 DUPTABLE                         R60 K103 [{"ContextStack"}]
     1186 GETUPVAL                         R61 1
     1187 GETTABLEKS                       R61 R61 K98 ["createElement"]
     1189 GETUPVAL                         R62 10
     1190 GETTABLEKS                       R62 R62 K102 ["ContextStack"]
     1192 DUPTABLE                         R63 K105 [{"providers"}]
     1193 NEWTABLE                         R64 0 2
     1195 GETUPVAL                         R65 1
     1196 GETTABLEKS                       R65 R65 K98 ["createElement"]
     1198 GETUPVAL                         R66 34
     1199 GETTABLEKS                       R66 R66 K99 ["Provider"]
     1201 DUPTABLE                         R67 K107 [{"timeRange"}]
     1202 SETTABLEKS                       R54 R67 K106 ["timeRange"]
     1204 CALL                             R65 2 1
     1205 GETUPVAL                         R66 1
     1206 GETTABLEKS                       R66 R66 K98 ["createElement"]
     1208 GETUPVAL                         R67 35
     1209 GETTABLEKS                       R67 R67 K99 ["Provider"]
     1211 DUPTABLE                         R68 K109 [{"animationClipsList"}]
     1212 SETTABLEKS                       R56 R68 K108 ["animationClipsList"]
     1214 CALL                             R66 2 -1
     1215 SETLIST                          R64 R65 -1 [1]
     1217 SETTABLEKS                       R64 R63 K104 ["providers"]
     1219 GETTABLEKS                       R64 R0 K110 ["children"]
     1221 CALL                             R61 3 1
     1222 SETTABLEKS                       R61 R60 K102 ["ContextStack"]
     1224 CALL                             R57 3 -1
     1225 RETURN                           R57 -1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_58:
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

PROTO_59:
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

PROTO_60:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_61:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_62:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeDebugData"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createComputed"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeDebugData"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K1 ["parent"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADN                            R2 1
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["observeDebugData"]
       16 GETTABLEKS                       R3 R1 K1 ["parent"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R3 R2 K2 ["children"]
       24 JUMPIF                           R3 ; [+2]
       25 LOADN                            R3 1
       26 RETURN                           R3 1
       27 GETTABLEKS                       R3 R2 K2 ["children"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETTABLEKS                       R8 R7 K3 ["id"]
       34 GETUPVAL                         R9 1
       35 JUMPIFNOTEQ                      R8 R9 ; [+17]
       37 GETTABLEKS                       R8 R7 K4 ["weight"]
       39 JUMPIFNOTEQKNIL                  R8 ; [+3]
       41 LOADN                            R8 1
       42 RETURN                           R8 1
       43 GETIMPORT                        R8 K7 [math.map]
       45 GETTABLEKS                       R9 R7 K4 ["weight"]
       47 LOADN                            R10 0
       48 LOADN                            R11 1
       49 LOADK                            R12 K8 [0.5]
       50 LOADN                            R13 1
       51 CALL                             R8 5 -1
       52 RETURN                           R8 -1
       53 FORGLOOP                         R3 2 ; [-22]
       55 LOADN                            R3 1
       56 RETURN                           R3 1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeDebugData"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K1 ["parent"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["observeDebugData"]
       16 GETTABLEKS                       R3 R1 K1 ["parent"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R3 R2 K2 ["children"]
       24 JUMPIF                           R3 ; [+2]
       25 LOADB                            R3 0
       26 RETURN                           R3 1
       27 GETTABLEKS                       R3 R2 K2 ["children"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETTABLEKS                       R8 R7 K3 ["id"]
       34 GETUPVAL                         R9 1
       35 JUMPIFNOTEQ                      R8 R9 ; [+8]
       37 GETTABLEKS                       R9 R7 K4 ["weight"]
       39 JUMPIFEQKN                       R9 K5 [0] ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 RETURN                           R8 1
       44 FORGLOOP                         R3 2 ; [-13]
       46 LOADB                            R3 0
       47 RETURN                           R3 1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_69:
        0 DUPTABLE                         R0 K27 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "observeIsDisabledByNodeId"}]
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
       44 SETTABLEKS                       R1 R0 K10 ["removeNodeInputConnectionAsync"]
       46 GETUPVAL                         R1 11
       47 SETTABLEKS                       R1 R0 K11 ["removeNodeOutputConnectionAsync"]
       49 GETUPVAL                         R2 12
       50 NEWCLOSURE                       R1 P0
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R1 R0 K12 ["removeParameter"]
       54 GETUPVAL                         R2 13
       55 NEWCLOSURE                       R1 P0
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R1 R0 K13 ["renameNode"]
       59 GETUPVAL                         R2 14
       60 NEWCLOSURE                       R1 P0
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R1 R0 K14 ["renameParameter"]
       64 GETUPVAL                         R2 15
       65 NEWCLOSURE                       R1 P0
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R1 R0 K15 ["deleteNodeInstance"]
       69 GETUPVAL                         R2 16
       70 NEWCLOSURE                       R1 P0
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R1 R0 K16 ["removeNodes"]
       74 GETUPVAL                         R2 17
       75 NEWCLOSURE                       R1 P0
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R1 R0 K17 ["setNodeConnection"]
       79 GETUPVAL                         R2 18
       80 NEWCLOSURE                       R1 P0
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R1 R0 K18 ["setNodePositions"]
       84 GETUPVAL                         R2 19
       85 NEWCLOSURE                       R1 P0
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R1 R0 K19 ["setNodeProperty"]
       89 GETUPVAL                         R2 20
       90 NEWCLOSURE                       R1 P0
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R1 R0 K20 ["setInputPinNodeProperty"]
       94 GETUPVAL                         R2 21
       95 NEWCLOSURE                       R1 P0
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R1 R0 K21 ["setNodeSize"]
       99 GETUPVAL                         R2 22
      100 NEWCLOSURE                       R1 P0
      101 CAPTURE                          VAL R2
      102 SETTABLEKS                       R1 R0 K22 ["setParameterNodeType"]
      104 GETUPVAL                         R1 23
      105 GETTABLEKS                       R1 R1 K28 ["observe"]
      107 SETTABLEKS                       R1 R0 K23 ["observeNodePropsById"]
      109 GETUPVAL                         R1 24
      110 SETTABLEKS                       R1 R0 K24 ["observeNodeStateById"]
      112 GETUPVAL                         R1 25
      113 SETTABLEKS                       R1 R0 K25 ["observeFadeByNodeId"]
      115 GETUPVAL                         R1 26
      116 SETTABLEKS                       R1 R0 K26 ["observeIsDisabledByNodeId"]
      118 RETURN                           R0 1

PROTO_70:
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
       14 DUPCLOSURE                       R7 K1 [PROTO_57]
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
      142 DUPCLOSURE                       R12 K23 [PROTO_60]
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
      232 GETTABLEKS                       R25 R25 K36 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      234 CALL                             R24 1 1
      235 GETUPVAL                         R25 4
      236 GETTABLEKS                       R25 R25 K25 ["useBoundAction"]
      238 GETUPVAL                         R26 10
      239 GETTABLEKS                       R26 R26 K37 ["REMOVE_NODE_INPUT_CONNECTION"]
      241 CALL                             R25 1 1
      242 GETUPVAL                         R26 4
      243 GETTABLEKS                       R26 R26 K25 ["useBoundAction"]
      245 GETUPVAL                         R27 10
      246 GETTABLEKS                       R27 R27 K38 ["REMOVE_PARAMETER"]
      248 CALL                             R26 1 1
      249 GETUPVAL                         R27 4
      250 GETTABLEKS                       R27 R27 K25 ["useBoundAction"]
      252 GETUPVAL                         R28 10
      253 GETTABLEKS                       R28 R28 K39 ["RENAME_NODE"]
      255 CALL                             R27 1 1
      256 GETUPVAL                         R28 4
      257 GETTABLEKS                       R28 R28 K25 ["useBoundAction"]
      259 GETUPVAL                         R29 10
      260 GETTABLEKS                       R29 R29 K40 ["RENAME_PARAMETER"]
      262 CALL                             R28 1 1
      263 GETUPVAL                         R29 4
      264 GETTABLEKS                       R29 R29 K25 ["useBoundAction"]
      266 GETUPVAL                         R30 10
      267 GETTABLEKS                       R30 R30 K41 ["DELETE_NODE_INSTANCE"]
      269 CALL                             R29 1 1
      270 GETUPVAL                         R30 4
      271 GETTABLEKS                       R30 R30 K25 ["useBoundAction"]
      273 GETUPVAL                         R31 10
      274 GETTABLEKS                       R31 R31 K42 ["SET_COLLAPSED"]
      276 CALL                             R30 1 1
      277 GETUPVAL                         R31 4
      278 GETTABLEKS                       R31 R31 K25 ["useBoundAction"]
      280 GETUPVAL                         R32 10
      281 GETTABLEKS                       R32 R32 K43 ["SET_NODE_PROPERTY"]
      283 CALL                             R31 1 1
      284 GETUPVAL                         R32 4
      285 GETTABLEKS                       R32 R32 K25 ["useBoundAction"]
      287 GETUPVAL                         R33 10
      288 GETTABLEKS                       R33 R33 K44 ["SET_INPUT_PIN_NODE_PROPERTY"]
      290 CALL                             R32 1 1
      291 GETUPVAL                         R33 4
      292 GETTABLEKS                       R33 R33 K25 ["useBoundAction"]
      294 GETUPVAL                         R34 10
      295 GETTABLEKS                       R34 R34 K45 ["SET_PARAMETER_NODE_TYPE"]
      297 CALL                             R33 1 1
      298 GETUPVAL                         R34 4
      299 GETTABLEKS                       R34 R34 K25 ["useBoundAction"]
      301 GETUPVAL                         R35 10
      302 GETTABLEKS                       R35 R35 K46 ["SELECT_NODES_FROM_RECT"]
      304 CALL                             R34 1 1
      305 GETUPVAL                         R35 4
      306 GETTABLEKS                       R35 R35 K25 ["useBoundAction"]
      308 GETUPVAL                         R36 10
      309 GETTABLEKS                       R36 R36 K47 ["BEGIN_UNDO_TRANSACTION"]
      311 CALL                             R35 1 1
      312 GETUPVAL                         R36 4
      313 GETTABLEKS                       R36 R36 K25 ["useBoundAction"]
      315 GETUPVAL                         R37 10
      316 GETTABLEKS                       R37 R37 K48 ["FINISH_UNDO_TRANSACTION"]
      318 CALL                             R36 1 1
      319 NEWTABLE                         R37 64 0
      321 GETUPVAL                         R39 1
      322 CALL                             R39 0 1
      323 JUMPIFNOT                        R39 ; [+2]
      324 LOADNIL                          R38
      325 JUMP                             ; [+1]
      326 MOVE                             R38 R13
      327 SETTABLEKS                       R38 R37 K49 ["selectedGraphInstanceId_DEPRECATED"]
      329 SETTABLEKS                       R14 R37 K50 ["reorderPinsAsync"]
      331 SETTABLEKS                       R15 R37 K51 ["createNodeAsync"]
      333 SETTABLEKS                       R16 R37 K52 ["createParameterAsync"]
      335 SETTABLEKS                       R17 R37 K53 ["createConnectedParameterAsync"]
      337 SETTABLEKS                       R18 R37 K54 ["createExistingParameterAsync"]
      339 SETTABLEKS                       R7 R37 K55 ["graphRect"]
      341 SETTABLEKS                       R19 R37 K56 ["selectAllParameterNodesWithNameAsync"]
      343 SETTABLEKS                       R20 R37 K57 ["selectNodesAsync"]
      345 SETTABLEKS                       R34 R37 K58 ["selectNodesFromRectAsync"]
      347 SETTABLEKS                       R21 R37 K59 ["setNodePositionsAsync"]
      349 SETTABLEKS                       R22 R37 K60 ["setNodeSizeAsync"]
      351 SETTABLEKS                       R23 R37 K61 ["setNodeConnectionAsync"]
      353 SETTABLEKS                       R24 R37 K62 ["removeNodeOutputConnectionAsync"]
      355 SETTABLEKS                       R25 R37 K63 ["removeNodeInputConnectionAsync"]
      357 SETTABLEKS                       R26 R37 K64 ["removeParameterAsync"]
      359 SETTABLEKS                       R27 R37 K65 ["renameNodeAsync"]
      361 SETTABLEKS                       R28 R37 K66 ["renameParameterAsync"]
      363 SETTABLEKS                       R29 R37 K67 ["deleteNodeInstanceAsync"]
      365 SETTABLEKS                       R30 R37 K68 ["setCollapsedAsync"]
      367 SETTABLEKS                       R31 R37 K69 ["setNodePropertyAsync"]
      369 SETTABLEKS                       R32 R37 K70 ["setInputPinNodePropertyAsync"]
      371 SETTABLEKS                       R33 R37 K71 ["setParameterNodeTypeAsync"]
      373 SETTABLEKS                       R9 R37 K72 ["currentAnimationId"]
      375 SETTABLEKS                       R8 R37 K73 ["sourceAssetId"]
      377 SETTABLEKS                       R10 R37 K74 ["selectedGraphKey"]
      379 GETUPVAL                         R39 1
      380 CALL                             R39 0 1
      381 JUMPIFNOT                        R39 ; [+2]
      382 LOADNIL                          R38
      383 JUMP                             ; [+1]
      384 MOVE                             R38 R11
      385 SETTABLEKS                       R38 R37 K75 ["observeSelectedGraphInstance_DEPRECATED"]
      387 GETTABLEKS                       R38 R1 K76 ["observe"]
      389 SETTABLEKS                       R38 R37 K77 ["observeGraphNodeById"]
      391 GETTABLEKS                       R38 R2 K76 ["observe"]
      393 SETTABLEKS                       R38 R37 K78 ["observeNodeRenderInfoById"]
      395 SETTABLEKS                       R35 R37 K79 ["beginUndoTransaction"]
      397 SETTABLEKS                       R36 R37 K80 ["finishUndoTransaction"]
      399 GETTABLEKS                       R38 R1 K81 ["observeMap"]
      401 SETTABLEKS                       R38 R37 K82 ["observeGraphNodeMap"]
      403 GETTABLEKS                       R38 R2 K81 ["observeMap"]
      405 SETTABLEKS                       R38 R37 K83 ["observeRenderInfoMap"]
      407 GETTABLEKS                       R38 R12 K84 ["hasGraphOutput"]
      409 SETTABLEKS                       R38 R37 K84 ["hasGraphOutput"]
      411 GETTABLEKS                       R38 R3 K76 ["observe"]
      413 SETTABLEKS                       R38 R37 K85 ["observeNodePropsById"]
      415 DUPCLOSURE                       R38 K86 [PROTO_62]
      416 GETUPVAL                         R39 2
      417 GETTABLEKS                       R39 R39 K87 ["useContext"]
      419 GETUPVAL                         R40 11
      420 GETTABLEKS                       R40 R40 K88 ["Context"]
      422 CALL                             R39 1 1
      423 GETUPVAL                         R40 2
      424 GETTABLEKS                       R40 R40 K4 ["useCallback"]
      426 NEWCLOSURE                       R41 P5
      427 CAPTURE                          VAL R39
      428 CAPTURE                          UPVAL U3
      429 NEWTABLE                         R42 0 1
      431 GETTABLEKS                       R43 R39 K89 ["observeDebugData"]
      433 SETLIST                          R42 R43 1 [1]
      435 CALL                             R40 2 1
      436 GETUPVAL                         R41 2
      437 GETTABLEKS                       R41 R41 K4 ["useCallback"]
      439 NEWCLOSURE                       R42 P6
      440 CAPTURE                          UPVAL U7
      441 CAPTURE                          VAL R39
      442 NEWTABLE                         R43 0 1
      444 GETTABLEKS                       R44 R39 K89 ["observeDebugData"]
      446 SETLIST                          R43 R44 1 [1]
      448 CALL                             R41 2 1
      449 GETUPVAL                         R42 2
      450 GETTABLEKS                       R42 R42 K4 ["useCallback"]
      452 NEWCLOSURE                       R43 P7
      453 CAPTURE                          UPVAL U7
      454 CAPTURE                          VAL R39
      455 NEWTABLE                         R44 0 1
      457 GETTABLEKS                       R45 R39 K89 ["observeDebugData"]
      459 SETLIST                          R44 R45 1 [1]
      461 CALL                             R42 2 1
      462 GETUPVAL                         R43 12
      463 GETTABLEKS                       R43 R43 K90 ["useConsumer"]
      465 CALL                             R43 0 1
      466 GETUPVAL                         R44 13
      467 GETTABLEKS                       R44 R44 K90 ["useConsumer"]
      469 CALL                             R44 0 1
      470 GETUPVAL                         R45 2
      471 GETTABLEKS                       R45 R45 K0 ["useMemo"]
      473 NEWCLOSURE                       R46 P8
      474 CAPTURE                          VAL R1
      475 CAPTURE                          VAL R2
      476 CAPTURE                          VAL R43
      477 CAPTURE                          VAL R14
      478 CAPTURE                          VAL R16
      479 CAPTURE                          VAL R18
      480 CAPTURE                          VAL R17
      481 CAPTURE                          VAL R19
      482 CAPTURE                          VAL R20
      483 CAPTURE                          VAL R30
      484 CAPTURE                          VAL R25
      485 CAPTURE                          VAL R24
      486 CAPTURE                          VAL R26
      487 CAPTURE                          VAL R27
      488 CAPTURE                          VAL R28
      489 CAPTURE                          VAL R29
      490 CAPTURE                          VAL R44
      491 CAPTURE                          VAL R23
      492 CAPTURE                          VAL R21
      493 CAPTURE                          VAL R31
      494 CAPTURE                          VAL R32
      495 CAPTURE                          VAL R22
      496 CAPTURE                          VAL R33
      497 CAPTURE                          VAL R3
      498 CAPTURE                          VAL R40
      499 CAPTURE                          VAL R41
      500 CAPTURE                          VAL R42
      501 NEWTABLE                         R47 0 27
      503 MOVE                             R48 R1
      504 MOVE                             R49 R2
      505 MOVE                             R50 R43
      506 MOVE                             R51 R14
      507 MOVE                             R52 R16
      508 MOVE                             R53 R18
      509 MOVE                             R54 R17
      510 MOVE                             R55 R19
      511 MOVE                             R56 R20
      512 MOVE                             R57 R30
      513 MOVE                             R58 R25
      514 MOVE                             R59 R24
      515 MOVE                             R60 R26
      516 MOVE                             R61 R27
      517 MOVE                             R62 R28
      518 MOVE                             R63 R29
      519 SETLIST                          R47 R48 16 [1]
      521 MOVE                             R48 R44
      522 MOVE                             R49 R23
      523 MOVE                             R50 R21
      524 MOVE                             R51 R31
      525 MOVE                             R52 R32
      526 MOVE                             R53 R22
      527 MOVE                             R54 R33
      528 GETTABLEKS                       R55 R3 K76 ["observe"]
      530 MOVE                             R56 R40
      531 MOVE                             R57 R41
      532 MOVE                             R58 R42
      533 SETLIST                          R47 R48 11 [17]
      535 CALL                             R45 2 1
      536 GETUPVAL                         R46 2
      537 GETTABLEKS                       R46 R46 K91 ["createElement"]
      539 GETUPVAL                         R47 14
      540 GETTABLEKS                       R47 R47 K92 ["Provider"]
      542 DUPTABLE                         R48 K94 [{"value"}]
      543 SETTABLEKS                       R37 R48 K93 ["value"]
      545 DUPTABLE                         R49 K96 [{"ContextStack"}]
      546 GETUPVAL                         R50 2
      547 GETTABLEKS                       R50 R50 K91 ["createElement"]
      549 GETUPVAL                         R51 15
      550 GETTABLEKS                       R51 R51 K95 ["ContextStack"]
      552 DUPTABLE                         R52 K98 [{"providers"}]
      553 NEWTABLE                         R53 0 2
      555 GETUPVAL                         R54 2
      556 GETTABLEKS                       R54 R54 K91 ["createElement"]
      558 GETUPVAL                         R55 16
      559 GETTABLEKS                       R55 R55 K99 ["GraphContext"]
      561 GETTABLEKS                       R55 R55 K92 ["Provider"]
      563 DUPTABLE                         R56 K94 [{"value"}]
      564 SETTABLEKS                       R45 R56 K93 ["value"]
      566 CALL                             R54 2 1
      567 GETUPVAL                         R55 2
      568 GETTABLEKS                       R55 R55 K91 ["createElement"]
      570 GETUPVAL                         R56 17
      571 GETTABLEKS                       R56 R56 K92 ["Provider"]
      573 DUPTABLE                         R57 K101 [{"timeRange"}]
      574 SETTABLEKS                       R6 R57 K100 ["timeRange"]
      576 CALL                             R55 2 -1
      577 SETLIST                          R53 R54 -1 [1]
      579 SETTABLEKS                       R53 R52 K97 ["providers"]
      581 GETTABLEKS                       R53 R0 K102 ["children"]
      583 CALL                             R50 3 1
      584 SETTABLEKS                       R50 R49 K95 ["ContextStack"]
      586 CALL                             R46 3 -1
      587 CLOSEUPVALS                      R5
      588 RETURN                           R46 -1

PROTO_71:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["ServerStorage"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 LOADK                            R6 K4 ["RBX_ANIMSAVES"]
        7 NAMECALL                         R4 R3 K5 ["FindFirstChild"]
        9 CALL                             R4 2 1
       10 JUMPIF                           R4 ; [+2]
       11 LOADNIL                          R5
       12 RETURN                           R5 1
       13 MOVE                             R7 R2
       14 NAMECALL                         R5 R4 K5 ["FindFirstChild"]
       16 CALL                             R5 2 1
       17 JUMPIF                           R5 ; [+2]
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 MOVE                             R8 R1
       21 NAMECALL                         R6 R5 K5 ["FindFirstChild"]
       23 CALL                             R6 2 1
       24 JUMPIF                           R6 ; [+2]
       25 LOADNIL                          R7
       26 RETURN                           R7 1
       27 GETIMPORT                        R7 K1 [game]
       29 LOADK                            R9 K6 ["AnimationClipProvider"]
       30 NAMECALL                         R7 R7 K3 ["GetService"]
       32 CALL                             R7 2 1
       33 MOVE                             R10 R6
       34 NAMECALL                         R8 R7 K7 ["RegisterAnimationClip"]
       36 CALL                             R8 2 -1
       37 RETURN                           R8 -1

PROTO_72:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [game]
        7 LOADK                            R2 K2 ["RunService"]
        8 NAMECALL                         R0 R0 K3 ["GetService"]
       10 CALL                             R0 2 1
       11 NAMECALL                         R1 R0 K4 ["IsServer"]
       13 CALL                             R1 1 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETIMPORT                        R1 K1 [game]
       19 LOADK                            R3 K5 ["ReplicatedStorage"]
       20 NAMECALL                         R1 R1 K3 ["GetService"]
       22 CALL                             R1 2 1
       23 LOADK                            R4 K6 ["AnimationGraphEditor"]
       24 NAMECALL                         R2 R1 K7 ["FindFirstChild"]
       26 CALL                             R2 2 1
       27 JUMPIF                           R2 ; [+10]
       28 GETIMPORT                        R3 K10 [Instance.new]
       30 LOADK                            R4 K11 ["Folder"]
       31 CALL                             R3 1 1
       32 LOADK                            R4 K6 ["AnimationGraphEditor"]
       33 SETTABLEKS                       R4 R3 K12 ["Name"]
       35 SETTABLEKS                       R1 R3 K13 ["Parent"]
       37 MOVE                             R2 R3
       38 GETIMPORT                        R3 K10 [Instance.new]
       40 LOADK                            R4 K14 ["RemoteFunction"]
       41 CALL                             R3 1 1
       42 LOADK                            R4 K15 ["GetGraphClip"]
       43 SETTABLEKS                       R4 R3 K12 ["Name"]
       45 SETTABLEKS                       R2 R3 K13 ["Parent"]
       47 DUPCLOSURE                       R4 K16 [PROTO_71]
       48 SETTABLEKS                       R4 R3 K17 ["OnServerInvoke"]
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          VAL R3
       52 RETURN                           R4 1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_73]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K2 ["children"]
       10 RETURN                           R1 1

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
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["AnimationNodeWrapper"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Contexts"]
       30 GETTABLEKS                       R5 R5 K14 ["AnimationPreviewClipsContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R6 K15 ["Constants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       44 GETTABLEKS                       R7 R7 K16 ["GraphDebugDataContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       51 GETTABLEKS                       R8 R8 K17 ["InstanceRegistryContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Util"]
       58 GETTABLEKS                       R9 R9 K18 ["Instances"]
       60 GETTABLEKS                       R9 R9 K19 ["InstanceSelectionRegistry"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K13 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K20 ["NativeGraphContext"]
       69 GETTABLEKS                       R10 R10 K21 ["NativeGraphUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K11 ["Util"]
       76 GETTABLEKS                       R11 R11 K22 ["Networking"]
       78 GETTABLEKS                       R11 R11 K23 ["NetworkUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R0 K24 ["Parent"]
       85 GETTABLEKS                       R12 R12 K25 ["NodeGraphing"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R0 K26 ["NodeViewTypes"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K13 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K27 ["PasteHookContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K24 ["Parent"]
      104 GETTABLEKS                       R15 R15 K28 ["React"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R0 K24 ["Parent"]
      111 GETTABLEKS                       R16 R16 K29 ["ReactUtils"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K10 [require]
      116 GETTABLEKS                       R17 R0 K13 ["Contexts"]
      118 GETTABLEKS                       R17 R17 K30 ["SelectedGraphContext"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K10 [require]
      123 GETTABLEKS                       R18 R0 K13 ["Contexts"]
      125 GETTABLEKS                       R18 R18 K31 ["SelectionServiceContext"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K10 [require]
      130 GETTABLEKS                       R19 R0 K11 ["Util"]
      132 GETTABLEKS                       R19 R19 K32 ["Signals"]
      134 GETTABLEKS                       R19 R19 K33 ["Experimental"]
      136 GETTABLEKS                       R19 R19 K34 ["SignalExperimentalUtils"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R20 R0 K24 ["Parent"]
      143 GETTABLEKS                       R20 R20 K32 ["Signals"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETTABLEKS                       R21 R0 K24 ["Parent"]
      150 GETTABLEKS                       R21 R21 K35 ["SignalsReact"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K10 [require]
      155 GETTABLEKS                       R22 R0 K13 ["Contexts"]
      157 GETTABLEKS                       R22 R22 K36 ["TimeRangeContext"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K10 [require]
      162 GETTABLEKS                       R23 R0 K37 ["Flags"]
      164 GETTABLEKS                       R23 R23 K38 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K10 [require]
      169 GETTABLEKS                       R24 R0 K37 ["Flags"]
      171 GETTABLEKS                       R24 R24 K39 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K10 [require]
      176 GETTABLEKS                       R25 R0 K37 ["Flags"]
      178 GETTABLEKS                       R25 R25 K40 ["getFFlagAnimGraphUI_RunTimeDebug"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K10 [require]
      183 GETTABLEKS                       R26 R0 K37 ["Flags"]
      185 GETTABLEKS                       R26 R26 K41 ["getFFlagAnimGraphUseRemove"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K10 [require]
      190 GETTABLEKS                       R27 R0 K37 ["Flags"]
      192 GETTABLEKS                       R27 R27 K42 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K10 [require]
      197 GETTABLEKS                       R28 R0 K37 ["Flags"]
      199 GETTABLEKS                       R28 R28 K43 ["getFFlagAnimationEditorRenameInstanceToo"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K10 [require]
      204 GETTABLEKS                       R29 R0 K11 ["Util"]
      206 GETTABLEKS                       R29 R29 K44 ["parseAnimationNodeType"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K10 [require]
      211 GETIMPORT                        R30 K1 [script]
      213 GETTABLEKS                       R30 R30 K45 ["useGraphAnalytics"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K10 [require]
      218 GETTABLEKS                       R31 R0 K46 ["Hooks"]
      220 GETTABLEKS                       R31 R31 K47 ["useNodeDefinitionDestroyHelper"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K10 [require]
      225 GETTABLEKS                       R32 R0 K46 ["Hooks"]
      227 GETTABLEKS                       R32 R32 K48 ["useObserveSelection"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K10 [require]
      232 GETTABLEKS                       R33 R0 K46 ["Hooks"]
      234 GETTABLEKS                       R33 R33 K49 ["useParameterDestroyHelper"]
      236 CALL                             R32 1 1
      237 GETIMPORT                        R33 K10 [require]
      239 GETTABLEKS                       R34 R0 K46 ["Hooks"]
      241 GETTABLEKS                       R34 R34 K50 ["useSignalDispatcher"]
      243 CALL                             R33 1 1
      244 NEWTABLE                         R34 64 0
      246 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      248 LOADK                            R36 K52 ["observeGraphNodeMap"]
      249 CALL                             R35 1 1
      250 SETTABLEKS                       R35 R34 K52 ["observeGraphNodeMap"]
      252 GETIMPORT                        R35 K55 [Rect.new]
      254 LOADN                            R36 0
      255 LOADN                            R37 0
      256 LOADN                            R38 0
      257 LOADN                            R39 0
      258 CALL                             R35 4 1
      259 SETTABLEKS                       R35 R34 K56 ["graphRect"]
      261 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      263 LOADK                            R36 K57 ["reorderPinsAsync"]
      264 CALL                             R35 1 1
      265 SETTABLEKS                       R35 R34 K57 ["reorderPinsAsync"]
      267 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      269 LOADK                            R36 K58 ["createNodeAsync"]
      270 CALL                             R35 1 1
      271 SETTABLEKS                       R35 R34 K58 ["createNodeAsync"]
      273 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      275 LOADK                            R36 K59 ["createParameterAsync"]
      276 CALL                             R35 1 1
      277 SETTABLEKS                       R35 R34 K59 ["createParameterAsync"]
      279 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      281 LOADK                            R36 K60 ["createConnectedParameterAsync"]
      282 CALL                             R35 1 1
      283 SETTABLEKS                       R35 R34 K60 ["createConnectedParameterAsync"]
      285 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      287 LOADK                            R36 K61 ["createExistingParameterAsync"]
      288 CALL                             R35 1 1
      289 SETTABLEKS                       R35 R34 K61 ["createExistingParameterAsync"]
      291 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      293 LOADK                            R36 K62 ["selectAllParameterNodesWithNameAsync"]
      294 CALL                             R35 1 1
      295 SETTABLEKS                       R35 R34 K62 ["selectAllParameterNodesWithNameAsync"]
      297 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      299 LOADK                            R36 K63 ["selectNodesAsync"]
      300 CALL                             R35 1 1
      301 SETTABLEKS                       R35 R34 K63 ["selectNodesAsync"]
      303 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      305 LOADK                            R36 K64 ["selectNodesFromRectAsync"]
      306 CALL                             R35 1 1
      307 SETTABLEKS                       R35 R34 K64 ["selectNodesFromRectAsync"]
      309 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      311 LOADK                            R36 K65 ["setNodePositionsAsync"]
      312 CALL                             R35 1 1
      313 SETTABLEKS                       R35 R34 K65 ["setNodePositionsAsync"]
      315 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      317 LOADK                            R36 K66 ["setNodeSizeAsync"]
      318 CALL                             R35 1 1
      319 SETTABLEKS                       R35 R34 K66 ["setNodeSizeAsync"]
      321 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      323 LOADK                            R36 K67 ["removeNodeInputConnectionAsync"]
      324 CALL                             R35 1 1
      325 SETTABLEKS                       R35 R34 K67 ["removeNodeInputConnectionAsync"]
      327 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      329 LOADK                            R36 K68 ["removeNodeOutputConnectionAsync"]
      330 CALL                             R35 1 1
      331 SETTABLEKS                       R35 R34 K68 ["removeNodeOutputConnectionAsync"]
      333 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      335 LOADK                            R36 K69 ["removeParameterAsync"]
      336 CALL                             R35 1 1
      337 SETTABLEKS                       R35 R34 K69 ["removeParameterAsync"]
      339 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      341 LOADK                            R36 K70 ["renameNodeAsync"]
      342 CALL                             R35 1 1
      343 SETTABLEKS                       R35 R34 K70 ["renameNodeAsync"]
      345 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      347 LOADK                            R36 K71 ["renameParameterAsync"]
      348 CALL                             R35 1 1
      349 SETTABLEKS                       R35 R34 K71 ["renameParameterAsync"]
      351 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      353 LOADK                            R36 K72 ["deleteNodeInstanceAsync"]
      354 CALL                             R35 1 1
      355 SETTABLEKS                       R35 R34 K72 ["deleteNodeInstanceAsync"]
      357 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      359 LOADK                            R36 K73 ["setNewConnection"]
      360 CALL                             R35 1 1
      361 SETTABLEKS                       R35 R34 K74 ["setNodeConnectionAsync"]
      363 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      365 LOADK                            R36 K75 ["setCollapsedAsync"]
      366 CALL                             R35 1 1
      367 SETTABLEKS                       R35 R34 K75 ["setCollapsedAsync"]
      369 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      371 LOADK                            R36 K76 ["setNodePropertyAsync"]
      372 CALL                             R35 1 1
      373 SETTABLEKS                       R35 R34 K76 ["setNodePropertyAsync"]
      375 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      377 LOADK                            R36 K77 ["setInputPinNodePropertyAsync"]
      378 CALL                             R35 1 1
      379 SETTABLEKS                       R35 R34 K77 ["setInputPinNodePropertyAsync"]
      381 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      383 LOADK                            R36 K78 ["setParameterNodeTypeAsync"]
      384 CALL                             R35 1 1
      385 SETTABLEKS                       R35 R34 K78 ["setParameterNodeTypeAsync"]
      387 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      389 LOADK                            R36 K79 ["hasGraphOutput"]
      390 CALL                             R35 1 1
      391 SETTABLEKS                       R35 R34 K79 ["hasGraphOutput"]
      393 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      395 LOADK                            R36 K80 ["observeGraphNodeById"]
      396 CALL                             R35 1 1
      397 SETTABLEKS                       R35 R34 K80 ["observeGraphNodeById"]
      399 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      401 LOADK                            R36 K81 ["observeNodeRenderInfoById"]
      402 CALL                             R35 1 1
      403 SETTABLEKS                       R35 R34 K81 ["observeNodeRenderInfoById"]
      405 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      407 LOADK                            R36 K82 ["observeRenderInfoMap"]
      408 CALL                             R35 1 1
      409 SETTABLEKS                       R35 R34 K82 ["observeRenderInfoMap"]
      411 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      413 LOADK                            R36 K83 ["observeNodePropsById"]
      414 CALL                             R35 1 1
      415 SETTABLEKS                       R35 R34 K83 ["observeNodePropsById"]
      417 GETTABLEKS                       R35 R19 K84 ["createSignal"]
      419 LOADNIL                          R36
      420 CALL                             R35 1 1
      421 SETTABLEKS                       R35 R34 K85 ["observeSelectedGraphInstance_DEPRECATED"]
      423 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      425 LOADK                            R36 K86 ["beginUndoTransaction"]
      426 CALL                             R35 1 1
      427 SETTABLEKS                       R35 R34 K86 ["beginUndoTransaction"]
      429 GETTABLEKS                       R35 R15 K51 ["createUnimplemented"]
      431 LOADK                            R36 K87 ["finishUndoTransaction"]
      432 CALL                             R35 1 1
      433 SETTABLEKS                       R35 R34 K87 ["finishUndoTransaction"]
      435 LOADNIL                          R35
      436 SETTABLEKS                       R35 R34 K88 ["currentAnimationId"]
      438 LOADNIL                          R35
      439 SETTABLEKS                       R35 R34 K89 ["sourceAssetId"]
      441 LOADNIL                          R35
      442 SETTABLEKS                       R35 R34 K90 ["selectedGraphKey"]
      444 GETTABLEKS                       R35 R14 K91 ["createContext"]
      446 MOVE                             R36 R34
      447 CALL                             R35 1 1
      448 DUPTABLE                         R36 K101 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "GRAPH_NODE_PROPS", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "SELECTED_GRAPH_KEY", "UNDO_TRANSACTION"}]
      449 LOADK                            R37 K102 ["NativeGraphContext_GraphPayloadMap"]
      450 SETTABLEKS                       R37 R36 K92 ["GRAPH_PAYLOAD_MAP"]
      452 LOADK                            R37 K103 ["NativeGraphContext_GraphRenderInfo"]
      453 SETTABLEKS                       R37 R36 K93 ["GRAPH_RENDER_INFO"]
      455 LOADK                            R37 K104 ["NativeGraphContext_GraphNodeProps"]
      456 SETTABLEKS                       R37 R36 K94 ["GRAPH_NODE_PROPS"]
      458 LOADK                            R37 K105 ["NativeGraphContext_TimeRange"]
      459 SETTABLEKS                       R37 R36 K95 ["TIME_RANGE"]
      461 LOADK                            R37 K106 ["NativeGraphContext_GraphPayloadGraphRect"]
      462 SETTABLEKS                       R37 R36 K96 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      464 LOADK                            R37 K107 ["NativeGraphContext_CurrentAnimationId"]
      465 SETTABLEKS                       R37 R36 K97 ["CURRENT_ANIMATION_ID"]
      467 LOADK                            R37 K108 ["NativeGraphContext_SourceAssetId"]
      468 SETTABLEKS                       R37 R36 K98 ["SOURCE_ASSET_ID"]
      470 LOADK                            R37 K109 ["NativeGraphContext_SelectedGraphKey"]
      471 SETTABLEKS                       R37 R36 K99 ["SELECTED_GRAPH_KEY"]
      473 LOADK                            R37 K110 ["NativeGraphContext_UndoTransaction"]
      474 SETTABLEKS                       R37 R36 K100 ["UNDO_TRANSACTION"]
      476 DUPTABLE                         R37 K135 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "CREATE_EXISTING_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SET_PARAMETER_NODE_TYPE", "SELECT_ALL_PARAMETER_NODES_WITH_NAME", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      477 LOADK                            R38 K136 ["NativeGraphContext_CreateNode"]
      478 SETTABLEKS                       R38 R37 K111 ["CREATE_NODE"]
      480 LOADK                            R38 K137 ["NativeGraphContext_CreateParameterAsync"]
      481 SETTABLEKS                       R38 R37 K112 ["CREATE_PARAMETER"]
      483 LOADK                            R38 K138 ["NativeGraphContext_CreateConnectedParameterAsync"]
      484 SETTABLEKS                       R38 R37 K113 ["CREATE_CONNECTED_PARAMETER"]
      486 LOADK                            R38 K139 ["NativeGraphContext_CreateExistingParameterAsync"]
      487 SETTABLEKS                       R38 R37 K114 ["CREATE_EXISTING_PARAMETER"]
      489 LOADK                            R38 K140 ["NativeGraphContext_GetSelectedGraphInstance"]
      490 SETTABLEKS                       R38 R37 K115 ["GET_SELECTED_GRAPH_INSTANCE"]
      492 LOADK                            R38 K141 ["NativeGraphContext_SetNodeConnectionAsync"]
      493 SETTABLEKS                       R38 R37 K116 ["SET_NODE_CONNECTION"]
      495 LOADK                            R38 K142 ["NativeGraphContext_setNodePropertyAsync"]
      496 SETTABLEKS                       R38 R37 K117 ["SET_NODE_PROPERTY"]
      498 LOADK                            R38 K143 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      499 SETTABLEKS                       R38 R37 K118 ["SET_INPUT_PIN_NODE_PROPERTY"]
      501 LOADK                            R38 K144 ["NativeGraphContext_ReorderPinsAsync"]
      502 SETTABLEKS                       R38 R37 K119 ["REORDER_PINS"]
      504 LOADK                            R38 K145 ["NativeGraphContext_RemoveNodeInputConnection"]
      505 SETTABLEKS                       R38 R37 K120 ["REMOVE_NODE_INPUT_CONNECTION"]
      507 LOADK                            R38 K146 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      508 SETTABLEKS                       R38 R37 K121 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      510 LOADK                            R38 K147 ["NativeGraphContext_RemoveParameterAsync"]
      511 SETTABLEKS                       R38 R37 K122 ["REMOVE_PARAMETER"]
      513 LOADK                            R38 K148 ["NativeGraphContext_RenameNodeAsync"]
      514 SETTABLEKS                       R38 R37 K123 ["RENAME_NODE"]
      516 LOADK                            R38 K149 ["NativeGraphContext_RenameParameterAsync"]
      517 SETTABLEKS                       R38 R37 K124 ["RENAME_PARAMETER"]
      519 LOADK                            R38 K150 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      520 SETTABLEKS                       R38 R37 K125 ["DELETE_NODE_INSTANCE"]
      522 LOADK                            R38 K151 ["NativeGraphContext_SetNodeSizeAsync"]
      523 SETTABLEKS                       R38 R37 K126 ["SET_NODE_SIZE"]
      525 LOADK                            R38 K152 ["NativeGraphContext_SetCollapsedAsync"]
      526 SETTABLEKS                       R38 R37 K127 ["SET_COLLAPSED"]
      528 LOADK                            R38 K153 ["NativeGraphContext_SetNodePositionsAsync"]
      529 SETTABLEKS                       R38 R37 K128 ["SET_NODE_POSITIONS"]
      531 LOADK                            R38 K154 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      532 SETTABLEKS                       R38 R37 K129 ["SET_PARAMETER_NODE_TYPE"]
      534 LOADK                            R38 K155 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      535 SETTABLEKS                       R38 R37 K130 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      537 LOADK                            R38 K156 ["NativeGraphContext_SelectNodes"]
      538 SETTABLEKS                       R38 R37 K131 ["SELECT_NODES"]
      540 LOADK                            R38 K157 ["NativeGraphContext_SelectNodesFromRect"]
      541 SETTABLEKS                       R38 R37 K132 ["SELECT_NODES_FROM_RECT"]
      543 LOADK                            R38 K158 ["NativeGraphContext_beginUndoTransaction"]
      544 SETTABLEKS                       R38 R37 K133 ["BEGIN_UNDO_TRANSACTION"]
      546 LOADK                            R38 K159 ["NativeGraphContext_finishUndoTransaction"]
      547 SETTABLEKS                       R38 R37 K134 ["FINISH_UNDO_TRANSACTION"]
      549 GETTABLEKS                       R38 R10 K160 ["createBoundAction"]
      551 LOADK                            R39 K161 ["NativeGraphContext_createNode"]
      552 CALL                             R38 1 1
      553 GETTABLEKS                       R39 R10 K160 ["createBoundAction"]
      555 LOADK                            R40 K162 ["NativeGraphContext_removeNodes"]
      556 CALL                             R39 1 1
      557 DUPCLOSURE                       R40 K163 [PROTO_1]
      558 CAPTURE                          VAL R14
      559 DUPCLOSURE                       R41 K164 [PROTO_56]
      560 CAPTURE                          VAL R33
      561 CAPTURE                          VAL R14
      562 CAPTURE                          VAL R17
      563 CAPTURE                          VAL R24
      564 CAPTURE                          VAL R16
      565 CAPTURE                          VAL R31
      566 CAPTURE                          VAL R8
      567 CAPTURE                          VAL R29
      568 CAPTURE                          VAL R7
      569 CAPTURE                          VAL R9
      570 CAPTURE                          VAL R15
      571 CAPTURE                          VAL R19
      572 CAPTURE                          VAL R2
      573 CAPTURE                          VAL R22
      574 CAPTURE                          VAL R20
      575 CAPTURE                          VAL R1
      576 CAPTURE                          VAL R25
      577 CAPTURE                          VAL R28
      578 CAPTURE                          VAL R3
      579 CAPTURE                          VAL R38
      580 CAPTURE                          VAL R39
      581 CAPTURE                          VAL R5
      582 CAPTURE                          VAL R23
      583 CAPTURE                          VAL R30
      584 CAPTURE                          VAL R32
      585 CAPTURE                          VAL R26
      586 CAPTURE                          VAL R27
      587 CAPTURE                          VAL R40
      588 CAPTURE                          VAL R18
      589 CAPTURE                          VAL R13
      590 CAPTURE                          VAL R10
      591 CAPTURE                          VAL R36
      592 CAPTURE                          VAL R37
      593 CAPTURE                          VAL R35
      594 CAPTURE                          VAL R21
      595 CAPTURE                          VAL R4
      596 DUPCLOSURE                       R42 K165 [PROTO_70]
      597 CAPTURE                          VAL R33
      598 CAPTURE                          VAL R24
      599 CAPTURE                          VAL R14
      600 CAPTURE                          VAL R19
      601 CAPTURE                          VAL R10
      602 CAPTURE                          VAL R36
      603 CAPTURE                          VAL R22
      604 CAPTURE                          VAL R18
      605 CAPTURE                          VAL R40
      606 CAPTURE                          VAL R20
      607 CAPTURE                          VAL R37
      608 CAPTURE                          VAL R6
      609 CAPTURE                          VAL R38
      610 CAPTURE                          VAL R39
      611 CAPTURE                          VAL R35
      612 CAPTURE                          VAL R15
      613 CAPTURE                          VAL R11
      614 CAPTURE                          VAL R21
      615 DUPCLOSURE                       R43 K166 [PROTO_74]
      616 CAPTURE                          VAL R14
      617 CAPTURE                          VAL R22
      618 DUPTABLE                         R44 K171 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider"}]
      619 SETTABLEKS                       R35 R44 K167 ["Context"]
      621 SETTABLEKS                       R41 R44 K168 ["EditableDataModelProvider"]
      623 SETTABLEKS                       R43 R44 K169 ["PreviewDataModelProvider"]
      625 SETTABLEKS                       R42 R44 K170 ["UIDataModelProvider"]
      627 RETURN                           R44 1
