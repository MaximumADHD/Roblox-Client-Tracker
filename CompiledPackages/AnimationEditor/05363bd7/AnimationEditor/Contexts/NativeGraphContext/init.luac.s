PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphState"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U3
       16 MOVE                             R1 R0
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K1 ["AttributeChanged"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R1 R1 K2 ["Connect"]
       25 CALL                             R1 2 1
       26 NEWCLOSURE                       R2 P2
       27 CAPTURE                          VAL R1
       28 RETURN                           R2 1

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 1
        3 JUMPIFEQKNIL                     R3 ; [+4]
        5 GETUPVAL                         R4 1
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R4 2
       10 LOADK                            R6 K0 ["NativeGraphContext"]
       11 LOADK                            R7 K1 ["createNodeAsync"]
       12 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 3
       16 MOVE                             R6 R0
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKNIL                  R5 ; [+10]
       20 GETIMPORT                        R6 K4 [error]
       22 LOADK                            R8 K5 ["createNode not called with AnimationNodeType enum (%*)"]
       23 MOVE                             R10 R0
       24 NAMECALL                         R8 R8 K6 ["format"]
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 CALL                             R6 1 0
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K7 ["createNodeOfType"]
       32 MOVE                             R7 R5
       33 MOVE                             R8 R1
       34 MOVE                             R9 R3
       35 CALL                             R6 3 1
       36 JUMPIFNOT                        R6 ; [+6]
       37 GETUPVAL                         R7 5
       38 MOVE                             R9 R6
       39 NAMECALL                         R7 R7 K8 ["instanceToId"]
       41 CALL                             R7 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 FASTCALL2K                       ASSERT R7 K9 ; [+5]
       46 MOVE                             R9 R7
       47 LOADK                            R10 K9 ["Failed to get new node ID after creation"]
       48 GETIMPORT                        R8 K11 [assert]
       50 CALL                             R8 2 0
       51 JUMPIFNOT                        R2 ; [+86]
       52 GETTABLEKS                       R8 R2 K12 ["sourcePinSide"]
       54 JUMPIFNOTEQKS                    R8 K13 ["Input"] ; [+16]
       56 JUMPIFEQKNIL                     R7 ; [+81]
       58 GETUPVAL                         R8 4
       59 GETTABLEKS                       R8 R8 K14 ["setNodeConnection"]
       61 GETUPVAL                         R9 5
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R11 R2 K15 ["sourcePinNodeId"]
       65 GETTABLEKS                       R12 R2 K16 ["sourcePinName"]
       67 MOVE                             R13 R7
       68 LOADK                            R14 K17 ["Output"]
       69 CALL                             R8 6 0
       70 JUMP                             ; [+67]
       71 GETTABLEKS                       R8 R2 K12 ["sourcePinSide"]
       73 JUMPIFNOTEQKS                    R8 K17 ["Output"] ; [+60]
       75 GETUPVAL                         R8 6
       76 MOVE                             R10 R5
       77 NAMECALL                         R8 R8 K18 ["GetAnimationNodeDefinition"]
       79 CALL                             R8 2 1
       80 LOADNIL                          R9
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R10 R10 K19 ["hasDynamicInputPins"]
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R12 R2 K15 ["sourcePinNodeId"]
       87 CALL                             R10 2 1
       88 JUMPIFNOT                        R10 ; [+9]
       89 GETUPVAL                         R10 4
       90 GETTABLEKS                       R10 R10 K20 ["getDynamicInputPinNameFromInputNode"]
       92 MOVE                             R11 R6
       93 GETTABLEKS                       R12 R2 K16 ["sourcePinName"]
       95 CALL                             R10 2 1
       96 MOVE                             R9 R10
       97 JUMP                             ; [+13]
       98 JUMPIFNOT                        R8 ; [+12]
       99 GETTABLEKS                       R10 R8 K21 ["Inputs"]
      101 JUMPIFNOT                        R10 ; [+9]
      102 GETTABLEKS                       R11 R8 K21 ["Inputs"]
      104 GETTABLEN                        R10 R11 1
      105 JUMPIFNOT                        R10 ; [+5]
      106 GETTABLEKS                       R11 R8 K21 ["Inputs"]
      108 GETTABLEN                        R10 R11 1
      109 GETTABLEKS                       R9 R10 K22 ["InputName"]
      111 JUMPIFEQKNIL                     R9 ; [+16]
      113 JUMPIFEQKNIL                     R7 ; [+24]
      115 GETUPVAL                         R10 4
      116 GETTABLEKS                       R10 R10 K14 ["setNodeConnection"]
      118 GETUPVAL                         R11 5
      119 GETUPVAL                         R12 1
      120 MOVE                             R13 R7
      121 MOVE                             R14 R9
      122 GETTABLEKS                       R15 R2 K15 ["sourcePinNodeId"]
      124 GETTABLEKS                       R16 R2 K16 ["sourcePinName"]
      126 CALL                             R10 6 0
      127 JUMP                             ; [+10]
      128 GETIMPORT                        R10 K24 [warn]
      130 LOADK                            R11 K25 ["Failed to find input pin name for node type:"]
      131 MOVE                             R12 R0
      132 CALL                             R10 2 0
      133 JUMP                             ; [+4]
      134 GETIMPORT                        R8 K4 [error]
      136 LOADK                            R9 K26 ["Bad sourcePinSide state"]
      137 CALL                             R8 1 0
      138 GETUPVAL                         R8 7
      139 GETTABLEKS                       R8 R8 K27 ["selectionService"]
      141 NEWTABLE                         R10 0 1
      143 MOVE                             R11 R6
      144 SETLIST                          R10 R11 1 [1]
      146 NAMECALL                         R8 R8 K28 ["Set"]
      148 CALL                             R8 2 0
      149 JUMPIFNOT                        R4 ; [+7]
      150 GETUPVAL                         R8 2
      151 MOVE                             R10 R4
      152 GETIMPORT                        R11 K32 [Enum.FinishRecordingOperation.Commit]
      154 NAMECALL                         R8 R8 K33 ["FinishRecording"]
      156 CALL                             R8 3 0
      157 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Should be unreachable since delete/backspace is overridden by the native actions, but if you see this file a bug report"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["getParameterInstanceName"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 NAMECALL                         R4 R1 K1 ["GetChildren"]
       14 CALL                             R4 1 3
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K2 ["Name"]
       18 JUMPIFNOTEQ                      R9 R2 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       22 MOVE                             R10 R3
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K5 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-12]
       29 LENGTH                           R4 R3
       30 LOADN                            R5 0
       31 JUMPIFNOTLT                      R5 R4 ; [+8]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K6 ["selectionService"]
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R4 K7 ["Set"]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 2
       11 LOADK                            R4 K0 ["NativeGraphContext"]
       12 LOADK                            R5 K1 ["createParameterAsync"]
       13 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
       15 CALL                             R2 3 1
       16 LOADK                            R5 K3 ["AnimationGraphDefinition"]
       17 NAMECALL                         R3 R1 K4 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+6]
       21 GETIMPORT                        R3 K6 [warn]
       23 LOADK                            R4 K7 ["Selected graph instance is not an AnimationGraphDefinition"]
       24 CALL                             R3 1 0
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K8 ["getOrCreateParameterInstance"]
       30 GETUPVAL                         R4 4
       31 MOVE                             R5 R1
       32 MOVE                             R6 R0
       33 LOADB                            R7 0
       34 CALL                             R3 4 1
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K9 ["NODE_ATTRIBUTES"]
       38 GETTABLEKS                       R6 R6 K10 ["BindingName"]
       40 NAMECALL                         R4 R3 K11 ["GetAttribute"]
       42 CALL                             R4 2 1
       43 MOVE                             R7 R4
       44 NAMECALL                         R5 R1 K11 ["GetAttribute"]
       46 CALL                             R5 2 1
       47 JUMPIFNOTEQKNIL                  R5 ; [+24]
       49 GETTABLEKS                       R5 R0 K12 ["initializeWithValue"]
       51 JUMPIFEQKNIL                     R5 ; [+20]
       53 GETTABLEKS                       R6 R0 K12 ["initializeWithValue"]
       55 FASTCALL1                        TYPE R6 ; [+2]
       56 GETIMPORT                        R5 K14 [type]
       58 CALL                             R5 1 1
       59 JUMPIFNOTEQKS                    R5 K15 ["table"] ; [+6]
       61 GETIMPORT                        R5 K6 [warn]
       63 LOADK                            R6 K16 ["TODO: JSONEncode initial value to support safely"]
       64 CALL                             R5 1 0
       65 JUMP                             ; [+6]
       66 MOVE                             R7 R4
       67 GETTABLEKS                       R8 R0 K12 ["initializeWithValue"]
       69 NAMECALL                         R5 R1 K17 ["SetAttribute"]
       71 CALL                             R5 3 0
       72 GETUPVAL                         R5 6
       73 GETTABLEKS                       R5 R5 K18 ["selectionService"]
       75 NEWTABLE                         R7 0 1
       77 MOVE                             R8 R3
       78 SETLIST                          R7 R8 1 [1]
       80 NAMECALL                         R5 R5 K19 ["Set"]
       82 CALL                             R5 2 0
       83 GETTABLEKS                       R5 R0 K20 ["pinPosition"]
       85 JUMPIFNOT                        R5 ; [+7]
       86 GETUPVAL                         R5 3
       87 GETTABLEKS                       R5 R5 K21 ["setNodePosition"]
       89 MOVE                             R6 R3
       90 GETTABLEKS                       R7 R0 K20 ["pinPosition"]
       92 CALL                             R5 2 0
       93 GETUPVAL                         R5 4
       94 MOVE                             R7 R3
       95 NAMECALL                         R5 R5 K22 ["instanceToId"]
       97 CALL                             R5 2 1
       98 JUMPIFNOT                        R2 ; [+7]
       99 GETUPVAL                         R6 2
      100 MOVE                             R8 R2
      101 GETIMPORT                        R9 K26 [Enum.FinishRecordingOperation.Commit]
      103 NAMECALL                         R6 R6 K27 ["FinishRecording"]
      105 CALL                             R6 3 0
      106 RETURN                           R5 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["parameterType"]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+4]
        7 GETUPVAL                         R3 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 LOADK                            R5 K1 ["AnimationGraphDefinition"]
       13 NAMECALL                         R3 R2 K2 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+6]
       17 GETIMPORT                        R3 K4 [warn]
       19 LOADK                            R4 K5 ["Selected graph instance is not an AnimationGraphDefinition"]
       20 CALL                             R3 1 0
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 JUMPIF                           R1 ; [+22]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["getParameterInstanceName"]
       27 GETTABLEKS                       R4 R0 K7 ["parameterName"]
       29 CALL                             R3 1 1
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R2 K8 ["FindFirstChild"]
       33 CALL                             R4 2 1
       34 JUMPIF                           R4 ; [+2]
       35 LOADNIL                          R5
       36 RETURN                           R5 1
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K9 ["NODE_ATTRIBUTES"]
       40 GETTABLEKS                       R7 R7 K10 ["ParameterType"]
       42 NAMECALL                         R5 R4 K11 ["GetAttribute"]
       44 CALL                             R5 2 1
       45 MOVE                             R1 R5
       46 FASTCALL2K                       ASSERT R1 K12 ; [+5]
       48 MOVE                             R4 R1
       49 LOADK                            R5 K12 ["Parameter type must be provided or inferable for createExistingParameterAsync"]
       50 GETIMPORT                        R3 K14 [assert]
       52 CALL                             R3 2 0
       53 GETUPVAL                         R3 4
       54 LOADK                            R5 K15 ["NativeGraphContext"]
       55 LOADK                            R6 K16 ["createParameterAsync"]
       56 NAMECALL                         R3 R3 K17 ["TryBeginRecording"]
       58 CALL                             R3 3 1
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K18 ["createExistingParameterInstance"]
       62 GETUPVAL                         R5 5
       63 MOVE                             R6 R2
       64 DUPTABLE                         R7 K19 [{"parameterType", "parameterName"}]
       65 SETTABLEKS                       R1 R7 K0 ["parameterType"]
       67 GETTABLEKS                       R8 R0 K7 ["parameterName"]
       69 SETTABLEKS                       R8 R7 K7 ["parameterName"]
       71 CALL                             R4 3 1
       72 LOADNIL                          R5
       73 JUMPIF                           R4 ; [+22]
       74 GETUPVAL                         R6 6
       75 DUPTABLE                         R7 K23 [{"parameterType", "allowDuplication", "pinPosition", "initializeWithValue", "parameterName"}]
       76 SETTABLEKS                       R1 R7 K0 ["parameterType"]
       78 LOADB                            R8 0
       79 SETTABLEKS                       R8 R7 K20 ["allowDuplication"]
       81 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
       83 SETTABLEKS                       R8 R7 K21 ["pinPosition"]
       85 GETTABLEKS                       R8 R0 K22 ["initializeWithValue"]
       87 SETTABLEKS                       R8 R7 K22 ["initializeWithValue"]
       89 GETTABLEKS                       R8 R0 K7 ["parameterName"]
       91 SETTABLEKS                       R8 R7 K7 ["parameterName"]
       93 CALL                             R6 1 1
       94 MOVE                             R5 R6
       95 JUMP                             ; [+27]
       96 GETUPVAL                         R6 5
       97 MOVE                             R8 R4
       98 NAMECALL                         R6 R6 K24 ["instanceToId"]
      100 CALL                             R6 2 1
      101 MOVE                             R5 R6
      102 GETUPVAL                         R6 7
      103 GETTABLEKS                       R6 R6 K25 ["selectionService"]
      105 NEWTABLE                         R8 0 1
      107 MOVE                             R9 R4
      108 SETLIST                          R8 R9 1 [1]
      110 NAMECALL                         R6 R6 K26 ["Set"]
      112 CALL                             R6 2 0
      113 GETTABLEKS                       R6 R0 K21 ["pinPosition"]
      115 JUMPIFNOT                        R6 ; [+7]
      116 GETUPVAL                         R6 2
      117 GETTABLEKS                       R6 R6 K27 ["setNodePosition"]
      119 MOVE                             R7 R4
      120 GETTABLEKS                       R8 R0 K21 ["pinPosition"]
      122 CALL                             R6 2 0
      123 JUMPIFNOT                        R3 ; [+7]
      124 GETUPVAL                         R6 4
      125 MOVE                             R8 R3
      126 GETIMPORT                        R9 K31 [Enum.FinishRecordingOperation.Commit]
      128 NAMECALL                         R6 R6 K32 ["FinishRecording"]
      130 CALL                             R6 3 0
      131 RETURN                           R5 1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K0 ["NativeGraphContext"]
        8 LOADK                            R5 K1 ["createParameterAsync"]
        9 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
       11 CALL                             R2 3 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R5 R0 K3 ["sourcePinInfo"]
       15 GETTABLEKS                       R5 R5 K4 ["sourcePinNodeId"]
       17 NAMECALL                         R3 R3 K5 ["idToInstance"]
       19 CALL                             R3 2 1
       20 JUMPIFEQKNIL                     R3 ; [+6]
       22 LOADK                            R6 K6 ["AnimationNodeDefinition"]
       23 NAMECALL                         R4 R3 K7 ["IsA"]
       25 CALL                             R4 2 1
       26 JUMPIF                           R4 ; [+5]
       27 GETIMPORT                        R4 K9 [warn]
       29 LOADK                            R5 K10 ["Failed to find node definition instance for createParameterAsync"]
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 LOADK                            R6 K6 ["AnimationNodeDefinition"]
       33 NAMECALL                         R4 R3 K7 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIF                           R4 ; [+5]
       37 GETIMPORT                        R4 K9 [warn]
       39 LOADK                            R5 K11 ["Instance is not an AnimationNodeDefinition"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0
       42 LOADK                            R6 K12 ["AnimationGraphDefinition"]
       43 NAMECALL                         R4 R1 K7 ["IsA"]
       45 CALL                             R4 2 1
       46 JUMPIF                           R4 ; [+5]
       47 GETIMPORT                        R4 K9 [warn]
       49 LOADK                            R5 K13 ["Selected graph instance is not an AnimationGraphDefinition"]
       50 CALL                             R4 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K15 ["getParameterType"]
       55 GETTABLEKS                       R6 R3 K16 ["NodeType"]
       57 GETTABLEKS                       R7 R0 K3 ["sourcePinInfo"]
       59 GETTABLEKS                       R7 R7 K17 ["sourcePinName"]
       61 CALL                             R5 2 1
       62 ORK                              R4 R5 K14 ["unknown"]
       63 GETTABLEKS                       R5 R0 K18 ["parameterName"]
       65 GETUPVAL                         R6 4
       66 DUPTABLE                         R7 K22 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
       67 SETTABLEKS                       R4 R7 K19 ["parameterType"]
       69 SETTABLEKS                       R5 R7 K18 ["parameterName"]
       71 GETTABLEKS                       R8 R0 K20 ["pinPosition"]
       73 SETTABLEKS                       R8 R7 K20 ["pinPosition"]
       75 GETTABLEKS                       R8 R0 K23 ["existingValue"]
       77 SETTABLEKS                       R8 R7 K21 ["initializeWithValue"]
       79 CALL                             R6 1 1
       80 GETTABLEKS                       R7 R0 K23 ["existingValue"]
       82 JUMPIFNOT                        R7 ; [+12]
       83 MOVE                             R9 R5
       84 NAMECALL                         R7 R1 K24 ["GetAttribute"]
       86 CALL                             R7 2 1
       87 JUMPIFNOTEQKNIL                  R7 ; [+7]
       89 MOVE                             R9 R5
       90 GETTABLEKS                       R10 R0 K23 ["existingValue"]
       92 NAMECALL                         R7 R1 K25 ["SetAttribute"]
       94 CALL                             R7 3 0
       95 JUMPIFNOT                        R6 ; [+36]
       96 GETTABLEKS                       R7 R0 K3 ["sourcePinInfo"]
       98 GETTABLEKS                       R7 R7 K4 ["sourcePinNodeId"]
      100 GETTABLEKS                       R8 R0 K3 ["sourcePinInfo"]
      102 GETTABLEKS                       R8 R8 K17 ["sourcePinName"]
      104 GETUPVAL                         R9 2
      105 MOVE                             R11 R6
      106 NAMECALL                         R9 R9 K5 ["idToInstance"]
      108 CALL                             R9 2 1
      109 JUMPIFNOT                        R9 ; [+22]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R10 R10 K26 ["setNodePosition"]
      113 MOVE                             R11 R9
      114 GETTABLEKS                       R12 R0 K20 ["pinPosition"]
      116 CALL                             R10 2 0
      117 GETUPVAL                         R10 5
      118 MOVE                             R11 R7
      119 MOVE                             R12 R8
      120 MOVE                             R13 R6
      121 LOADK                            R14 K27 ["Output"]
      122 GETUPVAL                         R16 6
      123 CALL                             R16 0 1
      124 JUMPIFNOT                        R16 ; [+5]
      125 GETTABLEKS                       R15 R0 K3 ["sourcePinInfo"]
      127 GETTABLEKS                       R15 R15 K28 ["sourcePinDynamicIndex"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R15
      131 CALL                             R10 5 0
      132 JUMPIFNOT                        R2 ; [+7]
      133 GETUPVAL                         R7 1
      134 MOVE                             R9 R2
      135 GETIMPORT                        R10 K32 [Enum.FinishRecordingOperation.Commit]
      137 NAMECALL                         R7 R7 K33 ["FinishRecording"]
      139 CALL                             R7 3 0
      140 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_37:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Couldn't rename instance: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+33]
       12 LOADK                            R8 K4 ["%s"]
       13 LOADK                            R9 K5 [""]
       14 NAMECALL                         R6 R1 K6 ["gsub"]
       16 CALL                             R6 3 1
       17 LENGTH                           R5 R6
       18 JUMPIFEQKN                       R5 K7 [0] ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K8 ["NODE_ATTRIBUTES"]
       25 GETTABLEKS                       R7 R7 K9 ["DisplayName"]
       27 JUMPIFNOT                        R4 ; [+2]
       28 LOADNIL                          R8
       29 JUMP                             ; [+1]
       30 MOVE                             R8 R1
       31 NAMECALL                         R5 R3 K10 ["SetAttribute"]
       33 CALL                             R5 3 0
       34 GETUPVAL                         R5 3
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+8]
       37 JUMPIF                           R4 ; [+7]
       38 GETIMPORT                        R5 K12 [xpcall]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 DUPCLOSURE                       R7 K13 [PROTO_37]
       44 CALL                             R5 2 0
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K14 ["observe"]
       48 MOVE                             R5 R0
       49 CALL                             R4 1 1
       50 LOADB                            R5 0
       51 CALL                             R4 1 1
       52 JUMPIFNOT                        R4 ; [+38]
       53 GETUPVAL                         R5 5
       54 JUMPIFNOT                        R5 ; [+36]
       55 GETTABLEKS                       R5 R4 K15 ["outputPinToConnectionMap"]
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 FORGPREP                         R5
       60 JUMPIFNOTEQKNIL                  R9 ; [+2]
       62 LOADB                            R11 0 +1
       63 LOADB                            R11 1
       64 FASTCALL2K                       ASSERT R11 K16 ; [+4]
       66 LOADK                            R12 K16 ["Luau"]
       67 GETIMPORT                        R10 K18 [assert]
       69 CALL                             R10 2 0
       70 GETUPVAL                         R10 6
       71 GETTABLEKS                       R10 R10 K19 ["hasDynamicInputPins"]
       73 GETUPVAL                         R11 5
       74 GETTABLEKS                       R12 R9 K20 ["inputNodeId"]
       76 CALL                             R10 2 1
       77 JUMPIFNOT                        R10 ; [+11]
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R10 R10 K21 ["renameDynamicInputPin"]
       81 GETUPVAL                         R11 1
       82 GETUPVAL                         R12 5
       83 GETTABLEKS                       R13 R9 K20 ["inputNodeId"]
       85 GETTABLEKS                       R14 R9 K22 ["inputNodePinId"]
       87 MOVE                             R15 R1
       88 CALL                             R10 5 0
       89 FORGLOOP                         R5 2 ; [-30]
       91 JUMPIFNOT                        R2 ; [+7]
       92 GETUPVAL                         R5 0
       93 MOVE                             R7 R2
       94 GETIMPORT                        R8 K26 [Enum.FinishRecordingOperation.Commit]
       96 NAMECALL                         R5 R5 K27 ["FinishRecording"]
       98 CALL                             R5 3 0
       99 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETUPVAL                         R3 1
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R3 2
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K0 ["idToInstance"]
       12 CALL                             R3 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 JUMPIFEQKNIL                     R1 ; [+3]
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 JUMPIFNOT                        R3 ; [+10]
       20 LOADK                            R7 K1 ["Folder"]
       21 NAMECALL                         R5 R3 K2 ["IsA"]
       23 CALL                             R5 2 1
       24 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       26 LOADK                            R6 K3 ["Expected parameter instance to be a Folder"]
       27 GETIMPORT                        R4 K5 [assert]
       29 CALL                             R4 2 0
       30 LOADNIL                          R4
       31 JUMPIFNOT                        R3 ; [+17]
       32 LOADK                            R8 K1 ["Folder"]
       33 NAMECALL                         R6 R3 K2 ["IsA"]
       35 CALL                             R6 2 1
       36 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       38 LOADK                            R7 K3 ["Expected parameter instance to be a Folder"]
       39 GETIMPORT                        R5 K5 [assert]
       41 CALL                             R5 2 0
       42 NEWTABLE                         R5 0 1
       44 MOVE                             R6 R3
       45 SETLIST                          R5 R6 1 [1]
       47 MOVE                             R4 R5
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K6 ["getAllParameterInstancesFromName"]
       52 MOVE                             R6 R2
       53 MOVE                             R7 R0
       54 CALL                             R5 2 1
       55 MOVE                             R4 R5
       56 GETUPVAL                         R5 4
       57 LOADK                            R7 K7 ["NativeGraphContext"]
       58 LOADK                            R8 K8 ["removeParameterAsync"]
       59 NAMECALL                         R5 R5 K9 ["TryBeginRecording"]
       61 CALL                             R5 3 1
       62 MOVE                             R6 R4
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 FORGPREP                         R6
       66 NAMECALL                         R11 R10 K10 ["GetChildren"]
       68 CALL                             R11 1 3
       69 FORGPREP                         R11
       70 LOADK                            R18 K11 ["ObjectValue"]
       71 NAMECALL                         R16 R15 K2 ["IsA"]
       73 CALL                             R16 2 1
       74 JUMPIFNOT                        R16 ; [+15]
       75 GETTABLEKS                       R16 R15 K12 ["Value"]
       77 JUMPIFNOT                        R16 ; [+12]
       78 GETUPVAL                         R17 3
       79 GETTABLEKS                       R17 R17 K13 ["getParameterWireInputPinId"]
       81 GETTABLEKS                       R18 R15 K14 ["Name"]
       83 CALL                             R17 1 1
       84 JUMPIFNOT                        R17 ; [+5]
       85 MOVE                             R20 R17
       86 LOADNIL                          R21
       87 NAMECALL                         R18 R16 K15 ["SetAttribute"]
       89 CALL                             R18 3 0
       90 FORGLOOP                         R11 2 ; [-21]
       92 GETUPVAL                         R11 5
       93 CALL                             R11 0 1
       94 JUMPIFNOT                        R11 ; [+4]
       95 LOADNIL                          R11
       96 SETTABLEKS                       R11 R10 K16 ["Parent"]
       98 JUMP                             ; [+3]
       99 NAMECALL                         R11 R10 K17 ["Destroy"]
      101 CALL                             R11 1 0
      102 FORGLOOP                         R6 2 ; [-37]
      104 GETUPVAL                         R8 3
      105 GETTABLEKS                       R8 R8 K18 ["getParameterInstanceName"]
      107 MOVE                             R9 R0
      108 CALL                             R8 1 -1
      109 NAMECALL                         R6 R2 K19 ["FindFirstChild"]
      111 CALL                             R6 -1 1
      112 JUMPIF                           R6 ; [+11]
      113 MOVE                             R8 R0
      114 NAMECALL                         R6 R2 K20 ["GetAttribute"]
      116 CALL                             R6 2 1
      117 JUMPIFEQKNIL                     R6 ; [+6]
      119 MOVE                             R8 R0
      120 LOADNIL                          R9
      121 NAMECALL                         R6 R2 K15 ["SetAttribute"]
      123 CALL                             R6 3 0
      124 JUMPIFNOT                        R5 ; [+7]
      125 GETUPVAL                         R6 4
      126 MOVE                             R8 R5
      127 GETIMPORT                        R9 K24 [Enum.FinishRecordingOperation.Commit]
      129 NAMECALL                         R6 R6 K25 ["FinishRecording"]
      131 CALL                             R6 3 0
      132 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R4 1
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K0 ["idToInstance"]
       10 CALL                             R4 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 JUMPIFEQKNIL                     R2 ; [+3]
       15 JUMPIF                           R4 ; [+1]
       16 RETURN                           R0 0
       17 NEWTABLE                         R5 0 0
       19 JUMPIFNOT                        R4 ; [+18]
       20 LOADK                            R9 K1 ["Folder"]
       21 NAMECALL                         R7 R4 K2 ["IsA"]
       23 CALL                             R7 2 1
       24 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       26 LOADK                            R8 K3 ["Expected specified parameterNodeInstance to be a Folder"]
       27 GETIMPORT                        R6 K5 [assert]
       29 CALL                             R6 2 0
       30 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       32 MOVE                             R7 R5
       33 MOVE                             R8 R4
       34 GETIMPORT                        R6 K8 [table.insert]
       36 CALL                             R6 2 0
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K9 ["getAllParameterInstancesFromName"]
       41 MOVE                             R7 R3
       42 MOVE                             R8 R0
       43 CALL                             R6 2 1
       44 MOVE                             R5 R6
       45 LENGTH                           R6 R5
       46 JUMPIFNOTEQKN                    R6 K10 [0] ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R6 3
       50 LOADK                            R8 K11 ["NativeGraphContext"]
       51 LOADK                            R9 K12 ["renameParameterAsync"]
       52 NAMECALL                         R6 R6 K13 ["TryBeginRecording"]
       54 CALL                             R6 3 1
       55 MOVE                             R9 R1
       56 NAMECALL                         R7 R3 K14 ["GetAttribute"]
       58 CALL                             R7 2 1
       59 JUMPIF                           R7 ; [+8]
       60 MOVE                             R9 R1
       61 MOVE                             R12 R0
       62 NAMECALL                         R10 R3 K14 ["GetAttribute"]
       64 CALL                             R10 2 -1
       65 NAMECALL                         R7 R3 K15 ["SetAttribute"]
       67 CALL                             R7 -1 0
       68 GETUPVAL                         R7 4
       69 GETTABLEKS                       R7 R7 K16 ["parameterDestroyConnectionMapRef"]
       71 GETTABLEKS                       R7 R7 K17 ["current"]
       73 GETIMPORT                        R8 K19 [table.clone]
       75 MOVE                             R9 R7
       76 CALL                             R8 1 1
       77 MOVE                             R9 R5
       78 LOADNIL                          R10
       79 LOADNIL                          R11
       80 FORGPREP                         R9
       81 NAMECALL                         R14 R13 K20 ["GetChildren"]
       83 CALL                             R14 1 3
       84 FORGPREP                         R14
       85 LOADK                            R21 K21 ["ObjectValue"]
       86 NAMECALL                         R19 R18 K2 ["IsA"]
       88 CALL                             R19 2 1
       89 JUMPIFNOT                        R19 ; [+17]
       90 GETTABLEKS                       R19 R18 K22 ["Value"]
       92 JUMPIFNOT                        R19 ; [+14]
       93 GETUPVAL                         R20 2
       94 GETTABLEKS                       R20 R20 K23 ["getParameterWireInputPinId"]
       96 GETTABLEKS                       R21 R18 K24 ["Name"]
       98 CALL                             R20 1 1
       99 JUMPIFNOT                        R20 ; [+7]
      100 GETUPVAL                         R21 2
      101 GETTABLEKS                       R21 R21 K25 ["setParameterBindingName"]
      103 MOVE                             R22 R19
      104 MOVE                             R23 R20
      105 MOVE                             R24 R1
      106 CALL                             R21 3 0
      107 FORGLOOP                         R14 2 ; [-23]
      109 GETUPVAL                         R14 2
      110 GETTABLEKS                       R14 R14 K26 ["getParameterInstanceName"]
      112 MOVE                             R15 R1
      113 CALL                             R14 1 1
      114 SETTABLEKS                       R14 R13 K24 ["Name"]
      116 GETUPVAL                         R16 5
      117 GETTABLEKS                       R16 R16 K27 ["NODE_ATTRIBUTES"]
      119 GETTABLEKS                       R16 R16 K28 ["BindingName"]
      121 MOVE                             R17 R1
      122 NAMECALL                         R14 R13 K15 ["SetAttribute"]
      124 CALL                             R14 3 0
      125 GETUPVAL                         R14 1
      126 MOVE                             R16 R13
      127 NAMECALL                         R14 R14 K29 ["instanceToId"]
      129 CALL                             R14 2 1
      130 GETTABLE                         R15 R7 R14
      131 JUMPIFNOT                        R15 ; [+11]
      132 DUPTABLE                         R15 K33 [{"connection", "nodeId", "parameterName"}]
      133 GETTABLE                         R16 R7 R14
      134 GETTABLEKS                       R16 R16 K30 ["connection"]
      136 SETTABLEKS                       R16 R15 K30 ["connection"]
      138 SETTABLEKS                       R14 R15 K31 ["nodeId"]
      140 SETTABLEKS                       R1 R15 K32 ["parameterName"]
      142 SETTABLE                         R15 R8 R14
      143 FORGLOOP                         R9 2 ; [-63]
      145 GETUPVAL                         R9 4
      146 GETTABLEKS                       R9 R9 K34 ["setParameterDestroyConnectionMap"]
      148 MOVE                             R10 R8
      149 CALL                             R9 1 0
      150 LOADB                            R9 0
      151 JUMPIFEQKNIL                     R2 ; [+9]
      153 GETUPVAL                         R11 2
      154 GETTABLEKS                       R11 R11 K26 ["getParameterInstanceName"]
      156 MOVE                             R12 R0
      157 CALL                             R11 1 -1
      158 NAMECALL                         R9 R3 K35 ["FindFirstChild"]
      160 CALL                             R9 -1 1
      161 JUMPIF                           R9 ; [+5]
      162 MOVE                             R12 R0
      163 LOADNIL                          R13
      164 NAMECALL                         R10 R3 K15 ["SetAttribute"]
      166 CALL                             R10 3 0
      167 JUMPIFNOT                        R6 ; [+7]
      168 GETUPVAL                         R10 3
      169 MOVE                             R12 R6
      170 GETIMPORT                        R13 K39 [Enum.FinishRecordingOperation.Commit]
      172 NAMECALL                         R10 R10 K40 ["FinishRecording"]
      174 CALL                             R10 3 0
      175 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["getAllParameterInstancesFromName"]
        8 MOVE                             R5 R3
        9 MOVE                             R6 R0
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 2
       12 LOADK                            R7 K1 ["NativeGraphContext"]
       13 LOADK                            R8 K2 ["setParameterNodeTypeAsync"]
       14 NAMECALL                         R5 R5 K3 ["TryBeginRecording"]
       16 CALL                             R5 3 1
       17 MOVE                             R8 R0
       18 MOVE                             R9 R2
       19 NAMECALL                         R6 R3 K4 ["SetAttribute"]
       21 CALL                             R6 3 0
       22 MOVE                             R6 R4
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 GETUPVAL                         R13 3
       27 GETTABLEKS                       R13 R13 K5 ["NODE_ATTRIBUTES"]
       29 GETTABLEKS                       R13 R13 K6 ["ParameterType"]
       31 MOVE                             R14 R1
       32 NAMECALL                         R11 R10 K4 ["SetAttribute"]
       34 CALL                             R11 3 0
       35 FORGLOOP                         R6 2 ; [-10]
       37 JUMPIFNOT                        R5 ; [+7]
       38 GETUPVAL                         R6 2
       39 MOVE                             R8 R5
       40 GETIMPORT                        R9 K10 [Enum.FinishRecordingOperation.Commit]
       42 NAMECALL                         R6 R6 K11 ["FinishRecording"]
       44 CALL                             R6 3 0
       45 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_50:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 NEWTABLE                         R2 0 0
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 1
       10 MOVE                             R3 R1
       11 SETLIST                          R2 R3 1 [1]
       13 RETURN                           R2 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_53:
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
       14 GETTABLEKS                       R5 R5 K2 ["useState"]
       16 GETIMPORT                        R6 K5 [Rect.new]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 CALL                             R6 4 -1
       23 CALL                             R5 -1 2
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K6 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 3
       30 CALL                             R8 0 1
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R8
       37 NEWTABLE                         R11 0 1
       39 MOVE                             R12 R8
       40 SETLIST                          R11 R12 1 [1]
       42 CALL                             R9 2 1
       43 GETUPVAL                         R10 5
       44 CALL                             R10 0 0
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R9
       50 NEWTABLE                         R12 0 1
       52 MOVE                             R13 R9
       53 SETLIST                          R12 R13 1 [1]
       55 CALL                             R10 2 0
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K0 ["useContext"]
       59 GETUPVAL                         R11 6
       60 GETTABLEKS                       R11 R11 K1 ["Context"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R10 R10 K9 ["instanceRegistry"]
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R11 R11 K7 ["useMemo"]
       68 NEWCLOSURE                       R12 P2
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R8
       71 NEWTABLE                         R13 0 1
       73 MOVE                             R14 R8
       74 SETLIST                          R13 R14 1 [1]
       76 CALL                             R11 2 1
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K7 ["useMemo"]
       80 NEWCLOSURE                       R13 P3
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 NEWTABLE                         R14 0 3
       87 MOVE                             R15 R10
       88 MOVE                             R16 R9
       89 MOVE                             R17 R11
       90 SETLIST                          R14 R15 3 [1]
       92 CALL                             R12 2 1
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K2 ["useState"]
       96 LOADNIL                          R14
       97 CALL                             R13 1 2
       98 GETUPVAL                         R15 1
       99 GETTABLEKS                       R15 R15 K2 ["useState"]
      101 NEWTABLE                         R16 0 0
      103 CALL                             R15 1 2
      104 GETUPVAL                         R17 1
      105 GETTABLEKS                       R17 R17 K2 ["useState"]
      107 NEWTABLE                         R18 0 0
      109 CALL                             R17 1 2
      110 GETUPVAL                         R19 8
      111 GETTABLEKS                       R19 R19 K10 ["useRefToState"]
      113 MOVE                             R20 R13
      114 CALL                             R19 1 1
      115 GETUPVAL                         R20 1
      116 GETTABLEKS                       R20 R20 K8 ["useEffect"]
      118 NEWCLOSURE                       R21 P4
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R6
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R3
      130 NEWTABLE                         R22 0 6
      132 MOVE                             R23 R12
      133 GETTABLEKS                       R24 R0 K11 ["testOverrideGraphPayloadMap"]
      135 MOVE                             R25 R14
      136 MOVE                             R26 R6
      137 GETTABLEKS                       R27 R1 K12 ["setMap"]
      139 GETTABLEKS                       R28 R2 K12 ["setMap"]
      141 SETLIST                          R22 R23 6 [1]
      143 CALL                             R20 2 0
      144 GETUPVAL                         R20 1
      145 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      147 NEWCLOSURE                       R21 P5
      148 CAPTURE                          VAL R10
      149 CAPTURE                          UPVAL U7
      150 NEWTABLE                         R22 0 1
      152 MOVE                             R23 R10
      153 SETLIST                          R22 R23 1 [1]
      155 CALL                             R20 2 1
      156 GETUPVAL                         R21 1
      157 GETTABLEKS                       R21 R21 K13 ["useCallback"]
      159 NEWCLOSURE                       R22 P6
      160 CAPTURE                          UPVAL U10
      161 CAPTURE                          VAL R10
      162 CAPTURE                          UPVAL U7
      163 NEWTABLE                         R23 0 1
      165 MOVE                             R24 R10
      166 SETLIST                          R23 R24 1 [1]
      168 CALL                             R21 2 1
      169 GETUPVAL                         R22 1
      170 GETTABLEKS                       R22 R22 K13 ["useCallback"]
      172 NEWCLOSURE                       R23 P7
      173 CAPTURE                          VAL R10
      174 CAPTURE                          UPVAL U7
      175 NEWTABLE                         R24 0 1
      177 MOVE                             R25 R10
      178 SETLIST                          R24 R25 1 [1]
      180 CALL                             R22 2 1
      181 GETUPVAL                         R23 1
      182 GETTABLEKS                       R23 R23 K13 ["useCallback"]
      184 NEWCLOSURE                       R24 P8
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R10
      187 NEWTABLE                         R25 0 3
      189 MOVE                             R26 R10
      190 GETTABLEKS                       R27 R4 K14 ["selectionService"]
      192 MOVE                             R28 R9
      193 SETLIST                          R25 R26 3 [1]
      195 CALL                             R23 2 1
      196 GETUPVAL                         R24 1
      197 GETTABLEKS                       R24 R24 K13 ["useCallback"]
      199 NEWCLOSURE                       R25 P9
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R10
      204 NEWTABLE                         R26 0 4
      206 GETTABLEKS                       R27 R2 K15 ["get"]
      208 GETTABLEKS                       R28 R4 K14 ["selectionService"]
      210 MOVE                             R29 R10
      211 MOVE                             R30 R13
      212 SETLIST                          R26 R27 4 [1]
      214 CALL                             R24 2 1
      215 GETUPVAL                         R25 1
      216 GETTABLEKS                       R25 R25 K2 ["useState"]
      218 LOADK                            R26 K16 [""]
      219 CALL                             R25 1 2
      220 GETUPVAL                         R27 1
      221 GETTABLEKS                       R27 R27 K2 ["useState"]
      223 LOADNIL                          R28
      224 CALL                             R27 1 2
      225 GETUPVAL                         R29 11
      226 GETTABLEKS                       R29 R29 K17 ["useSignalState"]
      228 MOVE                             R30 R11
      229 CALL                             R29 1 1
      230 GETUPVAL                         R30 1
      231 GETTABLEKS                       R30 R30 K7 ["useMemo"]
      233 NEWCLOSURE                       R31 P10
      234 CAPTURE                          VAL R29
      235 NEWTABLE                         R32 0 1
      237 MOVE                             R33 R29
      238 SETLIST                          R32 R33 1 [1]
      240 CALL                             R30 2 1
      241 GETUPVAL                         R31 11
      242 GETTABLEKS                       R31 R31 K17 ["useSignalState"]
      244 MOVE                             R32 R11
      245 CALL                             R31 1 1
      246 GETUPVAL                         R32 1
      247 GETTABLEKS                       R32 R32 K8 ["useEffect"]
      249 NEWCLOSURE                       R33 P11
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R28
      253 CAPTURE                          UPVAL U12
      254 NEWTABLE                         R34 0 1
      256 MOVE                             R35 R31
      257 SETLIST                          R34 R35 1 [1]
      259 CALL                             R32 2 0
      260 GETUPVAL                         R32 1
      261 GETTABLEKS                       R32 R32 K8 ["useEffect"]
      263 NEWCLOSURE                       R33 P12
      264 CAPTURE                          VAL R25
      265 CAPTURE                          VAL R31
      266 CAPTURE                          UPVAL U13
      267 NEWTABLE                         R34 0 2
      269 MOVE                             R35 R25
      270 MOVE                             R36 R31
      271 SETLIST                          R34 R35 2 [1]
      273 CALL                             R32 2 0
      274 GETUPVAL                         R31 14
      275 GETTABLEKS                       R31 R31 K18 ["useProducer"]
      277 GETUPVAL                         R32 1
      278 GETTABLEKS                       R32 R32 K13 ["useCallback"]
      280 NEWCLOSURE                       R33 P13
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R13
      283 CAPTURE                          UPVAL U10
      284 CAPTURE                          UPVAL U15
      285 CAPTURE                          UPVAL U7
      286 CAPTURE                          VAL R10
      287 CAPTURE                          UPVAL U16
      288 CAPTURE                          VAL R4
      289 NEWTABLE                         R34 0 4
      291 GETTABLEKS                       R35 R4 K14 ["selectionService"]
      293 MOVE                             R36 R11
      294 MOVE                             R37 R13
      295 MOVE                             R38 R10
      296 SETLIST                          R34 R35 4 [1]
      298 CALL                             R32 2 -1
      299 CALL                             R31 -1 0
      300 GETUPVAL                         R31 17
      301 GETTABLEKS                       R31 R31 K18 ["useProducer"]
      303 DUPCLOSURE                       R32 K19 [PROTO_22]
      304 CALL                             R31 1 0
      305 GETUPVAL                         R31 1
      306 GETTABLEKS                       R31 R31 K13 ["useCallback"]
      308 NEWCLOSURE                       R32 P15
      309 CAPTURE                          VAL R11
      310 CAPTURE                          UPVAL U7
      311 CAPTURE                          VAL R4
      312 NEWTABLE                         R33 0 2
      314 MOVE                             R34 R11
      315 GETTABLEKS                       R35 R4 K14 ["selectionService"]
      317 SETLIST                          R33 R34 2 [1]
      319 CALL                             R31 2 1
      320 GETUPVAL                         R32 1
      321 GETTABLEKS                       R32 R32 K13 ["useCallback"]
      323 NEWCLOSURE                       R33 P16
      324 CAPTURE                          VAL R11
      325 CAPTURE                          VAL R13
      326 CAPTURE                          UPVAL U10
      327 CAPTURE                          UPVAL U7
      328 CAPTURE                          VAL R10
      329 CAPTURE                          UPVAL U18
      330 CAPTURE                          VAL R4
      331 NEWTABLE                         R34 0 4
      333 GETTABLEKS                       R35 R4 K14 ["selectionService"]
      335 MOVE                             R36 R11
      336 MOVE                             R37 R10
      337 MOVE                             R38 R13
      338 SETLIST                          R34 R35 4 [1]
      340 CALL                             R32 2 1
      341 GETUPVAL                         R33 1
      342 GETTABLEKS                       R33 R33 K13 ["useCallback"]
      344 NEWCLOSURE                       R34 P17
      345 CAPTURE                          VAL R11
      346 CAPTURE                          VAL R13
      347 CAPTURE                          UPVAL U7
      348 CAPTURE                          UPVAL U18
      349 CAPTURE                          UPVAL U10
      350 CAPTURE                          VAL R10
      351 CAPTURE                          VAL R32
      352 CAPTURE                          VAL R4
      353 NEWTABLE                         R35 0 5
      355 GETTABLEKS                       R36 R4 K14 ["selectionService"]
      357 MOVE                             R37 R11
      358 MOVE                             R38 R10
      359 MOVE                             R39 R13
      360 MOVE                             R40 R32
      361 SETLIST                          R35 R36 5 [1]
      363 CALL                             R33 2 1
      364 GETUPVAL                         R34 1
      365 GETTABLEKS                       R34 R34 K13 ["useCallback"]
      367 NEWCLOSURE                       R35 P18
      368 CAPTURE                          VAL R13
      369 CAPTURE                          UPVAL U10
      370 CAPTURE                          UPVAL U7
      371 CAPTURE                          VAL R10
      372 CAPTURE                          UPVAL U19
      373 NEWTABLE                         R36 0 2
      375 MOVE                             R37 R10
      376 MOVE                             R38 R13
      377 SETLIST                          R36 R37 2 [1]
      379 CALL                             R34 2 1
      380 GETUPVAL                         R35 20
      381 MOVE                             R36 R10
      382 MOVE                             R37 R11
      383 CALL                             R35 2 1
      384 GETUPVAL                         R36 21
      385 MOVE                             R37 R10
      386 MOVE                             R38 R11
      387 CALL                             R36 2 1
      388 GETUPVAL                         R37 1
      389 GETTABLEKS                       R37 R37 K13 ["useCallback"]
      391 NEWCLOSURE                       R38 P19
      392 CAPTURE                          VAL R13
      393 CAPTURE                          UPVAL U10
      394 CAPTURE                          UPVAL U7
      395 CAPTURE                          VAL R10
      396 NEWTABLE                         R39 0 2
      398 MOVE                             R40 R10
      399 MOVE                             R41 R13
      400 SETLIST                          R39 R40 2 [1]
      402 CALL                             R37 2 1
      403 GETUPVAL                         R38 1
      404 GETTABLEKS                       R38 R38 K13 ["useCallback"]
      406 NEWCLOSURE                       R39 P20
      407 CAPTURE                          VAL R13
      408 CAPTURE                          UPVAL U10
      409 CAPTURE                          UPVAL U7
      410 CAPTURE                          VAL R10
      411 CAPTURE                          UPVAL U19
      412 CAPTURE                          VAL R35
      413 NEWTABLE                         R40 0 3
      415 MOVE                             R41 R10
      416 MOVE                             R42 R13
      417 GETTABLEKS                       R43 R35 K20 ["setNodeOutputInfoInDestroyMapRef"]
      419 SETLIST                          R40 R41 3 [1]
      421 CALL                             R38 2 1
      422 GETUPVAL                         R39 1
      423 GETTABLEKS                       R39 R39 K13 ["useCallback"]
      425 NEWCLOSURE                       R40 P21
      426 CAPTURE                          VAL R11
      427 CAPTURE                          UPVAL U10
      428 CAPTURE                          VAL R10
      429 CAPTURE                          UPVAL U7
      430 CAPTURE                          VAL R33
      431 CAPTURE                          VAL R38
      432 CAPTURE                          UPVAL U19
      433 NEWTABLE                         R41 0 7
      435 GETTABLEKS                       R42 R4 K14 ["selectionService"]
      437 MOVE                             R43 R11
      438 MOVE                             R44 R13
      439 MOVE                             R45 R10
      440 MOVE                             R46 R32
      441 MOVE                             R47 R33
      442 MOVE                             R48 R38
      443 SETLIST                          R41 R42 7 [1]
      445 CALL                             R39 2 1
      446 GETUPVAL                         R40 1
      447 GETTABLEKS                       R40 R40 K13 ["useCallback"]
      449 NEWCLOSURE                       R41 P22
      450 CAPTURE                          VAL R7
      451 CAPTURE                          UPVAL U10
      452 NEWTABLE                         R42 0 0
      454 CALL                             R40 2 1
      455 GETUPVAL                         R41 1
      456 GETTABLEKS                       R41 R41 K13 ["useCallback"]
      458 NEWCLOSURE                       R42 P23
      459 CAPTURE                          VAL R7
      460 CAPTURE                          UPVAL U10
      461 NEWTABLE                         R43 0 0
      463 CALL                             R41 2 1
      464 GETUPVAL                         R42 1
      465 GETTABLEKS                       R42 R42 K8 ["useEffect"]
      467 NEWCLOSURE                       R43 P24
      468 CAPTURE                          VAL R7
      469 CAPTURE                          UPVAL U10
      470 NEWTABLE                         R44 0 0
      472 CALL                             R42 2 0
      473 GETUPVAL                         R42 1
      474 GETTABLEKS                       R42 R42 K13 ["useCallback"]
      476 NEWCLOSURE                       R43 P25
      477 CAPTURE                          UPVAL U10
      478 CAPTURE                          VAL R10
      479 CAPTURE                          UPVAL U12
      480 NEWTABLE                         R44 0 1
      482 MOVE                             R45 R10
      483 SETLIST                          R44 R45 1 [1]
      485 CALL                             R42 2 1
      486 GETUPVAL                         R43 1
      487 GETTABLEKS                       R43 R43 K13 ["useCallback"]
      489 NEWCLOSURE                       R44 P26
      490 CAPTURE                          UPVAL U10
      491 CAPTURE                          VAL R10
      492 NEWTABLE                         R45 0 1
      494 MOVE                             R46 R10
      495 SETLIST                          R45 R46 1 [1]
      497 CALL                             R43 2 1
      498 GETUPVAL                         R44 1
      499 GETTABLEKS                       R44 R44 K13 ["useCallback"]
      501 NEWCLOSURE                       R45 P27
      502 CAPTURE                          UPVAL U10
      503 CAPTURE                          VAL R10
      504 CAPTURE                          UPVAL U18
      505 CAPTURE                          UPVAL U22
      506 CAPTURE                          VAL R1
      507 CAPTURE                          VAL R13
      508 CAPTURE                          UPVAL U7
      509 NEWTABLE                         R46 0 3
      511 MOVE                             R47 R10
      512 MOVE                             R48 R13
      513 GETTABLEKS                       R49 R1 K21 ["observe"]
      515 SETLIST                          R46 R47 3 [1]
      517 CALL                             R44 2 1
      518 GETUPVAL                         R45 1
      519 GETTABLEKS                       R45 R45 K13 ["useCallback"]
      521 NEWCLOSURE                       R46 P28
      522 CAPTURE                          UPVAL U10
      523 CAPTURE                          UPVAL U7
      524 CAPTURE                          VAL R10
      525 NEWTABLE                         R47 0 1
      527 MOVE                             R48 R10
      528 SETLIST                          R47 R48 1 [1]
      530 CALL                             R45 2 1
      531 GETUPVAL                         R46 1
      532 GETTABLEKS                       R46 R46 K13 ["useCallback"]
      534 NEWCLOSURE                       R47 P29
      535 CAPTURE                          VAL R11
      536 CAPTURE                          VAL R13
      537 CAPTURE                          VAL R10
      538 CAPTURE                          UPVAL U7
      539 CAPTURE                          UPVAL U10
      540 CAPTURE                          UPVAL U13
      541 NEWTABLE                         R48 0 3
      543 MOVE                             R49 R11
      544 MOVE                             R50 R10
      545 MOVE                             R51 R13
      546 SETLIST                          R48 R49 3 [1]
      548 CALL                             R46 2 1
      549 GETUPVAL                         R47 1
      550 GETTABLEKS                       R47 R47 K13 ["useCallback"]
      552 NEWCLOSURE                       R48 P30
      553 CAPTURE                          VAL R11
      554 CAPTURE                          VAL R10
      555 CAPTURE                          UPVAL U7
      556 CAPTURE                          UPVAL U10
      557 CAPTURE                          VAL R36
      558 CAPTURE                          UPVAL U18
      559 NEWTABLE                         R49 0 4
      561 MOVE                             R50 R10
      562 MOVE                             R51 R11
      563 MOVE                             R52 R13
      564 GETTABLEKS                       R53 R36 K22 ["parameterDestroyConnectionMapRef"]
      566 SETLIST                          R49 R50 4 [1]
      568 CALL                             R47 2 1
      569 GETUPVAL                         R48 1
      570 GETTABLEKS                       R48 R48 K13 ["useCallback"]
      572 NEWCLOSURE                       R49 P31
      573 CAPTURE                          VAL R11
      574 CAPTURE                          UPVAL U7
      575 CAPTURE                          UPVAL U10
      576 CAPTURE                          UPVAL U18
      577 NEWTABLE                         R50 0 1
      579 MOVE                             R51 R11
      580 SETLIST                          R50 R51 1 [1]
      582 CALL                             R48 2 1
      583 GETUPVAL                         R49 1
      584 GETTABLEKS                       R49 R49 K13 ["useCallback"]
      586 NEWCLOSURE                       R50 P32
      587 CAPTURE                          VAL R10
      588 CAPTURE                          UPVAL U10
      589 CAPTURE                          UPVAL U13
      590 NEWTABLE                         R51 0 1
      592 MOVE                             R52 R10
      593 SETLIST                          R51 R52 1 [1]
      595 CALL                             R49 2 1
      596 GETUPVAL                         R50 1
      597 GETTABLEKS                       R50 R50 K8 ["useEffect"]
      599 NEWCLOSURE                       R51 P33
      600 CAPTURE                          UPVAL U9
      601 CAPTURE                          VAL R35
      602 CAPTURE                          VAL R10
      603 CAPTURE                          VAL R19
      604 CAPTURE                          UPVAL U7
      605 CAPTURE                          UPVAL U13
      606 NEWTABLE                         R52 0 2
      608 MOVE                             R53 R10
      609 GETTABLEKS                       R54 R35 K23 ["nodeDestroyConnectionMapRef"]
      611 SETLIST                          R52 R53 2 [1]
      613 CALL                             R50 2 0
      614 GETUPVAL                         R50 1
      615 GETTABLEKS                       R50 R50 K8 ["useEffect"]
      617 NEWCLOSURE                       R51 P34
      618 CAPTURE                          UPVAL U9
      619 CAPTURE                          VAL R36
      620 CAPTURE                          VAL R10
      621 CAPTURE                          VAL R46
      622 CAPTURE                          UPVAL U18
      623 NEWTABLE                         R52 0 3
      625 MOVE                             R53 R10
      626 GETTABLEKS                       R54 R36 K22 ["parameterDestroyConnectionMapRef"]
      628 MOVE                             R55 R46
      629 SETLIST                          R52 R53 3 [1]
      631 CALL                             R50 2 0
      632 GETUPVAL                         R50 23
      633 MOVE                             R51 R2
      634 MOVE                             R52 R1
      635 CALL                             R50 2 1
      636 DUPTABLE                         R51 K40 [{"selectedGraphInstanceId", "graphRect", "selectNodesFromRectAsync", "currentAnimationId", "sourceAssetId", "selectedGraphKey", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById", "beginUndoTransaction", "finishUndoTransaction", "undoTransaction", "observeGraphNodeMap", "observeRenderInfoMap", "observeNodePropsById", "hasGraphOutput"}]
      637 JUMPIFNOT                        R13 ; [+3]
      638 GETTABLEKS                       R52 R13 K41 ["graphInstanceId"]
      640 JUMP                             ; [+1]
      641 LOADNIL                          R52
      642 SETTABLEKS                       R52 R51 K24 ["selectedGraphInstanceId"]
      644 SETTABLEKS                       R5 R51 K25 ["graphRect"]
      646 SETTABLEKS                       R24 R51 K26 ["selectNodesFromRectAsync"]
      648 SETTABLEKS                       R25 R51 K27 ["currentAnimationId"]
      650 SETTABLEKS                       R27 R51 K28 ["sourceAssetId"]
      652 SETTABLEKS                       R30 R51 K29 ["selectedGraphKey"]
      654 SETTABLEKS                       R11 R51 K30 ["observeSelectedGraphInstance"]
      656 GETTABLEKS                       R52 R1 K21 ["observe"]
      658 SETTABLEKS                       R52 R51 K31 ["observeGraphNodeById"]
      660 GETTABLEKS                       R52 R2 K21 ["observe"]
      662 SETTABLEKS                       R52 R51 K32 ["observeNodeRenderInfoById"]
      664 SETTABLEKS                       R40 R51 K33 ["beginUndoTransaction"]
      666 SETTABLEKS                       R41 R51 K34 ["finishUndoTransaction"]
      668 SETTABLEKS                       R7 R51 K35 ["undoTransaction"]
      670 GETTABLEKS                       R52 R1 K42 ["observeMap"]
      672 SETTABLEKS                       R52 R51 K36 ["observeGraphNodeMap"]
      674 GETTABLEKS                       R52 R2 K42 ["observeMap"]
      676 SETTABLEKS                       R52 R51 K37 ["observeRenderInfoMap"]
      678 GETTABLEKS                       R52 R3 K21 ["observe"]
      680 SETTABLEKS                       R52 R51 K38 ["observeNodePropsById"]
      682 GETTABLEKS                       R52 R50 K39 ["hasGraphOutput"]
      684 SETTABLEKS                       R52 R51 K39 ["hasGraphOutput"]
      686 GETUPVAL                         R52 1
      687 GETTABLEKS                       R52 R52 K7 ["useMemo"]
      689 DUPCLOSURE                       R53 K43 [PROTO_50]
      690 NEWTABLE                         R54 0 0
      692 CALL                             R52 2 1
      693 GETUPVAL                         R53 1
      694 GETTABLEKS                       R53 R53 K7 ["useMemo"]
      696 NEWCLOSURE                       R54 P36
      697 CAPTURE                          UPVAL U24
      698 CAPTURE                          VAL R11
      699 NEWTABLE                         R55 0 2
      701 MOVE                             R56 R11
      702 MOVE                             R57 R13
      703 SETLIST                          R55 R56 2 [1]
      705 CALL                             R53 2 1
      706 GETUPVAL                         R54 25
      707 GETTABLEKS                       R54 R54 K44 ["usePasteHooks"]
      709 MOVE                             R55 R11
      710 CALL                             R54 1 0
      711 GETUPVAL                         R54 11
      712 GETTABLEKS                       R54 R54 K17 ["useSignalState"]
      714 MOVE                             R55 R53
      715 CALL                             R54 1 1
      716 GETUPVAL                         R55 26
      717 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      719 GETUPVAL                         R56 27
      720 GETTABLEKS                       R56 R56 K46 ["GRAPH_PAYLOAD_MAP"]
      722 MOVE                             R57 R13
      723 CALL                             R55 2 0
      724 GETUPVAL                         R55 26
      725 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      727 GETUPVAL                         R56 27
      728 GETTABLEKS                       R56 R56 K47 ["GRAPH_RENDER_INFO"]
      730 MOVE                             R57 R15
      731 CALL                             R55 2 0
      732 GETUPVAL                         R55 26
      733 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      735 GETUPVAL                         R56 27
      736 GETTABLEKS                       R56 R56 K48 ["GRAPH_NODE_PROPS"]
      738 MOVE                             R57 R17
      739 CALL                             R55 2 0
      740 GETUPVAL                         R55 26
      741 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      743 GETUPVAL                         R56 27
      744 GETTABLEKS                       R56 R56 K49 ["TIME_RANGE"]
      746 MOVE                             R57 R52
      747 CALL                             R55 2 0
      748 GETUPVAL                         R55 26
      749 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      751 GETUPVAL                         R56 27
      752 GETTABLEKS                       R56 R56 K50 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      754 MOVE                             R57 R5
      755 CALL                             R55 2 0
      756 GETUPVAL                         R55 26
      757 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      759 GETUPVAL                         R56 27
      760 GETTABLEKS                       R56 R56 K51 ["CURRENT_ANIMATION_ID"]
      762 MOVE                             R57 R25
      763 CALL                             R55 2 0
      764 GETUPVAL                         R55 26
      765 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      767 GETUPVAL                         R56 27
      768 GETTABLEKS                       R56 R56 K52 ["SOURCE_ASSET_ID"]
      770 MOVE                             R57 R27
      771 CALL                             R55 2 0
      772 GETUPVAL                         R55 26
      773 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      775 GETUPVAL                         R56 27
      776 GETTABLEKS                       R56 R56 K53 ["SELECTED_GRAPH_KEY"]
      778 MOVE                             R57 R30
      779 CALL                             R55 2 0
      780 GETUPVAL                         R55 26
      781 GETTABLEKS                       R55 R55 K45 ["useReplicatedState"]
      783 GETUPVAL                         R56 27
      784 GETTABLEKS                       R56 R56 K54 ["UNDO_TRANSACTION"]
      786 MOVE                             R57 R7
      787 CALL                             R55 2 0
      788 GETUPVAL                         R55 26
      789 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      791 GETUPVAL                         R56 28
      792 GETTABLEKS                       R56 R56 K56 ["CREATE_PARAMETER"]
      794 MOVE                             R57 R32
      795 CALL                             R55 2 0
      796 GETUPVAL                         R55 26
      797 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      799 GETUPVAL                         R56 28
      800 GETTABLEKS                       R56 R56 K57 ["CREATE_CONNECTED_PARAMETER"]
      802 MOVE                             R57 R39
      803 CALL                             R55 2 0
      804 GETUPVAL                         R55 26
      805 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      807 GETUPVAL                         R56 28
      808 GETTABLEKS                       R56 R56 K58 ["CREATE_EXISTING_PARAMETER"]
      810 MOVE                             R57 R33
      811 CALL                             R55 2 0
      812 GETUPVAL                         R55 26
      813 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      815 GETUPVAL                         R56 28
      816 GETTABLEKS                       R56 R56 K59 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      818 MOVE                             R57 R31
      819 CALL                             R55 2 0
      820 GETUPVAL                         R55 26
      821 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      823 GETUPVAL                         R56 28
      824 GETTABLEKS                       R56 R56 K60 ["SELECT_NODES"]
      826 MOVE                             R57 R23
      827 CALL                             R55 2 0
      828 GETUPVAL                         R55 26
      829 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      831 GETUPVAL                         R56 28
      832 GETTABLEKS                       R56 R56 K61 ["SELECT_NODES_FROM_RECT"]
      834 MOVE                             R57 R24
      835 CALL                             R55 2 0
      836 GETUPVAL                         R55 26
      837 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      839 GETUPVAL                         R56 28
      840 GETTABLEKS                       R56 R56 K62 ["SET_NODE_POSITIONS"]
      842 MOVE                             R57 R21
      843 CALL                             R55 2 0
      844 GETUPVAL                         R55 26
      845 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      847 GETUPVAL                         R56 28
      848 GETTABLEKS                       R56 R56 K63 ["SET_NODE_SIZE"]
      850 MOVE                             R57 R22
      851 CALL                             R55 2 0
      852 GETUPVAL                         R55 26
      853 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      855 GETUPVAL                         R56 28
      856 GETTABLEKS                       R56 R56 K64 ["SET_NODE_CONNECTION"]
      858 MOVE                             R57 R38
      859 CALL                             R55 2 0
      860 GETUPVAL                         R55 26
      861 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      863 GETUPVAL                         R56 28
      864 GETTABLEKS                       R56 R56 K65 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      866 MOVE                             R57 R37
      867 CALL                             R55 2 0
      868 GETUPVAL                         R55 26
      869 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      871 GETUPVAL                         R56 28
      872 GETTABLEKS                       R56 R56 K66 ["REMOVE_NODE_INPUT_CONNECTION"]
      874 MOVE                             R57 R34
      875 CALL                             R55 2 0
      876 GETUPVAL                         R55 26
      877 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      879 GETUPVAL                         R56 28
      880 GETTABLEKS                       R56 R56 K67 ["REMOVE_PARAMETER"]
      882 MOVE                             R57 R46
      883 CALL                             R55 2 0
      884 GETUPVAL                         R55 26
      885 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      887 GETUPVAL                         R56 28
      888 GETTABLEKS                       R56 R56 K68 ["RENAME_NODE"]
      890 MOVE                             R57 R44
      891 CALL                             R55 2 0
      892 GETUPVAL                         R55 26
      893 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      895 GETUPVAL                         R56 28
      896 GETTABLEKS                       R56 R56 K69 ["RENAME_PARAMETER"]
      898 MOVE                             R57 R47
      899 CALL                             R55 2 0
      900 GETUPVAL                         R55 26
      901 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      903 GETUPVAL                         R56 28
      904 GETTABLEKS                       R56 R56 K70 ["DELETE_NODE_INSTANCE"]
      906 MOVE                             R57 R49
      907 CALL                             R55 2 0
      908 GETUPVAL                         R55 26
      909 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      911 GETUPVAL                         R56 28
      912 GETTABLEKS                       R56 R56 K71 ["SET_COLLAPSED"]
      914 MOVE                             R57 R20
      915 CALL                             R55 2 0
      916 GETUPVAL                         R55 26
      917 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      919 GETUPVAL                         R56 28
      920 GETTABLEKS                       R56 R56 K72 ["SET_NODE_PROPERTY"]
      922 MOVE                             R57 R42
      923 CALL                             R55 2 0
      924 GETUPVAL                         R55 26
      925 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      927 GETUPVAL                         R56 28
      928 GETTABLEKS                       R56 R56 K73 ["SET_INPUT_PIN_NODE_PROPERTY"]
      930 MOVE                             R57 R43
      931 CALL                             R55 2 0
      932 GETUPVAL                         R55 26
      933 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      935 GETUPVAL                         R56 28
      936 GETTABLEKS                       R56 R56 K74 ["SET_PARAMETER_NODE_TYPE"]
      938 MOVE                             R57 R48
      939 CALL                             R55 2 0
      940 GETUPVAL                         R55 26
      941 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      943 GETUPVAL                         R56 28
      944 GETTABLEKS                       R56 R56 K75 ["REORDER_PINS"]
      946 MOVE                             R57 R45
      947 CALL                             R55 2 0
      948 GETUPVAL                         R55 26
      949 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      951 GETUPVAL                         R56 28
      952 GETTABLEKS                       R56 R56 K76 ["BEGIN_UNDO_TRANSACTION"]
      954 MOVE                             R57 R40
      955 CALL                             R55 2 0
      956 GETUPVAL                         R55 26
      957 GETTABLEKS                       R55 R55 K55 ["useBoundAction"]
      959 GETUPVAL                         R56 28
      960 GETTABLEKS                       R56 R56 K77 ["FINISH_UNDO_TRANSACTION"]
      962 MOVE                             R57 R41
      963 CALL                             R55 2 0
      964 GETUPVAL                         R55 1
      965 GETTABLEKS                       R55 R55 K78 ["createElement"]
      967 GETUPVAL                         R56 29
      968 GETTABLEKS                       R56 R56 K79 ["Provider"]
      970 DUPTABLE                         R57 K81 [{"value"}]
      971 SETTABLEKS                       R51 R57 K80 ["value"]
      973 DUPTABLE                         R58 K83 [{"ContextStack"}]
      974 GETUPVAL                         R59 1
      975 GETTABLEKS                       R59 R59 K78 ["createElement"]
      977 GETUPVAL                         R60 8
      978 GETTABLEKS                       R60 R60 K82 ["ContextStack"]
      980 DUPTABLE                         R61 K85 [{"providers"}]
      981 NEWTABLE                         R62 0 2
      983 GETUPVAL                         R63 1
      984 GETTABLEKS                       R63 R63 K78 ["createElement"]
      986 GETUPVAL                         R64 30
      987 GETTABLEKS                       R64 R64 K79 ["Provider"]
      989 DUPTABLE                         R65 K87 [{"timeRange"}]
      990 SETTABLEKS                       R52 R65 K86 ["timeRange"]
      992 CALL                             R63 2 1
      993 GETUPVAL                         R64 1
      994 GETTABLEKS                       R64 R64 K78 ["createElement"]
      996 GETUPVAL                         R65 31
      997 GETTABLEKS                       R65 R65 K79 ["Provider"]
      999 DUPTABLE                         R66 K89 [{"animationClipsList"}]
     1000 SETTABLEKS                       R54 R66 K88 ["animationClipsList"]
     1002 CALL                             R64 2 -1
     1003 SETLIST                          R62 R63 -1 [1]
     1005 SETTABLEKS                       R62 R61 K84 ["providers"]
     1007 GETTABLEKS                       R62 R0 K90 ["children"]
     1009 CALL                             R59 3 1
     1010 SETTABLEKS                       R59 R58 K82 ["ContextStack"]
     1012 CALL                             R55 3 -1
     1013 RETURN                           R55 -1

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_55:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["setMap"]
        4 GETTABLEKS                       R2 R0 K1 ["lookup"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K2 ["graphInstanceId"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["setMap"]
       15 NEWTABLE                         R2 0 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 LOADNIL                          R2
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_58:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [task.spawn]
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_59:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["state"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_61:
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

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["useMemo"]
        9 DUPCLOSURE                       R5 K1 [PROTO_54]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 2
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R7 R7 K3 ["GRAPH_PAYLOAD_MAP"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R5
       26 NEWTABLE                         R10 0 2
       28 GETTABLEKS                       R11 R1 K5 ["setMap"]
       30 MOVE                             R12 R5
       31 SETLIST                          R10 R11 2 [1]
       33 CALL                             R8 2 -1
       34 CALL                             R6 -1 0
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K6 ["GRAPH_RENDER_INFO"]
       41 GETTABLEKS                       R8 R2 K5 ["setMap"]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K2 ["useReplicatedStateListenerCallback"]
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K7 ["GRAPH_NODE_PROPS"]
       50 GETTABLEKS                       R8 R3 K5 ["setMap"]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K8 ["useEffect"]
       56 NEWCLOSURE                       R7 P2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R9 R0 K9 ["testOverrideGraphPayloadMap"]
       63 SETLIST                          R8 R9 1 [1]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R6 R6 K10 ["useReplicatedStateListener"]
       69 GETUPVAL                         R7 4
       70 GETTABLEKS                       R7 R7 K11 ["TIME_RANGE"]
       72 GETIMPORT                        R8 K14 [NumberRange.new]
       74 LOADN                            R9 0
       75 LOADN                            R10 10
       76 CALL                             R8 2 -1
       77 CALL                             R6 -1 1
       78 GETUPVAL                         R7 3
       79 GETTABLEKS                       R7 R7 K10 ["useReplicatedStateListener"]
       81 GETUPVAL                         R8 4
       82 GETTABLEKS                       R8 R8 K15 ["GRAPH_PAYLOAD_GRAPH_RECT"]
       84 GETIMPORT                        R9 K17 [Rect.new]
       86 LOADN                            R10 0
       87 LOADN                            R11 0
       88 LOADN                            R12 0
       89 LOADN                            R13 0
       90 CALL                             R9 4 -1
       91 CALL                             R7 -1 1
       92 GETUPVAL                         R8 3
       93 GETTABLEKS                       R8 R8 K10 ["useReplicatedStateListener"]
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R9 R9 K18 ["CURRENT_ANIMATION_ID"]
       98 LOADK                            R10 K19 [""]
       99 CALL                             R8 2 1
      100 GETUPVAL                         R9 3
      101 GETTABLEKS                       R9 R9 K10 ["useReplicatedStateListener"]
      103 GETUPVAL                         R10 4
      104 GETTABLEKS                       R10 R10 K20 ["SOURCE_ASSET_ID"]
      106 LOADNIL                          R11
      107 CALL                             R9 2 1
      108 GETUPVAL                         R10 3
      109 GETTABLEKS                       R10 R10 K10 ["useReplicatedStateListener"]
      111 GETUPVAL                         R11 4
      112 GETTABLEKS                       R11 R11 K21 ["SELECTED_GRAPH_KEY"]
      114 LOADNIL                          R12
      115 CALL                             R10 2 1
      116 GETUPVAL                         R11 5
      117 GETTABLEKS                       R11 R11 K22 ["createComputed"]
      119 DUPCLOSURE                       R12 K23 [PROTO_57]
      120 CALL                             R11 1 1
      121 GETUPVAL                         R12 6
      122 MOVE                             R13 R2
      123 MOVE                             R14 R1
      124 CALL                             R12 2 1
      125 GETUPVAL                         R13 7
      126 GETTABLEKS                       R13 R13 K24 ["useSignalState"]
      128 MOVE                             R14 R4
      129 CALL                             R13 1 1
      130 GETUPVAL                         R14 3
      131 GETTABLEKS                       R14 R14 K25 ["useBoundAction"]
      133 GETUPVAL                         R15 8
      134 GETTABLEKS                       R15 R15 K26 ["REORDER_PINS"]
      136 CALL                             R14 1 1
      137 GETUPVAL                         R15 3
      138 GETTABLEKS                       R15 R15 K25 ["useBoundAction"]
      140 GETUPVAL                         R16 8
      141 GETTABLEKS                       R16 R16 K27 ["CREATE_PARAMETER"]
      143 CALL                             R15 1 1
      144 GETUPVAL                         R16 3
      145 GETTABLEKS                       R16 R16 K25 ["useBoundAction"]
      147 GETUPVAL                         R17 8
      148 GETTABLEKS                       R17 R17 K28 ["CREATE_CONNECTED_PARAMETER"]
      150 CALL                             R16 1 1
      151 GETUPVAL                         R17 3
      152 GETTABLEKS                       R17 R17 K25 ["useBoundAction"]
      154 GETUPVAL                         R18 8
      155 GETTABLEKS                       R18 R18 K29 ["CREATE_EXISTING_PARAMETER"]
      157 CALL                             R17 1 1
      158 GETUPVAL                         R18 3
      159 GETTABLEKS                       R18 R18 K25 ["useBoundAction"]
      161 GETUPVAL                         R19 8
      162 GETTABLEKS                       R19 R19 K30 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      164 CALL                             R18 1 1
      165 GETUPVAL                         R19 3
      166 GETTABLEKS                       R19 R19 K25 ["useBoundAction"]
      168 GETUPVAL                         R20 8
      169 GETTABLEKS                       R20 R20 K31 ["SELECT_NODES"]
      171 CALL                             R19 1 1
      172 GETUPVAL                         R20 3
      173 GETTABLEKS                       R20 R20 K25 ["useBoundAction"]
      175 GETUPVAL                         R21 8
      176 GETTABLEKS                       R21 R21 K32 ["SET_NODE_POSITIONS"]
      178 CALL                             R20 1 1
      179 GETUPVAL                         R21 3
      180 GETTABLEKS                       R21 R21 K25 ["useBoundAction"]
      182 GETUPVAL                         R22 8
      183 GETTABLEKS                       R22 R22 K33 ["SET_NODE_SIZE"]
      185 CALL                             R21 1 1
      186 GETUPVAL                         R22 3
      187 GETTABLEKS                       R22 R22 K25 ["useBoundAction"]
      189 GETUPVAL                         R23 8
      190 GETTABLEKS                       R23 R23 K34 ["SET_NODE_CONNECTION"]
      192 CALL                             R22 1 1
      193 GETUPVAL                         R23 3
      194 GETTABLEKS                       R23 R23 K25 ["useBoundAction"]
      196 GETUPVAL                         R24 8
      197 GETTABLEKS                       R24 R24 K35 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      199 CALL                             R23 1 1
      200 GETUPVAL                         R24 3
      201 GETTABLEKS                       R24 R24 K25 ["useBoundAction"]
      203 GETUPVAL                         R25 8
      204 GETTABLEKS                       R25 R25 K36 ["REMOVE_NODE_INPUT_CONNECTION"]
      206 CALL                             R24 1 1
      207 GETUPVAL                         R25 3
      208 GETTABLEKS                       R25 R25 K25 ["useBoundAction"]
      210 GETUPVAL                         R26 8
      211 GETTABLEKS                       R26 R26 K37 ["REMOVE_PARAMETER"]
      213 CALL                             R25 1 1
      214 GETUPVAL                         R26 3
      215 GETTABLEKS                       R26 R26 K25 ["useBoundAction"]
      217 GETUPVAL                         R27 8
      218 GETTABLEKS                       R27 R27 K38 ["RENAME_NODE"]
      220 CALL                             R26 1 1
      221 GETUPVAL                         R27 3
      222 GETTABLEKS                       R27 R27 K25 ["useBoundAction"]
      224 GETUPVAL                         R28 8
      225 GETTABLEKS                       R28 R28 K39 ["RENAME_PARAMETER"]
      227 CALL                             R27 1 1
      228 GETUPVAL                         R28 3
      229 GETTABLEKS                       R28 R28 K25 ["useBoundAction"]
      231 GETUPVAL                         R29 8
      232 GETTABLEKS                       R29 R29 K40 ["DELETE_NODE_INSTANCE"]
      234 CALL                             R28 1 1
      235 GETUPVAL                         R29 3
      236 GETTABLEKS                       R29 R29 K25 ["useBoundAction"]
      238 GETUPVAL                         R30 8
      239 GETTABLEKS                       R30 R30 K41 ["SET_COLLAPSED"]
      241 CALL                             R29 1 1
      242 GETUPVAL                         R30 3
      243 GETTABLEKS                       R30 R30 K25 ["useBoundAction"]
      245 GETUPVAL                         R31 8
      246 GETTABLEKS                       R31 R31 K42 ["SET_NODE_PROPERTY"]
      248 CALL                             R30 1 1
      249 GETUPVAL                         R31 3
      250 GETTABLEKS                       R31 R31 K25 ["useBoundAction"]
      252 GETUPVAL                         R32 8
      253 GETTABLEKS                       R32 R32 K43 ["SET_INPUT_PIN_NODE_PROPERTY"]
      255 CALL                             R31 1 1
      256 GETUPVAL                         R32 3
      257 GETTABLEKS                       R32 R32 K25 ["useBoundAction"]
      259 GETUPVAL                         R33 8
      260 GETTABLEKS                       R33 R33 K44 ["SET_PARAMETER_NODE_TYPE"]
      262 CALL                             R32 1 1
      263 DUPTABLE                         R33 K60 [{"selectedGraphInstanceId", "graphRect", "selectNodesFromRectAsync", "currentAnimationId", "sourceAssetId", "selectedGraphKey", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById", "beginUndoTransaction", "finishUndoTransaction", "observeGraphNodeMap", "observeRenderInfoMap", "observeNodePropsById", "hasGraphOutput"}]
      264 SETTABLEKS                       R13 R33 K45 ["selectedGraphInstanceId"]
      266 SETTABLEKS                       R7 R33 K46 ["graphRect"]
      268 GETUPVAL                         R34 3
      269 GETTABLEKS                       R34 R34 K25 ["useBoundAction"]
      271 GETUPVAL                         R35 8
      272 GETTABLEKS                       R35 R35 K61 ["SELECT_NODES_FROM_RECT"]
      274 CALL                             R34 1 1
      275 SETTABLEKS                       R34 R33 K47 ["selectNodesFromRectAsync"]
      277 SETTABLEKS                       R8 R33 K48 ["currentAnimationId"]
      279 SETTABLEKS                       R9 R33 K49 ["sourceAssetId"]
      281 SETTABLEKS                       R10 R33 K50 ["selectedGraphKey"]
      283 SETTABLEKS                       R11 R33 K51 ["observeSelectedGraphInstance"]
      285 GETTABLEKS                       R34 R1 K62 ["observe"]
      287 SETTABLEKS                       R34 R33 K52 ["observeGraphNodeById"]
      289 GETTABLEKS                       R34 R2 K62 ["observe"]
      291 SETTABLEKS                       R34 R33 K53 ["observeNodeRenderInfoById"]
      293 GETUPVAL                         R34 3
      294 GETTABLEKS                       R34 R34 K25 ["useBoundAction"]
      296 GETUPVAL                         R35 8
      297 GETTABLEKS                       R35 R35 K63 ["BEGIN_UNDO_TRANSACTION"]
      299 CALL                             R34 1 1
      300 SETTABLEKS                       R34 R33 K54 ["beginUndoTransaction"]
      302 GETUPVAL                         R34 3
      303 GETTABLEKS                       R34 R34 K25 ["useBoundAction"]
      305 GETUPVAL                         R35 8
      306 GETTABLEKS                       R35 R35 K64 ["FINISH_UNDO_TRANSACTION"]
      308 CALL                             R34 1 1
      309 SETTABLEKS                       R34 R33 K55 ["finishUndoTransaction"]
      311 GETTABLEKS                       R34 R1 K65 ["observeMap"]
      313 SETTABLEKS                       R34 R33 K56 ["observeGraphNodeMap"]
      315 GETTABLEKS                       R34 R2 K65 ["observeMap"]
      317 SETTABLEKS                       R34 R33 K57 ["observeRenderInfoMap"]
      319 GETTABLEKS                       R34 R3 K62 ["observe"]
      321 SETTABLEKS                       R34 R33 K58 ["observeNodePropsById"]
      323 GETTABLEKS                       R34 R12 K59 ["hasGraphOutput"]
      325 SETTABLEKS                       R34 R33 K59 ["hasGraphOutput"]
      327 DUPCLOSURE                       R34 K66 [PROTO_59]
      328 GETUPVAL                         R35 1
      329 GETTABLEKS                       R35 R35 K67 ["useContext"]
      331 GETUPVAL                         R36 9
      332 GETTABLEKS                       R36 R36 K68 ["Context"]
      334 CALL                             R35 1 1
      335 GETUPVAL                         R36 1
      336 GETTABLEKS                       R36 R36 K4 ["useCallback"]
      338 NEWCLOSURE                       R37 P5
      339 CAPTURE                          VAL R35
      340 CAPTURE                          UPVAL U2
      341 NEWTABLE                         R38 0 1
      343 GETTABLEKS                       R39 R35 K69 ["observeDebugData"]
      345 SETLIST                          R38 R39 1 [1]
      347 CALL                             R36 2 1
      348 GETUPVAL                         R37 1
      349 GETTABLEKS                       R37 R37 K4 ["useCallback"]
      351 NEWCLOSURE                       R38 P6
      352 CAPTURE                          UPVAL U5
      353 CAPTURE                          VAL R35
      354 NEWTABLE                         R39 0 1
      356 GETTABLEKS                       R40 R35 K69 ["observeDebugData"]
      358 SETLIST                          R39 R40 1 [1]
      360 CALL                             R37 2 1
      361 GETUPVAL                         R38 1
      362 GETTABLEKS                       R38 R38 K4 ["useCallback"]
      364 NEWCLOSURE                       R39 P7
      365 CAPTURE                          UPVAL U5
      366 CAPTURE                          VAL R35
      367 NEWTABLE                         R40 0 1
      369 GETTABLEKS                       R41 R35 K69 ["observeDebugData"]
      371 SETLIST                          R40 R41 1 [1]
      373 CALL                             R38 2 1
      374 DUPTABLE                         R39 K96 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "reorderPins", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setCollapsed", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setNodePositions", "setNodeProperty", "setInputPinNodeProperty", "setNodeSize", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById", "observeFadeByNodeId", "observeIsDisabledByNodeId"}]
      375 SETTABLEKS                       R1 R39 K70 ["nodePayloadDispatcher"]
      377 SETTABLEKS                       R2 R39 K71 ["nodeRenderInfoDispatcher"]
      379 GETUPVAL                         R41 10
      380 GETTABLEKS                       R41 R41 K97 ["useConsumer"]
      382 CALL                             R41 0 1
      383 NEWCLOSURE                       R40 P8
      384 CAPTURE                          VAL R41
      385 SETTABLEKS                       R40 R39 K72 ["createNode"]
      387 NEWCLOSURE                       R40 P8
      388 CAPTURE                          VAL R14
      389 SETTABLEKS                       R40 R39 K73 ["reorderPins"]
      391 NEWCLOSURE                       R40 P8
      392 CAPTURE                          VAL R15
      393 SETTABLEKS                       R40 R39 K74 ["createParameter"]
      395 SETTABLEKS                       R17 R39 K75 ["createExistingParameterAsync"]
      397 SETTABLEKS                       R16 R39 K76 ["createConnectedParameterAsync"]
      399 NEWCLOSURE                       R40 P8
      400 CAPTURE                          VAL R18
      401 SETTABLEKS                       R40 R39 K77 ["selectAllParameterNodesWithName"]
      403 NEWCLOSURE                       R40 P8
      404 CAPTURE                          VAL R19
      405 SETTABLEKS                       R40 R39 K78 ["selectNodes"]
      407 NEWCLOSURE                       R40 P8
      408 CAPTURE                          VAL R29
      409 SETTABLEKS                       R40 R39 K79 ["setCollapsed"]
      411 SETTABLEKS                       R24 R39 K80 ["removeNodeInputConnectionAsync"]
      413 SETTABLEKS                       R23 R39 K81 ["removeNodeOutputConnectionAsync"]
      415 NEWCLOSURE                       R40 P8
      416 CAPTURE                          VAL R25
      417 SETTABLEKS                       R40 R39 K82 ["removeParameter"]
      419 NEWCLOSURE                       R40 P8
      420 CAPTURE                          VAL R26
      421 SETTABLEKS                       R40 R39 K83 ["renameNode"]
      423 NEWCLOSURE                       R40 P8
      424 CAPTURE                          VAL R27
      425 SETTABLEKS                       R40 R39 K84 ["renameParameter"]
      427 NEWCLOSURE                       R40 P8
      428 CAPTURE                          VAL R28
      429 SETTABLEKS                       R40 R39 K85 ["deleteNodeInstance"]
      431 GETUPVAL                         R41 11
      432 GETTABLEKS                       R41 R41 K97 ["useConsumer"]
      434 CALL                             R41 0 1
      435 NEWCLOSURE                       R40 P8
      436 CAPTURE                          VAL R41
      437 SETTABLEKS                       R40 R39 K86 ["removeNodes"]
      439 NEWCLOSURE                       R40 P8
      440 CAPTURE                          VAL R22
      441 SETTABLEKS                       R40 R39 K87 ["setNodeConnection"]
      443 NEWCLOSURE                       R40 P8
      444 CAPTURE                          VAL R20
      445 SETTABLEKS                       R40 R39 K88 ["setNodePositions"]
      447 NEWCLOSURE                       R40 P8
      448 CAPTURE                          VAL R30
      449 SETTABLEKS                       R40 R39 K89 ["setNodeProperty"]
      451 NEWCLOSURE                       R40 P8
      452 CAPTURE                          VAL R31
      453 SETTABLEKS                       R40 R39 K90 ["setInputPinNodeProperty"]
      455 NEWCLOSURE                       R40 P8
      456 CAPTURE                          VAL R21
      457 SETTABLEKS                       R40 R39 K91 ["setNodeSize"]
      459 NEWCLOSURE                       R40 P8
      460 CAPTURE                          VAL R32
      461 SETTABLEKS                       R40 R39 K92 ["setParameterNodeType"]
      463 GETTABLEKS                       R40 R3 K62 ["observe"]
      465 SETTABLEKS                       R40 R39 K58 ["observeNodePropsById"]
      467 SETTABLEKS                       R36 R39 K93 ["observeNodeStateById"]
      469 SETTABLEKS                       R37 R39 K94 ["observeFadeByNodeId"]
      471 SETTABLEKS                       R38 R39 K95 ["observeIsDisabledByNodeId"]
      473 GETUPVAL                         R40 1
      474 GETTABLEKS                       R40 R40 K98 ["createElement"]
      476 GETUPVAL                         R41 12
      477 GETTABLEKS                       R41 R41 K99 ["Provider"]
      479 DUPTABLE                         R42 K101 [{"value"}]
      480 SETTABLEKS                       R33 R42 K100 ["value"]
      482 DUPTABLE                         R43 K103 [{"ContextStack"}]
      483 GETUPVAL                         R44 1
      484 GETTABLEKS                       R44 R44 K98 ["createElement"]
      486 GETUPVAL                         R45 13
      487 GETTABLEKS                       R45 R45 K102 ["ContextStack"]
      489 DUPTABLE                         R46 K105 [{"providers"}]
      490 NEWTABLE                         R47 0 2
      492 GETUPVAL                         R48 1
      493 GETTABLEKS                       R48 R48 K98 ["createElement"]
      495 GETUPVAL                         R49 14
      496 GETTABLEKS                       R49 R49 K106 ["GraphContext"]
      498 GETTABLEKS                       R49 R49 K99 ["Provider"]
      500 DUPTABLE                         R50 K101 [{"value"}]
      501 SETTABLEKS                       R39 R50 K100 ["value"]
      503 CALL                             R48 2 1
      504 GETUPVAL                         R49 1
      505 GETTABLEKS                       R49 R49 K98 ["createElement"]
      507 GETUPVAL                         R50 15
      508 GETTABLEKS                       R50 R50 K99 ["Provider"]
      510 DUPTABLE                         R51 K108 [{"timeRange"}]
      511 SETTABLEKS                       R6 R51 K107 ["timeRange"]
      513 CALL                             R49 2 -1
      514 SETLIST                          R47 R48 -1 [1]
      516 SETTABLEKS                       R47 R46 K104 ["providers"]
      518 GETTABLEKS                       R47 R0 K109 ["children"]
      520 CALL                             R44 3 1
      521 SETTABLEKS                       R44 R43 K102 ["ContextStack"]
      523 CALL                             R40 3 -1
      524 RETURN                           R40 -1

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
      118 GETTABLEKS                       R17 R17 K30 ["SelectionServiceContext"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K10 [require]
      123 GETTABLEKS                       R18 R0 K11 ["Util"]
      125 GETTABLEKS                       R18 R18 K31 ["Signals"]
      127 GETTABLEKS                       R18 R18 K32 ["Experimental"]
      129 GETTABLEKS                       R18 R18 K33 ["SignalExperimentalUtils"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R19 R0 K24 ["Parent"]
      136 GETTABLEKS                       R19 R19 K31 ["Signals"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R20 R0 K24 ["Parent"]
      143 GETTABLEKS                       R20 R20 K34 ["SignalsReact"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETTABLEKS                       R21 R0 K13 ["Contexts"]
      150 GETTABLEKS                       R21 R21 K35 ["TimeRangeContext"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K10 [require]
      155 GETTABLEKS                       R22 R0 K36 ["Flags"]
      157 GETTABLEKS                       R22 R22 K37 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K10 [require]
      162 GETTABLEKS                       R23 R0 K36 ["Flags"]
      164 GETTABLEKS                       R23 R23 K38 ["getFFlagAnimGraphUseRemove"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K10 [require]
      169 GETTABLEKS                       R24 R0 K36 ["Flags"]
      171 GETTABLEKS                       R24 R24 K39 ["getFFlagAnimationEditorRenameInstanceToo"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K10 [require]
      176 GETTABLEKS                       R25 R0 K11 ["Util"]
      178 GETTABLEKS                       R25 R25 K40 ["parseAnimationNodeType"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K10 [require]
      183 GETIMPORT                        R26 K1 [script]
      185 GETTABLEKS                       R26 R26 K41 ["useGraphAnalytics"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K10 [require]
      190 GETTABLEKS                       R27 R0 K42 ["Hooks"]
      192 GETTABLEKS                       R27 R27 K43 ["useNodeDefinitionDestroyHelper"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K10 [require]
      197 GETTABLEKS                       R28 R0 K42 ["Hooks"]
      199 GETTABLEKS                       R28 R28 K44 ["useObserveSelection"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K10 [require]
      204 GETTABLEKS                       R29 R0 K42 ["Hooks"]
      206 GETTABLEKS                       R29 R29 K45 ["useParameterDestroyHelper"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K10 [require]
      211 GETTABLEKS                       R30 R0 K42 ["Hooks"]
      213 GETTABLEKS                       R30 R30 K46 ["useSignalDispatcher"]
      215 CALL                             R29 1 1
      216 DUPTABLE                         R30 K61 [{"observeGraphNodeMap", "graphRect", "selectNodesFromRectAsync", "hasGraphOutput", "observeGraphNodeById", "observeNodeRenderInfoById", "observeRenderInfoMap", "observeSelectedGraphInstance", "observeNodePropsById", "beginUndoTransaction", "finishUndoTransaction", "currentAnimationId", "sourceAssetId", "selectedGraphKey"}]
      217 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      219 LOADK                            R32 K47 ["observeGraphNodeMap"]
      220 CALL                             R31 1 1
      221 SETTABLEKS                       R31 R30 K47 ["observeGraphNodeMap"]
      223 GETIMPORT                        R31 K65 [Rect.new]
      225 LOADN                            R32 0
      226 LOADN                            R33 0
      227 LOADN                            R34 0
      228 LOADN                            R35 0
      229 CALL                             R31 4 1
      230 SETTABLEKS                       R31 R30 K48 ["graphRect"]
      232 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      234 LOADK                            R32 K49 ["selectNodesFromRectAsync"]
      235 CALL                             R31 1 1
      236 SETTABLEKS                       R31 R30 K49 ["selectNodesFromRectAsync"]
      238 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      240 LOADK                            R32 K50 ["hasGraphOutput"]
      241 CALL                             R31 1 1
      242 SETTABLEKS                       R31 R30 K50 ["hasGraphOutput"]
      244 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      246 LOADK                            R32 K51 ["observeGraphNodeById"]
      247 CALL                             R31 1 1
      248 SETTABLEKS                       R31 R30 K51 ["observeGraphNodeById"]
      250 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      252 LOADK                            R32 K52 ["observeNodeRenderInfoById"]
      253 CALL                             R31 1 1
      254 SETTABLEKS                       R31 R30 K52 ["observeNodeRenderInfoById"]
      256 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      258 LOADK                            R32 K53 ["observeRenderInfoMap"]
      259 CALL                             R31 1 1
      260 SETTABLEKS                       R31 R30 K53 ["observeRenderInfoMap"]
      262 GETTABLEKS                       R31 R18 K66 ["createSignal"]
      264 LOADNIL                          R32
      265 CALL                             R31 1 1
      266 SETTABLEKS                       R31 R30 K54 ["observeSelectedGraphInstance"]
      268 DUPCLOSURE                       R31 K67 [PROTO_0]
      269 CAPTURE                          VAL R18
      270 SETTABLEKS                       R31 R30 K55 ["observeNodePropsById"]
      272 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      274 LOADK                            R32 K56 ["beginUndoTransaction"]
      275 CALL                             R31 1 1
      276 SETTABLEKS                       R31 R30 K56 ["beginUndoTransaction"]
      278 GETTABLEKS                       R31 R15 K62 ["createUnimplemented"]
      280 LOADK                            R32 K57 ["finishUndoTransaction"]
      281 CALL                             R31 1 1
      282 SETTABLEKS                       R31 R30 K57 ["finishUndoTransaction"]
      284 LOADNIL                          R31
      285 SETTABLEKS                       R31 R30 K58 ["currentAnimationId"]
      287 LOADNIL                          R31
      288 SETTABLEKS                       R31 R30 K59 ["sourceAssetId"]
      290 LOADNIL                          R31
      291 SETTABLEKS                       R31 R30 K60 ["selectedGraphKey"]
      293 GETTABLEKS                       R31 R14 K68 ["createContext"]
      295 MOVE                             R32 R30
      296 CALL                             R31 1 1
      297 DUPTABLE                         R32 K78 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "GRAPH_NODE_PROPS", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "SELECTED_GRAPH_KEY", "UNDO_TRANSACTION"}]
      298 LOADK                            R33 K79 ["NativeGraphContext_GraphPayloadMap"]
      299 SETTABLEKS                       R33 R32 K69 ["GRAPH_PAYLOAD_MAP"]
      301 LOADK                            R33 K80 ["NativeGraphContext_GraphRenderInfo"]
      302 SETTABLEKS                       R33 R32 K70 ["GRAPH_RENDER_INFO"]
      304 LOADK                            R33 K81 ["NativeGraphContext_GraphNodeProps"]
      305 SETTABLEKS                       R33 R32 K71 ["GRAPH_NODE_PROPS"]
      307 LOADK                            R33 K82 ["NativeGraphContext_TimeRange"]
      308 SETTABLEKS                       R33 R32 K72 ["TIME_RANGE"]
      310 LOADK                            R33 K83 ["NativeGraphContext_GraphPayloadGraphRect"]
      311 SETTABLEKS                       R33 R32 K73 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      313 LOADK                            R33 K84 ["NativeGraphContext_CurrentAnimationId"]
      314 SETTABLEKS                       R33 R32 K74 ["CURRENT_ANIMATION_ID"]
      316 LOADK                            R33 K85 ["NativeGraphContext_SourceAssetId"]
      317 SETTABLEKS                       R33 R32 K75 ["SOURCE_ASSET_ID"]
      319 LOADK                            R33 K86 ["NativeGraphContext_SelectedGraphKey"]
      320 SETTABLEKS                       R33 R32 K76 ["SELECTED_GRAPH_KEY"]
      322 LOADK                            R33 K87 ["NativeGraphContext_UndoTransaction"]
      323 SETTABLEKS                       R33 R32 K77 ["UNDO_TRANSACTION"]
      325 DUPTABLE                         R33 K111 [{"CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "CREATE_EXISTING_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SET_PARAMETER_NODE_TYPE", "SELECT_ALL_PARAMETER_NODES_WITH_NAME", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      326 LOADK                            R34 K112 ["NativeGraphContext_CreateParameterAsync"]
      327 SETTABLEKS                       R34 R33 K88 ["CREATE_PARAMETER"]
      329 LOADK                            R34 K113 ["NativeGraphContext_CreateConnectedParameterAsync"]
      330 SETTABLEKS                       R34 R33 K89 ["CREATE_CONNECTED_PARAMETER"]
      332 LOADK                            R34 K114 ["NativeGraphContext_CreateExistingParameterAsync"]
      333 SETTABLEKS                       R34 R33 K90 ["CREATE_EXISTING_PARAMETER"]
      335 LOADK                            R34 K115 ["NativeGraphContext_GetSelectedGraphInstance"]
      336 SETTABLEKS                       R34 R33 K91 ["GET_SELECTED_GRAPH_INSTANCE"]
      338 LOADK                            R34 K116 ["NativeGraphContext_SetNodeConnectionAsync"]
      339 SETTABLEKS                       R34 R33 K92 ["SET_NODE_CONNECTION"]
      341 LOADK                            R34 K117 ["NativeGraphContext_setNodePropertyAsync"]
      342 SETTABLEKS                       R34 R33 K93 ["SET_NODE_PROPERTY"]
      344 LOADK                            R34 K118 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      345 SETTABLEKS                       R34 R33 K94 ["SET_INPUT_PIN_NODE_PROPERTY"]
      347 LOADK                            R34 K119 ["NativeGraphContext_ReorderPinsAsync"]
      348 SETTABLEKS                       R34 R33 K95 ["REORDER_PINS"]
      350 LOADK                            R34 K120 ["NativeGraphContext_RemoveNodeInputConnection"]
      351 SETTABLEKS                       R34 R33 K96 ["REMOVE_NODE_INPUT_CONNECTION"]
      353 LOADK                            R34 K121 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      354 SETTABLEKS                       R34 R33 K97 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      356 LOADK                            R34 K122 ["NativeGraphContext_RemoveParameterAsync"]
      357 SETTABLEKS                       R34 R33 K98 ["REMOVE_PARAMETER"]
      359 LOADK                            R34 K123 ["NativeGraphContext_RenameNodeAsync"]
      360 SETTABLEKS                       R34 R33 K99 ["RENAME_NODE"]
      362 LOADK                            R34 K124 ["NativeGraphContext_RenameParameterAsync"]
      363 SETTABLEKS                       R34 R33 K100 ["RENAME_PARAMETER"]
      365 LOADK                            R34 K125 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      366 SETTABLEKS                       R34 R33 K101 ["DELETE_NODE_INSTANCE"]
      368 LOADK                            R34 K126 ["NativeGraphContext_SetNodeSizeAsync"]
      369 SETTABLEKS                       R34 R33 K102 ["SET_NODE_SIZE"]
      371 LOADK                            R34 K127 ["NativeGraphContext_SetCollapsedAsync"]
      372 SETTABLEKS                       R34 R33 K103 ["SET_COLLAPSED"]
      374 LOADK                            R34 K128 ["NativeGraphContext_SetNodePositionsAsync"]
      375 SETTABLEKS                       R34 R33 K104 ["SET_NODE_POSITIONS"]
      377 LOADK                            R34 K129 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      378 SETTABLEKS                       R34 R33 K105 ["SET_PARAMETER_NODE_TYPE"]
      380 LOADK                            R34 K130 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      381 SETTABLEKS                       R34 R33 K106 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      383 LOADK                            R34 K131 ["NativeGraphContext_SelectNodes"]
      384 SETTABLEKS                       R34 R33 K107 ["SELECT_NODES"]
      386 LOADK                            R34 K132 ["NativeGraphContext_SelectNodesFromRect"]
      387 SETTABLEKS                       R34 R33 K108 ["SELECT_NODES_FROM_RECT"]
      389 LOADK                            R34 K133 ["NativeGraphContext_beginUndoTransaction"]
      390 SETTABLEKS                       R34 R33 K109 ["BEGIN_UNDO_TRANSACTION"]
      392 LOADK                            R34 K134 ["NativeGraphContext_finishUndoTransaction"]
      393 SETTABLEKS                       R34 R33 K110 ["FINISH_UNDO_TRANSACTION"]
      395 GETTABLEKS                       R34 R10 K135 ["createBoundAction"]
      397 LOADK                            R35 K136 ["NativeGraphContext_createNode"]
      398 CALL                             R34 1 1
      399 GETTABLEKS                       R35 R10 K135 ["createBoundAction"]
      401 LOADK                            R36 K137 ["NativeGraphContext_removeNodes"]
      402 CALL                             R35 1 1
      403 DUPCLOSURE                       R36 K138 [PROTO_2]
      404 CAPTURE                          VAL R14
      405 DUPCLOSURE                       R37 K139 [PROTO_53]
      406 CAPTURE                          VAL R29
      407 CAPTURE                          VAL R14
      408 CAPTURE                          VAL R16
      409 CAPTURE                          VAL R27
      410 CAPTURE                          VAL R8
      411 CAPTURE                          VAL R25
      412 CAPTURE                          VAL R7
      413 CAPTURE                          VAL R9
      414 CAPTURE                          VAL R15
      415 CAPTURE                          VAL R18
      416 CAPTURE                          VAL R2
      417 CAPTURE                          VAL R19
      418 CAPTURE                          VAL R1
      419 CAPTURE                          VAL R22
      420 CAPTURE                          VAL R34
      421 CAPTURE                          VAL R24
      422 CAPTURE                          VAL R3
      423 CAPTURE                          VAL R35
      424 CAPTURE                          VAL R5
      425 CAPTURE                          VAL R21
      426 CAPTURE                          VAL R26
      427 CAPTURE                          VAL R28
      428 CAPTURE                          VAL R23
      429 CAPTURE                          VAL R36
      430 CAPTURE                          VAL R17
      431 CAPTURE                          VAL R13
      432 CAPTURE                          VAL R10
      433 CAPTURE                          VAL R32
      434 CAPTURE                          VAL R33
      435 CAPTURE                          VAL R31
      436 CAPTURE                          VAL R20
      437 CAPTURE                          VAL R4
      438 DUPCLOSURE                       R38 K140 [PROTO_66]
      439 CAPTURE                          VAL R29
      440 CAPTURE                          VAL R14
      441 CAPTURE                          VAL R18
      442 CAPTURE                          VAL R10
      443 CAPTURE                          VAL R32
      444 CAPTURE                          VAL R17
      445 CAPTURE                          VAL R36
      446 CAPTURE                          VAL R19
      447 CAPTURE                          VAL R33
      448 CAPTURE                          VAL R6
      449 CAPTURE                          VAL R34
      450 CAPTURE                          VAL R35
      451 CAPTURE                          VAL R31
      452 CAPTURE                          VAL R15
      453 CAPTURE                          VAL R11
      454 CAPTURE                          VAL R20
      455 DUPTABLE                         R39 K144 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      456 SETTABLEKS                       R31 R39 K141 ["Context"]
      458 SETTABLEKS                       R37 R39 K142 ["EditableDataModelProvider"]
      460 SETTABLEKS                       R38 R39 K143 ["UIDataModelProvider"]
      462 RETURN                           R39 1
