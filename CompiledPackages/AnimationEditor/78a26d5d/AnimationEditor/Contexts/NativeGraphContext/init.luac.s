PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMap"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K1 ["get"]
       12 GETTABLEKS                       R8 R6 K2 ["id"]
       14 CALL                             R7 1 1
       15 JUMPIFEQKNIL                     R7 ; [+36]
       17 GETTABLEKS                       R8 R7 K3 ["position"]
       19 GETTABLEKS                       R9 R7 K4 ["size"]
       21 GETTABLEKS                       R10 R7 K5 ["isSelected"]
       23 JUMPIFNOT                        R10 ; [+28]
       24 GETIMPORT                        R10 K8 [Rect.new]
       26 GETTABLEKS                       R11 R8 K9 ["X"]
       28 GETTABLEKS                       R13 R8 K10 ["Y"]
       30 GETTABLEKS                       R14 R9 K10 ["Y"]
       32 SUB                              R12 R13 R14
       33 GETTABLEKS                       R14 R8 K9 ["X"]
       35 GETTABLEKS                       R15 R9 K9 ["X"]
       37 ADD                              R13 R14 R15
       38 GETTABLEKS                       R14 R8 K10 ["Y"]
       40 CALL                             R10 4 1
       41 JUMPIFNOTEQKNIL                  R1 ; [+3]
       43 MOVE                             R1 R10
       44 JUMP                             ; [+7]
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R11 R12 K11 ["union"]
       48 MOVE                             R12 R1
       49 MOVE                             R13 R10
       50 CALL                             R11 2 1
       51 MOVE                             R1 R11
       52 FORGLOOP                         R2 2 ; [-44]
       54 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMap"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K1 ["nodeType"]
       14 GETIMPORT                        R7 K5 [Enum.AnimationNodeType.GraphOutput]
       16 JUMPIFNOTEQ                      R6 R7 ; [+3]
       18 LOADB                            R6 1
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 ; [-9]
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R1 K1 ["getMap"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useCallback"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R1 K1 ["getMap"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 DUPTABLE                         R4 K4 [{"getSelectedRect", "hasGraphOutput"}]
       27 SETTABLEKS                       R2 R4 K2 ["getSelectedRect"]
       29 SETTABLEKS                       R3 R4 K3 ["hasGraphOutput"]
       31 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
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
        1 GETTABLEKS                       R0 R1 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphState"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["testOverrideGraphPayloadMap"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K0 ["testOverrideGraphPayloadMap"]
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R2 R1 K1 ["graphPayloadMap"]
       13 JUMPIFEQKNIL                     R2 ; [+10]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K2 ["fitGraphRect"]
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
       31 GETUPVAL                         R4 6
       32 GETTABLEKS                       R3 R4 K4 ["setMap"]
       34 JUMPIFNOT                        R2 ; [+3]
       35 GETTABLEKS                       R4 R2 K5 ["lookup"]
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R4 0 0
       40 CALL                             R3 1 0
       41 GETUPVAL                         R4 7
       42 GETTABLEKS                       R3 R4 K4 ["setMap"]
       44 GETTABLEKS                       R4 R1 K3 ["renderInfoMap"]
       46 CALL                             R3 1 0
       47 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["setNodeIsCollapsed"]
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
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K4 ["setNodePosition"]
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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["setNodeSize"]
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
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["selectionService"]
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
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K0 ["selectionService"]
       32 MOVE                             R5 R2
       33 NAMECALL                         R3 R3 K6 ["Set"]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["selectionService"]
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
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R5 R8 K2 ["lookup"]
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETUPVAL                         R11 2
       24 GETTABLEKS                       R10 R11 K3 ["get"]
       26 GETTABLEKS                       R11 R9 K4 ["id"]
       28 CALL                             R10 1 1
       29 JUMPIFEQKNIL                     R10 ; [+45]
       31 GETTABLEKS                       R11 R10 K5 ["position"]
       33 GETTABLEKS                       R12 R10 K6 ["size"]
       35 GETTABLEKS                       R13 R11 K7 ["X"]
       37 GETTABLEKS                       R15 R0 K8 ["Max"]
       39 GETTABLEKS                       R14 R15 K7 ["X"]
       41 JUMPIFLT                         R14 R13 ; [+33]
       43 GETTABLEKS                       R14 R11 K7 ["X"]
       45 GETTABLEKS                       R15 R12 K7 ["X"]
       47 ADD                              R13 R14 R15
       48 GETTABLEKS                       R15 R0 K9 ["Min"]
       50 GETTABLEKS                       R14 R15 K7 ["X"]
       52 JUMPIFLT                         R13 R14 ; [+22]
       54 GETTABLEKS                       R13 R11 K10 ["Y"]
       56 GETTABLEKS                       R15 R0 K9 ["Min"]
       58 GETTABLEKS                       R14 R15 K10 ["Y"]
       60 JUMPIFLT                         R13 R14 ; [+14]
       62 GETTABLEKS                       R14 R11 K10 ["Y"]
       64 GETTABLEKS                       R15 R12 K10 ["Y"]
       66 SUB                              R13 R14 R15
       67 GETTABLEKS                       R15 R0 K8 ["Max"]
       69 GETTABLEKS                       R14 R15 K10 ["Y"]
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
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R5 R6 K0 ["selectionService"]
      105 MOVE                             R7 R3
      106 NAMECALL                         R5 R5 K17 ["Set"]
      108 CALL                             R5 2 0
      109 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
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
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K1 ["AttributeChanged"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R1 R1 K2 ["Connect"]
       25 CALL                             R1 2 1
       26 NEWCLOSURE                       R2 P2
       27 CAPTURE                          VAL R1
       28 RETURN                           R2 1

PROTO_19:
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
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K10 ["Name"]
       53 CONCAT                           R4 R5 R7
       54 MOVE                             R7 R4
       55 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+3]
       59 NAMECALL                         R6 R5 K18 ["Destroy"]
       61 CALL                             R6 1 0
       62 GETUPVAL                         R6 1
       63 NAMECALL                         R6 R6 K19 ["Clone"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R4 R6 K10 ["Name"]
       68 SETTABLEKS                       R1 R6 K11 ["Parent"]
       70 LOADNIL                          R3
       71 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 1
        3 JUMPIFEQKNIL                     R3 ; [+4]
        5 GETUPVAL                         R4 1
        6 JUMPIFNOTEQKNIL                  R4 ; [+3]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 2
       11 LOADK                            R6 K0 ["NativeGraphContext"]
       12 LOADK                            R7 K1 ["createNodeAsync"]
       13 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
       15 CALL                             R4 3 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K3 ["createNodeOfType"]
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 MOVE                             R8 R3
       22 CALL                             R5 3 1
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETUPVAL                         R6 4
       25 MOVE                             R8 R5
       26 NAMECALL                         R6 R6 K4 ["instanceToId"]
       28 CALL                             R6 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 FASTCALL2K                       ASSERT R6 K5 ; [+5]
       33 MOVE                             R8 R6
       34 LOADK                            R9 K5 ["Failed to get new node ID after creation"]
       35 GETIMPORT                        R7 K7 [assert]
       37 CALL                             R7 2 0
       38 JUMPIFNOT                        R2 ; [+86]
       39 GETTABLEKS                       R7 R2 K8 ["sourcePinSide"]
       41 JUMPIFNOTEQKS                    R7 K9 ["Input"] ; [+16]
       43 JUMPIFEQKNIL                     R6 ; [+81]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R7 R8 K10 ["setNodeConnection"]
       48 GETUPVAL                         R8 4
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R10 R2 K11 ["sourcePinNodeId"]
       52 GETTABLEKS                       R11 R2 K12 ["sourcePinName"]
       54 MOVE                             R12 R6
       55 LOADK                            R13 K13 ["Output"]
       56 CALL                             R7 6 0
       57 JUMP                             ; [+67]
       58 GETTABLEKS                       R7 R2 K8 ["sourcePinSide"]
       60 JUMPIFNOTEQKS                    R7 K13 ["Output"] ; [+60]
       62 GETUPVAL                         R7 5
       63 MOVE                             R9 R0
       64 NAMECALL                         R7 R7 K14 ["GetAnimationNodeDefinition"]
       66 CALL                             R7 2 1
       67 LOADNIL                          R8
       68 GETUPVAL                         R10 3
       69 GETTABLEKS                       R9 R10 K15 ["hasDynamicInputPins"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R11 R2 K11 ["sourcePinNodeId"]
       74 CALL                             R9 2 1
       75 JUMPIFNOT                        R9 ; [+9]
       76 GETUPVAL                         R10 3
       77 GETTABLEKS                       R9 R10 K16 ["getDynamicInputPinNameFromInputNode"]
       79 MOVE                             R10 R5
       80 GETTABLEKS                       R11 R2 K12 ["sourcePinName"]
       82 CALL                             R9 2 1
       83 MOVE                             R8 R9
       84 JUMP                             ; [+13]
       85 JUMPIFNOT                        R7 ; [+12]
       86 GETTABLEKS                       R9 R7 K17 ["Inputs"]
       88 JUMPIFNOT                        R9 ; [+9]
       89 GETTABLEKS                       R10 R7 K17 ["Inputs"]
       91 GETTABLEN                        R9 R10 1
       92 JUMPIFNOT                        R9 ; [+5]
       93 GETTABLEKS                       R10 R7 K17 ["Inputs"]
       95 GETTABLEN                        R9 R10 1
       96 GETTABLEKS                       R8 R9 K18 ["InputName"]
       98 JUMPIFEQKNIL                     R8 ; [+16]
      100 JUMPIFEQKNIL                     R6 ; [+24]
      102 GETUPVAL                         R10 3
      103 GETTABLEKS                       R9 R10 K10 ["setNodeConnection"]
      105 GETUPVAL                         R10 4
      106 GETUPVAL                         R11 1
      107 MOVE                             R12 R6
      108 MOVE                             R13 R8
      109 GETTABLEKS                       R14 R2 K11 ["sourcePinNodeId"]
      111 GETTABLEKS                       R15 R2 K12 ["sourcePinName"]
      113 CALL                             R9 6 0
      114 JUMP                             ; [+10]
      115 GETIMPORT                        R9 K20 [warn]
      117 LOADK                            R10 K21 ["Failed to find input pin name for node type:"]
      118 MOVE                             R11 R0
      119 CALL                             R9 2 0
      120 JUMP                             ; [+4]
      121 GETIMPORT                        R7 K23 [error]
      123 LOADK                            R8 K24 ["Bad sourcePinSide state"]
      124 CALL                             R7 1 0
      125 GETUPVAL                         R8 6
      126 GETTABLEKS                       R7 R8 K25 ["selectionService"]
      128 NEWTABLE                         R9 0 1
      130 MOVE                             R10 R5
      131 SETLIST                          R9 R10 1 [1]
      133 NAMECALL                         R7 R7 K26 ["Set"]
      135 CALL                             R7 2 0
      136 JUMPIFNOT                        R4 ; [+7]
      137 GETUPVAL                         R7 2
      138 MOVE                             R9 R4
      139 GETIMPORT                        R10 K30 [Enum.FinishRecordingOperation.Commit]
      141 NAMECALL                         R7 R7 K31 ["FinishRecording"]
      143 CALL                             R7 3 0
      144 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["getParameterInstanceName"]
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
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K6 ["selectionService"]
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R4 K7 ["Set"]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R5 0
        1 LOADB                            R6 0
        2 CALL                             R5 1 1
        3 JUMPIFEQKNIL                     R5 ; [+4]
        5 GETUPVAL                         R6 1
        6 JUMPIFNOTEQKNIL                  R6 ; [+3]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETUPVAL                         R6 2
       11 LOADK                            R8 K0 ["NativeGraphContext"]
       12 LOADK                            R9 K1 ["createParameterAsync"]
       13 NAMECALL                         R6 R6 K2 ["TryBeginRecording"]
       15 CALL                             R6 3 1
       16 LOADK                            R9 K3 ["AnimationGraphDefinition"]
       17 NAMECALL                         R7 R5 K4 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIF                           R7 ; [+6]
       21 GETIMPORT                        R7 K6 [warn]
       23 LOADK                            R8 K7 ["Selected graph instance is not an AnimationGraphDefinition"]
       24 CALL                             R7 1 0
       25 LOADNIL                          R7
       26 RETURN                           R7 1
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K8 ["getOrCreateParameterInstance"]
       30 GETUPVAL                         R8 4
       31 MOVE                             R9 R5
       32 MOVE                             R10 R0
       33 MOVE                             R11 R1
       34 MOVE                             R12 R4
       35 CALL                             R7 5 1
       36 GETUPVAL                         R12 5
       37 GETTABLEKS                       R11 R12 K9 ["NODE_ATTRIBUTES"]
       39 GETTABLEKS                       R10 R11 K10 ["BindingName"]
       41 NAMECALL                         R8 R7 K11 ["GetAttribute"]
       43 CALL                             R8 2 1
       44 MOVE                             R11 R8
       45 NAMECALL                         R9 R5 K11 ["GetAttribute"]
       47 CALL                             R9 2 1
       48 JUMPIFNOTEQKNIL                  R9 ; [+20]
       50 JUMPIFEQKNIL                     R3 ; [+18]
       52 FASTCALL1                        TYPE R3 ; [+3]
       53 MOVE                             R10 R3
       54 GETIMPORT                        R9 K13 [type]
       56 CALL                             R9 1 1
       57 JUMPIFNOTEQKS                    R9 K14 ["table"] ; [+6]
       59 GETIMPORT                        R9 K6 [warn]
       61 LOADK                            R10 K15 ["TODO: JSONEncode initial value to support safely"]
       62 CALL                             R9 1 0
       63 JUMP                             ; [+5]
       64 MOVE                             R11 R8
       65 MOVE                             R12 R3
       66 NAMECALL                         R9 R5 K16 ["SetAttribute"]
       68 CALL                             R9 3 0
       69 GETUPVAL                         R10 6
       70 GETTABLEKS                       R9 R10 K17 ["selectionService"]
       72 NEWTABLE                         R11 0 1
       74 MOVE                             R12 R7
       75 SETLIST                          R11 R12 1 [1]
       77 NAMECALL                         R9 R9 K18 ["Set"]
       79 CALL                             R9 2 0
       80 JUMPIFNOT                        R2 ; [+6]
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R9 R10 K19 ["setNodePosition"]
       84 MOVE                             R10 R7
       85 MOVE                             R11 R2
       86 CALL                             R9 2 0
       87 GETUPVAL                         R9 4
       88 MOVE                             R11 R7
       89 NAMECALL                         R9 R9 K20 ["instanceToId"]
       91 CALL                             R9 2 1
       92 JUMPIFNOT                        R6 ; [+7]
       93 GETUPVAL                         R10 2
       94 MOVE                             R12 R6
       95 GETIMPORT                        R13 K24 [Enum.FinishRecordingOperation.Commit]
       97 NAMECALL                         R10 R10 K25 ["FinishRecording"]
       99 CALL                             R10 3 0
      100 RETURN                           R9 1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 0
        2 CALL                             R4 1 1
        3 JUMPIFEQKNIL                     R4 ; [+4]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKNIL                  R5 ; [+3]
        8 LOADNIL                          R5
        9 RETURN                           R5 1
       10 LOADK                            R7 K0 ["AnimationGraphDefinition"]
       11 NAMECALL                         R5 R4 K1 ["IsA"]
       13 CALL                             R5 2 1
       14 JUMPIF                           R5 ; [+6]
       15 GETIMPORT                        R5 K3 [warn]
       17 LOADK                            R6 K4 ["Selected graph instance is not an AnimationGraphDefinition"]
       18 CALL                             R5 1 0
       19 LOADNIL                          R5
       20 RETURN                           R5 1
       21 JUMPIF                           R0 ; [+21]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K5 ["getParameterInstanceName"]
       25 MOVE                             R6 R1
       26 CALL                             R5 1 1
       27 MOVE                             R8 R5
       28 NAMECALL                         R6 R4 K6 ["FindFirstChild"]
       30 CALL                             R6 2 1
       31 JUMPIF                           R6 ; [+2]
       32 LOADNIL                          R7
       33 RETURN                           R7 1
       34 GETUPVAL                         R11 3
       35 GETTABLEKS                       R10 R11 K7 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R9 R10 K8 ["ParameterType"]
       39 NAMECALL                         R7 R6 K9 ["GetAttribute"]
       41 CALL                             R7 2 1
       42 MOVE                             R0 R7
       43 FASTCALL2K                       ASSERT R0 K10 ; [+5]
       45 MOVE                             R6 R0
       46 LOADK                            R7 K10 ["Parameter type must be provided or inferable for createExistingParameterAsync"]
       47 GETIMPORT                        R5 K12 [assert]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 4
       51 LOADK                            R7 K13 ["NativeGraphContext"]
       52 LOADK                            R8 K14 ["createParameterAsync"]
       53 NAMECALL                         R5 R5 K15 ["TryBeginRecording"]
       55 CALL                             R5 3 1
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R6 R7 K16 ["createExistingParameterInstance"]
       59 GETUPVAL                         R7 5
       60 MOVE                             R8 R4
       61 MOVE                             R9 R0
       62 MOVE                             R10 R1
       63 CALL                             R6 4 1
       64 LOADNIL                          R7
       65 JUMPIF                           R6 ; [+9]
       66 GETUPVAL                         R8 6
       67 MOVE                             R9 R0
       68 LOADB                            R10 0
       69 MOVE                             R11 R2
       70 MOVE                             R12 R3
       71 MOVE                             R13 R1
       72 CALL                             R8 5 1
       73 MOVE                             R7 R8
       74 JUMP                             ; [+24]
       75 GETUPVAL                         R8 5
       76 MOVE                             R10 R6
       77 NAMECALL                         R8 R8 K17 ["instanceToId"]
       79 CALL                             R8 2 1
       80 MOVE                             R7 R8
       81 GETUPVAL                         R9 7
       82 GETTABLEKS                       R8 R9 K18 ["selectionService"]
       84 NEWTABLE                         R10 0 1
       86 MOVE                             R11 R6
       87 SETLIST                          R10 R11 1 [1]
       89 NAMECALL                         R8 R8 K19 ["Set"]
       91 CALL                             R8 2 0
       92 JUMPIFNOT                        R2 ; [+6]
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R8 R9 K20 ["setNodePosition"]
       96 MOVE                             R9 R6
       97 MOVE                             R10 R2
       98 CALL                             R8 2 0
       99 JUMPIFNOT                        R5 ; [+7]
      100 GETUPVAL                         R8 4
      101 MOVE                             R10 R5
      102 GETIMPORT                        R11 K24 [Enum.FinishRecordingOperation.Commit]
      104 NAMECALL                         R8 R8 K25 ["FinishRecording"]
      106 CALL                             R8 3 0
      107 RETURN                           R7 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+7]
        3 GETIMPORT                        R2 K1 [warn]
        5 LOADK                            R3 K2 ["No graph payload map available for removeNodeInputConnectionAsync"]
        6 CALL                             R2 1 0
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 LOADK                            R4 K3 ["NativeGraphContext"]
       11 LOADK                            R5 K4 ["removeNodeInputConnectionAsync"]
       12 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       14 CALL                             R2 3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K6 ["removeNodeInputConnection"]
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

PROTO_25:
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
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K6 ["removeNodeOutputConnection"]
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

PROTO_26:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+6]
        3 GETIMPORT                        R4 K1 [warn]
        5 LOADK                            R5 K2 ["No graph payload map available for setNodeConnectionAsync"]
        6 CALL                             R4 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 LOADK                            R6 K3 ["NativeGraphContext"]
       10 LOADK                            R7 K4 ["addNodeConnection"]
       11 NAMECALL                         R4 R4 K5 ["TryBeginRecording"]
       13 CALL                             R4 3 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K6 ["setNodeConnection"]
       17 GETUPVAL                         R6 3
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 MOVE                             R10 R2
       22 MOVE                             R11 R3
       23 CALL                             R5 6 0
       24 JUMPIFNOT                        R4 ; [+7]
       25 GETUPVAL                         R5 1
       26 MOVE                             R7 R4
       27 GETIMPORT                        R8 K10 [Enum.FinishRecordingOperation.Commit]
       29 NAMECALL                         R5 R5 K11 ["FinishRecording"]
       31 CALL                             R5 3 0
       32 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 0
        2 CALL                             R4 1 1
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R5 1
        7 LOADK                            R7 K0 ["NativeGraphContext"]
        8 LOADK                            R8 K1 ["createParameterAsync"]
        9 NAMECALL                         R5 R5 K2 ["TryBeginRecording"]
       11 CALL                             R5 3 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R8 R0 K3 ["sourcePinNodeId"]
       15 NAMECALL                         R6 R6 K4 ["idToInstance"]
       17 CALL                             R6 2 1
       18 JUMPIFEQKNIL                     R6 ; [+6]
       20 LOADK                            R9 K5 ["AnimationNodeDefinition"]
       21 NAMECALL                         R7 R6 K6 ["IsA"]
       23 CALL                             R7 2 1
       24 JUMPIF                           R7 ; [+5]
       25 GETIMPORT                        R7 K8 [warn]
       27 LOADK                            R8 K9 ["Failed to find node definition instance for createParameterAsync"]
       28 CALL                             R7 1 0
       29 RETURN                           R0 0
       30 LOADK                            R9 K5 ["AnimationNodeDefinition"]
       31 NAMECALL                         R7 R6 K6 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIF                           R7 ; [+5]
       35 GETIMPORT                        R7 K8 [warn]
       37 LOADK                            R8 K10 ["Instance is not an AnimationNodeDefinition"]
       38 CALL                             R7 1 0
       39 RETURN                           R0 0
       40 LOADK                            R9 K11 ["AnimationGraphDefinition"]
       41 NAMECALL                         R7 R4 K6 ["IsA"]
       43 CALL                             R7 2 1
       44 JUMPIF                           R7 ; [+5]
       45 GETIMPORT                        R7 K8 [warn]
       47 LOADK                            R8 K12 ["Selected graph instance is not an AnimationGraphDefinition"]
       48 CALL                             R7 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R8 R9 K14 ["getParameterType"]
       53 GETTABLEKS                       R9 R6 K15 ["NodeType"]
       55 GETTABLEKS                       R10 R0 K16 ["sourcePinName"]
       57 CALL                             R8 2 1
       58 ORK                              R7 R8 K13 ["unknown"]
       59 LOADNIL                          R8
       60 JUMPIF                           R2 ; [+9]
       61 GETUPVAL                         R9 4
       62 MOVE                             R10 R7
       63 LOADB                            R11 1
       64 MOVE                             R12 R1
       65 MOVE                             R13 R3
       66 MOVE                             R14 R2
       67 CALL                             R9 5 1
       68 MOVE                             R8 R9
       69 JUMP                             ; [+19]
       70 GETUPVAL                         R9 5
       71 MOVE                             R10 R7
       72 MOVE                             R11 R2
       73 MOVE                             R12 R1
       74 MOVE                             R13 R3
       75 CALL                             R9 4 1
       76 MOVE                             R8 R9
       77 JUMPIFNOT                        R3 ; [+11]
       78 MOVE                             R11 R2
       79 NAMECALL                         R9 R4 K17 ["GetAttribute"]
       81 CALL                             R9 2 1
       82 JUMPIFNOTEQKNIL                  R9 ; [+6]
       84 MOVE                             R11 R2
       85 MOVE                             R12 R3
       86 NAMECALL                         R9 R4 K18 ["SetAttribute"]
       88 CALL                             R9 3 0
       89 JUMPIFNOT                        R8 ; [+22]
       90 GETTABLEKS                       R9 R0 K3 ["sourcePinNodeId"]
       92 GETTABLEKS                       R10 R0 K16 ["sourcePinName"]
       94 GETUPVAL                         R11 2
       95 MOVE                             R13 R8
       96 NAMECALL                         R11 R11 K4 ["idToInstance"]
       98 CALL                             R11 2 1
       99 JUMPIFNOT                        R11 ; [+12]
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R12 R13 K19 ["setNodePosition"]
      103 MOVE                             R13 R11
      104 MOVE                             R14 R1
      105 CALL                             R12 2 0
      106 GETUPVAL                         R12 6
      107 MOVE                             R13 R9
      108 MOVE                             R14 R10
      109 MOVE                             R15 R8
      110 LOADK                            R16 K20 ["Output"]
      111 CALL                             R12 4 0
      112 JUMPIFNOT                        R5 ; [+7]
      113 GETUPVAL                         R9 1
      114 MOVE                             R11 R5
      115 GETIMPORT                        R12 K24 [Enum.FinishRecordingOperation.Commit]
      117 NAMECALL                         R9 R9 K25 ["FinishRecording"]
      119 CALL                             R9 3 0
      120 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 GETIMPORT                        R3 K4 [Enum.FinishRecordingOperation.Commit]
       10 NAMECALL                         R0 R0 K5 ["FinishRecording"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K0 ["current"]
       17 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 GETIMPORT                        R3 K4 [Enum.FinishRecordingOperation.Cancel]
       10 NAMECALL                         R0 R0 K5 ["FinishRecording"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_31:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["NativeGraphContext"]
        2 LOADK                            R5 K1 ["renameNodeAsync"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+19]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K4 ["NODE_ATTRIBUTES"]
       15 GETTABLEKS                       R6 R7 K5 ["DisplayName"]
       17 LOADK                            R11 K6 ["%s"]
       18 LOADK                            R12 K7 [""]
       19 NAMECALL                         R9 R1 K8 ["gsub"]
       21 CALL                             R9 3 1
       22 LENGTH                           R8 R9
       23 JUMPIFNOTEQKN                    R8 K9 [0] ; [+3]
       25 LOADNIL                          R7
       26 JUMP                             ; [+1]
       27 MOVE                             R7 R1
       28 NAMECALL                         R4 R3 K10 ["SetAttribute"]
       30 CALL                             R4 3 0
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K11 ["observe"]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 1
       36 LOADB                            R5 0
       37 CALL                             R4 1 1
       38 JUMPIFNOT                        R4 ; [+28]
       39 GETUPVAL                         R5 4
       40 JUMPIFNOT                        R5 ; [+26]
       41 GETTABLEKS                       R5 R4 K12 ["outputPinToConnectionMap"]
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R10 R11 K13 ["hasDynamicInputPins"]
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R12 R9 K14 ["inputNodeId"]
       52 CALL                             R10 2 1
       53 JUMPIFNOT                        R10 ; [+11]
       54 GETUPVAL                         R11 5
       55 GETTABLEKS                       R10 R11 K15 ["renameDynamicInputPin"]
       57 GETUPVAL                         R11 1
       58 GETUPVAL                         R12 4
       59 GETTABLEKS                       R13 R9 K14 ["inputNodeId"]
       61 GETTABLEKS                       R14 R9 K16 ["inputNodePinId"]
       63 MOVE                             R15 R1
       64 CALL                             R10 5 0
       65 FORGLOOP                         R5 2 ; [-20]
       67 JUMPIFNOT                        R2 ; [+7]
       68 GETUPVAL                         R5 0
       69 MOVE                             R7 R2
       70 GETIMPORT                        R8 K20 [Enum.FinishRecordingOperation.Commit]
       72 NAMECALL                         R5 R5 K21 ["FinishRecording"]
       74 CALL                             R5 3 0
       75 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["NativeGraphContext"]
        2 LOADK                            R6 K1 ["reorderPinsAsync"]
        3 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K3 ["reorderPins"]
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeParameterNodeInfoLookupList"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_37:
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
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K6 ["getAllParameterInstancesFromName"]
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
       78 GETUPVAL                         R18 3
       79 GETTABLEKS                       R17 R18 K13 ["getParameterWireInputPinId"]
       81 GETTABLEKS                       R18 R15 K14 ["Name"]
       83 CALL                             R17 1 1
       84 JUMPIFNOT                        R17 ; [+5]
       85 MOVE                             R20 R17
       86 LOADNIL                          R21
       87 NAMECALL                         R18 R16 K15 ["SetAttribute"]
       89 CALL                             R18 3 0
       90 FORGLOOP                         R11 2 ; [-21]
       92 NAMECALL                         R11 R10 K16 ["Destroy"]
       94 CALL                             R11 1 0
       95 FORGLOOP                         R6 2 ; [-30]
       97 GETUPVAL                         R9 3
       98 GETTABLEKS                       R8 R9 K17 ["getParameterInstanceName"]
      100 MOVE                             R9 R0
      101 CALL                             R8 1 -1
      102 NAMECALL                         R6 R2 K18 ["FindFirstChild"]
      104 CALL                             R6 -1 1
      105 JUMPIF                           R6 ; [+11]
      106 MOVE                             R8 R0
      107 NAMECALL                         R6 R2 K19 ["GetAttribute"]
      109 CALL                             R6 2 1
      110 JUMPIFEQKNIL                     R6 ; [+6]
      112 MOVE                             R8 R0
      113 LOADNIL                          R9
      114 NAMECALL                         R6 R2 K15 ["SetAttribute"]
      116 CALL                             R6 3 0
      117 JUMPIFNOT                        R5 ; [+7]
      118 GETUPVAL                         R6 4
      119 MOVE                             R8 R5
      120 GETIMPORT                        R9 K23 [Enum.FinishRecordingOperation.Commit]
      122 NAMECALL                         R6 R6 K24 ["FinishRecording"]
      124 CALL                             R6 3 0
      125 RETURN                           R0 0

PROTO_38:
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
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K9 ["getAllParameterInstancesFromName"]
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
       68 GETIMPORT                        R7 K17 [table.clone]
       70 GETUPVAL                         R8 4
       71 CALL                             R7 1 1
       72 MOVE                             R8 R5
       73 LOADNIL                          R9
       74 LOADNIL                          R10
       75 FORGPREP                         R8
       76 NAMECALL                         R13 R12 K18 ["GetChildren"]
       78 CALL                             R13 1 3
       79 FORGPREP                         R13
       80 LOADK                            R20 K19 ["ObjectValue"]
       81 NAMECALL                         R18 R17 K2 ["IsA"]
       83 CALL                             R18 2 1
       84 JUMPIFNOT                        R18 ; [+17]
       85 GETTABLEKS                       R18 R17 K20 ["Value"]
       87 JUMPIFNOT                        R18 ; [+14]
       88 GETUPVAL                         R20 2
       89 GETTABLEKS                       R19 R20 K21 ["getParameterWireInputPinId"]
       91 GETTABLEKS                       R20 R17 K22 ["Name"]
       93 CALL                             R19 1 1
       94 JUMPIFNOT                        R19 ; [+7]
       95 GETUPVAL                         R21 2
       96 GETTABLEKS                       R20 R21 K23 ["setParameterBindingName"]
       98 MOVE                             R21 R18
       99 MOVE                             R22 R19
      100 MOVE                             R23 R1
      101 CALL                             R20 3 0
      102 FORGLOOP                         R13 2 ; [-23]
      104 GETUPVAL                         R14 2
      105 GETTABLEKS                       R13 R14 K24 ["getParameterInstanceName"]
      107 MOVE                             R14 R1
      108 CALL                             R13 1 1
      109 SETTABLEKS                       R13 R12 K22 ["Name"]
      111 GETUPVAL                         R17 5
      112 GETTABLEKS                       R16 R17 K25 ["NODE_ATTRIBUTES"]
      114 GETTABLEKS                       R15 R16 K26 ["BindingName"]
      116 MOVE                             R16 R1
      117 NAMECALL                         R13 R12 K15 ["SetAttribute"]
      119 CALL                             R13 3 0
      120 GETUPVAL                         R13 1
      121 MOVE                             R15 R12
      122 NAMECALL                         R13 R13 K27 ["instanceToId"]
      124 CALL                             R13 2 1
      125 GETUPVAL                         R15 4
      126 GETTABLE                         R14 R15 R13
      127 JUMPIFNOT                        R14 ; [+12]
      128 DUPTABLE                         R14 K31 [{"connection", "nodeId", "parameterName"}]
      129 GETUPVAL                         R17 4
      130 GETTABLE                         R16 R17 R13
      131 GETTABLEKS                       R15 R16 K28 ["connection"]
      133 SETTABLEKS                       R15 R14 K28 ["connection"]
      135 SETTABLEKS                       R13 R14 K29 ["nodeId"]
      137 SETTABLEKS                       R1 R14 K30 ["parameterName"]
      139 SETTABLE                         R14 R7 R13
      140 FORGLOOP                         R8 2 ; [-65]
      142 GETUPVAL                         R8 6
      143 MOVE                             R9 R7
      144 CALL                             R8 1 0
      145 LOADB                            R8 0
      146 JUMPIFEQKNIL                     R2 ; [+9]
      148 GETUPVAL                         R11 2
      149 GETTABLEKS                       R10 R11 K24 ["getParameterInstanceName"]
      151 MOVE                             R11 R0
      152 CALL                             R10 1 -1
      153 NAMECALL                         R8 R3 K32 ["FindFirstChild"]
      155 CALL                             R8 -1 1
      156 JUMPIF                           R8 ; [+5]
      157 MOVE                             R11 R0
      158 LOADNIL                          R12
      159 NAMECALL                         R9 R3 K15 ["SetAttribute"]
      161 CALL                             R9 3 0
      162 JUMPIFNOT                        R6 ; [+7]
      163 GETUPVAL                         R9 3
      164 MOVE                             R11 R6
      165 GETIMPORT                        R12 K36 [Enum.FinishRecordingOperation.Commit]
      167 NAMECALL                         R9 R9 K37 ["FinishRecording"]
      169 CALL                             R9 3 0
      170 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["getAllParameterInstancesFromName"]
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
       26 GETUPVAL                         R15 3
       27 GETTABLEKS                       R14 R15 K5 ["NODE_ATTRIBUTES"]
       29 GETTABLEKS                       R13 R14 K6 ["ParameterType"]
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

PROTO_40:
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
       13 NAMECALL                         R3 R1 K4 ["Destroy"]
       15 CALL                             R3 1 0
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R3 1
       18 MOVE                             R5 R2
       19 GETIMPORT                        R6 K8 [Enum.FinishRecordingOperation.Commit]
       21 NAMECALL                         R3 R3 K9 ["FinishRecording"]
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+31]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["instanceToId"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K4 ["current"]
       15 GETTABLE                         R2 R1 R0
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R4 R2 K5 ["parameterName"]
       19 GETTABLEKS                       R5 R2 K6 ["nodeId"]
       21 CALL                             R3 2 0
       22 GETTABLEKS                       R3 R2 K7 ["connection"]
       24 NAMECALL                         R3 R3 K8 ["Disconnect"]
       26 CALL                             R3 1 0
       27 GETIMPORT                        R3 K11 [table.clone]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R2 K6 ["nodeId"]
       33 LOADNIL                          R5
       34 SETTABLE                         R5 R3 R4
       35 GETUPVAL                         R4 4
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [table.clone]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 LOADB                            R3 0
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R11 R8 K3 ["nodeId"]
       15 GETTABLE                         R9 R10 R11
       16 JUMPIF                           R9 ; [+39]
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R11 R8 K3 ["nodeId"]
       20 NAMECALL                         R9 R9 K4 ["idToInstance"]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+32]
       24 GETTABLEKS                       R10 R9 K5 ["AncestryChanged"]
       26 NEWCLOSURE                       R12 P0
       27 CAPTURE                          VAL R9
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 NAMECALL                         R10 R10 K6 ["Connect"]
       34 CALL                             R10 2 1
       35 LOADB                            R3 1
       36 GETTABLEKS                       R11 R8 K3 ["nodeId"]
       38 DUPTABLE                         R12 K9 [{"connection", "nodeId", "parameterName"}]
       39 SETTABLEKS                       R10 R12 K7 ["connection"]
       41 GETTABLEKS                       R13 R8 K3 ["nodeId"]
       43 SETTABLEKS                       R13 R12 K3 ["nodeId"]
       45 GETUPVAL                         R17 6
       46 GETTABLEKS                       R16 R17 K10 ["NODE_ATTRIBUTES"]
       48 GETTABLEKS                       R15 R16 K11 ["BindingName"]
       50 NAMECALL                         R13 R9 K12 ["GetAttribute"]
       52 CALL                             R13 2 1
       53 SETTABLEKS                       R13 R12 K8 ["parameterName"]
       55 SETTABLE                         R12 R2 R11
       56 FORGLOOP                         R4 2 ; [-45]
       58 JUMPIFNOT                        R3 ; [+3]
       59 GETUPVAL                         R4 5
       60 MOVE                             R5 R2
       61 CALL                             R4 1 0
       62 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
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

PROTO_44:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["useContext"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K1 ["Context"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["useState"]
       14 GETIMPORT                        R5 K5 [Rect.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 LOADN                            R8 0
       19 LOADN                            R9 0
       20 CALL                             R5 4 -1
       21 CALL                             R4 -1 2
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K6 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R7
       38 SETLIST                          R10 R11 1 [1]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R9 R10 K8 ["useEffect"]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          VAL R8
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R8
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 0
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K0 ["useContext"]
       55 GETUPVAL                         R12 5
       56 GETTABLEKS                       R11 R12 K1 ["Context"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R9 R10 K9 ["instanceRegistry"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R10 R11 K7 ["useMemo"]
       64 NEWCLOSURE                       R11 P2
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          VAL R7
       67 NEWTABLE                         R12 0 1
       69 MOVE                             R13 R7
       70 SETLIST                          R12 R13 1 [1]
       72 CALL                             R10 2 1
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R11 R12 K7 ["useMemo"]
       76 NEWCLOSURE                       R12 P3
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 NEWTABLE                         R13 0 3
       83 MOVE                             R14 R9
       84 MOVE                             R15 R8
       85 MOVE                             R16 R10
       86 SETLIST                          R13 R14 3 [1]
       88 CALL                             R11 2 1
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R12 R13 K2 ["useState"]
       92 LOADNIL                          R13
       93 CALL                             R12 1 2
       94 GETUPVAL                         R15 1
       95 GETTABLEKS                       R14 R15 K2 ["useState"]
       97 NEWTABLE                         R15 0 0
       99 CALL                             R14 1 2
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R16 R17 K8 ["useEffect"]
      103 NEWCLOSURE                       R17 P4
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 NEWTABLE                         R18 0 6
      115 MOVE                             R19 R11
      116 GETTABLEKS                       R20 R0 K10 ["testOverrideGraphPayloadMap"]
      118 MOVE                             R21 R13
      119 MOVE                             R22 R5
      120 GETTABLEKS                       R23 R1 K11 ["setMap"]
      122 GETTABLEKS                       R24 R2 K11 ["setMap"]
      124 SETLIST                          R18 R19 6 [1]
      126 CALL                             R16 2 0
      127 GETUPVAL                         R17 1
      128 GETTABLEKS                       R16 R17 K12 ["useCallback"]
      130 NEWCLOSURE                       R17 P5
      131 CAPTURE                          VAL R9
      132 CAPTURE                          UPVAL U6
      133 NEWTABLE                         R18 0 1
      135 MOVE                             R19 R9
      136 SETLIST                          R18 R19 1 [1]
      138 CALL                             R16 2 1
      139 GETUPVAL                         R18 1
      140 GETTABLEKS                       R17 R18 K12 ["useCallback"]
      142 NEWCLOSURE                       R18 P6
      143 CAPTURE                          UPVAL U8
      144 CAPTURE                          VAL R9
      145 CAPTURE                          UPVAL U6
      146 NEWTABLE                         R19 0 1
      148 MOVE                             R20 R9
      149 SETLIST                          R19 R20 1 [1]
      151 CALL                             R17 2 1
      152 GETUPVAL                         R19 1
      153 GETTABLEKS                       R18 R19 K12 ["useCallback"]
      155 NEWCLOSURE                       R19 P7
      156 CAPTURE                          VAL R9
      157 CAPTURE                          UPVAL U6
      158 NEWTABLE                         R20 0 1
      160 MOVE                             R21 R9
      161 SETLIST                          R20 R21 1 [1]
      163 CALL                             R18 2 1
      164 GETUPVAL                         R20 1
      165 GETTABLEKS                       R19 R20 K12 ["useCallback"]
      167 NEWCLOSURE                       R20 P8
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R9
      170 NEWTABLE                         R21 0 3
      172 MOVE                             R22 R9
      173 GETTABLEKS                       R23 R3 K13 ["selectionService"]
      175 MOVE                             R24 R8
      176 SETLIST                          R21 R22 3 [1]
      178 CALL                             R19 2 1
      179 GETUPVAL                         R21 1
      180 GETTABLEKS                       R20 R21 K12 ["useCallback"]
      182 NEWCLOSURE                       R21 P9
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R9
      187 NEWTABLE                         R22 0 4
      189 GETTABLEKS                       R23 R2 K14 ["get"]
      191 GETTABLEKS                       R24 R3 K13 ["selectionService"]
      193 MOVE                             R25 R9
      194 MOVE                             R26 R12
      195 SETLIST                          R22 R23 4 [1]
      197 CALL                             R20 2 1
      198 GETUPVAL                         R22 1
      199 GETTABLEKS                       R21 R22 K2 ["useState"]
      201 LOADK                            R22 K15 [""]
      202 CALL                             R21 1 2
      203 GETUPVAL                         R24 1
      204 GETTABLEKS                       R23 R24 K2 ["useState"]
      206 LOADNIL                          R24
      207 CALL                             R23 1 2
      208 GETUPVAL                         R26 9
      209 GETTABLEKS                       R25 R26 K16 ["useSignalState"]
      211 MOVE                             R26 R10
      212 CALL                             R25 1 1
      213 GETUPVAL                         R27 1
      214 GETTABLEKS                       R26 R27 K8 ["useEffect"]
      216 NEWCLOSURE                       R27 P10
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R24
      220 CAPTURE                          UPVAL U10
      221 NEWTABLE                         R28 0 1
      223 MOVE                             R29 R25
      224 SETLIST                          R28 R29 1 [1]
      226 CALL                             R26 2 0
      227 GETUPVAL                         R27 1
      228 GETTABLEKS                       R26 R27 K8 ["useEffect"]
      230 NEWCLOSURE                       R27 P11
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R25
      233 NEWTABLE                         R28 0 2
      235 MOVE                             R29 R21
      236 MOVE                             R30 R25
      237 SETLIST                          R28 R29 2 [1]
      239 CALL                             R26 2 0
      240 GETUPVAL                         R26 1
      241 GETTABLEKS                       R25 R26 K12 ["useCallback"]
      243 NEWCLOSURE                       R26 P12
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R12
      246 CAPTURE                          UPVAL U8
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          VAL R9
      249 CAPTURE                          UPVAL U11
      250 CAPTURE                          VAL R3
      251 NEWTABLE                         R27 0 4
      253 GETTABLEKS                       R28 R3 K13 ["selectionService"]
      255 MOVE                             R29 R10
      256 MOVE                             R30 R12
      257 MOVE                             R31 R9
      258 SETLIST                          R27 R28 4 [1]
      260 CALL                             R25 2 1
      261 GETUPVAL                         R27 1
      262 GETTABLEKS                       R26 R27 K12 ["useCallback"]
      264 NEWCLOSURE                       R27 P13
      265 CAPTURE                          VAL R10
      266 CAPTURE                          UPVAL U6
      267 CAPTURE                          VAL R3
      268 NEWTABLE                         R28 0 2
      270 MOVE                             R29 R10
      271 GETTABLEKS                       R30 R3 K13 ["selectionService"]
      273 SETLIST                          R28 R29 2 [1]
      275 CALL                             R26 2 1
      276 GETUPVAL                         R28 1
      277 GETTABLEKS                       R27 R28 K12 ["useCallback"]
      279 NEWCLOSURE                       R28 P14
      280 CAPTURE                          VAL R10
      281 CAPTURE                          VAL R12
      282 CAPTURE                          UPVAL U8
      283 CAPTURE                          UPVAL U6
      284 CAPTURE                          VAL R9
      285 CAPTURE                          UPVAL U12
      286 CAPTURE                          VAL R3
      287 NEWTABLE                         R29 0 4
      289 GETTABLEKS                       R30 R3 K13 ["selectionService"]
      291 MOVE                             R31 R10
      292 MOVE                             R32 R9
      293 MOVE                             R33 R12
      294 SETLIST                          R29 R30 4 [1]
      296 CALL                             R27 2 1
      297 GETUPVAL                         R29 1
      298 GETTABLEKS                       R28 R29 K12 ["useCallback"]
      300 NEWCLOSURE                       R29 P15
      301 CAPTURE                          VAL R10
      302 CAPTURE                          VAL R12
      303 CAPTURE                          UPVAL U6
      304 CAPTURE                          UPVAL U12
      305 CAPTURE                          UPVAL U8
      306 CAPTURE                          VAL R9
      307 CAPTURE                          VAL R27
      308 CAPTURE                          VAL R3
      309 NEWTABLE                         R30 0 5
      311 GETTABLEKS                       R31 R3 K13 ["selectionService"]
      313 MOVE                             R32 R10
      314 MOVE                             R33 R9
      315 MOVE                             R34 R12
      316 MOVE                             R35 R27
      317 SETLIST                          R30 R31 5 [1]
      319 CALL                             R28 2 1
      320 GETUPVAL                         R30 1
      321 GETTABLEKS                       R29 R30 K12 ["useCallback"]
      323 NEWCLOSURE                       R30 P16
      324 CAPTURE                          VAL R12
      325 CAPTURE                          UPVAL U8
      326 CAPTURE                          UPVAL U6
      327 CAPTURE                          VAL R9
      328 NEWTABLE                         R31 0 2
      330 MOVE                             R32 R9
      331 MOVE                             R33 R12
      332 SETLIST                          R31 R32 2 [1]
      334 CALL                             R29 2 1
      335 GETUPVAL                         R31 1
      336 GETTABLEKS                       R30 R31 K12 ["useCallback"]
      338 NEWCLOSURE                       R31 P17
      339 CAPTURE                          VAL R12
      340 CAPTURE                          UPVAL U8
      341 CAPTURE                          UPVAL U6
      342 CAPTURE                          VAL R9
      343 NEWTABLE                         R32 0 2
      345 MOVE                             R33 R9
      346 MOVE                             R34 R12
      347 SETLIST                          R32 R33 2 [1]
      349 CALL                             R30 2 1
      350 GETUPVAL                         R32 1
      351 GETTABLEKS                       R31 R32 K12 ["useCallback"]
      353 NEWCLOSURE                       R32 P18
      354 CAPTURE                          VAL R12
      355 CAPTURE                          UPVAL U8
      356 CAPTURE                          UPVAL U6
      357 CAPTURE                          VAL R9
      358 NEWTABLE                         R33 0 2
      360 MOVE                             R34 R9
      361 MOVE                             R35 R12
      362 SETLIST                          R33 R34 2 [1]
      364 CALL                             R31 2 1
      365 GETUPVAL                         R33 1
      366 GETTABLEKS                       R32 R33 K12 ["useCallback"]
      368 NEWCLOSURE                       R33 P19
      369 CAPTURE                          VAL R10
      370 CAPTURE                          UPVAL U8
      371 CAPTURE                          VAL R9
      372 CAPTURE                          UPVAL U6
      373 CAPTURE                          VAL R27
      374 CAPTURE                          VAL R28
      375 CAPTURE                          VAL R31
      376 NEWTABLE                         R34 0 7
      378 GETTABLEKS                       R35 R3 K13 ["selectionService"]
      380 MOVE                             R36 R10
      381 MOVE                             R37 R12
      382 MOVE                             R38 R9
      383 MOVE                             R39 R27
      384 MOVE                             R40 R28
      385 MOVE                             R41 R31
      386 SETLIST                          R34 R35 7 [1]
      388 CALL                             R32 2 1
      389 GETUPVAL                         R34 1
      390 GETTABLEKS                       R33 R34 K12 ["useCallback"]
      392 NEWCLOSURE                       R34 P20
      393 CAPTURE                          VAL R6
      394 CAPTURE                          UPVAL U8
      395 NEWTABLE                         R35 0 0
      397 CALL                             R33 2 1
      398 GETUPVAL                         R35 1
      399 GETTABLEKS                       R34 R35 K12 ["useCallback"]
      401 NEWCLOSURE                       R35 P21
      402 CAPTURE                          VAL R6
      403 CAPTURE                          UPVAL U8
      404 NEWTABLE                         R36 0 0
      406 CALL                             R34 2 1
      407 GETUPVAL                         R36 1
      408 GETTABLEKS                       R35 R36 K8 ["useEffect"]
      410 NEWCLOSURE                       R36 P22
      411 CAPTURE                          VAL R6
      412 CAPTURE                          UPVAL U8
      413 NEWTABLE                         R37 0 0
      415 CALL                             R35 2 0
      416 GETUPVAL                         R36 1
      417 GETTABLEKS                       R35 R36 K12 ["useCallback"]
      419 NEWCLOSURE                       R36 P23
      420 CAPTURE                          UPVAL U8
      421 CAPTURE                          VAL R9
      422 CAPTURE                          UPVAL U10
      423 NEWTABLE                         R37 0 1
      425 MOVE                             R38 R9
      426 SETLIST                          R37 R38 1 [1]
      428 CALL                             R35 2 1
      429 GETUPVAL                         R37 1
      430 GETTABLEKS                       R36 R37 K12 ["useCallback"]
      432 NEWCLOSURE                       R37 P24
      433 CAPTURE                          UPVAL U8
      434 CAPTURE                          VAL R9
      435 NEWTABLE                         R38 0 1
      437 MOVE                             R39 R9
      438 SETLIST                          R38 R39 1 [1]
      440 CALL                             R36 2 1
      441 GETUPVAL                         R38 1
      442 GETTABLEKS                       R37 R38 K12 ["useCallback"]
      444 NEWCLOSURE                       R38 P25
      445 CAPTURE                          UPVAL U8
      446 CAPTURE                          VAL R9
      447 CAPTURE                          UPVAL U12
      448 CAPTURE                          VAL R1
      449 CAPTURE                          VAL R12
      450 CAPTURE                          UPVAL U6
      451 NEWTABLE                         R39 0 3
      453 MOVE                             R40 R9
      454 MOVE                             R41 R12
      455 GETTABLEKS                       R42 R1 K17 ["observe"]
      457 SETLIST                          R39 R40 3 [1]
      459 CALL                             R37 2 1
      460 GETUPVAL                         R39 1
      461 GETTABLEKS                       R38 R39 K12 ["useCallback"]
      463 NEWCLOSURE                       R39 P26
      464 CAPTURE                          UPVAL U8
      465 CAPTURE                          UPVAL U6
      466 CAPTURE                          VAL R9
      467 NEWTABLE                         R40 0 1
      469 MOVE                             R41 R9
      470 SETLIST                          R40 R41 1 [1]
      472 CALL                             R38 2 1
      473 GETUPVAL                         R40 1
      474 GETTABLEKS                       R39 R40 K2 ["useState"]
      476 NEWTABLE                         R40 0 0
      478 CALL                             R39 1 2
      479 GETUPVAL                         R42 13
      480 GETTABLEKS                       R41 R42 K18 ["useRefToState"]
      482 MOVE                             R42 R39
      483 CALL                             R41 1 1
      484 GETUPVAL                         R43 1
      485 GETTABLEKS                       R42 R43 K7 ["useMemo"]
      487 NEWCLOSURE                       R43 P27
      488 CAPTURE                          UPVAL U6
      489 CAPTURE                          VAL R9
      490 CAPTURE                          VAL R10
      491 NEWTABLE                         R44 0 2
      493 MOVE                             R45 R9
      494 MOVE                             R46 R10
      495 SETLIST                          R44 R45 2 [1]
      497 CALL                             R42 2 1
      498 GETUPVAL                         R44 1
      499 GETTABLEKS                       R43 R44 K12 ["useCallback"]
      501 NEWCLOSURE                       R44 P28
      502 CAPTURE                          VAL R10
      503 CAPTURE                          VAL R12
      504 CAPTURE                          VAL R9
      505 CAPTURE                          UPVAL U6
      506 CAPTURE                          UPVAL U8
      507 NEWTABLE                         R45 0 3
      509 MOVE                             R46 R10
      510 MOVE                             R47 R9
      511 MOVE                             R48 R12
      512 SETLIST                          R45 R46 3 [1]
      514 CALL                             R43 2 1
      515 GETUPVAL                         R45 1
      516 GETTABLEKS                       R44 R45 K12 ["useCallback"]
      518 NEWCLOSURE                       R45 P29
      519 CAPTURE                          VAL R10
      520 CAPTURE                          VAL R9
      521 CAPTURE                          UPVAL U6
      522 CAPTURE                          UPVAL U8
      523 CAPTURE                          VAL R39
      524 CAPTURE                          UPVAL U12
      525 CAPTURE                          VAL R40
      526 NEWTABLE                         R46 0 4
      528 MOVE                             R47 R9
      529 MOVE                             R48 R10
      530 MOVE                             R49 R12
      531 MOVE                             R50 R39
      532 SETLIST                          R46 R47 4 [1]
      534 CALL                             R44 2 1
      535 GETUPVAL                         R46 1
      536 GETTABLEKS                       R45 R46 K12 ["useCallback"]
      538 NEWCLOSURE                       R46 P30
      539 CAPTURE                          VAL R10
      540 CAPTURE                          UPVAL U6
      541 CAPTURE                          UPVAL U8
      542 CAPTURE                          UPVAL U12
      543 NEWTABLE                         R47 0 1
      545 MOVE                             R48 R10
      546 SETLIST                          R47 R48 1 [1]
      548 CALL                             R45 2 1
      549 GETUPVAL                         R47 1
      550 GETTABLEKS                       R46 R47 K12 ["useCallback"]
      552 NEWCLOSURE                       R47 P31
      553 CAPTURE                          VAL R9
      554 CAPTURE                          UPVAL U8
      555 NEWTABLE                         R48 0 1
      557 MOVE                             R49 R9
      558 SETLIST                          R48 R49 1 [1]
      560 CALL                             R46 2 1
      561 GETUPVAL                         R48 1
      562 GETTABLEKS                       R47 R48 K8 ["useEffect"]
      564 NEWCLOSURE                       R48 P32
      565 CAPTURE                          UPVAL U7
      566 CAPTURE                          VAL R42
      567 CAPTURE                          VAL R39
      568 CAPTURE                          VAL R9
      569 CAPTURE                          VAL R41
      570 CAPTURE                          VAL R43
      571 CAPTURE                          VAL R40
      572 CAPTURE                          UPVAL U12
      573 NEWTABLE                         R49 0 4
      575 MOVE                             R50 R9
      576 MOVE                             R51 R39
      577 MOVE                             R52 R42
      578 MOVE                             R53 R43
      579 SETLIST                          R49 R50 4 [1]
      581 CALL                             R47 2 0
      582 GETUPVAL                         R47 14
      583 MOVE                             R48 R2
      584 MOVE                             R49 R1
      585 CALL                             R47 2 1
      586 NEWTABLE                         R48 64 0
      588 JUMPIFNOT                        R12 ; [+3]
      589 GETTABLEKS                       R49 R12 K19 ["graphInstanceId"]
      591 JUMP                             ; [+1]
      592 LOADNIL                          R49
      593 SETTABLEKS                       R49 R48 K20 ["selectedGraphInstanceId"]
      595 SETTABLEKS                       R38 R48 K21 ["reorderPinsAsync"]
      597 SETTABLEKS                       R25 R48 K22 ["createNodeAsync"]
      599 SETTABLEKS                       R27 R48 K23 ["createParameterAsync"]
      601 SETTABLEKS                       R28 R48 K24 ["createExistingParameterAsync"]
      603 SETTABLEKS                       R32 R48 K25 ["createConnectedParameterAsync"]
      605 SETTABLEKS                       R4 R48 K26 ["graphRect"]
      607 SETTABLEKS                       R26 R48 K27 ["selectAllParameterNodesWithNameAsync"]
      609 SETTABLEKS                       R19 R48 K28 ["selectNodesAsync"]
      611 SETTABLEKS                       R20 R48 K29 ["selectNodesFromRectAsync"]
      613 SETTABLEKS                       R17 R48 K30 ["setNodePositionsAsync"]
      615 SETTABLEKS                       R18 R48 K31 ["setNodeSizeAsync"]
      617 SETTABLEKS                       R31 R48 K32 ["setNodeConnectionAsync"]
      619 SETTABLEKS                       R30 R48 K33 ["removeNodeOutputConnectionAsync"]
      621 SETTABLEKS                       R29 R48 K34 ["removeNodeInputConnectionAsync"]
      623 SETTABLEKS                       R43 R48 K35 ["removeParameterAsync"]
      625 SETTABLEKS                       R37 R48 K36 ["renameNodeAsync"]
      627 SETTABLEKS                       R44 R48 K37 ["renameParameterAsync"]
      629 SETTABLEKS                       R46 R48 K38 ["deleteNodeInstanceAsync"]
      631 SETTABLEKS                       R16 R48 K39 ["setCollapsedAsync"]
      633 SETTABLEKS                       R35 R48 K40 ["setNodePropertyAsync"]
      635 SETTABLEKS                       R36 R48 K41 ["setInputPinNodePropertyAsync"]
      637 SETTABLEKS                       R45 R48 K42 ["setParameterNodeTypeAsync"]
      639 SETTABLEKS                       R21 R48 K43 ["currentAnimationId"]
      641 SETTABLEKS                       R23 R48 K44 ["sourceAssetId"]
      643 GETTABLEKS                       R49 R47 K45 ["getSelectedRect"]
      645 SETTABLEKS                       R49 R48 K45 ["getSelectedRect"]
      647 SETTABLEKS                       R10 R48 K46 ["observeSelectedGraphInstance"]
      649 GETTABLEKS                       R49 R1 K17 ["observe"]
      651 SETTABLEKS                       R49 R48 K47 ["observeGraphNodeById"]
      653 GETTABLEKS                       R49 R2 K17 ["observe"]
      655 SETTABLEKS                       R49 R48 K48 ["observeNodeRenderInfoById"]
      657 SETTABLEKS                       R33 R48 K49 ["beginUndoTransaction"]
      659 SETTABLEKS                       R34 R48 K50 ["finishUndoTransaction"]
      661 SETTABLEKS                       R6 R48 K51 ["undoTransaction"]
      663 GETTABLEKS                       R49 R1 K52 ["observeMap"]
      665 SETTABLEKS                       R49 R48 K53 ["observeGraphNodeMap"]
      667 GETTABLEKS                       R49 R2 K52 ["observeMap"]
      669 SETTABLEKS                       R49 R48 K54 ["observeRenderInfoMap"]
      671 GETTABLEKS                       R49 R47 K55 ["hasGraphOutput"]
      673 SETTABLEKS                       R49 R48 K55 ["hasGraphOutput"]
      675 GETUPVAL                         R50 1
      676 GETTABLEKS                       R49 R50 K7 ["useMemo"]
      678 DUPCLOSURE                       R50 K56 [PROTO_44]
      679 NEWTABLE                         R51 0 0
      681 CALL                             R49 2 1
      682 GETUPVAL                         R51 1
      683 GETTABLEKS                       R50 R51 K7 ["useMemo"]
      685 NEWCLOSURE                       R51 P34
      686 CAPTURE                          UPVAL U15
      687 CAPTURE                          VAL R10
      688 NEWTABLE                         R52 0 2
      690 MOVE                             R53 R10
      691 MOVE                             R54 R12
      692 SETLIST                          R52 R53 2 [1]
      694 CALL                             R50 2 1
      695 GETUPVAL                         R52 9
      696 GETTABLEKS                       R51 R52 K16 ["useSignalState"]
      698 MOVE                             R52 R50
      699 CALL                             R51 1 1
      700 GETUPVAL                         R53 16
      701 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      703 GETUPVAL                         R54 17
      704 GETTABLEKS                       R53 R54 K58 ["GRAPH_PAYLOAD_MAP"]
      706 MOVE                             R54 R12
      707 CALL                             R52 2 0
      708 GETUPVAL                         R53 16
      709 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      711 GETUPVAL                         R54 17
      712 GETTABLEKS                       R53 R54 K59 ["GRAPH_RENDER_INFO"]
      714 MOVE                             R54 R14
      715 CALL                             R52 2 0
      716 GETUPVAL                         R53 16
      717 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      719 GETUPVAL                         R54 17
      720 GETTABLEKS                       R53 R54 K60 ["TIME_RANGE"]
      722 MOVE                             R54 R49
      723 CALL                             R52 2 0
      724 GETUPVAL                         R53 16
      725 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      727 GETUPVAL                         R54 17
      728 GETTABLEKS                       R53 R54 K61 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      730 MOVE                             R54 R4
      731 CALL                             R52 2 0
      732 GETUPVAL                         R53 16
      733 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      735 GETUPVAL                         R54 17
      736 GETTABLEKS                       R53 R54 K62 ["CURRENT_ANIMATION_ID"]
      738 MOVE                             R54 R21
      739 CALL                             R52 2 0
      740 GETUPVAL                         R53 16
      741 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      743 GETUPVAL                         R54 17
      744 GETTABLEKS                       R53 R54 K63 ["SOURCE_ASSET_ID"]
      746 MOVE                             R54 R23
      747 CALL                             R52 2 0
      748 GETUPVAL                         R53 16
      749 GETTABLEKS                       R52 R53 K57 ["useReplicatedState"]
      751 GETUPVAL                         R54 17
      752 GETTABLEKS                       R53 R54 K64 ["UNDO_TRANSACTION"]
      754 MOVE                             R54 R6
      755 CALL                             R52 2 0
      756 GETUPVAL                         R53 16
      757 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      759 GETUPVAL                         R54 18
      760 GETTABLEKS                       R53 R54 K66 ["CREATE_NODE"]
      762 MOVE                             R54 R25
      763 CALL                             R52 2 0
      764 GETUPVAL                         R53 16
      765 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      767 GETUPVAL                         R54 18
      768 GETTABLEKS                       R53 R54 K67 ["CREATE_PARAMETER"]
      770 MOVE                             R54 R27
      771 CALL                             R52 2 0
      772 GETUPVAL                         R53 16
      773 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      775 GETUPVAL                         R54 18
      776 GETTABLEKS                       R53 R54 K68 ["CREATE_CONNECTED_PARAMETER"]
      778 MOVE                             R54 R32
      779 CALL                             R52 2 0
      780 GETUPVAL                         R53 16
      781 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      783 GETUPVAL                         R54 18
      784 GETTABLEKS                       R53 R54 K69 ["CREATE_EXISTING_PARAMETER"]
      786 MOVE                             R54 R28
      787 CALL                             R52 2 0
      788 GETUPVAL                         R53 16
      789 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      791 GETUPVAL                         R54 18
      792 GETTABLEKS                       R53 R54 K70 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      794 MOVE                             R54 R26
      795 CALL                             R52 2 0
      796 GETUPVAL                         R53 16
      797 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      799 GETUPVAL                         R54 18
      800 GETTABLEKS                       R53 R54 K71 ["SELECT_NODES"]
      802 MOVE                             R54 R19
      803 CALL                             R52 2 0
      804 GETUPVAL                         R53 16
      805 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      807 GETUPVAL                         R54 18
      808 GETTABLEKS                       R53 R54 K72 ["SELECT_NODES_FROM_RECT"]
      810 MOVE                             R54 R20
      811 CALL                             R52 2 0
      812 GETUPVAL                         R53 16
      813 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      815 GETUPVAL                         R54 18
      816 GETTABLEKS                       R53 R54 K73 ["SET_NODE_POSITIONS"]
      818 MOVE                             R54 R17
      819 CALL                             R52 2 0
      820 GETUPVAL                         R53 16
      821 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      823 GETUPVAL                         R54 18
      824 GETTABLEKS                       R53 R54 K74 ["SET_NODE_SIZE"]
      826 MOVE                             R54 R18
      827 CALL                             R52 2 0
      828 GETUPVAL                         R53 16
      829 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      831 GETUPVAL                         R54 18
      832 GETTABLEKS                       R53 R54 K75 ["SET_NODE_CONNECTION"]
      834 MOVE                             R54 R31
      835 CALL                             R52 2 0
      836 GETUPVAL                         R53 16
      837 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      839 GETUPVAL                         R54 18
      840 GETTABLEKS                       R53 R54 K76 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      842 MOVE                             R54 R30
      843 CALL                             R52 2 0
      844 GETUPVAL                         R53 16
      845 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      847 GETUPVAL                         R54 18
      848 GETTABLEKS                       R53 R54 K77 ["REMOVE_NODE_INPUT_CONNECTION"]
      850 MOVE                             R54 R29
      851 CALL                             R52 2 0
      852 GETUPVAL                         R53 16
      853 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      855 GETUPVAL                         R54 18
      856 GETTABLEKS                       R53 R54 K78 ["REMOVE_PARAMETER"]
      858 MOVE                             R54 R43
      859 CALL                             R52 2 0
      860 GETUPVAL                         R53 16
      861 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      863 GETUPVAL                         R54 18
      864 GETTABLEKS                       R53 R54 K79 ["RENAME_NODE"]
      866 MOVE                             R54 R37
      867 CALL                             R52 2 0
      868 GETUPVAL                         R53 16
      869 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      871 GETUPVAL                         R54 18
      872 GETTABLEKS                       R53 R54 K80 ["RENAME_PARAMETER"]
      874 MOVE                             R54 R44
      875 CALL                             R52 2 0
      876 GETUPVAL                         R53 16
      877 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      879 GETUPVAL                         R54 18
      880 GETTABLEKS                       R53 R54 K81 ["DELETE_NODE_INSTANCE"]
      882 MOVE                             R54 R46
      883 CALL                             R52 2 0
      884 GETUPVAL                         R53 16
      885 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      887 GETUPVAL                         R54 18
      888 GETTABLEKS                       R53 R54 K82 ["SET_COLLAPSED"]
      890 MOVE                             R54 R16
      891 CALL                             R52 2 0
      892 GETUPVAL                         R53 16
      893 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      895 GETUPVAL                         R54 18
      896 GETTABLEKS                       R53 R54 K83 ["SET_NODE_PROPERTY"]
      898 MOVE                             R54 R35
      899 CALL                             R52 2 0
      900 GETUPVAL                         R53 16
      901 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      903 GETUPVAL                         R54 18
      904 GETTABLEKS                       R53 R54 K84 ["SET_INPUT_PIN_NODE_PROPERTY"]
      906 MOVE                             R54 R36
      907 CALL                             R52 2 0
      908 GETUPVAL                         R53 16
      909 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      911 GETUPVAL                         R54 18
      912 GETTABLEKS                       R53 R54 K85 ["SET_PARAMETER_NODE_TYPE"]
      914 MOVE                             R54 R45
      915 CALL                             R52 2 0
      916 GETUPVAL                         R53 16
      917 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      919 GETUPVAL                         R54 18
      920 GETTABLEKS                       R53 R54 K86 ["REORDER_PINS"]
      922 MOVE                             R54 R38
      923 CALL                             R52 2 0
      924 GETUPVAL                         R53 16
      925 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      927 GETUPVAL                         R54 18
      928 GETTABLEKS                       R53 R54 K87 ["BEGIN_UNDO_TRANSACTION"]
      930 MOVE                             R54 R33
      931 CALL                             R52 2 0
      932 GETUPVAL                         R53 16
      933 GETTABLEKS                       R52 R53 K65 ["useBoundAction"]
      935 GETUPVAL                         R54 18
      936 GETTABLEKS                       R53 R54 K88 ["FINISH_UNDO_TRANSACTION"]
      938 MOVE                             R54 R34
      939 CALL                             R52 2 0
      940 GETUPVAL                         R53 1
      941 GETTABLEKS                       R52 R53 K89 ["createElement"]
      943 GETUPVAL                         R54 19
      944 GETTABLEKS                       R53 R54 K90 ["Provider"]
      946 DUPTABLE                         R54 K92 [{"value"}]
      947 SETTABLEKS                       R48 R54 K91 ["value"]
      949 DUPTABLE                         R55 K94 [{"ContextStack"}]
      950 GETUPVAL                         R57 1
      951 GETTABLEKS                       R56 R57 K89 ["createElement"]
      953 GETUPVAL                         R58 13
      954 GETTABLEKS                       R57 R58 K93 ["ContextStack"]
      956 DUPTABLE                         R58 K96 [{"providers"}]
      957 NEWTABLE                         R59 0 2
      959 GETUPVAL                         R61 1
      960 GETTABLEKS                       R60 R61 K89 ["createElement"]
      962 GETUPVAL                         R62 20
      963 GETTABLEKS                       R61 R62 K90 ["Provider"]
      965 DUPTABLE                         R62 K98 [{"timeRange"}]
      966 SETTABLEKS                       R49 R62 K97 ["timeRange"]
      968 CALL                             R60 2 1
      969 GETUPVAL                         R62 1
      970 GETTABLEKS                       R61 R62 K89 ["createElement"]
      972 GETUPVAL                         R63 21
      973 GETTABLEKS                       R62 R63 K90 ["Provider"]
      975 DUPTABLE                         R63 K100 [{"animationClipsList"}]
      976 SETTABLEKS                       R51 R63 K99 ["animationClipsList"]
      978 CALL                             R61 2 -1
      979 SETLIST                          R59 R60 -1 [1]
      981 SETTABLEKS                       R59 R58 K95 ["providers"]
      983 GETTABLEKS                       R59 R0 K101 ["children"]
      985 CALL                             R56 3 1
      986 SETTABLEKS                       R56 R55 K93 ["ContextStack"]
      988 CALL                             R52 3 -1
      989 RETURN                           R52 -1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_49:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["setMap"]
        4 GETTABLEKS                       R2 R0 K1 ["lookup"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K2 ["graphInstanceId"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["setMap"]
       15 NEWTABLE                         R2 0 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 LOADNIL                          R2
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["testOverrideGraphPayloadMap"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setMap"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["testOverrideGraphPayloadMap"]
       10 GETTABLEKS                       R1 R2 K2 ["lookup"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_51:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        7 DUPCLOSURE                       R4 K1 [PROTO_48]
        8 CAPTURE                          UPVAL U2
        9 NEWTABLE                         R5 0 0
       11 CALL                             R3 2 2
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K2 ["useReplicatedStateListenerCallback"]
       15 GETUPVAL                         R7 4
       16 GETTABLEKS                       R6 R7 K3 ["GRAPH_PAYLOAD_MAP"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R9 0 2
       26 GETTABLEKS                       R10 R1 K5 ["setMap"]
       28 MOVE                             R11 R4
       29 SETLIST                          R9 R10 2 [1]
       31 CALL                             R7 2 -1
       32 CALL                             R5 -1 0
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K2 ["useReplicatedStateListenerCallback"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R6 R7 K6 ["GRAPH_RENDER_INFO"]
       39 GETTABLEKS                       R7 R2 K5 ["setMap"]
       41 CALL                             R5 2 0
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K7 ["useEffect"]
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R7 0 1
       50 GETTABLEKS                       R8 R0 K8 ["testOverrideGraphPayloadMap"]
       52 SETLIST                          R7 R8 1 [1]
       54 CALL                             R5 2 0
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R5 R6 K9 ["useReplicatedStateListener"]
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R6 R7 K10 ["TIME_RANGE"]
       61 GETIMPORT                        R7 K13 [NumberRange.new]
       63 LOADN                            R8 0
       64 LOADN                            R9 10
       65 CALL                             R7 2 -1
       66 CALL                             R5 -1 1
       67 GETUPVAL                         R7 3
       68 GETTABLEKS                       R6 R7 K9 ["useReplicatedStateListener"]
       70 GETUPVAL                         R8 4
       71 GETTABLEKS                       R7 R8 K14 ["GRAPH_PAYLOAD_GRAPH_RECT"]
       73 GETIMPORT                        R8 K16 [Rect.new]
       75 LOADN                            R9 0
       76 LOADN                            R10 0
       77 LOADN                            R11 0
       78 LOADN                            R12 0
       79 CALL                             R8 4 -1
       80 CALL                             R6 -1 1
       81 GETUPVAL                         R8 3
       82 GETTABLEKS                       R7 R8 K9 ["useReplicatedStateListener"]
       84 GETUPVAL                         R9 4
       85 GETTABLEKS                       R8 R9 K17 ["CURRENT_ANIMATION_ID"]
       87 LOADK                            R9 K18 [""]
       88 CALL                             R7 2 1
       89 GETUPVAL                         R9 3
       90 GETTABLEKS                       R8 R9 K9 ["useReplicatedStateListener"]
       92 GETUPVAL                         R10 4
       93 GETTABLEKS                       R9 R10 K19 ["SOURCE_ASSET_ID"]
       95 LOADNIL                          R10
       96 CALL                             R8 2 1
       97 GETUPVAL                         R10 5
       98 GETTABLEKS                       R9 R10 K20 ["createComputed"]
      100 DUPCLOSURE                       R10 K21 [PROTO_51]
      101 CALL                             R9 1 1
      102 GETUPVAL                         R10 6
      103 MOVE                             R11 R2
      104 MOVE                             R12 R1
      105 CALL                             R10 2 1
      106 GETUPVAL                         R12 7
      107 GETTABLEKS                       R11 R12 K22 ["useSignalState"]
      109 MOVE                             R12 R3
      110 CALL                             R11 1 1
      111 NEWTABLE                         R12 64 0
      113 SETTABLEKS                       R11 R12 K23 ["selectedGraphInstanceId"]
      115 GETUPVAL                         R14 3
      116 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      118 GETUPVAL                         R15 8
      119 GETTABLEKS                       R14 R15 K25 ["REORDER_PINS"]
      121 CALL                             R13 1 1
      122 SETTABLEKS                       R13 R12 K26 ["reorderPinsAsync"]
      124 GETUPVAL                         R14 3
      125 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      127 GETUPVAL                         R15 8
      128 GETTABLEKS                       R14 R15 K27 ["CREATE_NODE"]
      130 CALL                             R13 1 1
      131 SETTABLEKS                       R13 R12 K28 ["createNodeAsync"]
      133 GETUPVAL                         R14 3
      134 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      136 GETUPVAL                         R15 8
      137 GETTABLEKS                       R14 R15 K29 ["CREATE_PARAMETER"]
      139 CALL                             R13 1 1
      140 SETTABLEKS                       R13 R12 K30 ["createParameterAsync"]
      142 GETUPVAL                         R14 3
      143 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      145 GETUPVAL                         R15 8
      146 GETTABLEKS                       R14 R15 K31 ["CREATE_CONNECTED_PARAMETER"]
      148 CALL                             R13 1 1
      149 SETTABLEKS                       R13 R12 K32 ["createConnectedParameterAsync"]
      151 GETUPVAL                         R14 3
      152 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      154 GETUPVAL                         R15 8
      155 GETTABLEKS                       R14 R15 K33 ["CREATE_EXISTING_PARAMETER"]
      157 CALL                             R13 1 1
      158 SETTABLEKS                       R13 R12 K34 ["createExistingParameterAsync"]
      160 SETTABLEKS                       R6 R12 K35 ["graphRect"]
      162 GETUPVAL                         R14 3
      163 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      165 GETUPVAL                         R15 8
      166 GETTABLEKS                       R14 R15 K36 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      168 CALL                             R13 1 1
      169 SETTABLEKS                       R13 R12 K37 ["selectAllParameterNodesWithNameAsync"]
      171 GETUPVAL                         R14 3
      172 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      174 GETUPVAL                         R15 8
      175 GETTABLEKS                       R14 R15 K38 ["SELECT_NODES"]
      177 CALL                             R13 1 1
      178 SETTABLEKS                       R13 R12 K39 ["selectNodesAsync"]
      180 GETUPVAL                         R14 3
      181 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      183 GETUPVAL                         R15 8
      184 GETTABLEKS                       R14 R15 K40 ["SELECT_NODES_FROM_RECT"]
      186 CALL                             R13 1 1
      187 SETTABLEKS                       R13 R12 K41 ["selectNodesFromRectAsync"]
      189 GETUPVAL                         R14 3
      190 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      192 GETUPVAL                         R15 8
      193 GETTABLEKS                       R14 R15 K42 ["SET_NODE_POSITIONS"]
      195 CALL                             R13 1 1
      196 SETTABLEKS                       R13 R12 K43 ["setNodePositionsAsync"]
      198 GETUPVAL                         R14 3
      199 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      201 GETUPVAL                         R15 8
      202 GETTABLEKS                       R14 R15 K44 ["SET_NODE_SIZE"]
      204 CALL                             R13 1 1
      205 SETTABLEKS                       R13 R12 K45 ["setNodeSizeAsync"]
      207 GETUPVAL                         R14 3
      208 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      210 GETUPVAL                         R15 8
      211 GETTABLEKS                       R14 R15 K46 ["SET_NODE_CONNECTION"]
      213 CALL                             R13 1 1
      214 SETTABLEKS                       R13 R12 K47 ["setNodeConnectionAsync"]
      216 GETUPVAL                         R14 3
      217 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      219 GETUPVAL                         R15 8
      220 GETTABLEKS                       R14 R15 K48 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      222 CALL                             R13 1 1
      223 SETTABLEKS                       R13 R12 K49 ["removeNodeOutputConnectionAsync"]
      225 GETUPVAL                         R14 3
      226 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      228 GETUPVAL                         R15 8
      229 GETTABLEKS                       R14 R15 K50 ["REMOVE_NODE_INPUT_CONNECTION"]
      231 CALL                             R13 1 1
      232 SETTABLEKS                       R13 R12 K51 ["removeNodeInputConnectionAsync"]
      234 GETUPVAL                         R14 3
      235 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      237 GETUPVAL                         R15 8
      238 GETTABLEKS                       R14 R15 K52 ["REMOVE_PARAMETER"]
      240 CALL                             R13 1 1
      241 SETTABLEKS                       R13 R12 K53 ["removeParameterAsync"]
      243 GETUPVAL                         R14 3
      244 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      246 GETUPVAL                         R15 8
      247 GETTABLEKS                       R14 R15 K54 ["RENAME_NODE"]
      249 CALL                             R13 1 1
      250 SETTABLEKS                       R13 R12 K55 ["renameNodeAsync"]
      252 GETUPVAL                         R14 3
      253 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      255 GETUPVAL                         R15 8
      256 GETTABLEKS                       R14 R15 K56 ["RENAME_PARAMETER"]
      258 CALL                             R13 1 1
      259 SETTABLEKS                       R13 R12 K57 ["renameParameterAsync"]
      261 GETUPVAL                         R14 3
      262 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      264 GETUPVAL                         R15 8
      265 GETTABLEKS                       R14 R15 K58 ["DELETE_NODE_INSTANCE"]
      267 CALL                             R13 1 1
      268 SETTABLEKS                       R13 R12 K59 ["deleteNodeInstanceAsync"]
      270 GETUPVAL                         R14 3
      271 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      273 GETUPVAL                         R15 8
      274 GETTABLEKS                       R14 R15 K60 ["SET_COLLAPSED"]
      276 CALL                             R13 1 1
      277 SETTABLEKS                       R13 R12 K61 ["setCollapsedAsync"]
      279 GETUPVAL                         R14 3
      280 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      282 GETUPVAL                         R15 8
      283 GETTABLEKS                       R14 R15 K62 ["SET_NODE_PROPERTY"]
      285 CALL                             R13 1 1
      286 SETTABLEKS                       R13 R12 K63 ["setNodePropertyAsync"]
      288 GETUPVAL                         R14 3
      289 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      291 GETUPVAL                         R15 8
      292 GETTABLEKS                       R14 R15 K64 ["SET_INPUT_PIN_NODE_PROPERTY"]
      294 CALL                             R13 1 1
      295 SETTABLEKS                       R13 R12 K65 ["setInputPinNodePropertyAsync"]
      297 GETUPVAL                         R14 3
      298 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      300 GETUPVAL                         R15 8
      301 GETTABLEKS                       R14 R15 K66 ["SET_PARAMETER_NODE_TYPE"]
      303 CALL                             R13 1 1
      304 SETTABLEKS                       R13 R12 K67 ["setParameterNodeTypeAsync"]
      306 SETTABLEKS                       R7 R12 K68 ["currentAnimationId"]
      308 SETTABLEKS                       R8 R12 K69 ["sourceAssetId"]
      310 GETTABLEKS                       R13 R10 K70 ["getSelectedRect"]
      312 SETTABLEKS                       R13 R12 K70 ["getSelectedRect"]
      314 SETTABLEKS                       R9 R12 K71 ["observeSelectedGraphInstance"]
      316 GETTABLEKS                       R13 R1 K72 ["observe"]
      318 SETTABLEKS                       R13 R12 K73 ["observeGraphNodeById"]
      320 GETTABLEKS                       R13 R2 K72 ["observe"]
      322 SETTABLEKS                       R13 R12 K74 ["observeNodeRenderInfoById"]
      324 GETUPVAL                         R14 3
      325 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      327 GETUPVAL                         R15 8
      328 GETTABLEKS                       R14 R15 K75 ["BEGIN_UNDO_TRANSACTION"]
      330 CALL                             R13 1 1
      331 SETTABLEKS                       R13 R12 K76 ["beginUndoTransaction"]
      333 GETUPVAL                         R14 3
      334 GETTABLEKS                       R13 R14 K24 ["useBoundAction"]
      336 GETUPVAL                         R15 8
      337 GETTABLEKS                       R14 R15 K77 ["FINISH_UNDO_TRANSACTION"]
      339 CALL                             R13 1 1
      340 SETTABLEKS                       R13 R12 K78 ["finishUndoTransaction"]
      342 GETTABLEKS                       R13 R1 K79 ["observeMap"]
      344 SETTABLEKS                       R13 R12 K80 ["observeGraphNodeMap"]
      346 GETTABLEKS                       R13 R2 K79 ["observeMap"]
      348 SETTABLEKS                       R13 R12 K81 ["observeRenderInfoMap"]
      350 GETTABLEKS                       R13 R10 K82 ["hasGraphOutput"]
      352 SETTABLEKS                       R13 R12 K82 ["hasGraphOutput"]
      354 GETUPVAL                         R14 1
      355 GETTABLEKS                       R13 R14 K83 ["createElement"]
      357 GETUPVAL                         R15 9
      358 GETTABLEKS                       R14 R15 K84 ["Provider"]
      360 DUPTABLE                         R15 K86 [{"value"}]
      361 SETTABLEKS                       R12 R15 K85 ["value"]
      363 DUPTABLE                         R16 K88 [{"ContextStack"}]
      364 GETUPVAL                         R18 1
      365 GETTABLEKS                       R17 R18 K83 ["createElement"]
      367 GETUPVAL                         R19 10
      368 GETTABLEKS                       R18 R19 K87 ["ContextStack"]
      370 DUPTABLE                         R19 K90 [{"providers"}]
      371 NEWTABLE                         R20 0 1
      373 GETUPVAL                         R22 1
      374 GETTABLEKS                       R21 R22 K83 ["createElement"]
      376 GETUPVAL                         R23 11
      377 GETTABLEKS                       R22 R23 K84 ["Provider"]
      379 DUPTABLE                         R23 K92 [{"timeRange"}]
      380 SETTABLEKS                       R5 R23 K91 ["timeRange"]
      382 CALL                             R21 2 -1
      383 SETLIST                          R20 R21 -1 [1]
      385 SETTABLEKS                       R20 R19 K89 ["providers"]
      387 GETTABLEKS                       R20 R0 K93 ["children"]
      389 CALL                             R17 3 1
      390 SETTABLEKS                       R17 R16 K87 ["ContextStack"]
      392 CALL                             R13 3 -1
      393 RETURN                           R13 -1

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
       21 GETTABLEKS                       R5 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R5 K12 ["AnimationNodeWrapper"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K13 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K14 ["AnimationPreviewClipsContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R7 K15 ["Constants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       44 GETTABLEKS                       R7 R8 K16 ["InstanceRegistryContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Util"]
       51 GETTABLEKS                       R9 R10 K17 ["Instances"]
       53 GETTABLEKS                       R8 R9 K18 ["InstanceSelectionRegistry"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       60 GETTABLEKS                       R10 R11 K19 ["NativeGraphContext"]
       62 GETTABLEKS                       R9 R10 K20 ["NativeGraphUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R12 R0 K11 ["Util"]
       69 GETTABLEKS                       R11 R12 K21 ["Networking"]
       71 GETTABLEKS                       R10 R11 K22 ["NetworkUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K23 ["NodeViewTypes"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R13 R0 K24 ["Parent"]
       83 GETTABLEKS                       R12 R13 K25 ["React"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R14 R0 K24 ["Parent"]
       90 GETTABLEKS                       R13 R14 K26 ["ReactUtils"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R15 R0 K11 ["Util"]
       97 GETTABLEKS                       R14 R15 K27 ["RectUtil"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R16 R0 K13 ["Contexts"]
      104 GETTABLEKS                       R15 R16 K28 ["SelectionServiceContext"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R19 R0 K11 ["Util"]
      111 GETTABLEKS                       R18 R19 K29 ["Signals"]
      113 GETTABLEKS                       R17 R18 K30 ["Experimental"]
      115 GETTABLEKS                       R16 R17 K31 ["SignalExperimentalUtils"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K10 [require]
      120 GETTABLEKS                       R18 R0 K24 ["Parent"]
      122 GETTABLEKS                       R17 R18 K29 ["Signals"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R19 R0 K24 ["Parent"]
      129 GETTABLEKS                       R18 R19 K32 ["SignalsReact"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R20 R0 K13 ["Contexts"]
      136 GETTABLEKS                       R19 R20 K33 ["TimeRangeContext"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R21 R0 K34 ["Hooks"]
      143 GETTABLEKS                       R20 R21 K35 ["useObserveSelection"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETTABLEKS                       R22 R0 K34 ["Hooks"]
      150 GETTABLEKS                       R21 R22 K36 ["useSignalDispatcher"]
      152 CALL                             R20 1 1
      153 NEWTABLE                         R21 64 0
      155 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      157 LOADK                            R23 K38 ["observeGraphNodeMap"]
      158 CALL                             R22 1 1
      159 SETTABLEKS                       R22 R21 K38 ["observeGraphNodeMap"]
      161 GETIMPORT                        R22 K41 [Rect.new]
      163 LOADN                            R23 0
      164 LOADN                            R24 0
      165 LOADN                            R25 0
      166 LOADN                            R26 0
      167 CALL                             R22 4 1
      168 SETTABLEKS                       R22 R21 K42 ["graphRect"]
      170 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      172 LOADK                            R23 K43 ["reorderPinsAsync"]
      173 CALL                             R22 1 1
      174 SETTABLEKS                       R22 R21 K43 ["reorderPinsAsync"]
      176 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      178 LOADK                            R23 K44 ["createNodeAsync"]
      179 CALL                             R22 1 1
      180 SETTABLEKS                       R22 R21 K44 ["createNodeAsync"]
      182 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      184 LOADK                            R23 K45 ["createParameterAsync"]
      185 CALL                             R22 1 1
      186 SETTABLEKS                       R22 R21 K45 ["createParameterAsync"]
      188 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      190 LOADK                            R23 K46 ["createConnectedParameterAsync"]
      191 CALL                             R22 1 1
      192 SETTABLEKS                       R22 R21 K46 ["createConnectedParameterAsync"]
      194 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      196 LOADK                            R23 K47 ["createExistingParameterAsync"]
      197 CALL                             R22 1 1
      198 SETTABLEKS                       R22 R21 K47 ["createExistingParameterAsync"]
      200 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      202 LOADK                            R23 K48 ["selectAllParameterNodesWithNameAsync"]
      203 CALL                             R22 1 1
      204 SETTABLEKS                       R22 R21 K48 ["selectAllParameterNodesWithNameAsync"]
      206 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      208 LOADK                            R23 K49 ["selectNodesAsync"]
      209 CALL                             R22 1 1
      210 SETTABLEKS                       R22 R21 K49 ["selectNodesAsync"]
      212 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      214 LOADK                            R23 K50 ["selectNodesFromRectAsync"]
      215 CALL                             R22 1 1
      216 SETTABLEKS                       R22 R21 K50 ["selectNodesFromRectAsync"]
      218 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      220 LOADK                            R23 K51 ["setNodePositionsAsync"]
      221 CALL                             R22 1 1
      222 SETTABLEKS                       R22 R21 K51 ["setNodePositionsAsync"]
      224 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      226 LOADK                            R23 K52 ["setNodeSizeAsync"]
      227 CALL                             R22 1 1
      228 SETTABLEKS                       R22 R21 K52 ["setNodeSizeAsync"]
      230 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      232 LOADK                            R23 K53 ["removeNodeInputConnectionAsync"]
      233 CALL                             R22 1 1
      234 SETTABLEKS                       R22 R21 K53 ["removeNodeInputConnectionAsync"]
      236 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      238 LOADK                            R23 K54 ["removeNodeOutputConnectionAsync"]
      239 CALL                             R22 1 1
      240 SETTABLEKS                       R22 R21 K54 ["removeNodeOutputConnectionAsync"]
      242 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      244 LOADK                            R23 K55 ["removeParameterAsync"]
      245 CALL                             R22 1 1
      246 SETTABLEKS                       R22 R21 K55 ["removeParameterAsync"]
      248 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      250 LOADK                            R23 K56 ["renameNodeAsync"]
      251 CALL                             R22 1 1
      252 SETTABLEKS                       R22 R21 K56 ["renameNodeAsync"]
      254 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      256 LOADK                            R23 K57 ["renameParameterAsync"]
      257 CALL                             R22 1 1
      258 SETTABLEKS                       R22 R21 K57 ["renameParameterAsync"]
      260 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      262 LOADK                            R23 K58 ["deleteNodeInstanceAsync"]
      263 CALL                             R22 1 1
      264 SETTABLEKS                       R22 R21 K58 ["deleteNodeInstanceAsync"]
      266 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      268 LOADK                            R23 K59 ["setNewConnection"]
      269 CALL                             R22 1 1
      270 SETTABLEKS                       R22 R21 K60 ["setNodeConnectionAsync"]
      272 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      274 LOADK                            R23 K61 ["setCollapsedAsync"]
      275 CALL                             R22 1 1
      276 SETTABLEKS                       R22 R21 K61 ["setCollapsedAsync"]
      278 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      280 LOADK                            R23 K62 ["setNodePropertyAsync"]
      281 CALL                             R22 1 1
      282 SETTABLEKS                       R22 R21 K62 ["setNodePropertyAsync"]
      284 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      286 LOADK                            R23 K63 ["setInputPinNodePropertyAsync"]
      287 CALL                             R22 1 1
      288 SETTABLEKS                       R22 R21 K63 ["setInputPinNodePropertyAsync"]
      290 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      292 LOADK                            R23 K64 ["setParameterNodeTypeAsync"]
      293 CALL                             R22 1 1
      294 SETTABLEKS                       R22 R21 K64 ["setParameterNodeTypeAsync"]
      296 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      298 LOADK                            R23 K65 ["getSelectedRect"]
      299 CALL                             R22 1 1
      300 SETTABLEKS                       R22 R21 K65 ["getSelectedRect"]
      302 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      304 LOADK                            R23 K66 ["hasGraphOutput"]
      305 CALL                             R22 1 1
      306 SETTABLEKS                       R22 R21 K66 ["hasGraphOutput"]
      308 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      310 LOADK                            R23 K67 ["observeGraphNodeById"]
      311 CALL                             R22 1 1
      312 SETTABLEKS                       R22 R21 K67 ["observeGraphNodeById"]
      314 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      316 LOADK                            R23 K68 ["observeNodeRenderInfoById"]
      317 CALL                             R22 1 1
      318 SETTABLEKS                       R22 R21 K68 ["observeNodeRenderInfoById"]
      320 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      322 LOADK                            R23 K69 ["observeRenderInfoMap"]
      323 CALL                             R22 1 1
      324 SETTABLEKS                       R22 R21 K69 ["observeRenderInfoMap"]
      326 GETTABLEKS                       R22 R16 K70 ["createSignal"]
      328 LOADNIL                          R23
      329 CALL                             R22 1 1
      330 SETTABLEKS                       R22 R21 K71 ["observeSelectedGraphInstance"]
      332 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      334 LOADK                            R23 K72 ["beginUndoTransaction"]
      335 CALL                             R22 1 1
      336 SETTABLEKS                       R22 R21 K72 ["beginUndoTransaction"]
      338 GETTABLEKS                       R22 R12 K37 ["createUnimplemented"]
      340 LOADK                            R23 K73 ["finishUndoTransaction"]
      341 CALL                             R22 1 1
      342 SETTABLEKS                       R22 R21 K73 ["finishUndoTransaction"]
      344 LOADNIL                          R22
      345 SETTABLEKS                       R22 R21 K74 ["currentAnimationId"]
      347 LOADNIL                          R22
      348 SETTABLEKS                       R22 R21 K75 ["sourceAssetId"]
      350 GETTABLEKS                       R22 R11 K76 ["createContext"]
      352 MOVE                             R23 R21
      353 CALL                             R22 1 1
      354 DUPTABLE                         R23 K84 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "UNDO_TRANSACTION"}]
      355 LOADK                            R24 K85 ["NativeGraphContext_GraphPayloadMap"]
      356 SETTABLEKS                       R24 R23 K77 ["GRAPH_PAYLOAD_MAP"]
      358 LOADK                            R24 K86 ["NativeGraphContext_GraphRenderInfo"]
      359 SETTABLEKS                       R24 R23 K78 ["GRAPH_RENDER_INFO"]
      361 LOADK                            R24 K87 ["NativeGraphContext_TimeRange"]
      362 SETTABLEKS                       R24 R23 K79 ["TIME_RANGE"]
      364 LOADK                            R24 K88 ["NativeGraphContext_GraphPayloadGraphRect"]
      365 SETTABLEKS                       R24 R23 K80 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      367 LOADK                            R24 K89 ["NativeGraphContext_CurrentAnimationId"]
      368 SETTABLEKS                       R24 R23 K81 ["CURRENT_ANIMATION_ID"]
      370 LOADK                            R24 K90 ["NativeGraphContext_SourceAssetId"]
      371 SETTABLEKS                       R24 R23 K82 ["SOURCE_ASSET_ID"]
      373 LOADK                            R24 K91 ["NativeGraphContext_UndoTransaction"]
      374 SETTABLEKS                       R24 R23 K83 ["UNDO_TRANSACTION"]
      376 DUPTABLE                         R24 K116 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "CREATE_EXISTING_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SET_PARAMETER_NODE_TYPE", "SELECT_ALL_PARAMETER_NODES_WITH_NAME", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      377 LOADK                            R25 K117 ["NativeGraphContext_CreateNode"]
      378 SETTABLEKS                       R25 R24 K92 ["CREATE_NODE"]
      380 LOADK                            R25 K118 ["NativeGraphContext_CreateParameterAsync"]
      381 SETTABLEKS                       R25 R24 K93 ["CREATE_PARAMETER"]
      383 LOADK                            R25 K119 ["NativeGraphContext_CreateConnectedParameterAsync"]
      384 SETTABLEKS                       R25 R24 K94 ["CREATE_CONNECTED_PARAMETER"]
      386 LOADK                            R25 K120 ["NativeGraphContext_CreateExistingParameterAsync"]
      387 SETTABLEKS                       R25 R24 K95 ["CREATE_EXISTING_PARAMETER"]
      389 LOADK                            R25 K121 ["NativeGraphContext_GetSelectedGraphInstance"]
      390 SETTABLEKS                       R25 R24 K96 ["GET_SELECTED_GRAPH_INSTANCE"]
      392 LOADK                            R25 K122 ["NativeGraphContext_SetNodeConnectionAsync"]
      393 SETTABLEKS                       R25 R24 K97 ["SET_NODE_CONNECTION"]
      395 LOADK                            R25 K123 ["NativeGraphContext_setNodePropertyAsync"]
      396 SETTABLEKS                       R25 R24 K98 ["SET_NODE_PROPERTY"]
      398 LOADK                            R25 K124 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      399 SETTABLEKS                       R25 R24 K99 ["SET_INPUT_PIN_NODE_PROPERTY"]
      401 LOADK                            R25 K125 ["NativeGraphContext_ReorderPinsAsync"]
      402 SETTABLEKS                       R25 R24 K100 ["REORDER_PINS"]
      404 LOADK                            R25 K126 ["NativeGraphContext_RemoveNodeInputConnection"]
      405 SETTABLEKS                       R25 R24 K101 ["REMOVE_NODE_INPUT_CONNECTION"]
      407 LOADK                            R25 K127 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      408 SETTABLEKS                       R25 R24 K102 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      410 LOADK                            R25 K128 ["NativeGraphContext_RemoveParameterAsync"]
      411 SETTABLEKS                       R25 R24 K103 ["REMOVE_PARAMETER"]
      413 LOADK                            R25 K129 ["NativeGraphContext_RenameNodeAsync"]
      414 SETTABLEKS                       R25 R24 K104 ["RENAME_NODE"]
      416 LOADK                            R25 K130 ["NativeGraphContext_RenameParameterAsync"]
      417 SETTABLEKS                       R25 R24 K105 ["RENAME_PARAMETER"]
      419 LOADK                            R25 K131 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      420 SETTABLEKS                       R25 R24 K106 ["DELETE_NODE_INSTANCE"]
      422 LOADK                            R25 K132 ["NativeGraphContext_SetNodeSizeAsync"]
      423 SETTABLEKS                       R25 R24 K107 ["SET_NODE_SIZE"]
      425 LOADK                            R25 K133 ["NativeGraphContext_SetCollapsedAsync"]
      426 SETTABLEKS                       R25 R24 K108 ["SET_COLLAPSED"]
      428 LOADK                            R25 K134 ["NativeGraphContext_SetNodePositionsAsync"]
      429 SETTABLEKS                       R25 R24 K109 ["SET_NODE_POSITIONS"]
      431 LOADK                            R25 K135 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      432 SETTABLEKS                       R25 R24 K110 ["SET_PARAMETER_NODE_TYPE"]
      434 LOADK                            R25 K136 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      435 SETTABLEKS                       R25 R24 K111 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      437 LOADK                            R25 K137 ["NativeGraphContext_SelectNodes"]
      438 SETTABLEKS                       R25 R24 K112 ["SELECT_NODES"]
      440 LOADK                            R25 K138 ["NativeGraphContext_SelectNodesFromRect"]
      441 SETTABLEKS                       R25 R24 K113 ["SELECT_NODES_FROM_RECT"]
      443 LOADK                            R25 K139 ["NativeGraphContext_beginUndoTransaction"]
      444 SETTABLEKS                       R25 R24 K114 ["BEGIN_UNDO_TRANSACTION"]
      446 LOADK                            R25 K140 ["NativeGraphContext_finishUndoTransaction"]
      447 SETTABLEKS                       R25 R24 K115 ["FINISH_UNDO_TRANSACTION"]
      449 DUPCLOSURE                       R25 K141 [PROTO_2]
      450 CAPTURE                          VAL R11
      451 CAPTURE                          VAL R13
      452 DUPCLOSURE                       R26 K142 [PROTO_47]
      453 CAPTURE                          VAL R20
      454 CAPTURE                          VAL R11
      455 CAPTURE                          VAL R14
      456 CAPTURE                          VAL R19
      457 CAPTURE                          VAL R7
      458 CAPTURE                          VAL R6
      459 CAPTURE                          VAL R8
      460 CAPTURE                          VAL R16
      461 CAPTURE                          VAL R2
      462 CAPTURE                          VAL R17
      463 CAPTURE                          VAL R1
      464 CAPTURE                          VAL R3
      465 CAPTURE                          VAL R5
      466 CAPTURE                          VAL R12
      467 CAPTURE                          VAL R25
      468 CAPTURE                          VAL R15
      469 CAPTURE                          VAL R9
      470 CAPTURE                          VAL R23
      471 CAPTURE                          VAL R24
      472 CAPTURE                          VAL R22
      473 CAPTURE                          VAL R18
      474 CAPTURE                          VAL R4
      475 DUPCLOSURE                       R27 K143 [PROTO_52]
      476 CAPTURE                          VAL R20
      477 CAPTURE                          VAL R11
      478 CAPTURE                          VAL R16
      479 CAPTURE                          VAL R9
      480 CAPTURE                          VAL R23
      481 CAPTURE                          VAL R15
      482 CAPTURE                          VAL R25
      483 CAPTURE                          VAL R17
      484 CAPTURE                          VAL R24
      485 CAPTURE                          VAL R22
      486 CAPTURE                          VAL R12
      487 CAPTURE                          VAL R18
      488 DUPTABLE                         R28 K147 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      489 SETTABLEKS                       R22 R28 K144 ["Context"]
      491 SETTABLEKS                       R26 R28 K145 ["EditableDataModelProvider"]
      493 SETTABLEKS                       R27 R28 K146 ["UIDataModelProvider"]
      495 RETURN                           R28 1
