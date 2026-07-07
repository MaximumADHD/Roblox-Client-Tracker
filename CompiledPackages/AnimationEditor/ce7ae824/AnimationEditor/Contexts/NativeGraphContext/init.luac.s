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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["observeSelectedGraphInstance"]
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 0
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K1 ["createEffect"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R1
       20 CAPTURE                          UPVAL U5
       21 CALL                             R2 1 -1
       22 CLOSEUPVALS                      R1
       23 RETURN                           R2 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+13]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETIMPORT                        R3 K2 [table.clone]
        8 GETUPVAL                         R4 1
        9 NAMECALL                         R4 R4 K3 ["Get"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 1
       13 MOVE                             R2 R3
       14 JUMP                             ; [+12]
       15 NEWTABLE                         R2 0 0
       17 JUMP                             ; [+9]
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R3 1
       20 NAMECALL                         R3 R3 K3 ["Get"]
       22 CALL                             R3 1 1
       23 MOVE                             R2 R3
       24 JUMP                             ; [+2]
       25 NEWTABLE                         R2 0 0
       27 MOVE                             R3 R0
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 GETUPVAL                         R8 2
       32 MOVE                             R10 R6
       33 NAMECALL                         R8 R8 K4 ["idToInstance"]
       35 CALL                             R8 2 1
       36 JUMPIFNOT                        R8 ; [+7]
       37 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       39 MOVE                             R10 R2
       40 MOVE                             R11 R8
       41 GETIMPORT                        R9 K6 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R3 2 ; [-14]
       46 GETUPVAL                         R3 1
       47 MOVE                             R5 R2
       48 NAMECALL                         R3 R3 K7 ["Set"]
       50 CALL                             R3 2 0
       51 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Get"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+10]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETIMPORT                        R4 K3 [table.clone]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 MOVE                             R3 R4
       19 JUMP                             ; [+8]
       20 NEWTABLE                         R3 0 0
       22 JUMP                             ; [+5]
       23 JUMPIFNOT                        R1 ; [+2]
       24 MOVE                             R3 R2
       25 JUMP                             ; [+2]
       26 NEWTABLE                         R3 0 0
       28 NEWTABLE                         R4 0 0
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K4 ["lookup"]
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 FORGPREP                         R5
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K5 ["get"]
       39 GETTABLEKS                       R11 R9 K6 ["id"]
       41 CALL                             R10 1 1
       42 JUMPIFEQKNIL                     R10 ; [+45]
       44 GETTABLEKS                       R11 R10 K7 ["position"]
       46 GETTABLEKS                       R12 R10 K8 ["size"]
       48 GETTABLEKS                       R13 R11 K9 ["X"]
       50 GETTABLEKS                       R14 R0 K10 ["Max"]
       52 GETTABLEKS                       R14 R14 K9 ["X"]
       54 JUMPIFLT                         R14 R13 ; [+33]
       56 GETTABLEKS                       R14 R11 K9 ["X"]
       58 GETTABLEKS                       R15 R12 K9 ["X"]
       60 ADD                              R13 R14 R15
       61 GETTABLEKS                       R14 R0 K11 ["Min"]
       63 GETTABLEKS                       R14 R14 K9 ["X"]
       65 JUMPIFLT                         R13 R14 ; [+22]
       67 GETTABLEKS                       R13 R11 K12 ["Y"]
       69 GETTABLEKS                       R14 R0 K11 ["Min"]
       71 GETTABLEKS                       R14 R14 K12 ["Y"]
       73 JUMPIFLT                         R13 R14 ; [+14]
       75 GETTABLEKS                       R14 R11 K12 ["Y"]
       77 GETTABLEKS                       R15 R12 K12 ["Y"]
       79 SUB                              R13 R14 R15
       80 GETTABLEKS                       R14 R0 K10 ["Max"]
       82 GETTABLEKS                       R14 R14 K12 ["Y"]
       84 JUMPIFLT                         R14 R13 ; [+3]
       86 LOADB                            R13 1
       87 SETTABLE                         R13 R4 R8
       88 FORGLOOP                         R5 2 ; [-53]
       90 MOVE                             R5 R4
       91 LOADNIL                          R6
       92 LOADNIL                          R7
       93 FORGPREP                         R5
       94 GETUPVAL                         R10 4
       95 MOVE                             R12 R8
       96 NAMECALL                         R10 R10 K13 ["idToInstance"]
       98 CALL                             R10 2 1
       99 JUMPIFNOT                        R10 ; [+13]
      100 GETIMPORT                        R11 K15 [table.find]
      102 MOVE                             R12 R3
      103 MOVE                             R13 R10
      104 CALL                             R11 2 1
      105 JUMPIF                           R11 ; [+7]
      106 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      108 MOVE                             R12 R3
      109 MOVE                             R13 R10
      110 GETIMPORT                        R11 K17 [table.insert]
      112 CALL                             R11 2 0
      113 FORGLOOP                         R5 2 ; [-20]
      115 GETUPVAL                         R5 0
      116 MOVE                             R7 R3
      117 NAMECALL                         R5 R5 K18 ["Set"]
      119 CALL                             R5 2 0
      120 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
      205 NEWTABLE                         R10 0 1
      207 MOVE                             R11 R6
      208 SETLIST                          R10 R11 1 [1]
      210 NAMECALL                         R8 R8 K38 ["Set"]
      212 CALL                             R8 2 0
      213 JUMPIFNOT                        R5 ; [+7]
      214 GETUPVAL                         R8 5
      215 MOVE                             R10 R5
      216 GETIMPORT                        R11 K41 [Enum.FinishRecordingOperation.Commit]
      218 NAMECALL                         R8 R8 K42 ["FinishRecording"]
      220 CALL                             R8 3 0
      221 RETURN                           R7 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["Remove nodes"]
        6 NAMECALL                         R1 R1 K2 ["TryBeginRecording"]
        8 CALL                             R1 2 1
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADNIL                          R7
       14 SETTABLEKS                       R7 R6 K3 ["Parent"]
       16 FORGLOOP                         R2 2 ; [-4]
       18 JUMPIFEQKNIL                     R1 ; [+8]
       20 GETUPVAL                         R2 1
       21 MOVE                             R4 R1
       22 GETIMPORT                        R5 K7 [Enum.FinishRecordingOperation.Commit]
       24 NAMECALL                         R2 R2 K8 ["FinishRecording"]
       26 CALL                             R2 3 0
       27 GETUPVAL                         R2 2
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+6]
       30 GETUPVAL                         R2 0
       31 NEWTABLE                         R4 0 0
       33 NAMECALL                         R2 R2 K9 ["Set"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

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

PROTO_32:
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
       13 GETUPVAL                         R1 2
       14 LOADK                            R3 K3 ["Cut nodes"]
       15 NAMECALL                         R1 R1 K4 ["TryBeginRecording"]
       17 CALL                             R1 2 1
       18 MOVE                             R2 R0
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 LOADNIL                          R7
       23 SETTABLEKS                       R7 R6 K5 ["Parent"]
       25 FORGLOOP                         R2 2 ; [-4]
       27 JUMPIFEQKNIL                     R1 ; [+8]
       29 GETUPVAL                         R2 2
       30 MOVE                             R4 R1
       31 GETIMPORT                        R5 K9 [Enum.FinishRecordingOperation.Commit]
       33 NAMECALL                         R2 R2 K10 ["FinishRecording"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R2 0
       37 NEWTABLE                         R4 0 0
       39 NAMECALL                         R2 R2 K11 ["Set"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_50:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_51:
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
       53 DUPCLOSURE                       R7 K14 [PROTO_50]
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_60:
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

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_63:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_66:
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
       27 GETUPVAL                         R8 5
       28 CALL                             R8 0 1
       29 JUMPIFNOT                        R8 ; [+3]
       30 GETTABLEKS                       R7 R4 K2 ["nodeSelection"]
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R7 R5 K3 ["selectionService"]
       35 GETUPVAL                         R9 6
       36 CALL                             R9 0 1
       37 JUMPIFNOT                        R9 ; [+8]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K0 ["useContext"]
       41 GETUPVAL                         R9 7
       42 GETTABLEKS                       R9 R9 K1 ["Context"]
       44 CALL                             R8 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K4 ["useState"]
       50 GETIMPORT                        R10 K7 [Rect.new]
       52 LOADN                            R11 0
       53 LOADN                            R12 0
       54 LOADN                            R13 0
       55 LOADN                            R14 0
       56 CALL                             R10 4 -1
       57 CALL                             R9 -1 2
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K8 ["useRef"]
       61 LOADNIL                          R12
       62 CALL                             R11 1 1
       63 GETUPVAL                         R12 8
       64 CALL                             R12 0 1
       65 GETUPVAL                         R13 9
       66 CALL                             R13 0 1
       67 GETUPVAL                         R15 5
       68 CALL                             R15 0 1
       69 JUMPIFNOT                        R15 ; [+2]
       70 MOVE                             R14 R13
       71 JUMP                             ; [+1]
       72 MOVE                             R14 R12
       73 GETUPVAL                         R15 1
       74 GETTABLEKS                       R15 R15 K9 ["useMemo"]
       76 NEWCLOSURE                       R16 P0
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          VAL R14
       79 NEWTABLE                         R17 0 1
       81 MOVE                             R18 R14
       82 SETLIST                          R17 R18 1 [1]
       84 CALL                             R15 2 1
       85 GETUPVAL                         R16 11
       86 CALL                             R16 0 0
       87 GETUPVAL                         R16 1
       88 GETTABLEKS                       R16 R16 K10 ["useEffect"]
       90 NEWCLOSURE                       R17 P1
       91 CAPTURE                          VAL R15
       92 NEWTABLE                         R18 0 1
       94 MOVE                             R19 R15
       95 SETLIST                          R18 R19 1 [1]
       97 CALL                             R16 2 0
       98 GETUPVAL                         R16 1
       99 GETTABLEKS                       R16 R16 K0 ["useContext"]
      101 GETUPVAL                         R17 12
      102 GETTABLEKS                       R17 R17 K1 ["Context"]
      104 CALL                             R16 1 1
      105 GETTABLEKS                       R16 R16 K11 ["instanceRegistry"]
      107 GETUPVAL                         R18 6
      108 CALL                             R18 0 1
      109 JUMPIFNOT                        R18 ; [+2]
      110 LOADNIL                          R17
      111 JUMP                             ; [+12]
      112 GETUPVAL                         R17 1
      113 GETTABLEKS                       R17 R17 K9 ["useMemo"]
      115 NEWCLOSURE                       R18 P2
      116 CAPTURE                          UPVAL U13
      117 CAPTURE                          VAL R12
      118 NEWTABLE                         R19 0 1
      120 MOVE                             R20 R12
      121 SETLIST                          R19 R20 1 [1]
      123 CALL                             R17 2 1
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R18 R18 K10 ["useEffect"]
      127 NEWCLOSURE                       R19 P3
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R17
      132 CAPTURE                          UPVAL U14
      133 CAPTURE                          VAL R7
      134 NEWTABLE                         R20 0 2
      136 MOVE                             R21 R7
      137 GETUPVAL                         R23 6
      138 CALL                             R23 0 1
      139 JUMPIFNOT                        R23 ; [+3]
      140 GETTABLEKS                       R22 R8 K12 ["observeSelectedGraphInstance"]
      142 JUMP                             ; [+1]
      143 MOVE                             R22 R17
      144 SETLIST                          R20 R21 2 [1]
      146 CALL                             R18 2 0
      147 GETUPVAL                         R18 1
      148 GETTABLEKS                       R18 R18 K9 ["useMemo"]
      150 NEWCLOSURE                       R19 P4
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R15
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R17
      157 NEWTABLE                         R20 0 3
      159 MOVE                             R21 R16
      160 MOVE                             R22 R15
      161 GETUPVAL                         R24 6
      162 CALL                             R24 0 1
      163 JUMPIFNOT                        R24 ; [+3]
      164 GETTABLEKS                       R23 R8 K12 ["observeSelectedGraphInstance"]
      166 JUMP                             ; [+1]
      167 MOVE                             R23 R17
      168 SETLIST                          R20 R21 3 [1]
      170 CALL                             R18 2 1
      171 GETUPVAL                         R19 1
      172 GETTABLEKS                       R19 R19 K4 ["useState"]
      174 LOADNIL                          R20
      175 CALL                             R19 1 2
      176 GETUPVAL                         R21 1
      177 GETTABLEKS                       R21 R21 K4 ["useState"]
      179 NEWTABLE                         R22 0 0
      181 CALL                             R21 1 2
      182 GETUPVAL                         R23 1
      183 GETTABLEKS                       R23 R23 K4 ["useState"]
      185 NEWTABLE                         R24 0 0
      187 CALL                             R23 1 2
      188 GETUPVAL                         R25 15
      189 GETTABLEKS                       R25 R25 K13 ["useRefToState"]
      191 MOVE                             R26 R19
      192 CALL                             R25 1 1
      193 GETUPVAL                         R26 1
      194 GETTABLEKS                       R26 R26 K10 ["useEffect"]
      196 NEWCLOSURE                       R27 P5
      197 CAPTURE                          UPVAL U14
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R10
      201 CAPTURE                          UPVAL U13
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R1
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R3
      208 NEWTABLE                         R28 0 6
      210 MOVE                             R29 R18
      211 GETTABLEKS                       R30 R0 K14 ["testOverrideGraphPayloadMap"]
      213 MOVE                             R31 R20
      214 MOVE                             R32 R10
      215 GETTABLEKS                       R33 R1 K15 ["setMap"]
      217 GETTABLEKS                       R34 R2 K15 ["setMap"]
      219 SETLIST                          R28 R29 6 [1]
      221 CALL                             R26 2 0
      222 GETUPVAL                         R26 1
      223 GETTABLEKS                       R26 R26 K16 ["useCallback"]
      225 NEWCLOSURE                       R27 P6
      226 CAPTURE                          VAL R16
      227 CAPTURE                          UPVAL U13
      228 NEWTABLE                         R28 0 1
      230 MOVE                             R29 R16
      231 SETLIST                          R28 R29 1 [1]
      233 CALL                             R26 2 1
      234 GETUPVAL                         R27 1
      235 GETTABLEKS                       R27 R27 K16 ["useCallback"]
      237 NEWCLOSURE                       R28 P7
      238 CAPTURE                          VAL R16
      239 CAPTURE                          UPVAL U13
      240 NEWTABLE                         R29 0 1
      242 MOVE                             R30 R16
      243 SETLIST                          R29 R30 1 [1]
      245 CALL                             R27 2 1
      246 GETUPVAL                         R28 1
      247 GETTABLEKS                       R28 R28 K16 ["useCallback"]
      249 NEWCLOSURE                       R29 P8
      250 CAPTURE                          UPVAL U16
      251 CAPTURE                          VAL R16
      252 CAPTURE                          UPVAL U13
      253 NEWTABLE                         R30 0 1
      255 MOVE                             R31 R16
      256 SETLIST                          R30 R31 1 [1]
      258 CALL                             R28 2 1
      259 GETUPVAL                         R29 1
      260 GETTABLEKS                       R29 R29 K16 ["useCallback"]
      262 NEWCLOSURE                       R30 P9
      263 CAPTURE                          VAL R16
      264 CAPTURE                          UPVAL U13
      265 NEWTABLE                         R31 0 1
      267 MOVE                             R32 R16
      268 SETLIST                          R31 R32 1 [1]
      270 CALL                             R29 2 1
      271 GETUPVAL                         R30 1
      272 GETTABLEKS                       R30 R30 K16 ["useCallback"]
      274 NEWCLOSURE                       R31 P10
      275 CAPTURE                          UPVAL U5
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R16
      278 NEWTABLE                         R32 0 3
      280 MOVE                             R33 R16
      281 MOVE                             R34 R7
      282 MOVE                             R35 R15
      283 SETLIST                          R32 R33 3 [1]
      285 CALL                             R30 2 1
      286 GETUPVAL                         R31 1
      287 GETTABLEKS                       R31 R31 K16 ["useCallback"]
      289 NEWCLOSURE                       R32 P11
      290 CAPTURE                          VAL R7
      291 CAPTURE                          VAL R19
      292 CAPTURE                          UPVAL U5
      293 CAPTURE                          VAL R2
      294 CAPTURE                          VAL R16
      295 NEWTABLE                         R33 0 4
      297 GETTABLEKS                       R34 R2 K17 ["get"]
      299 MOVE                             R35 R7
      300 MOVE                             R36 R16
      301 MOVE                             R37 R19
      302 SETLIST                          R33 R34 4 [1]
      304 CALL                             R31 2 1
      305 GETUPVAL                         R32 1
      306 GETTABLEKS                       R32 R32 K4 ["useState"]
      308 LOADK                            R33 K18 [""]
      309 CALL                             R32 1 2
      310 GETUPVAL                         R34 1
      311 GETTABLEKS                       R34 R34 K4 ["useState"]
      313 LOADNIL                          R35
      314 CALL                             R34 1 2
      315 GETUPVAL                         R37 17
      316 CALL                             R37 0 1
      317 JUMPIFNOT                        R37 ; [+16]
      318 GETUPVAL                         R37 6
      319 CALL                             R37 0 1
      320 JUMPIFNOT                        R37 ; [+7]
      321 GETUPVAL                         R36 18
      322 GETTABLEKS                       R36 R36 K19 ["useSignalState"]
      324 GETTABLEKS                       R37 R8 K12 ["observeSelectedGraphInstance"]
      326 CALL                             R36 1 1
      327 JUMP                             ; [+7]
      328 GETUPVAL                         R36 18
      329 GETTABLEKS                       R36 R36 K19 ["useSignalState"]
      331 MOVE                             R37 R17
      332 CALL                             R36 1 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R36
      335 GETUPVAL                         R38 17
      336 CALL                             R38 0 1
      337 JUMPIFNOT                        R38 ; [+12]
      338 GETUPVAL                         R37 1
      339 GETTABLEKS                       R37 R37 K9 ["useMemo"]
      341 NEWCLOSURE                       R38 P12
      342 CAPTURE                          VAL R36
      343 NEWTABLE                         R39 0 1
      345 MOVE                             R40 R36
      346 SETLIST                          R39 R40 1 [1]
      348 CALL                             R37 2 1
      349 JUMP                             ; [+1]
      350 LOADNIL                          R37
      351 GETUPVAL                         R39 6
      352 CALL                             R39 0 1
      353 JUMPIFNOT                        R39 ; [+7]
      354 GETUPVAL                         R38 18
      355 GETTABLEKS                       R38 R38 K19 ["useSignalState"]
      357 GETTABLEKS                       R39 R8 K12 ["observeSelectedGraphInstance"]
      359 CALL                             R38 1 1
      360 JUMP                             ; [+5]
      361 GETUPVAL                         R38 18
      362 GETTABLEKS                       R38 R38 K19 ["useSignalState"]
      364 MOVE                             R39 R17
      365 CALL                             R38 1 1
      366 GETUPVAL                         R39 1
      367 GETTABLEKS                       R39 R39 K10 ["useEffect"]
      369 NEWCLOSURE                       R40 P13
      370 CAPTURE                          VAL R38
      371 CAPTURE                          UPVAL U17
      372 CAPTURE                          VAL R33
      373 CAPTURE                          VAL R35
      374 CAPTURE                          UPVAL U19
      375 NEWTABLE                         R41 0 1
      377 MOVE                             R42 R38
      378 SETLIST                          R41 R42 1 [1]
      380 CALL                             R39 2 0
      381 GETUPVAL                         R39 17
      382 CALL                             R39 0 1
      383 JUMPIF                           R39 ; [+13]
      384 GETUPVAL                         R39 1
      385 GETTABLEKS                       R39 R39 K10 ["useEffect"]
      387 NEWCLOSURE                       R40 P14
      388 CAPTURE                          VAL R32
      389 CAPTURE                          VAL R38
      390 NEWTABLE                         R41 0 2
      392 MOVE                             R42 R32
      393 MOVE                             R43 R38
      394 SETLIST                          R41 R42 2 [1]
      396 CALL                             R39 2 0
      397 GETUPVAL                         R38 1
      398 GETTABLEKS                       R38 R38 K16 ["useCallback"]
      400 NEWCLOSURE                       R39 P15
      401 CAPTURE                          UPVAL U6
      402 CAPTURE                          VAL R8
      403 CAPTURE                          VAL R17
      404 CAPTURE                          VAL R19
      405 CAPTURE                          UPVAL U20
      406 CAPTURE                          UPVAL U16
      407 CAPTURE                          UPVAL U13
      408 CAPTURE                          UPVAL U21
      409 CAPTURE                          VAL R2
      410 CAPTURE                          VAL R16
      411 CAPTURE                          UPVAL U22
      412 CAPTURE                          UPVAL U23
      413 CAPTURE                          VAL R7
      414 NEWTABLE                         R40 0 5
      416 MOVE                             R41 R7
      417 GETUPVAL                         R43 6
      418 CALL                             R43 0 1
      419 JUMPIFNOT                        R43 ; [+3]
      420 GETTABLEKS                       R42 R8 K12 ["observeSelectedGraphInstance"]
      422 JUMP                             ; [+1]
      423 MOVE                             R42 R17
      424 MOVE                             R43 R19
      425 MOVE                             R44 R16
      426 MOVE                             R45 R2
      427 SETLIST                          R40 R41 5 [1]
      429 CALL                             R38 2 1
      430 GETUPVAL                         R39 24
      431 GETTABLEKS                       R39 R39 K20 ["useProducer"]
      433 GETUPVAL                         R40 1
      434 GETTABLEKS                       R40 R40 K16 ["useCallback"]
      436 NEWCLOSURE                       R41 P16
      437 CAPTURE                          VAL R38
      438 NEWTABLE                         R42 0 1
      440 MOVE                             R43 R38
      441 SETLIST                          R42 R43 1 [1]
      443 CALL                             R40 2 -1
      444 CALL                             R39 -1 0
      445 GETUPVAL                         R39 1
      446 GETTABLEKS                       R39 R39 K16 ["useCallback"]
      448 NEWCLOSURE                       R40 P17
      449 CAPTURE                          VAL R7
      450 CAPTURE                          UPVAL U16
      451 CAPTURE                          UPVAL U5
      452 NEWTABLE                         R41 0 1
      454 MOVE                             R42 R7
      455 SETLIST                          R41 R42 1 [1]
      457 CALL                             R39 2 1
      458 GETUPVAL                         R40 25
      459 GETTABLEKS                       R40 R40 K20 ["useProducer"]
      461 MOVE                             R41 R39
      462 CALL                             R40 1 0
      463 GETUPVAL                         R40 1
      464 GETTABLEKS                       R40 R40 K16 ["useCallback"]
      466 NEWCLOSURE                       R41 P18
      467 CAPTURE                          UPVAL U6
      468 CAPTURE                          VAL R8
      469 CAPTURE                          VAL R17
      470 CAPTURE                          VAL R7
      471 CAPTURE                          UPVAL U16
      472 CAPTURE                          UPVAL U13
      473 NEWTABLE                         R42 0 2
      475 MOVE                             R43 R7
      476 GETUPVAL                         R45 6
      477 CALL                             R45 0 1
      478 JUMPIFNOT                        R45 ; [+3]
      479 GETTABLEKS                       R44 R8 K12 ["observeSelectedGraphInstance"]
      481 JUMP                             ; [+1]
      482 MOVE                             R44 R17
      483 SETLIST                          R42 R43 2 [1]
      485 CALL                             R40 2 1
      486 GETUPVAL                         R41 26
      487 GETTABLEKS                       R41 R41 K21 ["useBoundAction"]
      489 LOADK                            R42 K22 ["NativeGraphContext_DuplicateSelectedNodes"]
      490 MOVE                             R43 R40
      491 CALL                             R41 2 0
      492 GETUPVAL                         R41 1
      493 GETTABLEKS                       R41 R41 K16 ["useCallback"]
      495 NEWCLOSURE                       R42 P19
      496 CAPTURE                          VAL R7
      497 NEWTABLE                         R43 0 1
      499 MOVE                             R44 R7
      500 SETLIST                          R43 R44 1 [1]
      502 CALL                             R41 2 1
      503 GETUPVAL                         R42 26
      504 GETTABLEKS                       R42 R42 K21 ["useBoundAction"]
      506 LOADK                            R43 K23 ["NativeGraphContext_ClearNodeSelection"]
      507 MOVE                             R44 R41
      508 CALL                             R42 2 0
      509 GETUPVAL                         R42 1
      510 GETTABLEKS                       R42 R42 K16 ["useCallback"]
      512 NEWCLOSURE                       R43 P20
      513 CAPTURE                          UPVAL U6
      514 CAPTURE                          VAL R8
      515 CAPTURE                          VAL R17
      516 CAPTURE                          VAL R7
      517 NEWTABLE                         R44 0 2
      519 MOVE                             R45 R7
      520 GETUPVAL                         R47 6
      521 CALL                             R47 0 1
      522 JUMPIFNOT                        R47 ; [+3]
      523 GETTABLEKS                       R46 R8 K12 ["observeSelectedGraphInstance"]
      525 JUMP                             ; [+1]
      526 MOVE                             R46 R17
      527 SETLIST                          R44 R45 2 [1]
      529 CALL                             R42 2 1
      530 GETUPVAL                         R43 26
      531 GETTABLEKS                       R43 R43 K21 ["useBoundAction"]
      533 LOADK                            R44 K24 ["NativeGraphContext_SelectAllNodes"]
      534 MOVE                             R45 R42
      535 CALL                             R43 2 0
      536 GETUPVAL                         R43 1
      537 GETTABLEKS                       R43 R43 K16 ["useCallback"]
      539 NEWCLOSURE                       R44 P21
      540 CAPTURE                          VAL R7
      541 CAPTURE                          VAL R6
      542 NEWTABLE                         R45 0 2
      544 MOVE                             R46 R7
      545 MOVE                             R47 R6
      546 SETLIST                          R45 R46 2 [1]
      548 CALL                             R43 2 1
      549 GETUPVAL                         R44 26
      550 GETTABLEKS                       R44 R44 K21 ["useBoundAction"]
      552 LOADK                            R45 K25 ["NativeGraphContext_CopySelectedNodes"]
      553 MOVE                             R46 R43
      554 CALL                             R44 2 0
      555 GETUPVAL                         R44 1
      556 GETTABLEKS                       R44 R44 K16 ["useCallback"]
      558 NEWCLOSURE                       R45 P22
      559 CAPTURE                          VAL R7
      560 CAPTURE                          VAL R6
      561 CAPTURE                          UPVAL U16
      562 NEWTABLE                         R46 0 2
      564 MOVE                             R47 R7
      565 MOVE                             R48 R6
      566 SETLIST                          R46 R47 2 [1]
      568 CALL                             R44 2 1
      569 GETUPVAL                         R45 26
      570 GETTABLEKS                       R45 R45 K21 ["useBoundAction"]
      572 LOADK                            R46 K26 ["NativeGraphContext_CutSelectedNodes"]
      573 MOVE                             R47 R44
      574 CALL                             R45 2 0
      575 GETUPVAL                         R45 1
      576 GETTABLEKS                       R45 R45 K16 ["useCallback"]
      578 NEWCLOSURE                       R46 P23
      579 CAPTURE                          UPVAL U6
      580 CAPTURE                          VAL R8
      581 CAPTURE                          VAL R17
      582 CAPTURE                          VAL R6
      583 CAPTURE                          UPVAL U16
      584 CAPTURE                          UPVAL U13
      585 CAPTURE                          VAL R7
      586 NEWTABLE                         R47 0 3
      588 MOVE                             R48 R7
      589 MOVE                             R49 R6
      590 GETUPVAL                         R51 6
      591 CALL                             R51 0 1
      592 JUMPIFNOT                        R51 ; [+3]
      593 GETTABLEKS                       R50 R8 K12 ["observeSelectedGraphInstance"]
      595 JUMP                             ; [+1]
      596 MOVE                             R50 R17
      597 SETLIST                          R47 R48 3 [1]
      599 CALL                             R45 2 1
      600 GETUPVAL                         R46 26
      601 GETTABLEKS                       R46 R46 K21 ["useBoundAction"]
      603 LOADK                            R47 K27 ["NativeGraphContext_PasteNodes"]
      604 MOVE                             R48 R45
      605 CALL                             R46 2 0
      606 GETUPVAL                         R46 1
      607 GETTABLEKS                       R46 R46 K16 ["useCallback"]
      609 NEWCLOSURE                       R47 P24
      610 CAPTURE                          UPVAL U6
      611 CAPTURE                          VAL R8
      612 CAPTURE                          VAL R17
      613 CAPTURE                          UPVAL U13
      614 CAPTURE                          VAL R7
      615 NEWTABLE                         R48 0 2
      617 GETUPVAL                         R50 6
      618 CALL                             R50 0 1
      619 JUMPIFNOT                        R50 ; [+3]
      620 GETTABLEKS                       R49 R8 K12 ["observeSelectedGraphInstance"]
      622 JUMP                             ; [+1]
      623 MOVE                             R49 R17
      624 MOVE                             R50 R7
      625 SETLIST                          R48 R49 2 [1]
      627 CALL                             R46 2 1
      628 GETUPVAL                         R47 1
      629 GETTABLEKS                       R47 R47 K16 ["useCallback"]
      631 NEWCLOSURE                       R48 P25
      632 CAPTURE                          UPVAL U6
      633 CAPTURE                          VAL R8
      634 CAPTURE                          VAL R17
      635 CAPTURE                          VAL R19
      636 CAPTURE                          UPVAL U16
      637 CAPTURE                          UPVAL U13
      638 CAPTURE                          VAL R16
      639 CAPTURE                          UPVAL U21
      640 CAPTURE                          VAL R2
      641 CAPTURE                          UPVAL U27
      642 CAPTURE                          VAL R7
      643 NEWTABLE                         R49 0 5
      645 MOVE                             R50 R7
      646 GETUPVAL                         R52 6
      647 CALL                             R52 0 1
      648 JUMPIFNOT                        R52 ; [+3]
      649 GETTABLEKS                       R51 R8 K12 ["observeSelectedGraphInstance"]
      651 JUMP                             ; [+1]
      652 MOVE                             R51 R17
      653 MOVE                             R52 R16
      654 MOVE                             R53 R2
      655 MOVE                             R54 R19
      656 SETLIST                          R49 R50 5 [1]
      658 CALL                             R47 2 1
      659 GETUPVAL                         R48 1
      660 GETTABLEKS                       R48 R48 K16 ["useCallback"]
      662 NEWCLOSURE                       R49 P26
      663 CAPTURE                          UPVAL U6
      664 CAPTURE                          VAL R8
      665 CAPTURE                          VAL R17
      666 CAPTURE                          VAL R19
      667 CAPTURE                          UPVAL U13
      668 CAPTURE                          UPVAL U27
      669 CAPTURE                          UPVAL U16
      670 CAPTURE                          VAL R16
      671 CAPTURE                          VAL R47
      672 CAPTURE                          VAL R7
      673 NEWTABLE                         R50 0 5
      675 MOVE                             R51 R7
      676 GETUPVAL                         R53 6
      677 CALL                             R53 0 1
      678 JUMPIFNOT                        R53 ; [+3]
      679 GETTABLEKS                       R52 R8 K12 ["observeSelectedGraphInstance"]
      681 JUMP                             ; [+1]
      682 MOVE                             R52 R17
      683 MOVE                             R53 R16
      684 MOVE                             R54 R19
      685 MOVE                             R55 R47
      686 SETLIST                          R50 R51 5 [1]
      688 CALL                             R48 2 1
      689 GETUPVAL                         R49 1
      690 GETTABLEKS                       R49 R49 K16 ["useCallback"]
      692 NEWCLOSURE                       R50 P27
      693 CAPTURE                          VAL R19
      694 CAPTURE                          UPVAL U16
      695 CAPTURE                          UPVAL U13
      696 CAPTURE                          VAL R16
      697 CAPTURE                          UPVAL U28
      698 NEWTABLE                         R51 0 2
      700 MOVE                             R52 R16
      701 MOVE                             R53 R19
      702 SETLIST                          R51 R52 2 [1]
      704 CALL                             R49 2 1
      705 GETUPVAL                         R50 1
      706 GETTABLEKS                       R50 R50 K16 ["useCallback"]
      708 NEWCLOSURE                       R51 P28
      709 CAPTURE                          VAL R19
      710 CAPTURE                          UPVAL U16
      711 CAPTURE                          UPVAL U13
      712 CAPTURE                          VAL R16
      713 CAPTURE                          UPVAL U28
      714 NEWTABLE                         R52 0 2
      716 MOVE                             R53 R16
      717 MOVE                             R54 R19
      718 SETLIST                          R52 R53 2 [1]
      720 CALL                             R50 2 1
      721 GETUPVAL                         R51 29
      722 MOVE                             R52 R16
      723 GETUPVAL                         R54 6
      724 CALL                             R54 0 1
      725 JUMPIFNOT                        R54 ; [+3]
      726 GETTABLEKS                       R53 R8 K12 ["observeSelectedGraphInstance"]
      728 JUMP                             ; [+1]
      729 MOVE                             R53 R17
      730 CALL                             R51 2 1
      731 GETUPVAL                         R52 30
      732 MOVE                             R53 R16
      733 GETUPVAL                         R55 6
      734 CALL                             R55 0 1
      735 JUMPIFNOT                        R55 ; [+3]
      736 GETTABLEKS                       R54 R8 K12 ["observeSelectedGraphInstance"]
      738 JUMP                             ; [+1]
      739 MOVE                             R54 R17
      740 CALL                             R52 2 1
      741 GETUPVAL                         R53 1
      742 GETTABLEKS                       R53 R53 K16 ["useCallback"]
      744 NEWCLOSURE                       R54 P29
      745 CAPTURE                          VAL R19
      746 CAPTURE                          UPVAL U16
      747 CAPTURE                          UPVAL U13
      748 CAPTURE                          VAL R16
      749 NEWTABLE                         R55 0 2
      751 MOVE                             R56 R16
      752 MOVE                             R57 R19
      753 SETLIST                          R55 R56 2 [1]
      755 CALL                             R53 2 1
      756 GETUPVAL                         R54 1
      757 GETTABLEKS                       R54 R54 K16 ["useCallback"]
      759 NEWCLOSURE                       R55 P30
      760 CAPTURE                          VAL R19
      761 CAPTURE                          UPVAL U16
      762 CAPTURE                          UPVAL U13
      763 CAPTURE                          VAL R16
      764 CAPTURE                          UPVAL U28
      765 CAPTURE                          VAL R51
      766 NEWTABLE                         R56 0 3
      768 MOVE                             R57 R16
      769 MOVE                             R58 R19
      770 GETTABLEKS                       R59 R51 K28 ["setNodeOutputInfoInDestroyMapRef"]
      772 SETLIST                          R56 R57 3 [1]
      774 CALL                             R54 2 1
      775 GETUPVAL                         R55 1
      776 GETTABLEKS                       R55 R55 K16 ["useCallback"]
      778 NEWCLOSURE                       R56 P31
      779 CAPTURE                          UPVAL U6
      780 CAPTURE                          VAL R8
      781 CAPTURE                          VAL R17
      782 CAPTURE                          UPVAL U16
      783 CAPTURE                          VAL R16
      784 CAPTURE                          UPVAL U13
      785 CAPTURE                          VAL R47
      786 CAPTURE                          VAL R48
      787 CAPTURE                          VAL R54
      788 CAPTURE                          UPVAL U28
      789 NEWTABLE                         R57 0 6
      791 GETUPVAL                         R59 6
      792 CALL                             R59 0 1
      793 JUMPIFNOT                        R59 ; [+3]
      794 GETTABLEKS                       R58 R8 K12 ["observeSelectedGraphInstance"]
      796 JUMP                             ; [+1]
      797 MOVE                             R58 R17
      798 MOVE                             R59 R19
      799 MOVE                             R60 R16
      800 MOVE                             R61 R47
      801 MOVE                             R62 R48
      802 MOVE                             R63 R54
      803 SETLIST                          R57 R58 6 [1]
      805 CALL                             R55 2 1
      806 GETUPVAL                         R56 1
      807 GETTABLEKS                       R56 R56 K16 ["useCallback"]
      809 NEWCLOSURE                       R57 P32
      810 CAPTURE                          VAL R11
      811 CAPTURE                          UPVAL U16
      812 NEWTABLE                         R58 0 0
      814 CALL                             R56 2 1
      815 GETUPVAL                         R57 1
      816 GETTABLEKS                       R57 R57 K16 ["useCallback"]
      818 NEWCLOSURE                       R58 P33
      819 CAPTURE                          VAL R11
      820 CAPTURE                          UPVAL U16
      821 NEWTABLE                         R59 0 0
      823 CALL                             R57 2 1
      824 GETUPVAL                         R58 1
      825 GETTABLEKS                       R58 R58 K10 ["useEffect"]
      827 NEWCLOSURE                       R59 P34
      828 CAPTURE                          VAL R11
      829 CAPTURE                          UPVAL U16
      830 NEWTABLE                         R60 0 0
      832 CALL                             R58 2 0
      833 GETUPVAL                         R58 1
      834 GETTABLEKS                       R58 R58 K16 ["useCallback"]
      836 NEWCLOSURE                       R59 P35
      837 CAPTURE                          UPVAL U16
      838 CAPTURE                          VAL R16
      839 CAPTURE                          UPVAL U19
      840 NEWTABLE                         R60 0 1
      842 MOVE                             R61 R16
      843 SETLIST                          R60 R61 1 [1]
      845 CALL                             R58 2 1
      846 GETUPVAL                         R59 1
      847 GETTABLEKS                       R59 R59 K16 ["useCallback"]
      849 NEWCLOSURE                       R60 P36
      850 CAPTURE                          UPVAL U16
      851 CAPTURE                          VAL R16
      852 NEWTABLE                         R61 0 1
      854 MOVE                             R62 R16
      855 SETLIST                          R61 R62 1 [1]
      857 CALL                             R59 2 1
      858 GETUPVAL                         R60 1
      859 GETTABLEKS                       R60 R60 K16 ["useCallback"]
      861 NEWCLOSURE                       R61 P37
      862 CAPTURE                          UPVAL U16
      863 CAPTURE                          VAL R16
      864 CAPTURE                          UPVAL U31
      865 CAPTURE                          UPVAL U13
      866 CAPTURE                          UPVAL U27
      867 CAPTURE                          VAL R1
      868 CAPTURE                          VAL R19
      869 NEWTABLE                         R62 0 3
      871 MOVE                             R63 R16
      872 MOVE                             R64 R19
      873 GETTABLEKS                       R65 R1 K29 ["observe"]
      875 SETLIST                          R62 R63 3 [1]
      877 CALL                             R60 2 1
      878 GETUPVAL                         R61 1
      879 GETTABLEKS                       R61 R61 K16 ["useCallback"]
      881 NEWCLOSURE                       R62 P38
      882 CAPTURE                          UPVAL U16
      883 CAPTURE                          UPVAL U13
      884 CAPTURE                          VAL R16
      885 NEWTABLE                         R63 0 1
      887 MOVE                             R64 R16
      888 SETLIST                          R63 R64 1 [1]
      890 CALL                             R61 2 1
      891 GETUPVAL                         R62 1
      892 GETTABLEKS                       R62 R62 K16 ["useCallback"]
      894 NEWCLOSURE                       R63 P39
      895 CAPTURE                          UPVAL U6
      896 CAPTURE                          VAL R8
      897 CAPTURE                          VAL R17
      898 CAPTURE                          VAL R19
      899 CAPTURE                          VAL R16
      900 CAPTURE                          UPVAL U13
      901 CAPTURE                          UPVAL U16
      902 NEWTABLE                         R64 0 3
      904 MOVE                             R65 R17
      905 MOVE                             R66 R16
      906 MOVE                             R67 R19
      907 SETLIST                          R64 R65 3 [1]
      909 CALL                             R62 2 1
      910 GETUPVAL                         R63 1
      911 GETTABLEKS                       R63 R63 K16 ["useCallback"]
      913 NEWCLOSURE                       R64 P40
      914 CAPTURE                          UPVAL U21
      915 CAPTURE                          UPVAL U32
      916 CAPTURE                          UPVAL U6
      917 CAPTURE                          VAL R8
      918 CAPTURE                          VAL R17
      919 CAPTURE                          VAL R16
      920 CAPTURE                          UPVAL U13
      921 CAPTURE                          UPVAL U16
      922 CAPTURE                          VAL R52
      923 CAPTURE                          UPVAL U27
      924 NEWTABLE                         R65 0 4
      926 MOVE                             R66 R16
      927 MOVE                             R67 R17
      928 MOVE                             R68 R19
      929 GETTABLEKS                       R69 R52 K30 ["parameterDestroyConnectionMapRef"]
      931 SETLIST                          R65 R66 4 [1]
      933 CALL                             R63 2 1
      934 GETUPVAL                         R64 1
      935 GETTABLEKS                       R64 R64 K16 ["useCallback"]
      937 NEWCLOSURE                       R65 P41
      938 CAPTURE                          UPVAL U6
      939 CAPTURE                          VAL R8
      940 CAPTURE                          VAL R17
      941 CAPTURE                          UPVAL U13
      942 CAPTURE                          UPVAL U16
      943 CAPTURE                          UPVAL U27
      944 NEWTABLE                         R66 0 1
      946 GETUPVAL                         R68 6
      947 CALL                             R68 0 1
      948 JUMPIFNOT                        R68 ; [+3]
      949 GETTABLEKS                       R67 R8 K12 ["observeSelectedGraphInstance"]
      951 JUMP                             ; [+1]
      952 MOVE                             R67 R17
      953 SETLIST                          R66 R67 1 [1]
      955 CALL                             R64 2 1
      956 GETUPVAL                         R65 1
      957 GETTABLEKS                       R65 R65 K16 ["useCallback"]
      959 NEWCLOSURE                       R66 P42
      960 CAPTURE                          VAL R16
      961 CAPTURE                          UPVAL U16
      962 NEWTABLE                         R67 0 1
      964 MOVE                             R68 R16
      965 SETLIST                          R67 R68 1 [1]
      967 CALL                             R65 2 1
      968 GETUPVAL                         R66 1
      969 GETTABLEKS                       R66 R66 K10 ["useEffect"]
      971 NEWCLOSURE                       R67 P43
      972 CAPTURE                          UPVAL U14
      973 CAPTURE                          VAL R51
      974 CAPTURE                          VAL R16
      975 CAPTURE                          VAL R25
      976 CAPTURE                          UPVAL U13
      977 NEWTABLE                         R68 0 2
      979 MOVE                             R69 R16
      980 GETTABLEKS                       R70 R51 K31 ["nodeDestroyConnectionMapRef"]
      982 SETLIST                          R68 R69 2 [1]
      984 CALL                             R66 2 0
      985 GETUPVAL                         R66 1
      986 GETTABLEKS                       R66 R66 K10 ["useEffect"]
      988 NEWCLOSURE                       R67 P44
      989 CAPTURE                          UPVAL U14
      990 CAPTURE                          VAL R52
      991 CAPTURE                          VAL R16
      992 CAPTURE                          VAL R62
      993 CAPTURE                          UPVAL U27
      994 NEWTABLE                         R68 0 3
      996 MOVE                             R69 R16
      997 GETTABLEKS                       R70 R52 K30 ["parameterDestroyConnectionMapRef"]
      999 MOVE                             R71 R62
     1000 SETLIST                          R68 R69 3 [1]
     1002 CALL                             R66 2 0
     1003 GETUPVAL                         R66 33
     1004 MOVE                             R67 R2
     1005 MOVE                             R68 R1
     1006 CALL                             R66 2 1
     1007 GETUPVAL                         R68 6
     1008 CALL                             R68 0 1
     1009 JUMPIFNOT                        R68 ; [+7]
     1010 GETUPVAL                         R67 18
     1011 GETTABLEKS                       R67 R67 K19 ["useSignalState"]
     1013 GETTABLEKS                       R68 R8 K32 ["observeSelectedGraphIsEphemeral"]
     1015 CALL                             R67 1 1
     1016 JUMP                             ; [+1]
     1017 LOADB                            R67 0
     1018 NEWTABLE                         R68 64 0
     1020 GETUPVAL                         R70 6
     1021 CALL                             R70 0 1
     1022 JUMPIFNOT                        R70 ; [+2]
     1023 MOVE                             R69 R67
     1024 JUMP                             ; [+1]
     1025 LOADNIL                          R69
     1026 SETTABLEKS                       R69 R68 K33 ["isReadonly"]
     1028 GETUPVAL                         R70 6
     1029 CALL                             R70 0 1
     1030 JUMPIF                           R70 ; [+4]
     1031 JUMPIFNOT                        R19 ; [+3]
     1032 GETTABLEKS                       R69 R19 K34 ["graphInstanceId"]
     1034 JUMP                             ; [+1]
     1035 LOADNIL                          R69
     1036 SETTABLEKS                       R69 R68 K35 ["selectedGraphInstanceId_DEPRECATED"]
     1038 SETTABLEKS                       R61 R68 K36 ["reorderPinsAsync"]
     1040 SETTABLEKS                       R38 R68 K37 ["createNodeAsync"]
     1042 SETTABLEKS                       R47 R68 K38 ["createParameterAsync"]
     1044 SETTABLEKS                       R48 R68 K39 ["createExistingParameterAsync"]
     1046 SETTABLEKS                       R55 R68 K40 ["createConnectedParameterAsync"]
     1048 SETTABLEKS                       R9 R68 K41 ["graphRect"]
     1050 SETTABLEKS                       R46 R68 K42 ["selectAllParameterNodesWithNameAsync"]
     1052 SETTABLEKS                       R30 R68 K43 ["selectNodesAsync"]
     1054 SETTABLEKS                       R31 R68 K44 ["selectNodesFromRectAsync"]
     1056 SETTABLEKS                       R39 R68 K45 ["removeSelectedNodesAsync"]
     1058 SETTABLEKS                       R40 R68 K46 ["duplicateSelectedNodesAsync"]
     1060 SETTABLEKS                       R42 R68 K47 ["selectAllNodesAsync"]
     1062 SETTABLEKS                       R41 R68 K48 ["clearNodeSelectionAsync"]
     1064 SETTABLEKS                       R43 R68 K49 ["copySelectedNodesAsync"]
     1066 SETTABLEKS                       R44 R68 K50 ["cutSelectedNodesAsync"]
     1068 SETTABLEKS                       R45 R68 K51 ["pasteNodesAsync"]
     1070 SETTABLEKS                       R28 R68 K52 ["setNodePositionsAsync"]
     1072 SETTABLEKS                       R29 R68 K53 ["setNodeSizeAsync"]
     1074 SETTABLEKS                       R54 R68 K54 ["setNodeConnectionAsync"]
     1076 SETTABLEKS                       R49 R68 K55 ["deleteNodeInput"]
     1078 SETTABLEKS                       R53 R68 K56 ["removeNodeOutputConnectionAsync"]
     1080 SETTABLEKS                       R50 R68 K57 ["removeNodeInputConnectionAsync"]
     1082 SETTABLEKS                       R62 R68 K58 ["removeParameterAsync"]
     1084 SETTABLEKS                       R60 R68 K59 ["renameNodeAsync"]
     1086 SETTABLEKS                       R63 R68 K60 ["renameParameterAsync"]
     1088 SETTABLEKS                       R65 R68 K61 ["deleteNodeInstanceAsync"]
     1090 SETTABLEKS                       R26 R68 K62 ["setCollapsedAsync"]
     1092 SETTABLEKS                       R58 R68 K63 ["setNodePropertyAsync"]
     1094 SETTABLEKS                       R59 R68 K64 ["setInputPinNodePropertyAsync"]
     1096 SETTABLEKS                       R64 R68 K65 ["setParameterNodeTypeAsync"]
     1098 SETTABLEKS                       R32 R68 K66 ["currentAnimationId"]
     1100 SETTABLEKS                       R34 R68 K67 ["sourceAssetId"]
     1102 SETTABLEKS                       R37 R68 K68 ["selectedGraphKey"]
     1104 GETUPVAL                         R70 6
     1105 CALL                             R70 0 1
     1106 JUMPIFNOT                        R70 ; [+2]
     1107 LOADNIL                          R69
     1108 JUMP                             ; [+1]
     1109 MOVE                             R69 R17
     1110 SETTABLEKS                       R69 R68 K69 ["observeSelectedGraphInstance_DEPRECATED"]
     1112 GETTABLEKS                       R69 R1 K29 ["observe"]
     1114 SETTABLEKS                       R69 R68 K70 ["observeGraphNodeById"]
     1116 GETTABLEKS                       R69 R2 K29 ["observe"]
     1118 SETTABLEKS                       R69 R68 K71 ["observeNodeRenderInfoById"]
     1120 SETTABLEKS                       R56 R68 K72 ["beginUndoTransaction"]
     1122 SETTABLEKS                       R57 R68 K73 ["finishUndoTransaction"]
     1124 GETTABLEKS                       R69 R1 K74 ["observeMap"]
     1126 SETTABLEKS                       R69 R68 K75 ["observeGraphNodeMap"]
     1128 GETTABLEKS                       R69 R2 K74 ["observeMap"]
     1130 SETTABLEKS                       R69 R68 K76 ["observeRenderInfoMap"]
     1132 GETTABLEKS                       R69 R66 K77 ["hasGraphOutput"]
     1134 SETTABLEKS                       R69 R68 K77 ["hasGraphOutput"]
     1136 GETTABLEKS                       R69 R3 K29 ["observe"]
     1138 SETTABLEKS                       R69 R68 K78 ["observeNodePropsById"]
     1140 GETUPVAL                         R69 1
     1141 GETTABLEKS                       R69 R69 K9 ["useMemo"]
     1143 DUPCLOSURE                       R70 K79 [PROTO_63]
     1144 NEWTABLE                         R71 0 0
     1146 CALL                             R69 2 1
     1147 GETUPVAL                         R70 1
     1148 GETTABLEKS                       R70 R70 K9 ["useMemo"]
     1150 NEWCLOSURE                       R71 P46
     1151 CAPTURE                          UPVAL U34
     1152 CAPTURE                          UPVAL U6
     1153 CAPTURE                          VAL R8
     1154 CAPTURE                          VAL R17
     1155 NEWTABLE                         R72 0 2
     1157 GETUPVAL                         R74 6
     1158 CALL                             R74 0 1
     1159 JUMPIFNOT                        R74 ; [+3]
     1160 GETTABLEKS                       R73 R8 K12 ["observeSelectedGraphInstance"]
     1162 JUMP                             ; [+1]
     1163 MOVE                             R73 R17
     1164 MOVE                             R74 R19
     1165 SETLIST                          R72 R73 2 [1]
     1167 CALL                             R70 2 1
     1168 GETUPVAL                         R71 4
     1169 GETTABLEKS                       R71 R71 K80 ["usePasteHooks"]
     1171 GETUPVAL                         R73 6
     1172 CALL                             R73 0 1
     1173 JUMPIFNOT                        R73 ; [+3]
     1174 GETTABLEKS                       R72 R8 K12 ["observeSelectedGraphInstance"]
     1176 JUMP                             ; [+1]
     1177 MOVE                             R72 R17
     1178 CALL                             R71 1 0
     1179 GETUPVAL                         R71 18
     1180 GETTABLEKS                       R71 R71 K19 ["useSignalState"]
     1182 MOVE                             R72 R70
     1183 CALL                             R71 1 1
     1184 GETUPVAL                         R72 26
     1185 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1187 LOADK                            R73 K82 ["NativeGraphContext_GraphPayloadMap"]
     1188 MOVE                             R74 R19
     1189 CALL                             R72 2 0
     1190 GETUPVAL                         R72 26
     1191 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1193 LOADK                            R73 K83 ["NativeGraphContext_GraphRenderInfo"]
     1194 MOVE                             R74 R21
     1195 CALL                             R72 2 0
     1196 GETUPVAL                         R72 26
     1197 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1199 LOADK                            R73 K84 ["NativeGraphContext_GraphNodeProps"]
     1200 MOVE                             R74 R23
     1201 CALL                             R72 2 0
     1202 GETUPVAL                         R72 26
     1203 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1205 LOADK                            R73 K85 ["NativeGraphContext_TimeRange"]
     1206 MOVE                             R74 R69
     1207 CALL                             R72 2 0
     1208 GETUPVAL                         R72 26
     1209 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1211 LOADK                            R73 K86 ["NativeGraphContext_GraphPayloadGraphRect"]
     1212 MOVE                             R74 R9
     1213 CALL                             R72 2 0
     1214 GETUPVAL                         R72 26
     1215 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1217 LOADK                            R73 K87 ["NativeGraphContext_SourceAssetId"]
     1218 MOVE                             R74 R34
     1219 CALL                             R72 2 0
     1220 GETUPVAL                         R72 17
     1221 CALL                             R72 0 1
     1222 JUMPIF                           R72 ; [+6]
     1223 GETUPVAL                         R72 26
     1224 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1226 LOADK                            R73 K88 ["NativeGraphContext_CurrentAnimationId"]
     1227 MOVE                             R74 R32
     1228 CALL                             R72 2 0
     1229 GETUPVAL                         R72 17
     1230 CALL                             R72 0 1
     1231 JUMPIFNOT                        R72 ; [+6]
     1232 GETUPVAL                         R72 26
     1233 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1235 LOADK                            R73 K89 ["NativeGraphContext_SelectedGraphKey"]
     1236 MOVE                             R74 R37
     1237 CALL                             R72 2 0
     1238 GETUPVAL                         R72 26
     1239 GETTABLEKS                       R72 R72 K81 ["useReplicatedState"]
     1241 LOADK                            R73 K90 ["NativeGraphContext_UndoTransaction"]
     1242 MOVE                             R74 R11
     1243 CALL                             R72 2 0
     1244 GETUPVAL                         R72 26
     1245 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1247 LOADK                            R73 K91 ["NativeGraphContext_CreateNode"]
     1248 MOVE                             R74 R38
     1249 CALL                             R72 2 0
     1250 GETUPVAL                         R72 26
     1251 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1253 LOADK                            R73 K92 ["NativeGraphContext_CreateParameterAsync"]
     1254 MOVE                             R74 R47
     1255 CALL                             R72 2 0
     1256 GETUPVAL                         R72 26
     1257 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1259 LOADK                            R73 K93 ["NativeGraphContext_CreateConnectedParameterAsync"]
     1260 MOVE                             R74 R55
     1261 CALL                             R72 2 0
     1262 GETUPVAL                         R72 26
     1263 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1265 LOADK                            R73 K94 ["NativeGraphContext_CreateExistingParameterAsync"]
     1266 MOVE                             R74 R48
     1267 CALL                             R72 2 0
     1268 GETUPVAL                         R72 26
     1269 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1271 LOADK                            R73 K95 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
     1272 MOVE                             R74 R46
     1273 CALL                             R72 2 0
     1274 GETUPVAL                         R72 26
     1275 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1277 LOADK                            R73 K96 ["NativeGraphContext_SelectNodes"]
     1278 MOVE                             R74 R30
     1279 CALL                             R72 2 0
     1280 GETUPVAL                         R72 26
     1281 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1283 LOADK                            R73 K97 ["NativeGraphContext_SelectNodesFromRect"]
     1284 MOVE                             R74 R31
     1285 CALL                             R72 2 0
     1286 GETUPVAL                         R72 26
     1287 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1289 LOADK                            R73 K98 ["NativeGraphContext_SetNodePositionsAsync"]
     1290 MOVE                             R74 R28
     1291 CALL                             R72 2 0
     1292 GETUPVAL                         R72 26
     1293 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1295 LOADK                            R73 K99 ["NativeGraphContext_SetNodeSizeAsync"]
     1296 MOVE                             R74 R29
     1297 CALL                             R72 2 0
     1298 GETUPVAL                         R72 26
     1299 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1301 LOADK                            R73 K100 ["NativeGraphContext_SetNodeConnectionAsync"]
     1302 MOVE                             R74 R54
     1303 CALL                             R72 2 0
     1304 GETUPVAL                         R72 26
     1305 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1307 LOADK                            R73 K101 ["NativeGraphContext_DeleteNodeInput"]
     1308 MOVE                             R74 R49
     1309 CALL                             R72 2 0
     1310 GETUPVAL                         R72 26
     1311 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1313 LOADK                            R73 K102 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
     1314 MOVE                             R74 R53
     1315 CALL                             R72 2 0
     1316 GETUPVAL                         R72 26
     1317 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1319 LOADK                            R73 K103 ["NativeGraphContext_RemoveNodeInputConnection"]
     1320 MOVE                             R74 R50
     1321 CALL                             R72 2 0
     1322 GETUPVAL                         R72 26
     1323 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1325 LOADK                            R73 K104 ["NativeGraphContext_RemoveParameterAsync"]
     1326 MOVE                             R74 R62
     1327 CALL                             R72 2 0
     1328 GETUPVAL                         R72 26
     1329 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1331 LOADK                            R73 K105 ["NativeGraphContext_RenameNodeAsync"]
     1332 MOVE                             R74 R60
     1333 CALL                             R72 2 0
     1334 GETUPVAL                         R72 26
     1335 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1337 LOADK                            R73 K106 ["NativeGraphContext_RenameParameterAsync"]
     1338 MOVE                             R74 R63
     1339 CALL                             R72 2 0
     1340 GETUPVAL                         R72 26
     1341 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1343 LOADK                            R73 K107 ["NativeGraphContext_DeleteNodeInstanceAsync"]
     1344 MOVE                             R74 R65
     1345 CALL                             R72 2 0
     1346 GETUPVAL                         R72 26
     1347 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1349 LOADK                            R73 K108 ["NativeGraphContext_SetCollapsedAsync"]
     1350 MOVE                             R74 R26
     1351 CALL                             R72 2 0
     1352 GETUPVAL                         R72 26
     1353 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1355 LOADK                            R73 K109 ["NativeGraphContext_setNodePropertyAsync"]
     1356 MOVE                             R74 R58
     1357 CALL                             R72 2 0
     1358 GETUPVAL                         R72 26
     1359 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1361 LOADK                            R73 K110 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
     1362 MOVE                             R74 R59
     1363 CALL                             R72 2 0
     1364 GETUPVAL                         R72 26
     1365 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1367 LOADK                            R73 K111 ["NativeGraphContext_SetParameterNodeTypeAsync"]
     1368 MOVE                             R74 R64
     1369 CALL                             R72 2 0
     1370 GETUPVAL                         R72 26
     1371 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1373 LOADK                            R73 K112 ["NativeGraphContext_ReorderPinsAsync"]
     1374 MOVE                             R74 R61
     1375 CALL                             R72 2 0
     1376 GETUPVAL                         R72 26
     1377 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1379 LOADK                            R73 K113 ["NativeGraphContext_beginUndoTransaction"]
     1380 MOVE                             R74 R56
     1381 CALL                             R72 2 0
     1382 GETUPVAL                         R72 26
     1383 GETTABLEKS                       R72 R72 K21 ["useBoundAction"]
     1385 LOADK                            R73 K114 ["NativeGraphContext_finishUndoTransaction"]
     1386 MOVE                             R74 R57
     1387 CALL                             R72 2 0
     1388 GETUPVAL                         R72 21
     1389 GETTABLEKS                       R72 R72 K115 ["FFlagAnimGraphUI_DynamicZIndex"]
     1391 JUMPIFNOT                        R72 ; [+5]
     1392 GETUPVAL                         R72 35
     1393 GETTABLEKS                       R72 R72 K20 ["useProducer"]
     1395 MOVE                             R73 R27
     1396 CALL                             R72 1 0
     1397 GETUPVAL                         R72 1
     1398 GETTABLEKS                       R72 R72 K116 ["createElement"]
     1400 GETUPVAL                         R73 36
     1401 GETTABLEKS                       R73 R73 K117 ["Provider"]
     1403 DUPTABLE                         R74 K119 [{"value"}]
     1404 SETTABLEKS                       R68 R74 K118 ["value"]
     1406 DUPTABLE                         R75 K121 [{"ContextStack"}]
     1407 GETUPVAL                         R76 1
     1408 GETTABLEKS                       R76 R76 K116 ["createElement"]
     1410 GETUPVAL                         R77 15
     1411 GETTABLEKS                       R77 R77 K120 ["ContextStack"]
     1413 DUPTABLE                         R78 K123 [{"providers"}]
     1414 NEWTABLE                         R79 0 2
     1416 GETUPVAL                         R80 1
     1417 GETTABLEKS                       R80 R80 K116 ["createElement"]
     1419 GETUPVAL                         R81 37
     1420 GETTABLEKS                       R81 R81 K117 ["Provider"]
     1422 DUPTABLE                         R82 K125 [{"timeRange"}]
     1423 SETTABLEKS                       R69 R82 K124 ["timeRange"]
     1425 CALL                             R80 2 1
     1426 GETUPVAL                         R81 1
     1427 GETTABLEKS                       R81 R81 K116 ["createElement"]
     1429 GETUPVAL                         R82 38
     1430 GETTABLEKS                       R82 R82 K117 ["Provider"]
     1432 DUPTABLE                         R83 K127 [{"animationClipsList"}]
     1433 SETTABLEKS                       R71 R83 K126 ["animationClipsList"]
     1435 CALL                             R81 2 -1
     1436 SETLIST                          R79 R80 -1 [1]
     1438 SETTABLEKS                       R79 R78 K122 ["providers"]
     1440 GETTABLEKS                       R79 R0 K128 ["children"]
     1442 CALL                             R76 3 1
     1443 SETTABLEKS                       R76 R75 K120 ["ContextStack"]
     1445 CALL                             R72 3 -1
     1446 RETURN                           R72 -1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance_DEPRECATED from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_72:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_73:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"data", "activeDebugTargetIdentifier"}]
        4 SETTABLEKS                       R1 R2 K0 ["data"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["activeDebugTargetIdentifier"]
        9 RETURN                           R2 1

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_85:
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

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_87:
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

PROTO_88:
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
       26 DUPCLOSURE                       R8 K3 [PROTO_67]
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
      138 DUPCLOSURE                       R13 K25 [PROTO_70]
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
      242 LOADK                            R33 K45 ["NativeGraphContext_SetCollapsedAsync"]
      243 CALL                             R32 1 1
      244 GETUPVAL                         R34 10
      245 GETTABLEKS                       R34 R34 K46 ["FFlagAnimGraphUI_DynamicZIndex"]
      247 JUMPIFNOT                        R34 ; [+5]
      248 GETUPVAL                         R33 11
      249 GETTABLEKS                       R33 R33 K47 ["useConsumer"]
      251 CALL                             R33 0 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R33
      254 GETUPVAL                         R34 5
      255 GETTABLEKS                       R34 R34 K27 ["useBoundAction"]
      257 LOADK                            R35 K48 ["NativeGraphContext_setNodePropertyAsync"]
      258 CALL                             R34 1 1
      259 GETUPVAL                         R35 5
      260 GETTABLEKS                       R35 R35 K27 ["useBoundAction"]
      262 LOADK                            R36 K49 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      263 CALL                             R35 1 1
      264 GETUPVAL                         R36 5
      265 GETTABLEKS                       R36 R36 K27 ["useBoundAction"]
      267 LOADK                            R37 K50 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      268 CALL                             R36 1 1
      269 GETUPVAL                         R37 5
      270 GETTABLEKS                       R37 R37 K27 ["useBoundAction"]
      272 LOADK                            R38 K51 ["NativeGraphContext_SelectNodesFromRect"]
      273 CALL                             R37 1 1
      274 GETUPVAL                         R38 5
      275 GETTABLEKS                       R38 R38 K27 ["useBoundAction"]
      277 LOADK                            R39 K52 ["NativeGraphContext_DuplicateSelectedNodes"]
      278 CALL                             R38 1 1
      279 GETUPVAL                         R39 5
      280 GETTABLEKS                       R39 R39 K27 ["useBoundAction"]
      282 LOADK                            R40 K53 ["NativeGraphContext_SelectAllNodes"]
      283 CALL                             R39 1 1
      284 GETUPVAL                         R40 5
      285 GETTABLEKS                       R40 R40 K27 ["useBoundAction"]
      287 LOADK                            R41 K54 ["NativeGraphContext_ClearNodeSelection"]
      288 CALL                             R40 1 1
      289 GETUPVAL                         R41 5
      290 GETTABLEKS                       R41 R41 K27 ["useBoundAction"]
      292 LOADK                            R42 K55 ["NativeGraphContext_CopySelectedNodes"]
      293 CALL                             R41 1 1
      294 GETUPVAL                         R42 5
      295 GETTABLEKS                       R42 R42 K27 ["useBoundAction"]
      297 LOADK                            R43 K56 ["NativeGraphContext_CutSelectedNodes"]
      298 CALL                             R42 1 1
      299 GETUPVAL                         R43 5
      300 GETTABLEKS                       R43 R43 K27 ["useBoundAction"]
      302 LOADK                            R44 K57 ["NativeGraphContext_PasteNodes"]
      303 CALL                             R43 1 1
      304 GETUPVAL                         R44 12
      305 GETTABLEKS                       R44 R44 K47 ["useConsumer"]
      307 CALL                             R44 0 1
      308 GETUPVAL                         R45 5
      309 GETTABLEKS                       R45 R45 K27 ["useBoundAction"]
      311 LOADK                            R46 K58 ["NativeGraphContext_beginUndoTransaction"]
      312 CALL                             R45 1 1
      313 GETUPVAL                         R46 5
      314 GETTABLEKS                       R46 R46 K27 ["useBoundAction"]
      316 LOADK                            R47 K59 ["NativeGraphContext_finishUndoTransaction"]
      317 CALL                             R46 1 1
      318 NEWTABLE                         R47 64 0
      320 GETUPVAL                         R49 1
      321 CALL                             R49 0 1
      322 JUMPIFNOT                        R49 ; [+2]
      323 LOADNIL                          R48
      324 JUMP                             ; [+1]
      325 MOVE                             R48 R14
      326 SETTABLEKS                       R48 R47 K60 ["selectedGraphInstanceId_DEPRECATED"]
      328 SETTABLEKS                       R15 R47 K61 ["reorderPinsAsync"]
      330 SETTABLEKS                       R16 R47 K62 ["createNodeAsync"]
      332 SETTABLEKS                       R17 R47 K63 ["createParameterAsync"]
      334 SETTABLEKS                       R18 R47 K64 ["createConnectedParameterAsync"]
      336 SETTABLEKS                       R19 R47 K65 ["createExistingParameterAsync"]
      338 SETTABLEKS                       R8 R47 K66 ["graphRect"]
      340 SETTABLEKS                       R20 R47 K67 ["selectAllParameterNodesWithNameAsync"]
      342 SETTABLEKS                       R21 R47 K68 ["selectNodesAsync"]
      344 SETTABLEKS                       R37 R47 K69 ["selectNodesFromRectAsync"]
      346 NEWCLOSURE                       R48 P4
      347 CAPTURE                          VAL R44
      348 SETTABLEKS                       R48 R47 K70 ["removeSelectedNodesAsync"]
      350 SETTABLEKS                       R38 R47 K71 ["duplicateSelectedNodesAsync"]
      352 SETTABLEKS                       R39 R47 K72 ["selectAllNodesAsync"]
      354 SETTABLEKS                       R40 R47 K73 ["clearNodeSelectionAsync"]
      356 SETTABLEKS                       R41 R47 K74 ["copySelectedNodesAsync"]
      358 SETTABLEKS                       R42 R47 K75 ["cutSelectedNodesAsync"]
      360 SETTABLEKS                       R43 R47 K76 ["pasteNodesAsync"]
      362 SETTABLEKS                       R22 R47 K77 ["setNodePositionsAsync"]
      364 SETTABLEKS                       R23 R47 K78 ["setNodeSizeAsync"]
      366 SETTABLEKS                       R24 R47 K79 ["setNodeConnectionAsync"]
      368 SETTABLEKS                       R25 R47 K80 ["deleteNodeInput"]
      370 SETTABLEKS                       R26 R47 K81 ["removeNodeOutputConnectionAsync"]
      372 SETTABLEKS                       R27 R47 K82 ["removeNodeInputConnectionAsync"]
      374 SETTABLEKS                       R28 R47 K83 ["removeParameterAsync"]
      376 SETTABLEKS                       R29 R47 K84 ["renameNodeAsync"]
      378 SETTABLEKS                       R30 R47 K85 ["renameParameterAsync"]
      380 SETTABLEKS                       R31 R47 K86 ["deleteNodeInstanceAsync"]
      382 SETTABLEKS                       R32 R47 K87 ["setCollapsedAsync"]
      384 SETTABLEKS                       R34 R47 K88 ["setNodePropertyAsync"]
      386 SETTABLEKS                       R35 R47 K89 ["setInputPinNodePropertyAsync"]
      388 SETTABLEKS                       R36 R47 K90 ["setParameterNodeTypeAsync"]
      390 SETTABLEKS                       R10 R47 K91 ["currentAnimationId"]
      392 SETTABLEKS                       R9 R47 K92 ["sourceAssetId"]
      394 SETTABLEKS                       R11 R47 K93 ["selectedGraphKey"]
      396 GETUPVAL                         R49 1
      397 CALL                             R49 0 1
      398 JUMPIFNOT                        R49 ; [+2]
      399 LOADNIL                          R48
      400 JUMP                             ; [+1]
      401 MOVE                             R48 R12
      402 SETTABLEKS                       R48 R47 K94 ["observeSelectedGraphInstance_DEPRECATED"]
      404 GETTABLEKS                       R48 R1 K95 ["observe"]
      406 SETTABLEKS                       R48 R47 K96 ["observeGraphNodeById"]
      408 GETTABLEKS                       R48 R2 K95 ["observe"]
      410 SETTABLEKS                       R48 R47 K97 ["observeNodeRenderInfoById"]
      412 SETTABLEKS                       R45 R47 K98 ["beginUndoTransaction"]
      414 SETTABLEKS                       R46 R47 K99 ["finishUndoTransaction"]
      416 GETTABLEKS                       R48 R1 K100 ["observeMap"]
      418 SETTABLEKS                       R48 R47 K101 ["observeGraphNodeMap"]
      420 GETTABLEKS                       R48 R2 K100 ["observeMap"]
      422 SETTABLEKS                       R48 R47 K102 ["observeRenderInfoMap"]
      424 GETTABLEKS                       R48 R13 K103 ["hasGraphOutput"]
      426 SETTABLEKS                       R48 R47 K103 ["hasGraphOutput"]
      428 GETTABLEKS                       R48 R3 K95 ["observe"]
      430 SETTABLEKS                       R48 R47 K104 ["observeNodePropsById"]
      432 DUPCLOSURE                       R48 K105 [PROTO_73]
      433 GETUPVAL                         R49 2
      434 GETTABLEKS                       R49 R49 K0 ["useContext"]
      436 GETUPVAL                         R50 13
      437 GETTABLEKS                       R50 R50 K1 ["Context"]
      439 CALL                             R49 1 1
      440 GETUPVAL                         R50 2
      441 GETTABLEKS                       R50 R50 K6 ["useCallback"]
      443 NEWCLOSURE                       R51 P6
      444 CAPTURE                          UPVAL U1
      445 CAPTURE                          UPVAL U14
      446 CAPTURE                          VAL R49
      447 CAPTURE                          UPVAL U15
      448 NEWTABLE                         R52 0 2
      450 GETUPVAL                         R54 1
      451 CALL                             R54 0 1
      452 JUMPIFNOT                        R54 ; [+3]
      453 GETTABLEKS                       R53 R49 K106 ["observeDebugData"]
      455 JUMP                             ; [+2]
      456 GETTABLEKS                       R53 R49 K107 ["observeDebugData_DEPRECATED"]
      458 GETUPVAL                         R55 1
      459 CALL                             R55 0 1
      460 JUMPIFNOT                        R55 ; [+3]
      461 GETTABLEKS                       R54 R49 K108 ["observeActiveDebugTargetIdentifier"]
      463 JUMP                             ; [+1]
      464 LOADNIL                          R54
      465 SETLIST                          R52 R53 2 [1]
      467 CALL                             R50 2 1
      468 GETUPVAL                         R51 2
      469 GETTABLEKS                       R51 R51 K6 ["useCallback"]
      471 NEWCLOSURE                       R52 P7
      472 CAPTURE                          UPVAL U14
      473 CAPTURE                          VAL R49
      474 CAPTURE                          UPVAL U15
      475 NEWTABLE                         R53 0 2
      477 GETTABLEKS                       R54 R49 K106 ["observeDebugData"]
      479 GETTABLEKS                       R55 R49 K108 ["observeActiveDebugTargetIdentifier"]
      481 SETLIST                          R53 R54 2 [1]
      483 CALL                             R51 2 1
      484 GETUPVAL                         R52 2
      485 GETTABLEKS                       R52 R52 K6 ["useCallback"]
      487 NEWCLOSURE                       R53 P8
      488 CAPTURE                          UPVAL U1
      489 CAPTURE                          VAL R51
      490 CAPTURE                          UPVAL U7
      491 CAPTURE                          VAL R49
      492 CAPTURE                          UPVAL U10
      493 NEWTABLE                         R54 0 2
      495 GETUPVAL                         R56 1
      496 CALL                             R56 0 1
      497 JUMPIFNOT                        R56 ; [+2]
      498 LOADNIL                          R55
      499 JUMP                             ; [+2]
      500 GETTABLEKS                       R55 R49 K107 ["observeDebugData_DEPRECATED"]
      502 GETUPVAL                         R57 1
      503 CALL                             R57 0 1
      504 JUMPIFNOT                        R57 ; [+2]
      505 MOVE                             R56 R51
      506 JUMP                             ; [+1]
      507 LOADNIL                          R56
      508 SETLIST                          R54 R55 2 [1]
      510 CALL                             R52 2 1
      511 GETUPVAL                         R53 2
      512 GETTABLEKS                       R53 R53 K6 ["useCallback"]
      514 NEWCLOSURE                       R54 P9
      515 CAPTURE                          UPVAL U1
      516 CAPTURE                          VAL R51
      517 CAPTURE                          UPVAL U7
      518 CAPTURE                          VAL R49
      519 NEWTABLE                         R55 0 2
      521 GETUPVAL                         R57 1
      522 CALL                             R57 0 1
      523 JUMPIFNOT                        R57 ; [+2]
      524 LOADNIL                          R56
      525 JUMP                             ; [+2]
      526 GETTABLEKS                       R56 R49 K107 ["observeDebugData_DEPRECATED"]
      528 GETUPVAL                         R58 1
      529 CALL                             R58 0 1
      530 JUMPIFNOT                        R58 ; [+2]
      531 MOVE                             R57 R51
      532 JUMP                             ; [+1]
      533 LOADNIL                          R57
      534 SETLIST                          R55 R56 2 [1]
      536 CALL                             R53 2 1
      537 GETUPVAL                         R54 2
      538 GETTABLEKS                       R54 R54 K6 ["useCallback"]
      540 NEWCLOSURE                       R55 P10
      541 CAPTURE                          UPVAL U7
      542 CAPTURE                          VAL R1
      543 NEWTABLE                         R56 0 1
      545 GETTABLEKS                       R57 R1 K100 ["observeMap"]
      547 SETLIST                          R56 R57 1 [1]
      549 CALL                             R54 2 1
      550 GETUPVAL                         R55 16
      551 GETTABLEKS                       R55 R55 K47 ["useConsumer"]
      553 CALL                             R55 0 1
      554 GETUPVAL                         R57 1
      555 CALL                             R57 0 1
      556 JUMPIFNOT                        R57 ; [+7]
      557 GETUPVAL                         R56 9
      558 GETTABLEKS                       R56 R56 K26 ["useSignalState"]
      560 GETTABLEKS                       R57 R4 K109 ["observeSelectedGraphIsEphemeral"]
      562 CALL                             R56 1 1
      563 JUMP                             ; [+1]
      564 LOADNIL                          R56
      565 GETUPVAL                         R57 2
      566 GETTABLEKS                       R57 R57 K2 ["useMemo"]
      568 NEWCLOSURE                       R58 P11
      569 CAPTURE                          VAL R1
      570 CAPTURE                          VAL R2
      571 CAPTURE                          UPVAL U1
      572 CAPTURE                          VAL R56
      573 CAPTURE                          VAL R55
      574 CAPTURE                          VAL R15
      575 CAPTURE                          VAL R17
      576 CAPTURE                          VAL R19
      577 CAPTURE                          VAL R18
      578 CAPTURE                          VAL R20
      579 CAPTURE                          VAL R21
      580 CAPTURE                          VAL R32
      581 CAPTURE                          UPVAL U10
      582 CAPTURE                          VAL R33
      583 CAPTURE                          VAL R25
      584 CAPTURE                          VAL R27
      585 CAPTURE                          VAL R26
      586 CAPTURE                          VAL R28
      587 CAPTURE                          VAL R29
      588 CAPTURE                          VAL R30
      589 CAPTURE                          VAL R31
      590 CAPTURE                          VAL R44
      591 CAPTURE                          VAL R24
      592 CAPTURE                          VAL R22
      593 CAPTURE                          VAL R34
      594 CAPTURE                          VAL R35
      595 CAPTURE                          VAL R23
      596 CAPTURE                          VAL R36
      597 CAPTURE                          VAL R3
      598 CAPTURE                          VAL R50
      599 CAPTURE                          VAL R52
      600 CAPTURE                          VAL R53
      601 CAPTURE                          VAL R54
      602 NEWTABLE                         R59 0 31
      604 MOVE                             R60 R1
      605 MOVE                             R61 R2
      606 MOVE                             R62 R55
      607 MOVE                             R63 R15
      608 MOVE                             R64 R17
      609 MOVE                             R65 R19
      610 MOVE                             R66 R18
      611 MOVE                             R67 R20
      612 MOVE                             R68 R21
      613 MOVE                             R69 R32
      614 MOVE                             R70 R33
      615 MOVE                             R71 R25
      616 MOVE                             R72 R27
      617 MOVE                             R73 R26
      618 MOVE                             R74 R28
      619 MOVE                             R75 R29
      620 SETLIST                          R59 R60 16 [1]
      622 MOVE                             R60 R30
      623 MOVE                             R61 R31
      624 MOVE                             R62 R44
      625 MOVE                             R63 R24
      626 MOVE                             R64 R22
      627 MOVE                             R65 R34
      628 MOVE                             R66 R35
      629 MOVE                             R67 R23
      630 MOVE                             R68 R36
      631 GETTABLEKS                       R69 R3 K95 ["observe"]
      633 MOVE                             R70 R50
      634 MOVE                             R71 R52
      635 MOVE                             R72 R53
      636 MOVE                             R73 R56
      637 MOVE                             R74 R54
      638 SETLIST                          R59 R60 15 [17]
      640 CALL                             R57 2 1
      641 GETUPVAL                         R58 2
      642 GETTABLEKS                       R58 R58 K110 ["createElement"]
      644 GETUPVAL                         R59 17
      645 GETTABLEKS                       R59 R59 K111 ["Provider"]
      647 DUPTABLE                         R60 K113 [{"value"}]
      648 SETTABLEKS                       R47 R60 K112 ["value"]
      650 DUPTABLE                         R61 K115 [{"ContextStack"}]
      651 GETUPVAL                         R62 2
      652 GETTABLEKS                       R62 R62 K110 ["createElement"]
      654 GETUPVAL                         R63 18
      655 GETTABLEKS                       R63 R63 K114 ["ContextStack"]
      657 DUPTABLE                         R64 K117 [{"providers"}]
      658 NEWTABLE                         R65 0 3
      660 GETUPVAL                         R66 2
      661 GETTABLEKS                       R66 R66 K110 ["createElement"]
      663 GETUPVAL                         R67 10
      664 GETTABLEKS                       R67 R67 K118 ["GraphContext"]
      666 GETTABLEKS                       R67 R67 K111 ["Provider"]
      668 DUPTABLE                         R68 K113 [{"value"}]
      669 SETTABLEKS                       R57 R68 K112 ["value"]
      671 CALL                             R66 2 1
      672 GETUPVAL                         R68 19
      673 CALL                             R68 0 1
      674 JUMPIFNOT                        R68 ; [+8]
      675 GETUPVAL                         R67 2
      676 GETTABLEKS                       R67 R67 K110 ["createElement"]
      678 GETUPVAL                         R68 20
      679 GETTABLEKS                       R68 R68 K119 ["UIDataModelProvider"]
      681 CALL                             R67 1 1
      682 JUMP                             ; [+7]
      683 GETUPVAL                         R67 2
      684 GETTABLEKS                       R67 R67 K110 ["createElement"]
      686 GETUPVAL                         R68 2
      687 GETTABLEKS                       R68 R68 K120 ["Fragment"]
      689 CALL                             R67 1 1
      690 GETUPVAL                         R68 2
      691 GETTABLEKS                       R68 R68 K110 ["createElement"]
      693 GETUPVAL                         R69 21
      694 GETTABLEKS                       R69 R69 K111 ["Provider"]
      696 DUPTABLE                         R70 K122 [{"timeRange"}]
      697 SETTABLEKS                       R7 R70 K121 ["timeRange"]
      699 CALL                             R68 2 -1
      700 SETLIST                          R65 R66 -1 [1]
      702 SETTABLEKS                       R65 R64 K116 ["providers"]
      704 GETTABLEKS                       R65 R0 K123 ["children"]
      706 CALL                             R62 3 1
      707 SETTABLEKS                       R62 R61 K114 ["ContextStack"]
      709 CALL                             R58 3 -1
      710 CLOSEUPVALS                      R6
      711 RETURN                           R58 -1

PROTO_89:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_90:
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

PROTO_91:
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

PROTO_92:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_91]
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
      227 GETTABLEKS                       R31 R31 K45 ["getFFlagAnimGraphUIStudioActionOverrides"]
      229 CALL                             R30 1 1
      230 GETIMPORT                        R31 K11 [require]
      232 GETTABLEKS                       R32 R0 K42 ["Flags"]
      234 GETTABLEKS                       R32 R32 K46 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      236 CALL                             R31 1 1
      237 GETIMPORT                        R32 K11 [require]
      239 GETTABLEKS                       R33 R0 K42 ["Flags"]
      241 GETTABLEKS                       R33 R33 K47 ["getFFlagAnimGraphUI_RunTimeDebug"]
      243 CALL                             R32 1 1
      244 GETIMPORT                        R33 K11 [require]
      246 GETTABLEKS                       R34 R0 K42 ["Flags"]
      248 GETTABLEKS                       R34 R34 K48 ["getFFlagAnimGraphUI_SpotlightNodes"]
      250 CALL                             R33 1 1
      251 GETIMPORT                        R34 K11 [require]
      253 GETTABLEKS                       R35 R0 K42 ["Flags"]
      255 GETTABLEKS                       R35 R35 K49 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      257 CALL                             R34 1 1
      258 GETIMPORT                        R35 K11 [require]
      260 GETTABLEKS                       R36 R0 K12 ["Util"]
      262 GETTABLEKS                       R36 R36 K50 ["parseAnimationNodeType"]
      264 CALL                             R35 1 1
      265 GETIMPORT                        R36 K11 [require]
      267 GETTABLEKS                       R37 R0 K12 ["Util"]
      269 GETTABLEKS                       R37 R37 K51 ["sanitizeParameterNames"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K11 [require]
      274 GETIMPORT                        R38 K1 [script]
      276 GETTABLEKS                       R38 R38 K52 ["useGraphAnalytics"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K11 [require]
      281 GETTABLEKS                       R39 R0 K53 ["Hooks"]
      283 GETTABLEKS                       R39 R39 K54 ["useNodeDefinitionDestroyHelper"]
      285 CALL                             R38 1 1
      286 GETIMPORT                        R39 K11 [require]
      288 GETTABLEKS                       R40 R0 K53 ["Hooks"]
      290 GETTABLEKS                       R40 R40 K55 ["useObserveNodeSelection"]
      292 CALL                             R39 1 1
      293 GETIMPORT                        R40 K11 [require]
      295 GETTABLEKS                       R41 R0 K53 ["Hooks"]
      297 GETTABLEKS                       R41 R41 K56 ["useObserveSelection"]
      299 CALL                             R40 1 1
      300 GETIMPORT                        R41 K11 [require]
      302 GETTABLEKS                       R42 R0 K53 ["Hooks"]
      304 GETTABLEKS                       R42 R42 K57 ["useParameterDestroyHelper"]
      306 CALL                             R41 1 1
      307 GETIMPORT                        R42 K11 [require]
      309 GETTABLEKS                       R43 R0 K53 ["Hooks"]
      311 GETTABLEKS                       R43 R43 K58 ["useSignalDispatcher"]
      313 CALL                             R42 1 1
      314 GETTABLEKS                       R43 R13 K59 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      316 NEWTABLE                         R44 64 0
      318 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      320 LOADK                            R46 K61 ["observeGraphNodeMap"]
      321 CALL                             R45 1 1
      322 SETTABLEKS                       R45 R44 K61 ["observeGraphNodeMap"]
      324 GETIMPORT                        R45 K64 [Rect.new]
      326 LOADN                            R46 0
      327 LOADN                            R47 0
      328 LOADN                            R48 0
      329 LOADN                            R49 0
      330 CALL                             R45 4 1
      331 SETTABLEKS                       R45 R44 K65 ["graphRect"]
      333 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      335 LOADK                            R46 K66 ["reorderPinsAsync"]
      336 CALL                             R45 1 1
      337 SETTABLEKS                       R45 R44 K66 ["reorderPinsAsync"]
      339 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      341 LOADK                            R46 K67 ["createNodeAsync"]
      342 CALL                             R45 1 1
      343 SETTABLEKS                       R45 R44 K67 ["createNodeAsync"]
      345 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      347 LOADK                            R46 K68 ["createParameterAsync"]
      348 CALL                             R45 1 1
      349 SETTABLEKS                       R45 R44 K68 ["createParameterAsync"]
      351 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      353 LOADK                            R46 K69 ["createConnectedParameterAsync"]
      354 CALL                             R45 1 1
      355 SETTABLEKS                       R45 R44 K69 ["createConnectedParameterAsync"]
      357 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      359 LOADK                            R46 K70 ["createExistingParameterAsync"]
      360 CALL                             R45 1 1
      361 SETTABLEKS                       R45 R44 K70 ["createExistingParameterAsync"]
      363 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      365 LOADK                            R46 K71 ["selectAllParameterNodesWithNameAsync"]
      366 CALL                             R45 1 1
      367 SETTABLEKS                       R45 R44 K71 ["selectAllParameterNodesWithNameAsync"]
      369 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      371 LOADK                            R46 K72 ["selectNodesAsync"]
      372 CALL                             R45 1 1
      373 SETTABLEKS                       R45 R44 K72 ["selectNodesAsync"]
      375 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      377 LOADK                            R46 K73 ["selectNodesFromRectAsync"]
      378 CALL                             R45 1 1
      379 SETTABLEKS                       R45 R44 K73 ["selectNodesFromRectAsync"]
      381 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      383 LOADK                            R46 K74 ["removeSelectedNodesAsync"]
      384 CALL                             R45 1 1
      385 SETTABLEKS                       R45 R44 K74 ["removeSelectedNodesAsync"]
      387 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      389 LOADK                            R46 K75 ["duplicateSelectedNodesAsync"]
      390 CALL                             R45 1 1
      391 SETTABLEKS                       R45 R44 K75 ["duplicateSelectedNodesAsync"]
      393 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      395 LOADK                            R46 K76 ["selectAllNodesAsync"]
      396 CALL                             R45 1 1
      397 SETTABLEKS                       R45 R44 K76 ["selectAllNodesAsync"]
      399 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      401 LOADK                            R46 K77 ["clearNodeSelectionAsync"]
      402 CALL                             R45 1 1
      403 SETTABLEKS                       R45 R44 K77 ["clearNodeSelectionAsync"]
      405 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      407 LOADK                            R46 K78 ["copySelectedNodesAsync"]
      408 CALL                             R45 1 1
      409 SETTABLEKS                       R45 R44 K78 ["copySelectedNodesAsync"]
      411 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      413 LOADK                            R46 K79 ["cutSelectedNodesAsync"]
      414 CALL                             R45 1 1
      415 SETTABLEKS                       R45 R44 K79 ["cutSelectedNodesAsync"]
      417 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      419 LOADK                            R46 K80 ["pasteNodesAsync"]
      420 CALL                             R45 1 1
      421 SETTABLEKS                       R45 R44 K80 ["pasteNodesAsync"]
      423 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      425 LOADK                            R46 K81 ["setNodePositionsAsync"]
      426 CALL                             R45 1 1
      427 SETTABLEKS                       R45 R44 K81 ["setNodePositionsAsync"]
      429 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      431 LOADK                            R46 K82 ["setNodeSizeAsync"]
      432 CALL                             R45 1 1
      433 SETTABLEKS                       R45 R44 K82 ["setNodeSizeAsync"]
      435 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      437 LOADK                            R46 K83 ["deleteNodeInput"]
      438 CALL                             R45 1 1
      439 SETTABLEKS                       R45 R44 K83 ["deleteNodeInput"]
      441 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      443 LOADK                            R46 K84 ["removeNodeInputConnectionAsync"]
      444 CALL                             R45 1 1
      445 SETTABLEKS                       R45 R44 K84 ["removeNodeInputConnectionAsync"]
      447 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      449 LOADK                            R46 K85 ["removeNodeOutputConnectionAsync"]
      450 CALL                             R45 1 1
      451 SETTABLEKS                       R45 R44 K85 ["removeNodeOutputConnectionAsync"]
      453 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      455 LOADK                            R46 K86 ["removeParameterAsync"]
      456 CALL                             R45 1 1
      457 SETTABLEKS                       R45 R44 K86 ["removeParameterAsync"]
      459 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      461 LOADK                            R46 K87 ["renameNodeAsync"]
      462 CALL                             R45 1 1
      463 SETTABLEKS                       R45 R44 K87 ["renameNodeAsync"]
      465 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      467 LOADK                            R46 K88 ["renameParameterAsync"]
      468 CALL                             R45 1 1
      469 SETTABLEKS                       R45 R44 K88 ["renameParameterAsync"]
      471 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      473 LOADK                            R46 K89 ["deleteNodeInstanceAsync"]
      474 CALL                             R45 1 1
      475 SETTABLEKS                       R45 R44 K89 ["deleteNodeInstanceAsync"]
      477 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      479 LOADK                            R46 K90 ["setNewConnection"]
      480 CALL                             R45 1 1
      481 SETTABLEKS                       R45 R44 K91 ["setNodeConnectionAsync"]
      483 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      485 LOADK                            R46 K92 ["setCollapsedAsync"]
      486 CALL                             R45 1 1
      487 SETTABLEKS                       R45 R44 K92 ["setCollapsedAsync"]
      489 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      491 LOADK                            R46 K93 ["setNodePropertyAsync"]
      492 CALL                             R45 1 1
      493 SETTABLEKS                       R45 R44 K93 ["setNodePropertyAsync"]
      495 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      497 LOADK                            R46 K94 ["setInputPinNodePropertyAsync"]
      498 CALL                             R45 1 1
      499 SETTABLEKS                       R45 R44 K94 ["setInputPinNodePropertyAsync"]
      501 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      503 LOADK                            R46 K95 ["setParameterNodeTypeAsync"]
      504 CALL                             R45 1 1
      505 SETTABLEKS                       R45 R44 K95 ["setParameterNodeTypeAsync"]
      507 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      509 LOADK                            R46 K96 ["hasGraphOutput"]
      510 CALL                             R45 1 1
      511 SETTABLEKS                       R45 R44 K96 ["hasGraphOutput"]
      513 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      515 LOADK                            R46 K97 ["observeGraphNodeById"]
      516 CALL                             R45 1 1
      517 SETTABLEKS                       R45 R44 K97 ["observeGraphNodeById"]
      519 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      521 LOADK                            R46 K98 ["observeNodeRenderInfoById"]
      522 CALL                             R45 1 1
      523 SETTABLEKS                       R45 R44 K98 ["observeNodeRenderInfoById"]
      525 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      527 LOADK                            R46 K99 ["observeRenderInfoMap"]
      528 CALL                             R45 1 1
      529 SETTABLEKS                       R45 R44 K99 ["observeRenderInfoMap"]
      531 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      533 LOADK                            R46 K100 ["observeNodePropsById"]
      534 CALL                             R45 1 1
      535 SETTABLEKS                       R45 R44 K100 ["observeNodePropsById"]
      537 GETTABLEKS                       R45 R22 K101 ["createSignal"]
      539 LOADNIL                          R46
      540 CALL                             R45 1 1
      541 SETTABLEKS                       R45 R44 K102 ["observeSelectedGraphInstance_DEPRECATED"]
      543 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      545 LOADK                            R46 K103 ["beginUndoTransaction"]
      546 CALL                             R45 1 1
      547 SETTABLEKS                       R45 R44 K103 ["beginUndoTransaction"]
      549 GETTABLEKS                       R45 R18 K60 ["createUnimplemented"]
      551 LOADK                            R46 K104 ["finishUndoTransaction"]
      552 CALL                             R45 1 1
      553 SETTABLEKS                       R45 R44 K104 ["finishUndoTransaction"]
      555 LOADNIL                          R45
      556 SETTABLEKS                       R45 R44 K105 ["currentAnimationId"]
      558 LOADNIL                          R45
      559 SETTABLEKS                       R45 R44 K106 ["sourceAssetId"]
      561 LOADNIL                          R45
      562 SETTABLEKS                       R45 R44 K107 ["selectedGraphKey"]
      564 GETTABLEKS                       R45 R17 K108 ["createContext"]
      566 MOVE                             R46 R44
      567 CALL                             R45 1 1
      568 DUPTABLE                         R46 K127 [{["GRAPH_PAYLOAD_MAP"] = "NativeGraphContext_GraphPayloadMap", ["GRAPH_RENDER_INFO"] = "NativeGraphContext_GraphRenderInfo", ["GRAPH_NODE_PROPS"] = "NativeGraphContext_GraphNodeProps", ["TIME_RANGE"] = "NativeGraphContext_TimeRange", ["GRAPH_PAYLOAD_GRAPH_RECT"] = "NativeGraphContext_GraphPayloadGraphRect", ["CURRENT_ANIMATION_ID"] = "NativeGraphContext_CurrentAnimationId", ["SOURCE_ASSET_ID"] = "NativeGraphContext_SourceAssetId", ["SELECTED_GRAPH_KEY"] = "NativeGraphContext_SelectedGraphKey", ["UNDO_TRANSACTION"] = "NativeGraphContext_UndoTransaction"}]
      569 DUPTABLE                         R47 K190 [{["CREATE_NODE"] = "NativeGraphContext_CreateNode", ["CREATE_PARAMETER"] = "NativeGraphContext_CreateParameterAsync", ["CREATE_CONNECTED_PARAMETER"] = "NativeGraphContext_CreateConnectedParameterAsync", ["CREATE_EXISTING_PARAMETER"] = "NativeGraphContext_CreateExistingParameterAsync", ["GET_SELECTED_GRAPH_INSTANCE"] = "NativeGraphContext_GetSelectedGraphInstance", ["SET_NODE_CONNECTION"] = "NativeGraphContext_SetNodeConnectionAsync", ["SET_NODE_PROPERTY"] = "NativeGraphContext_setNodePropertyAsync", ["SET_INPUT_PIN_NODE_PROPERTY"] = "NativeGraphContext_SetInputPinNodePropertyAsync", ["REORDER_PINS"] = "NativeGraphContext_ReorderPinsAsync", ["DELETE_NODE_INPUT"] = "NativeGraphContext_DeleteNodeInput", ["REMOVE_NODE_INPUT_CONNECTION"] = "NativeGraphContext_RemoveNodeInputConnection", ["REMOVE_NODE_OUTPUT_CONNECTION"] = "NativeGraphContext_RemoveNodeOutputConnectionAsync", ["REMOVE_PARAMETER"] = "NativeGraphContext_RemoveParameterAsync", ["RENAME_NODE"] = "NativeGraphContext_RenameNodeAsync", ["RENAME_PARAMETER"] = "NativeGraphContext_RenameParameterAsync", ["DELETE_NODE_INSTANCE"] = "NativeGraphContext_DeleteNodeInstanceAsync", ["SET_NODE_SIZE"] = "NativeGraphContext_SetNodeSizeAsync", ["SET_COLLAPSED"] = "NativeGraphContext_SetCollapsedAsync", ["SET_NODE_POSITIONS"] = "NativeGraphContext_SetNodePositionsAsync", ["SET_PARAMETER_NODE_TYPE"] = "NativeGraphContext_SetParameterNodeTypeAsync", ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"] = "NativeGraphContext_SelectAllParameterNodesWithNameAsync", ["SELECT_NODES"] = "NativeGraphContext_SelectNodes", ["SELECT_NODES_FROM_RECT"] = "NativeGraphContext_SelectNodesFromRect", ["DUPLICATE_SELECTED_NODES"] = "NativeGraphContext_DuplicateSelectedNodes", ["SELECT_ALL_NODES"] = "NativeGraphContext_SelectAllNodes", ["CLEAR_NODE_SELECTION"] = "NativeGraphContext_ClearNodeSelection", ["COPY_SELECTED_NODES"] = "NativeGraphContext_CopySelectedNodes", ["CUT_SELECTED_NODES"] = "NativeGraphContext_CutSelectedNodes", ["PASTE_NODES"] = "NativeGraphContext_PasteNodes", ["BEGIN_UNDO_TRANSACTION"] = "NativeGraphContext_beginUndoTransaction", ["FINISH_UNDO_TRANSACTION"] = "NativeGraphContext_finishUndoTransaction"}]
      570 GETTABLEKS                       R48 R12 K191 ["createBoundAction"]
      572 LOADK                            R49 K192 ["NativeGraphContext_createNode"]
      573 CALL                             R48 1 1
      574 GETTABLEKS                       R49 R12 K191 ["createBoundAction"]
      576 LOADK                            R50 K193 ["NativeGraphContext_setZIndex"]
      577 CALL                             R49 1 1
      578 GETTABLEKS                       R50 R12 K191 ["createBoundAction"]
      580 LOADK                            R51 K194 ["NativeGraphContext_removeNodes"]
      581 CALL                             R50 1 1
      582 DUPCLOSURE                       R51 K195 [PROTO_1]
      583 CAPTURE                          VAL R17
      584 DUPCLOSURE                       R52 K196 [PROTO_66]
      585 CAPTURE                          VAL R42
      586 CAPTURE                          VAL R17
      587 CAPTURE                          VAL R14
      588 CAPTURE                          VAL R20
      589 CAPTURE                          VAL R16
      590 CAPTURE                          VAL R30
      591 CAPTURE                          VAL R32
      592 CAPTURE                          VAL R19
      593 CAPTURE                          VAL R40
      594 CAPTURE                          VAL R39
      595 CAPTURE                          VAL R10
      596 CAPTURE                          VAL R37
      597 CAPTURE                          VAL R9
      598 CAPTURE                          VAL R11
      599 CAPTURE                          VAL R22
      600 CAPTURE                          VAL R18
      601 CAPTURE                          VAL R2
      602 CAPTURE                          VAL R29
      603 CAPTURE                          VAL R25
      604 CAPTURE                          VAL R1
      605 CAPTURE                          VAL R35
      606 CAPTURE                          VAL R13
      607 CAPTURE                          VAL R43
      608 CAPTURE                          VAL R4
      609 CAPTURE                          VAL R48
      610 CAPTURE                          VAL R50
      611 CAPTURE                          VAL R12
      612 CAPTURE                          VAL R6
      613 CAPTURE                          VAL R31
      614 CAPTURE                          VAL R38
      615 CAPTURE                          VAL R41
      616 CAPTURE                          VAL R34
      617 CAPTURE                          VAL R36
      618 CAPTURE                          VAL R51
      619 CAPTURE                          VAL R21
      620 CAPTURE                          VAL R49
      621 CAPTURE                          VAL R45
      622 CAPTURE                          VAL R27
      623 CAPTURE                          VAL R5
      624 DUPCLOSURE                       R53 K197 [PROTO_88]
      625 CAPTURE                          VAL R42
      626 CAPTURE                          VAL R32
      627 CAPTURE                          VAL R17
      628 CAPTURE                          VAL R19
      629 CAPTURE                          VAL R22
      630 CAPTURE                          VAL R12
      631 CAPTURE                          VAL R29
      632 CAPTURE                          VAL R21
      633 CAPTURE                          VAL R51
      634 CAPTURE                          VAL R25
      635 CAPTURE                          VAL R13
      636 CAPTURE                          VAL R49
      637 CAPTURE                          VAL R50
      638 CAPTURE                          VAL R7
      639 CAPTURE                          VAL R24
      640 CAPTURE                          VAL R23
      641 CAPTURE                          VAL R48
      642 CAPTURE                          VAL R45
      643 CAPTURE                          VAL R18
      644 CAPTURE                          VAL R33
      645 CAPTURE                          VAL R26
      646 CAPTURE                          VAL R27
      647 DUPCLOSURE                       R54 K198 [PROTO_90]
      648 CAPTURE                          VAL R28
      649 DUPCLOSURE                       R55 K199 [PROTO_92]
      650 CAPTURE                          VAL R17
      651 CAPTURE                          VAL R29
      652 CAPTURE                          VAL R3
      653 CAPTURE                          VAL R54
      654 CAPTURE                          VAL R52
      655 DUPTABLE                         R56 K205 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_setupEditorFolderForPreview"}]
      656 SETTABLEKS                       R45 R56 K200 ["Context"]
      658 SETTABLEKS                       R52 R56 K201 ["EditableDataModelProvider"]
      660 SETTABLEKS                       R55 R56 K202 ["PreviewDataModelProvider"]
      662 SETTABLEKS                       R53 R56 K203 ["UIDataModelProvider"]
      664 SETTABLEKS                       R54 R56 K204 ["_setupEditorFolderForPreview"]
      666 RETURN                           R56 1
