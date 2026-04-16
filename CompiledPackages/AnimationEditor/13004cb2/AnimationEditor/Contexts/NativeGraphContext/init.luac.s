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
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R4 R1 K4 ["graphNodeProps"]
       34 CALL                             R3 1 0
       35 GETUPVAL                         R4 7
       36 GETTABLEKS                       R3 R4 K5 ["setMap"]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R4 R2 K6 ["lookup"]
       41 JUMP                             ; [+2]
       42 NEWTABLE                         R4 0 0
       44 CALL                             R3 1 0
       45 GETUPVAL                         R4 8
       46 GETTABLEKS                       R3 R4 K5 ["setMap"]
       48 GETTABLEKS                       R4 R1 K3 ["renderInfoMap"]
       50 CALL                             R3 1 0
       51 GETUPVAL                         R4 9
       52 GETTABLEKS                       R3 R4 K5 ["setMap"]
       54 GETTABLEKS                       R4 R1 K4 ["graphNodeProps"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["ObjectValue"]
        4 NAMECALL                         R0 R0 K1 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["Name"]
       10 LOADK                            R3 K3 ["_"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["Name"]
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
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K1 ["AttributeChanged"]
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R3 R4 K8 ["getOrCreateParameterInstance"]
       30 GETUPVAL                         R4 4
       31 MOVE                             R5 R1
       32 MOVE                             R6 R0
       33 CALL                             R3 3 1
       34 GETUPVAL                         R8 5
       35 GETTABLEKS                       R7 R8 K9 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R6 R7 K10 ["BindingName"]
       39 NAMECALL                         R4 R3 K11 ["GetAttribute"]
       41 CALL                             R4 2 1
       42 MOVE                             R7 R4
       43 NAMECALL                         R5 R1 K11 ["GetAttribute"]
       45 CALL                             R5 2 1
       46 JUMPIFNOTEQKNIL                  R5 ; [+24]
       48 GETTABLEKS                       R5 R0 K12 ["initializeWithValue"]
       50 JUMPIFEQKNIL                     R5 ; [+20]
       52 GETTABLEKS                       R6 R0 K12 ["initializeWithValue"]
       54 FASTCALL1                        TYPE R6 ; [+2]
       55 GETIMPORT                        R5 K14 [type]
       57 CALL                             R5 1 1
       58 JUMPIFNOTEQKS                    R5 K15 ["table"] ; [+6]
       60 GETIMPORT                        R5 K6 [warn]
       62 LOADK                            R6 K16 ["TODO: JSONEncode initial value to support safely"]
       63 CALL                             R5 1 0
       64 JUMP                             ; [+6]
       65 MOVE                             R7 R4
       66 GETTABLEKS                       R8 R0 K12 ["initializeWithValue"]
       68 NAMECALL                         R5 R1 K17 ["SetAttribute"]
       70 CALL                             R5 3 0
       71 GETUPVAL                         R6 6
       72 GETTABLEKS                       R5 R6 K18 ["selectionService"]
       74 NEWTABLE                         R7 0 1
       76 MOVE                             R8 R3
       77 SETLIST                          R7 R8 1 [1]
       79 NAMECALL                         R5 R5 K19 ["Set"]
       81 CALL                             R5 2 0
       82 GETTABLEKS                       R5 R0 K20 ["pinPosition"]
       84 JUMPIFNOT                        R5 ; [+7]
       85 GETUPVAL                         R6 3
       86 GETTABLEKS                       R5 R6 K21 ["setNodePosition"]
       88 MOVE                             R6 R3
       89 GETTABLEKS                       R7 R0 K20 ["pinPosition"]
       91 CALL                             R5 2 0
       92 GETUPVAL                         R5 4
       93 MOVE                             R7 R3
       94 NAMECALL                         R5 R5 K22 ["instanceToId"]
       96 CALL                             R5 2 1
       97 JUMPIFNOT                        R2 ; [+7]
       98 GETUPVAL                         R6 2
       99 MOVE                             R8 R2
      100 GETIMPORT                        R9 K26 [Enum.FinishRecordingOperation.Commit]
      102 NAMECALL                         R6 R6 K27 ["FinishRecording"]
      104 CALL                             R6 3 0
      105 RETURN                           R5 1

PROTO_24:
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
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K6 ["getParameterInstanceName"]
       27 GETTABLEKS                       R4 R0 K7 ["parameterName"]
       29 CALL                             R3 1 1
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R2 K8 ["FindFirstChild"]
       33 CALL                             R4 2 1
       34 JUMPIF                           R4 ; [+2]
       35 LOADNIL                          R5
       36 RETURN                           R5 1
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K9 ["NODE_ATTRIBUTES"]
       40 GETTABLEKS                       R7 R8 K10 ["ParameterType"]
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
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R4 R5 K18 ["createExistingParameterInstance"]
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
      102 GETUPVAL                         R7 7
      103 GETTABLEKS                       R6 R7 K25 ["selectionService"]
      105 NEWTABLE                         R8 0 1
      107 MOVE                             R9 R4
      108 SETLIST                          R8 R9 1 [1]
      110 NAMECALL                         R6 R6 K26 ["Set"]
      112 CALL                             R6 2 0
      113 GETTABLEKS                       R6 R0 K21 ["pinPosition"]
      115 JUMPIFNOT                        R6 ; [+7]
      116 GETUPVAL                         R7 2
      117 GETTABLEKS                       R6 R7 K27 ["setNodePosition"]
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       23 CALL                             R5 6 2
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K7 ["lookup"]
       27 GETTABLE                         R7 R8 R2
       28 JUMPIFNOT                        R7 ; [+28]
       29 GETTABLEKS                       R8 R7 K8 ["className"]
       31 JUMPIFEQKS                       R8 K9 ["Parameter"] ; [+25]
       33 JUMPIFNOT                        R5 ; [+23]
       34 JUMPIFNOT                        R6 ; [+22]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R9 R10 K10 ["setNodeOutputInfoInDestroyMapRef"]
       38 GETTABLEKS                       R8 R9 K11 ["current"]
       40 MOVE                             R9 R2
       41 DUPTABLE                         R10 K18 [{"inputNodeId", "inputNodePinId", "outputNodePinId", "wireId", "outputNodeId", "properties"}]
       42 SETTABLEKS                       R0 R10 K12 ["inputNodeId"]
       44 SETTABLEKS                       R6 R10 K13 ["inputNodePinId"]
       46 SETTABLEKS                       R3 R10 K14 ["outputNodePinId"]
       48 SETTABLEKS                       R5 R10 K15 ["wireId"]
       50 SETTABLEKS                       R2 R10 K16 ["outputNodeId"]
       52 NEWTABLE                         R11 0 0
       54 SETTABLEKS                       R11 R10 K17 ["properties"]
       56 CALL                             R8 2 0
       57 JUMPIFNOT                        R4 ; [+7]
       58 GETUPVAL                         R8 1
       59 MOVE                             R10 R4
       60 GETIMPORT                        R11 K22 [Enum.FinishRecordingOperation.Commit]
       62 NAMECALL                         R8 R8 K23 ["FinishRecording"]
       64 CALL                             R8 3 0
       65 RETURN                           R0 0

PROTO_28:
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
       13 GETTABLEKS                       R6 R0 K3 ["sourcePinInfo"]
       15 GETTABLEKS                       R5 R6 K4 ["sourcePinNodeId"]
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
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R5 R6 K15 ["getParameterType"]
       55 GETTABLEKS                       R6 R3 K16 ["NodeType"]
       57 GETTABLEKS                       R8 R0 K3 ["sourcePinInfo"]
       59 GETTABLEKS                       R7 R8 K17 ["sourcePinName"]
       61 CALL                             R5 2 1
       62 ORK                              R4 R5 K14 ["unknown"]
       63 LOADNIL                          R5
       64 GETTABLEKS                       R6 R0 K18 ["parameterName"]
       66 JUMPIF                           R6 ; [+20]
       67 GETUPVAL                         R7 4
       68 DUPTABLE                         R8 K23 [{"parameterType", "allowDuplication", "pinPosition", "initializeWithValue", "parameterName"}]
       69 SETTABLEKS                       R4 R8 K19 ["parameterType"]
       71 LOADB                            R9 1
       72 SETTABLEKS                       R9 R8 K20 ["allowDuplication"]
       74 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
       76 SETTABLEKS                       R9 R8 K21 ["pinPosition"]
       78 GETTABLEKS                       R9 R0 K24 ["existingValue"]
       80 SETTABLEKS                       R9 R8 K22 ["initializeWithValue"]
       82 SETTABLEKS                       R6 R8 K18 ["parameterName"]
       84 CALL                             R7 1 1
       85 MOVE                             R5 R7
       86 JUMP                             ; [+31]
       87 GETUPVAL                         R7 5
       88 DUPTABLE                         R8 K25 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
       89 SETTABLEKS                       R4 R8 K19 ["parameterType"]
       91 SETTABLEKS                       R6 R8 K18 ["parameterName"]
       93 GETTABLEKS                       R9 R0 K21 ["pinPosition"]
       95 SETTABLEKS                       R9 R8 K21 ["pinPosition"]
       97 GETTABLEKS                       R9 R0 K24 ["existingValue"]
       99 SETTABLEKS                       R9 R8 K22 ["initializeWithValue"]
      101 CALL                             R7 1 1
      102 MOVE                             R5 R7
      103 GETTABLEKS                       R7 R0 K24 ["existingValue"]
      105 JUMPIFNOT                        R7 ; [+12]
      106 MOVE                             R9 R6
      107 NAMECALL                         R7 R1 K26 ["GetAttribute"]
      109 CALL                             R7 2 1
      110 JUMPIFNOTEQKNIL                  R7 ; [+7]
      112 MOVE                             R9 R6
      113 GETTABLEKS                       R10 R0 K24 ["existingValue"]
      115 NAMECALL                         R7 R1 K27 ["SetAttribute"]
      117 CALL                             R7 3 0
      118 JUMPIFNOT                        R5 ; [+27]
      119 GETTABLEKS                       R8 R0 K3 ["sourcePinInfo"]
      121 GETTABLEKS                       R7 R8 K4 ["sourcePinNodeId"]
      123 GETTABLEKS                       R9 R0 K3 ["sourcePinInfo"]
      125 GETTABLEKS                       R8 R9 K17 ["sourcePinName"]
      127 GETUPVAL                         R9 2
      128 MOVE                             R11 R5
      129 NAMECALL                         R9 R9 K5 ["idToInstance"]
      131 CALL                             R9 2 1
      132 JUMPIFNOT                        R9 ; [+13]
      133 GETUPVAL                         R11 3
      134 GETTABLEKS                       R10 R11 K28 ["setNodePosition"]
      136 MOVE                             R11 R9
      137 GETTABLEKS                       R12 R0 K21 ["pinPosition"]
      139 CALL                             R10 2 0
      140 GETUPVAL                         R10 6
      141 MOVE                             R11 R7
      142 MOVE                             R12 R8
      143 MOVE                             R13 R5
      144 LOADK                            R14 K29 ["Output"]
      145 CALL                             R10 4 0
      146 JUMPIFNOT                        R2 ; [+7]
      147 GETUPVAL                         R7 1
      148 MOVE                             R9 R2
      149 GETIMPORT                        R10 K33 [Enum.FinishRecordingOperation.Commit]
      151 NAMECALL                         R7 R7 K34 ["FinishRecording"]
      153 CALL                             R7 3 0
      154 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["NativeGraphContext"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K1 ["TryBeginRecording"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K2 ["current"]
        9 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R8 R9 K16 ["parameterDestroyConnectionMapRef"]
       71 GETTABLEKS                       R7 R8 K17 ["current"]
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
       93 GETUPVAL                         R21 2
       94 GETTABLEKS                       R20 R21 K23 ["getParameterWireInputPinId"]
       96 GETTABLEKS                       R21 R18 K24 ["Name"]
       98 CALL                             R20 1 1
       99 JUMPIFNOT                        R20 ; [+7]
      100 GETUPVAL                         R22 2
      101 GETTABLEKS                       R21 R22 K25 ["setParameterBindingName"]
      103 MOVE                             R22 R19
      104 MOVE                             R23 R20
      105 MOVE                             R24 R1
      106 CALL                             R21 3 0
      107 FORGLOOP                         R14 2 ; [-23]
      109 GETUPVAL                         R15 2
      110 GETTABLEKS                       R14 R15 K26 ["getParameterInstanceName"]
      112 MOVE                             R15 R1
      113 CALL                             R14 1 1
      114 SETTABLEKS                       R14 R13 K24 ["Name"]
      116 GETUPVAL                         R18 5
      117 GETTABLEKS                       R17 R18 K27 ["NODE_ATTRIBUTES"]
      119 GETTABLEKS                       R16 R17 K28 ["BindingName"]
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
      133 GETTABLE                         R17 R7 R14
      134 GETTABLEKS                       R16 R17 K30 ["connection"]
      136 SETTABLEKS                       R16 R15 K30 ["connection"]
      138 SETTABLEKS                       R14 R15 K31 ["nodeId"]
      140 SETTABLEKS                       R1 R15 K32 ["parameterName"]
      142 SETTABLE                         R15 R8 R14
      143 FORGLOOP                         R9 2 ; [-63]
      145 GETUPVAL                         R10 4
      146 GETTABLEKS                       R9 R10 K34 ["setParameterDestroyConnectionMap"]
      148 MOVE                             R10 R8
      149 CALL                             R9 1 0
      150 LOADB                            R9 0
      151 JUMPIFEQKNIL                     R2 ; [+9]
      153 GETUPVAL                         R12 2
      154 GETTABLEKS                       R11 R12 K26 ["getParameterInstanceName"]
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
        6 JUMPIF                           R0 ; [+70]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["instanceToId"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K4 ["nodeDestroyConnectionMapRef"]
       15 GETTABLEKS                       R1 R2 K5 ["current"]
       17 GETTABLE                         R2 R1 R0
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K5 ["current"]
       23 MOVE                             R4 R2
       24 JUMPIFNOT                        R4 ; [+2]
       25 GETTABLEKS                       R4 R2 K6 ["nodeOutputInfo"]
       27 JUMPIFNOT                        R4 ; [+38]
       28 JUMPIFNOT                        R3 ; [+10]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R5 R6 K7 ["removeOrderedInputPin"]
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
       63 NAMECALL                         R6 R5 K15 ["Destroy"]
       65 CALL                             R6 1 0
       66 GETIMPORT                        R5 K18 [table.clone]
       68 MOVE                             R6 R1
       69 CALL                             R5 1 1
       70 LOADNIL                          R6
       71 SETTABLE                         R6 R5 R0
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R6 R7 K19 ["setNodeDestroyConnectionMap"]
       75 MOVE                             R7 R5
       76 CALL                             R6 1 0
       77 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeNodeInfoLookupListRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["nodeDestroyConnectionMapRef"]
       10 GETTABLEKS                       R2 R3 K1 ["current"]
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
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R5 R6 K12 ["setNodeDestroyConnectionMap"]
       60 MOVE                             R6 R3
       61 CALL                             R5 1 0
       62 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+35]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["instanceToId"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K4 ["parameterDestroyConnectionMapRef"]
       15 GETTABLEKS                       R1 R2 K5 ["current"]
       17 GETTABLE                         R2 R1 R0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R4 R2 K6 ["parameterName"]
       21 GETTABLEKS                       R5 R2 K7 ["nodeId"]
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R2 K8 ["connection"]
       26 NAMECALL                         R3 R3 K9 ["Disconnect"]
       28 CALL                             R3 1 0
       29 GETIMPORT                        R3 K12 [table.clone]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R4 R2 K7 ["nodeId"]
       35 LOADNIL                          R5
       36 SETTABLE                         R5 R3 R4
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K13 ["setParameterDestroyConnectionMap"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeParameterNodeInfoLookupListRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["parameterDestroyConnectionMapRef"]
       10 GETTABLEKS                       R2 R3 K1 ["current"]
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
       52 GETUPVAL                         R18 3
       53 GETTABLEKS                       R17 R18 K13 ["NODE_ATTRIBUTES"]
       55 GETTABLEKS                       R16 R17 K14 ["BindingName"]
       57 NAMECALL                         R14 R10 K15 ["GetAttribute"]
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K11 ["parameterName"]
       62 SETTABLE                         R13 R3 R12
       63 FORGLOOP                         R5 2 ; [-43]
       65 JUMPIFNOT                        R4 ; [+5]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R5 R6 K16 ["setParameterDestroyConnectionMap"]
       69 MOVE                             R6 R3
       70 CALL                             R5 1 0
       71 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_47:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["useContext"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K1 ["Context"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K2 ["useState"]
       16 GETIMPORT                        R6 K5 [Rect.new]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 CALL                             R6 4 -1
       23 CALL                             R5 -1 2
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K6 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 3
       30 CALL                             R8 0 1
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R9 R10 K7 ["useMemo"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R8
       37 NEWTABLE                         R11 0 1
       39 MOVE                             R12 R8
       40 SETLIST                          R11 R12 1 [1]
       42 CALL                             R9 2 1
       43 GETUPVAL                         R10 5
       44 CALL                             R10 0 0
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K8 ["useEffect"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R9
       50 NEWTABLE                         R12 0 1
       52 MOVE                             R13 R9
       53 SETLIST                          R12 R13 1 [1]
       55 CALL                             R10 2 0
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R11 R12 K0 ["useContext"]
       59 GETUPVAL                         R13 6
       60 GETTABLEKS                       R12 R13 K1 ["Context"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R10 R11 K9 ["instanceRegistry"]
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R11 R12 K7 ["useMemo"]
       68 NEWCLOSURE                       R12 P2
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R8
       71 NEWTABLE                         R13 0 1
       73 MOVE                             R14 R8
       74 SETLIST                          R13 R14 1 [1]
       76 CALL                             R11 2 1
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R12 R13 K7 ["useMemo"]
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
       93 GETUPVAL                         R14 1
       94 GETTABLEKS                       R13 R14 K2 ["useState"]
       96 LOADNIL                          R14
       97 CALL                             R13 1 2
       98 GETUPVAL                         R16 1
       99 GETTABLEKS                       R15 R16 K2 ["useState"]
      101 NEWTABLE                         R16 0 0
      103 CALL                             R15 1 2
      104 GETUPVAL                         R18 1
      105 GETTABLEKS                       R17 R18 K2 ["useState"]
      107 NEWTABLE                         R18 0 0
      109 CALL                             R17 1 2
      110 GETUPVAL                         R20 8
      111 GETTABLEKS                       R19 R20 K10 ["useRefToState"]
      113 MOVE                             R20 R13
      114 CALL                             R19 1 1
      115 GETUPVAL                         R21 1
      116 GETTABLEKS                       R20 R21 K8 ["useEffect"]
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
      144 GETUPVAL                         R21 1
      145 GETTABLEKS                       R20 R21 K13 ["useCallback"]
      147 NEWCLOSURE                       R21 P5
      148 CAPTURE                          VAL R10
      149 CAPTURE                          UPVAL U7
      150 NEWTABLE                         R22 0 1
      152 MOVE                             R23 R10
      153 SETLIST                          R22 R23 1 [1]
      155 CALL                             R20 2 1
      156 GETUPVAL                         R22 1
      157 GETTABLEKS                       R21 R22 K13 ["useCallback"]
      159 NEWCLOSURE                       R22 P6
      160 CAPTURE                          UPVAL U10
      161 CAPTURE                          VAL R10
      162 CAPTURE                          UPVAL U7
      163 NEWTABLE                         R23 0 1
      165 MOVE                             R24 R10
      166 SETLIST                          R23 R24 1 [1]
      168 CALL                             R21 2 1
      169 GETUPVAL                         R23 1
      170 GETTABLEKS                       R22 R23 K13 ["useCallback"]
      172 NEWCLOSURE                       R23 P7
      173 CAPTURE                          VAL R10
      174 CAPTURE                          UPVAL U7
      175 NEWTABLE                         R24 0 1
      177 MOVE                             R25 R10
      178 SETLIST                          R24 R25 1 [1]
      180 CALL                             R22 2 1
      181 GETUPVAL                         R24 1
      182 GETTABLEKS                       R23 R24 K13 ["useCallback"]
      184 NEWCLOSURE                       R24 P8
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R10
      187 NEWTABLE                         R25 0 3
      189 MOVE                             R26 R10
      190 GETTABLEKS                       R27 R4 K14 ["selectionService"]
      192 MOVE                             R28 R9
      193 SETLIST                          R25 R26 3 [1]
      195 CALL                             R23 2 1
      196 GETUPVAL                         R25 1
      197 GETTABLEKS                       R24 R25 K13 ["useCallback"]
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
      215 GETUPVAL                         R26 1
      216 GETTABLEKS                       R25 R26 K2 ["useState"]
      218 LOADK                            R26 K16 [""]
      219 CALL                             R25 1 2
      220 GETUPVAL                         R28 1
      221 GETTABLEKS                       R27 R28 K2 ["useState"]
      223 LOADNIL                          R28
      224 CALL                             R27 1 2
      225 GETUPVAL                         R30 11
      226 GETTABLEKS                       R29 R30 K17 ["useSignalState"]
      228 MOVE                             R30 R11
      229 CALL                             R29 1 1
      230 GETUPVAL                         R31 1
      231 GETTABLEKS                       R30 R31 K7 ["useMemo"]
      233 NEWCLOSURE                       R31 P10
      234 CAPTURE                          VAL R29
      235 NEWTABLE                         R32 0 1
      237 MOVE                             R33 R29
      238 SETLIST                          R32 R33 1 [1]
      240 CALL                             R30 2 1
      241 GETUPVAL                         R32 11
      242 GETTABLEKS                       R31 R32 K17 ["useSignalState"]
      244 MOVE                             R32 R11
      245 CALL                             R31 1 1
      246 GETUPVAL                         R33 1
      247 GETTABLEKS                       R32 R33 K8 ["useEffect"]
      249 NEWCLOSURE                       R33 P11
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R28
      253 CAPTURE                          UPVAL U12
      254 NEWTABLE                         R34 0 1
      256 MOVE                             R35 R31
      257 SETLIST                          R34 R35 1 [1]
      259 CALL                             R32 2 0
      260 GETUPVAL                         R33 1
      261 GETTABLEKS                       R32 R33 K8 ["useEffect"]
      263 NEWCLOSURE                       R33 P12
      264 CAPTURE                          VAL R25
      265 CAPTURE                          VAL R31
      266 NEWTABLE                         R34 0 2
      268 MOVE                             R35 R25
      269 MOVE                             R36 R31
      270 SETLIST                          R34 R35 2 [1]
      272 CALL                             R32 2 0
      273 GETUPVAL                         R32 1
      274 GETTABLEKS                       R31 R32 K13 ["useCallback"]
      276 NEWCLOSURE                       R32 P13
      277 CAPTURE                          VAL R11
      278 CAPTURE                          VAL R13
      279 CAPTURE                          UPVAL U10
      280 CAPTURE                          UPVAL U7
      281 CAPTURE                          VAL R10
      282 CAPTURE                          UPVAL U13
      283 CAPTURE                          VAL R4
      284 NEWTABLE                         R33 0 4
      286 GETTABLEKS                       R34 R4 K14 ["selectionService"]
      288 MOVE                             R35 R11
      289 MOVE                             R36 R13
      290 MOVE                             R37 R10
      291 SETLIST                          R33 R34 4 [1]
      293 CALL                             R31 2 1
      294 GETUPVAL                         R33 1
      295 GETTABLEKS                       R32 R33 K13 ["useCallback"]
      297 NEWCLOSURE                       R33 P14
      298 CAPTURE                          VAL R11
      299 CAPTURE                          UPVAL U7
      300 CAPTURE                          VAL R4
      301 NEWTABLE                         R34 0 2
      303 MOVE                             R35 R11
      304 GETTABLEKS                       R36 R4 K14 ["selectionService"]
      306 SETLIST                          R34 R35 2 [1]
      308 CALL                             R32 2 1
      309 GETUPVAL                         R34 1
      310 GETTABLEKS                       R33 R34 K13 ["useCallback"]
      312 NEWCLOSURE                       R34 P15
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R13
      315 CAPTURE                          UPVAL U10
      316 CAPTURE                          UPVAL U7
      317 CAPTURE                          VAL R10
      318 CAPTURE                          UPVAL U14
      319 CAPTURE                          VAL R4
      320 NEWTABLE                         R35 0 4
      322 GETTABLEKS                       R36 R4 K14 ["selectionService"]
      324 MOVE                             R37 R11
      325 MOVE                             R38 R10
      326 MOVE                             R39 R13
      327 SETLIST                          R35 R36 4 [1]
      329 CALL                             R33 2 1
      330 GETUPVAL                         R35 1
      331 GETTABLEKS                       R34 R35 K13 ["useCallback"]
      333 NEWCLOSURE                       R35 P16
      334 CAPTURE                          VAL R11
      335 CAPTURE                          VAL R13
      336 CAPTURE                          UPVAL U7
      337 CAPTURE                          UPVAL U14
      338 CAPTURE                          UPVAL U10
      339 CAPTURE                          VAL R10
      340 CAPTURE                          VAL R33
      341 CAPTURE                          VAL R4
      342 NEWTABLE                         R36 0 5
      344 GETTABLEKS                       R37 R4 K14 ["selectionService"]
      346 MOVE                             R38 R11
      347 MOVE                             R39 R10
      348 MOVE                             R40 R13
      349 MOVE                             R41 R33
      350 SETLIST                          R36 R37 5 [1]
      352 CALL                             R34 2 1
      353 GETUPVAL                         R36 1
      354 GETTABLEKS                       R35 R36 K13 ["useCallback"]
      356 NEWCLOSURE                       R36 P17
      357 CAPTURE                          VAL R13
      358 CAPTURE                          UPVAL U10
      359 CAPTURE                          UPVAL U7
      360 CAPTURE                          VAL R10
      361 NEWTABLE                         R37 0 2
      363 MOVE                             R38 R10
      364 MOVE                             R39 R13
      365 SETLIST                          R37 R38 2 [1]
      367 CALL                             R35 2 1
      368 GETUPVAL                         R36 15
      369 MOVE                             R37 R10
      370 MOVE                             R38 R11
      371 CALL                             R36 2 1
      372 GETUPVAL                         R37 16
      373 MOVE                             R38 R10
      374 MOVE                             R39 R11
      375 CALL                             R37 2 1
      376 GETUPVAL                         R39 1
      377 GETTABLEKS                       R38 R39 K13 ["useCallback"]
      379 NEWCLOSURE                       R39 P18
      380 CAPTURE                          VAL R13
      381 CAPTURE                          UPVAL U10
      382 CAPTURE                          UPVAL U7
      383 CAPTURE                          VAL R10
      384 NEWTABLE                         R40 0 2
      386 MOVE                             R41 R10
      387 MOVE                             R42 R13
      388 SETLIST                          R40 R41 2 [1]
      390 CALL                             R38 2 1
      391 GETUPVAL                         R40 1
      392 GETTABLEKS                       R39 R40 K13 ["useCallback"]
      394 NEWCLOSURE                       R40 P19
      395 CAPTURE                          VAL R13
      396 CAPTURE                          UPVAL U10
      397 CAPTURE                          UPVAL U7
      398 CAPTURE                          VAL R10
      399 CAPTURE                          VAL R36
      400 NEWTABLE                         R41 0 3
      402 MOVE                             R42 R10
      403 MOVE                             R43 R13
      404 GETTABLEKS                       R44 R36 K18 ["setNodeOutputInfoInDestroyMapRef"]
      406 SETLIST                          R41 R42 3 [1]
      408 CALL                             R39 2 1
      409 GETUPVAL                         R41 1
      410 GETTABLEKS                       R40 R41 K13 ["useCallback"]
      412 NEWCLOSURE                       R41 P20
      413 CAPTURE                          VAL R11
      414 CAPTURE                          UPVAL U10
      415 CAPTURE                          VAL R10
      416 CAPTURE                          UPVAL U7
      417 CAPTURE                          VAL R33
      418 CAPTURE                          VAL R34
      419 CAPTURE                          VAL R39
      420 NEWTABLE                         R42 0 7
      422 GETTABLEKS                       R43 R4 K14 ["selectionService"]
      424 MOVE                             R44 R11
      425 MOVE                             R45 R13
      426 MOVE                             R46 R10
      427 MOVE                             R47 R33
      428 MOVE                             R48 R34
      429 MOVE                             R49 R39
      430 SETLIST                          R42 R43 7 [1]
      432 CALL                             R40 2 1
      433 GETUPVAL                         R42 1
      434 GETTABLEKS                       R41 R42 K13 ["useCallback"]
      436 NEWCLOSURE                       R42 P21
      437 CAPTURE                          VAL R7
      438 CAPTURE                          UPVAL U10
      439 NEWTABLE                         R43 0 0
      441 CALL                             R41 2 1
      442 GETUPVAL                         R43 1
      443 GETTABLEKS                       R42 R43 K13 ["useCallback"]
      445 NEWCLOSURE                       R43 P22
      446 CAPTURE                          VAL R7
      447 CAPTURE                          UPVAL U10
      448 NEWTABLE                         R44 0 0
      450 CALL                             R42 2 1
      451 GETUPVAL                         R44 1
      452 GETTABLEKS                       R43 R44 K8 ["useEffect"]
      454 NEWCLOSURE                       R44 P23
      455 CAPTURE                          VAL R7
      456 CAPTURE                          UPVAL U10
      457 NEWTABLE                         R45 0 0
      459 CALL                             R43 2 0
      460 GETUPVAL                         R44 1
      461 GETTABLEKS                       R43 R44 K13 ["useCallback"]
      463 NEWCLOSURE                       R44 P24
      464 CAPTURE                          UPVAL U10
      465 CAPTURE                          VAL R10
      466 CAPTURE                          UPVAL U12
      467 NEWTABLE                         R45 0 1
      469 MOVE                             R46 R10
      470 SETLIST                          R45 R46 1 [1]
      472 CALL                             R43 2 1
      473 GETUPVAL                         R45 1
      474 GETTABLEKS                       R44 R45 K13 ["useCallback"]
      476 NEWCLOSURE                       R45 P25
      477 CAPTURE                          UPVAL U10
      478 CAPTURE                          VAL R10
      479 NEWTABLE                         R46 0 1
      481 MOVE                             R47 R10
      482 SETLIST                          R46 R47 1 [1]
      484 CALL                             R44 2 1
      485 GETUPVAL                         R46 1
      486 GETTABLEKS                       R45 R46 K13 ["useCallback"]
      488 NEWCLOSURE                       R46 P26
      489 CAPTURE                          UPVAL U10
      490 CAPTURE                          VAL R10
      491 CAPTURE                          UPVAL U14
      492 CAPTURE                          VAL R1
      493 CAPTURE                          VAL R13
      494 CAPTURE                          UPVAL U7
      495 NEWTABLE                         R47 0 3
      497 MOVE                             R48 R10
      498 MOVE                             R49 R13
      499 GETTABLEKS                       R50 R1 K19 ["observe"]
      501 SETLIST                          R47 R48 3 [1]
      503 CALL                             R45 2 1
      504 GETUPVAL                         R47 1
      505 GETTABLEKS                       R46 R47 K13 ["useCallback"]
      507 NEWCLOSURE                       R47 P27
      508 CAPTURE                          UPVAL U10
      509 CAPTURE                          UPVAL U7
      510 CAPTURE                          VAL R10
      511 NEWTABLE                         R48 0 1
      513 MOVE                             R49 R10
      514 SETLIST                          R48 R49 1 [1]
      516 CALL                             R46 2 1
      517 GETUPVAL                         R48 1
      518 GETTABLEKS                       R47 R48 K13 ["useCallback"]
      520 NEWCLOSURE                       R48 P28
      521 CAPTURE                          VAL R11
      522 CAPTURE                          VAL R13
      523 CAPTURE                          VAL R10
      524 CAPTURE                          UPVAL U7
      525 CAPTURE                          UPVAL U10
      526 NEWTABLE                         R49 0 3
      528 MOVE                             R50 R11
      529 MOVE                             R51 R10
      530 MOVE                             R52 R13
      531 SETLIST                          R49 R50 3 [1]
      533 CALL                             R47 2 1
      534 GETUPVAL                         R49 1
      535 GETTABLEKS                       R48 R49 K13 ["useCallback"]
      537 NEWCLOSURE                       R49 P29
      538 CAPTURE                          VAL R11
      539 CAPTURE                          VAL R10
      540 CAPTURE                          UPVAL U7
      541 CAPTURE                          UPVAL U10
      542 CAPTURE                          VAL R37
      543 CAPTURE                          UPVAL U14
      544 NEWTABLE                         R50 0 4
      546 MOVE                             R51 R10
      547 MOVE                             R52 R11
      548 MOVE                             R53 R13
      549 GETTABLEKS                       R54 R37 K20 ["parameterDestroyConnectionMapRef"]
      551 SETLIST                          R50 R51 4 [1]
      553 CALL                             R48 2 1
      554 GETUPVAL                         R50 1
      555 GETTABLEKS                       R49 R50 K13 ["useCallback"]
      557 NEWCLOSURE                       R50 P30
      558 CAPTURE                          VAL R11
      559 CAPTURE                          UPVAL U7
      560 CAPTURE                          UPVAL U10
      561 CAPTURE                          UPVAL U14
      562 NEWTABLE                         R51 0 1
      564 MOVE                             R52 R11
      565 SETLIST                          R51 R52 1 [1]
      567 CALL                             R49 2 1
      568 GETUPVAL                         R51 1
      569 GETTABLEKS                       R50 R51 K13 ["useCallback"]
      571 NEWCLOSURE                       R51 P31
      572 CAPTURE                          VAL R10
      573 CAPTURE                          UPVAL U10
      574 NEWTABLE                         R52 0 1
      576 MOVE                             R53 R10
      577 SETLIST                          R52 R53 1 [1]
      579 CALL                             R50 2 1
      580 GETUPVAL                         R52 1
      581 GETTABLEKS                       R51 R52 K8 ["useEffect"]
      583 NEWCLOSURE                       R52 P32
      584 CAPTURE                          UPVAL U9
      585 CAPTURE                          VAL R36
      586 CAPTURE                          VAL R10
      587 CAPTURE                          VAL R19
      588 CAPTURE                          UPVAL U7
      589 NEWTABLE                         R53 0 2
      591 MOVE                             R54 R10
      592 GETTABLEKS                       R55 R36 K21 ["nodeDestroyConnectionMapRef"]
      594 SETLIST                          R53 R54 2 [1]
      596 CALL                             R51 2 0
      597 GETUPVAL                         R52 1
      598 GETTABLEKS                       R51 R52 K8 ["useEffect"]
      600 NEWCLOSURE                       R52 P33
      601 CAPTURE                          UPVAL U9
      602 CAPTURE                          VAL R37
      603 CAPTURE                          VAL R10
      604 CAPTURE                          VAL R47
      605 CAPTURE                          UPVAL U14
      606 NEWTABLE                         R53 0 3
      608 MOVE                             R54 R10
      609 GETTABLEKS                       R55 R37 K20 ["parameterDestroyConnectionMapRef"]
      611 MOVE                             R56 R47
      612 SETLIST                          R53 R54 3 [1]
      614 CALL                             R51 2 0
      615 GETUPVAL                         R51 17
      616 MOVE                             R52 R2
      617 MOVE                             R53 R1
      618 CALL                             R51 2 1
      619 NEWTABLE                         R52 64 0
      621 JUMPIFNOT                        R13 ; [+3]
      622 GETTABLEKS                       R53 R13 K22 ["graphInstanceId"]
      624 JUMP                             ; [+1]
      625 LOADNIL                          R53
      626 SETTABLEKS                       R53 R52 K23 ["selectedGraphInstanceId"]
      628 SETTABLEKS                       R46 R52 K24 ["reorderPinsAsync"]
      630 SETTABLEKS                       R31 R52 K25 ["createNodeAsync"]
      632 SETTABLEKS                       R33 R52 K26 ["createParameterAsync"]
      634 SETTABLEKS                       R34 R52 K27 ["createExistingParameterAsync"]
      636 SETTABLEKS                       R40 R52 K28 ["createConnectedParameterAsync"]
      638 SETTABLEKS                       R5 R52 K29 ["graphRect"]
      640 SETTABLEKS                       R32 R52 K30 ["selectAllParameterNodesWithNameAsync"]
      642 SETTABLEKS                       R23 R52 K31 ["selectNodesAsync"]
      644 SETTABLEKS                       R24 R52 K32 ["selectNodesFromRectAsync"]
      646 SETTABLEKS                       R21 R52 K33 ["setNodePositionsAsync"]
      648 SETTABLEKS                       R22 R52 K34 ["setNodeSizeAsync"]
      650 SETTABLEKS                       R39 R52 K35 ["setNodeConnectionAsync"]
      652 SETTABLEKS                       R38 R52 K36 ["removeNodeOutputConnectionAsync"]
      654 SETTABLEKS                       R35 R52 K37 ["removeNodeInputConnectionAsync"]
      656 SETTABLEKS                       R47 R52 K38 ["removeParameterAsync"]
      658 SETTABLEKS                       R45 R52 K39 ["renameNodeAsync"]
      660 SETTABLEKS                       R48 R52 K40 ["renameParameterAsync"]
      662 SETTABLEKS                       R50 R52 K41 ["deleteNodeInstanceAsync"]
      664 SETTABLEKS                       R20 R52 K42 ["setCollapsedAsync"]
      666 SETTABLEKS                       R43 R52 K43 ["setNodePropertyAsync"]
      668 SETTABLEKS                       R44 R52 K44 ["setInputPinNodePropertyAsync"]
      670 SETTABLEKS                       R49 R52 K45 ["setParameterNodeTypeAsync"]
      672 SETTABLEKS                       R25 R52 K46 ["currentAnimationId"]
      674 SETTABLEKS                       R27 R52 K47 ["sourceAssetId"]
      676 SETTABLEKS                       R30 R52 K48 ["selectedGraphKey"]
      678 GETTABLEKS                       R53 R51 K49 ["getSelectedRect"]
      680 SETTABLEKS                       R53 R52 K49 ["getSelectedRect"]
      682 SETTABLEKS                       R11 R52 K50 ["observeSelectedGraphInstance"]
      684 GETTABLEKS                       R53 R1 K19 ["observe"]
      686 SETTABLEKS                       R53 R52 K51 ["observeGraphNodeById"]
      688 GETTABLEKS                       R53 R2 K19 ["observe"]
      690 SETTABLEKS                       R53 R52 K52 ["observeNodeRenderInfoById"]
      692 SETTABLEKS                       R41 R52 K53 ["beginUndoTransaction"]
      694 SETTABLEKS                       R42 R52 K54 ["finishUndoTransaction"]
      696 SETTABLEKS                       R7 R52 K55 ["undoTransaction"]
      698 GETTABLEKS                       R53 R1 K56 ["observeMap"]
      700 SETTABLEKS                       R53 R52 K57 ["observeGraphNodeMap"]
      702 GETTABLEKS                       R53 R2 K56 ["observeMap"]
      704 SETTABLEKS                       R53 R52 K58 ["observeRenderInfoMap"]
      706 GETTABLEKS                       R53 R51 K59 ["hasGraphOutput"]
      708 SETTABLEKS                       R53 R52 K59 ["hasGraphOutput"]
      710 GETTABLEKS                       R53 R3 K19 ["observe"]
      712 SETTABLEKS                       R53 R52 K60 ["observeNodePropsById"]
      714 GETUPVAL                         R54 1
      715 GETTABLEKS                       R53 R54 K7 ["useMemo"]
      717 DUPCLOSURE                       R54 K61 [PROTO_47]
      718 NEWTABLE                         R55 0 0
      720 CALL                             R53 2 1
      721 GETUPVAL                         R55 1
      722 GETTABLEKS                       R54 R55 K7 ["useMemo"]
      724 NEWCLOSURE                       R55 P35
      725 CAPTURE                          UPVAL U18
      726 CAPTURE                          VAL R11
      727 NEWTABLE                         R56 0 2
      729 MOVE                             R57 R11
      730 MOVE                             R58 R13
      731 SETLIST                          R56 R57 2 [1]
      733 CALL                             R54 2 1
      734 GETUPVAL                         R56 19
      735 GETTABLEKS                       R55 R56 K62 ["usePasteHooks"]
      737 MOVE                             R56 R11
      738 CALL                             R55 1 0
      739 GETUPVAL                         R56 11
      740 GETTABLEKS                       R55 R56 K17 ["useSignalState"]
      742 MOVE                             R56 R54
      743 CALL                             R55 1 1
      744 GETUPVAL                         R57 20
      745 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      747 GETUPVAL                         R58 21
      748 GETTABLEKS                       R57 R58 K64 ["GRAPH_PAYLOAD_MAP"]
      750 MOVE                             R58 R13
      751 CALL                             R56 2 0
      752 GETUPVAL                         R57 20
      753 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      755 GETUPVAL                         R58 21
      756 GETTABLEKS                       R57 R58 K65 ["GRAPH_RENDER_INFO"]
      758 MOVE                             R58 R15
      759 CALL                             R56 2 0
      760 GETUPVAL                         R57 20
      761 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      763 GETUPVAL                         R58 21
      764 GETTABLEKS                       R57 R58 K66 ["GRAPH_NODE_PROPS"]
      766 MOVE                             R58 R17
      767 CALL                             R56 2 0
      768 GETUPVAL                         R57 20
      769 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      771 GETUPVAL                         R58 21
      772 GETTABLEKS                       R57 R58 K67 ["TIME_RANGE"]
      774 MOVE                             R58 R53
      775 CALL                             R56 2 0
      776 GETUPVAL                         R57 20
      777 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      779 GETUPVAL                         R58 21
      780 GETTABLEKS                       R57 R58 K68 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      782 MOVE                             R58 R5
      783 CALL                             R56 2 0
      784 GETUPVAL                         R57 20
      785 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      787 GETUPVAL                         R58 21
      788 GETTABLEKS                       R57 R58 K69 ["CURRENT_ANIMATION_ID"]
      790 MOVE                             R58 R25
      791 CALL                             R56 2 0
      792 GETUPVAL                         R57 20
      793 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      795 GETUPVAL                         R58 21
      796 GETTABLEKS                       R57 R58 K70 ["SOURCE_ASSET_ID"]
      798 MOVE                             R58 R27
      799 CALL                             R56 2 0
      800 GETUPVAL                         R57 20
      801 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      803 GETUPVAL                         R58 21
      804 GETTABLEKS                       R57 R58 K71 ["SELECTED_GRAPH_KEY"]
      806 MOVE                             R58 R30
      807 CALL                             R56 2 0
      808 GETUPVAL                         R57 20
      809 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      811 GETUPVAL                         R58 21
      812 GETTABLEKS                       R57 R58 K72 ["UNDO_TRANSACTION"]
      814 MOVE                             R58 R7
      815 CALL                             R56 2 0
      816 GETUPVAL                         R57 20
      817 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      819 GETUPVAL                         R58 22
      820 GETTABLEKS                       R57 R58 K74 ["CREATE_NODE"]
      822 MOVE                             R58 R31
      823 CALL                             R56 2 0
      824 GETUPVAL                         R57 20
      825 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      827 GETUPVAL                         R58 22
      828 GETTABLEKS                       R57 R58 K75 ["CREATE_PARAMETER"]
      830 MOVE                             R58 R33
      831 CALL                             R56 2 0
      832 GETUPVAL                         R57 20
      833 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      835 GETUPVAL                         R58 22
      836 GETTABLEKS                       R57 R58 K76 ["CREATE_CONNECTED_PARAMETER"]
      838 MOVE                             R58 R40
      839 CALL                             R56 2 0
      840 GETUPVAL                         R57 20
      841 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      843 GETUPVAL                         R58 22
      844 GETTABLEKS                       R57 R58 K77 ["CREATE_EXISTING_PARAMETER"]
      846 MOVE                             R58 R34
      847 CALL                             R56 2 0
      848 GETUPVAL                         R57 20
      849 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      851 GETUPVAL                         R58 22
      852 GETTABLEKS                       R57 R58 K78 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      854 MOVE                             R58 R32
      855 CALL                             R56 2 0
      856 GETUPVAL                         R57 20
      857 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      859 GETUPVAL                         R58 22
      860 GETTABLEKS                       R57 R58 K79 ["SELECT_NODES"]
      862 MOVE                             R58 R23
      863 CALL                             R56 2 0
      864 GETUPVAL                         R57 20
      865 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      867 GETUPVAL                         R58 22
      868 GETTABLEKS                       R57 R58 K80 ["SELECT_NODES_FROM_RECT"]
      870 MOVE                             R58 R24
      871 CALL                             R56 2 0
      872 GETUPVAL                         R57 20
      873 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      875 GETUPVAL                         R58 22
      876 GETTABLEKS                       R57 R58 K81 ["SET_NODE_POSITIONS"]
      878 MOVE                             R58 R21
      879 CALL                             R56 2 0
      880 GETUPVAL                         R57 20
      881 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      883 GETUPVAL                         R58 22
      884 GETTABLEKS                       R57 R58 K82 ["SET_NODE_SIZE"]
      886 MOVE                             R58 R22
      887 CALL                             R56 2 0
      888 GETUPVAL                         R57 20
      889 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      891 GETUPVAL                         R58 22
      892 GETTABLEKS                       R57 R58 K83 ["SET_NODE_CONNECTION"]
      894 MOVE                             R58 R39
      895 CALL                             R56 2 0
      896 GETUPVAL                         R57 20
      897 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      899 GETUPVAL                         R58 22
      900 GETTABLEKS                       R57 R58 K84 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      902 MOVE                             R58 R38
      903 CALL                             R56 2 0
      904 GETUPVAL                         R57 20
      905 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      907 GETUPVAL                         R58 22
      908 GETTABLEKS                       R57 R58 K85 ["REMOVE_NODE_INPUT_CONNECTION"]
      910 MOVE                             R58 R35
      911 CALL                             R56 2 0
      912 GETUPVAL                         R57 20
      913 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      915 GETUPVAL                         R58 22
      916 GETTABLEKS                       R57 R58 K86 ["REMOVE_PARAMETER"]
      918 MOVE                             R58 R47
      919 CALL                             R56 2 0
      920 GETUPVAL                         R57 20
      921 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      923 GETUPVAL                         R58 22
      924 GETTABLEKS                       R57 R58 K87 ["RENAME_NODE"]
      926 MOVE                             R58 R45
      927 CALL                             R56 2 0
      928 GETUPVAL                         R57 20
      929 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      931 GETUPVAL                         R58 22
      932 GETTABLEKS                       R57 R58 K88 ["RENAME_PARAMETER"]
      934 MOVE                             R58 R48
      935 CALL                             R56 2 0
      936 GETUPVAL                         R57 20
      937 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      939 GETUPVAL                         R58 22
      940 GETTABLEKS                       R57 R58 K89 ["DELETE_NODE_INSTANCE"]
      942 MOVE                             R58 R50
      943 CALL                             R56 2 0
      944 GETUPVAL                         R57 20
      945 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      947 GETUPVAL                         R58 22
      948 GETTABLEKS                       R57 R58 K90 ["SET_COLLAPSED"]
      950 MOVE                             R58 R20
      951 CALL                             R56 2 0
      952 GETUPVAL                         R57 20
      953 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      955 GETUPVAL                         R58 22
      956 GETTABLEKS                       R57 R58 K91 ["SET_NODE_PROPERTY"]
      958 MOVE                             R58 R43
      959 CALL                             R56 2 0
      960 GETUPVAL                         R57 20
      961 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      963 GETUPVAL                         R58 22
      964 GETTABLEKS                       R57 R58 K92 ["SET_INPUT_PIN_NODE_PROPERTY"]
      966 MOVE                             R58 R44
      967 CALL                             R56 2 0
      968 GETUPVAL                         R57 20
      969 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      971 GETUPVAL                         R58 22
      972 GETTABLEKS                       R57 R58 K93 ["SET_PARAMETER_NODE_TYPE"]
      974 MOVE                             R58 R49
      975 CALL                             R56 2 0
      976 GETUPVAL                         R57 20
      977 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      979 GETUPVAL                         R58 22
      980 GETTABLEKS                       R57 R58 K94 ["REORDER_PINS"]
      982 MOVE                             R58 R46
      983 CALL                             R56 2 0
      984 GETUPVAL                         R57 20
      985 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      987 GETUPVAL                         R58 22
      988 GETTABLEKS                       R57 R58 K95 ["BEGIN_UNDO_TRANSACTION"]
      990 MOVE                             R58 R41
      991 CALL                             R56 2 0
      992 GETUPVAL                         R57 20
      993 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      995 GETUPVAL                         R58 22
      996 GETTABLEKS                       R57 R58 K96 ["FINISH_UNDO_TRANSACTION"]
      998 MOVE                             R58 R42
      999 CALL                             R56 2 0
     1000 GETUPVAL                         R57 1
     1001 GETTABLEKS                       R56 R57 K97 ["createElement"]
     1003 GETUPVAL                         R58 23
     1004 GETTABLEKS                       R57 R58 K98 ["Provider"]
     1006 DUPTABLE                         R58 K100 [{"value"}]
     1007 SETTABLEKS                       R52 R58 K99 ["value"]
     1009 DUPTABLE                         R59 K102 [{"ContextStack"}]
     1010 GETUPVAL                         R61 1
     1011 GETTABLEKS                       R60 R61 K97 ["createElement"]
     1013 GETUPVAL                         R62 8
     1014 GETTABLEKS                       R61 R62 K101 ["ContextStack"]
     1016 DUPTABLE                         R62 K104 [{"providers"}]
     1017 NEWTABLE                         R63 0 2
     1019 GETUPVAL                         R65 1
     1020 GETTABLEKS                       R64 R65 K97 ["createElement"]
     1022 GETUPVAL                         R66 24
     1023 GETTABLEKS                       R65 R66 K98 ["Provider"]
     1025 DUPTABLE                         R66 K106 [{"timeRange"}]
     1026 SETTABLEKS                       R53 R66 K105 ["timeRange"]
     1028 CALL                             R64 2 1
     1029 GETUPVAL                         R66 1
     1030 GETTABLEKS                       R65 R66 K97 ["createElement"]
     1032 GETUPVAL                         R67 25
     1033 GETTABLEKS                       R66 R67 K98 ["Provider"]
     1035 DUPTABLE                         R67 K108 [{"animationClipsList"}]
     1036 SETTABLEKS                       R55 R67 K107 ["animationClipsList"]
     1038 CALL                             R65 2 -1
     1039 SETLIST                          R63 R64 -1 [1]
     1041 SETTABLEKS                       R63 R62 K103 ["providers"]
     1043 GETTABLEKS                       R63 R0 K109 ["children"]
     1045 CALL                             R60 3 1
     1046 SETTABLEKS                       R60 R59 K101 ["ContextStack"]
     1048 CALL                             R56 3 -1
     1049 RETURN                           R56 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke observeSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        9 DUPCLOSURE                       R5 K1 [PROTO_51]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 2
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R6 R7 K2 ["useReplicatedStateListenerCallback"]
       17 GETUPVAL                         R8 4
       18 GETTABLEKS                       R7 R8 K3 ["GRAPH_PAYLOAD_MAP"]
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R5
       26 NEWTABLE                         R10 0 2
       28 GETTABLEKS                       R11 R1 K5 ["setMap"]
       30 MOVE                             R12 R5
       31 SETLIST                          R10 R11 2 [1]
       33 CALL                             R8 2 -1
       34 CALL                             R6 -1 0
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K2 ["useReplicatedStateListenerCallback"]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R7 R8 K6 ["GRAPH_RENDER_INFO"]
       41 GETTABLEKS                       R8 R2 K5 ["setMap"]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K2 ["useReplicatedStateListenerCallback"]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R7 R8 K7 ["GRAPH_NODE_PROPS"]
       50 GETTABLEKS                       R8 R3 K5 ["setMap"]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K8 ["useEffect"]
       56 NEWCLOSURE                       R7 P2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R9 R0 K9 ["testOverrideGraphPayloadMap"]
       63 SETLIST                          R8 R9 1 [1]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R6 R7 K10 ["useReplicatedStateListener"]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R7 R8 K11 ["TIME_RANGE"]
       72 GETIMPORT                        R8 K14 [NumberRange.new]
       74 LOADN                            R9 0
       75 LOADN                            R10 10
       76 CALL                             R8 2 -1
       77 CALL                             R6 -1 1
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R7 R8 K10 ["useReplicatedStateListener"]
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R8 R9 K15 ["GRAPH_PAYLOAD_GRAPH_RECT"]
       84 GETIMPORT                        R9 K17 [Rect.new]
       86 LOADN                            R10 0
       87 LOADN                            R11 0
       88 LOADN                            R12 0
       89 LOADN                            R13 0
       90 CALL                             R9 4 -1
       91 CALL                             R7 -1 1
       92 GETUPVAL                         R9 3
       93 GETTABLEKS                       R8 R9 K10 ["useReplicatedStateListener"]
       95 GETUPVAL                         R10 4
       96 GETTABLEKS                       R9 R10 K18 ["CURRENT_ANIMATION_ID"]
       98 LOADK                            R10 K19 [""]
       99 CALL                             R8 2 1
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R9 R10 K10 ["useReplicatedStateListener"]
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R10 R11 K20 ["SOURCE_ASSET_ID"]
      106 LOADNIL                          R11
      107 CALL                             R9 2 1
      108 GETUPVAL                         R11 3
      109 GETTABLEKS                       R10 R11 K10 ["useReplicatedStateListener"]
      111 GETUPVAL                         R12 4
      112 GETTABLEKS                       R11 R12 K21 ["SELECTED_GRAPH_KEY"]
      114 LOADNIL                          R12
      115 CALL                             R10 2 1
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R11 R12 K22 ["createComputed"]
      119 DUPCLOSURE                       R12 K23 [PROTO_54]
      120 CALL                             R11 1 1
      121 GETUPVAL                         R12 6
      122 MOVE                             R13 R2
      123 MOVE                             R14 R1
      124 CALL                             R12 2 1
      125 GETUPVAL                         R14 7
      126 GETTABLEKS                       R13 R14 K24 ["useSignalState"]
      128 MOVE                             R14 R4
      129 CALL                             R13 1 1
      130 NEWTABLE                         R14 64 0
      132 SETTABLEKS                       R13 R14 K25 ["selectedGraphInstanceId"]
      134 GETUPVAL                         R16 3
      135 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      137 GETUPVAL                         R17 8
      138 GETTABLEKS                       R16 R17 K27 ["REORDER_PINS"]
      140 CALL                             R15 1 1
      141 SETTABLEKS                       R15 R14 K28 ["reorderPinsAsync"]
      143 GETUPVAL                         R16 3
      144 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      146 GETUPVAL                         R17 8
      147 GETTABLEKS                       R16 R17 K29 ["CREATE_NODE"]
      149 CALL                             R15 1 1
      150 SETTABLEKS                       R15 R14 K30 ["createNodeAsync"]
      152 GETUPVAL                         R16 3
      153 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      155 GETUPVAL                         R17 8
      156 GETTABLEKS                       R16 R17 K31 ["CREATE_PARAMETER"]
      158 CALL                             R15 1 1
      159 SETTABLEKS                       R15 R14 K32 ["createParameterAsync"]
      161 GETUPVAL                         R16 3
      162 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      164 GETUPVAL                         R17 8
      165 GETTABLEKS                       R16 R17 K33 ["CREATE_CONNECTED_PARAMETER"]
      167 CALL                             R15 1 1
      168 SETTABLEKS                       R15 R14 K34 ["createConnectedParameterAsync"]
      170 GETUPVAL                         R16 3
      171 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      173 GETUPVAL                         R17 8
      174 GETTABLEKS                       R16 R17 K35 ["CREATE_EXISTING_PARAMETER"]
      176 CALL                             R15 1 1
      177 SETTABLEKS                       R15 R14 K36 ["createExistingParameterAsync"]
      179 SETTABLEKS                       R7 R14 K37 ["graphRect"]
      181 GETUPVAL                         R16 3
      182 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      184 GETUPVAL                         R17 8
      185 GETTABLEKS                       R16 R17 K38 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      187 CALL                             R15 1 1
      188 SETTABLEKS                       R15 R14 K39 ["selectAllParameterNodesWithNameAsync"]
      190 GETUPVAL                         R16 3
      191 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      193 GETUPVAL                         R17 8
      194 GETTABLEKS                       R16 R17 K40 ["SELECT_NODES"]
      196 CALL                             R15 1 1
      197 SETTABLEKS                       R15 R14 K41 ["selectNodesAsync"]
      199 GETUPVAL                         R16 3
      200 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      202 GETUPVAL                         R17 8
      203 GETTABLEKS                       R16 R17 K42 ["SELECT_NODES_FROM_RECT"]
      205 CALL                             R15 1 1
      206 SETTABLEKS                       R15 R14 K43 ["selectNodesFromRectAsync"]
      208 GETUPVAL                         R16 3
      209 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      211 GETUPVAL                         R17 8
      212 GETTABLEKS                       R16 R17 K44 ["SET_NODE_POSITIONS"]
      214 CALL                             R15 1 1
      215 SETTABLEKS                       R15 R14 K45 ["setNodePositionsAsync"]
      217 GETUPVAL                         R16 3
      218 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      220 GETUPVAL                         R17 8
      221 GETTABLEKS                       R16 R17 K46 ["SET_NODE_SIZE"]
      223 CALL                             R15 1 1
      224 SETTABLEKS                       R15 R14 K47 ["setNodeSizeAsync"]
      226 GETUPVAL                         R16 3
      227 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      229 GETUPVAL                         R17 8
      230 GETTABLEKS                       R16 R17 K48 ["SET_NODE_CONNECTION"]
      232 CALL                             R15 1 1
      233 SETTABLEKS                       R15 R14 K49 ["setNodeConnectionAsync"]
      235 GETUPVAL                         R16 3
      236 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      238 GETUPVAL                         R17 8
      239 GETTABLEKS                       R16 R17 K50 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      241 CALL                             R15 1 1
      242 SETTABLEKS                       R15 R14 K51 ["removeNodeOutputConnectionAsync"]
      244 GETUPVAL                         R16 3
      245 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      247 GETUPVAL                         R17 8
      248 GETTABLEKS                       R16 R17 K52 ["REMOVE_NODE_INPUT_CONNECTION"]
      250 CALL                             R15 1 1
      251 SETTABLEKS                       R15 R14 K53 ["removeNodeInputConnectionAsync"]
      253 GETUPVAL                         R16 3
      254 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      256 GETUPVAL                         R17 8
      257 GETTABLEKS                       R16 R17 K54 ["REMOVE_PARAMETER"]
      259 CALL                             R15 1 1
      260 SETTABLEKS                       R15 R14 K55 ["removeParameterAsync"]
      262 GETUPVAL                         R16 3
      263 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      265 GETUPVAL                         R17 8
      266 GETTABLEKS                       R16 R17 K56 ["RENAME_NODE"]
      268 CALL                             R15 1 1
      269 SETTABLEKS                       R15 R14 K57 ["renameNodeAsync"]
      271 GETUPVAL                         R16 3
      272 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      274 GETUPVAL                         R17 8
      275 GETTABLEKS                       R16 R17 K58 ["RENAME_PARAMETER"]
      277 CALL                             R15 1 1
      278 SETTABLEKS                       R15 R14 K59 ["renameParameterAsync"]
      280 GETUPVAL                         R16 3
      281 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      283 GETUPVAL                         R17 8
      284 GETTABLEKS                       R16 R17 K60 ["DELETE_NODE_INSTANCE"]
      286 CALL                             R15 1 1
      287 SETTABLEKS                       R15 R14 K61 ["deleteNodeInstanceAsync"]
      289 GETUPVAL                         R16 3
      290 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      292 GETUPVAL                         R17 8
      293 GETTABLEKS                       R16 R17 K62 ["SET_COLLAPSED"]
      295 CALL                             R15 1 1
      296 SETTABLEKS                       R15 R14 K63 ["setCollapsedAsync"]
      298 GETUPVAL                         R16 3
      299 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      301 GETUPVAL                         R17 8
      302 GETTABLEKS                       R16 R17 K64 ["SET_NODE_PROPERTY"]
      304 CALL                             R15 1 1
      305 SETTABLEKS                       R15 R14 K65 ["setNodePropertyAsync"]
      307 GETUPVAL                         R16 3
      308 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      310 GETUPVAL                         R17 8
      311 GETTABLEKS                       R16 R17 K66 ["SET_INPUT_PIN_NODE_PROPERTY"]
      313 CALL                             R15 1 1
      314 SETTABLEKS                       R15 R14 K67 ["setInputPinNodePropertyAsync"]
      316 GETUPVAL                         R16 3
      317 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      319 GETUPVAL                         R17 8
      320 GETTABLEKS                       R16 R17 K68 ["SET_PARAMETER_NODE_TYPE"]
      322 CALL                             R15 1 1
      323 SETTABLEKS                       R15 R14 K69 ["setParameterNodeTypeAsync"]
      325 SETTABLEKS                       R8 R14 K70 ["currentAnimationId"]
      327 SETTABLEKS                       R9 R14 K71 ["sourceAssetId"]
      329 SETTABLEKS                       R10 R14 K72 ["selectedGraphKey"]
      331 GETTABLEKS                       R15 R12 K73 ["getSelectedRect"]
      333 SETTABLEKS                       R15 R14 K73 ["getSelectedRect"]
      335 SETTABLEKS                       R11 R14 K74 ["observeSelectedGraphInstance"]
      337 GETTABLEKS                       R15 R1 K75 ["observe"]
      339 SETTABLEKS                       R15 R14 K76 ["observeGraphNodeById"]
      341 GETTABLEKS                       R15 R2 K75 ["observe"]
      343 SETTABLEKS                       R15 R14 K77 ["observeNodeRenderInfoById"]
      345 GETUPVAL                         R16 3
      346 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      348 GETUPVAL                         R17 8
      349 GETTABLEKS                       R16 R17 K78 ["BEGIN_UNDO_TRANSACTION"]
      351 CALL                             R15 1 1
      352 SETTABLEKS                       R15 R14 K79 ["beginUndoTransaction"]
      354 GETUPVAL                         R16 3
      355 GETTABLEKS                       R15 R16 K26 ["useBoundAction"]
      357 GETUPVAL                         R17 8
      358 GETTABLEKS                       R16 R17 K80 ["FINISH_UNDO_TRANSACTION"]
      360 CALL                             R15 1 1
      361 SETTABLEKS                       R15 R14 K81 ["finishUndoTransaction"]
      363 GETTABLEKS                       R15 R1 K82 ["observeMap"]
      365 SETTABLEKS                       R15 R14 K83 ["observeGraphNodeMap"]
      367 GETTABLEKS                       R15 R2 K82 ["observeMap"]
      369 SETTABLEKS                       R15 R14 K84 ["observeRenderInfoMap"]
      371 GETTABLEKS                       R15 R12 K85 ["hasGraphOutput"]
      373 SETTABLEKS                       R15 R14 K85 ["hasGraphOutput"]
      375 GETTABLEKS                       R15 R3 K75 ["observe"]
      377 SETTABLEKS                       R15 R14 K86 ["observeNodePropsById"]
      379 GETUPVAL                         R16 1
      380 GETTABLEKS                       R15 R16 K87 ["createElement"]
      382 GETUPVAL                         R17 9
      383 GETTABLEKS                       R16 R17 K88 ["Provider"]
      385 DUPTABLE                         R17 K90 [{"value"}]
      386 SETTABLEKS                       R14 R17 K89 ["value"]
      388 DUPTABLE                         R18 K92 [{"ContextStack"}]
      389 GETUPVAL                         R20 1
      390 GETTABLEKS                       R19 R20 K87 ["createElement"]
      392 GETUPVAL                         R21 10
      393 GETTABLEKS                       R20 R21 K91 ["ContextStack"]
      395 DUPTABLE                         R21 K94 [{"providers"}]
      396 NEWTABLE                         R22 0 1
      398 GETUPVAL                         R24 1
      399 GETTABLEKS                       R23 R24 K87 ["createElement"]
      401 GETUPVAL                         R25 11
      402 GETTABLEKS                       R24 R25 K88 ["Provider"]
      404 DUPTABLE                         R25 K96 [{"timeRange"}]
      405 SETTABLEKS                       R6 R25 K95 ["timeRange"]
      407 CALL                             R23 2 -1
      408 SETLIST                          R22 R23 -1 [1]
      410 SETTABLEKS                       R22 R21 K93 ["providers"]
      412 GETTABLEKS                       R22 R0 K97 ["children"]
      414 CALL                             R19 3 1
      415 SETTABLEKS                       R19 R18 K91 ["ContextStack"]
      417 CALL                             R15 3 -1
      418 RETURN                           R15 -1

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
       81 GETTABLEKS                       R13 R0 K13 ["Contexts"]
       83 GETTABLEKS                       R12 R13 K24 ["PasteHookContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R14 R0 K25 ["Parent"]
       90 GETTABLEKS                       R13 R14 K26 ["React"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R15 R0 K25 ["Parent"]
       97 GETTABLEKS                       R14 R15 K27 ["ReactUtils"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R16 R0 K11 ["Util"]
      104 GETTABLEKS                       R15 R16 K28 ["RectUtil"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R17 R0 K13 ["Contexts"]
      111 GETTABLEKS                       R16 R17 K29 ["SelectionServiceContext"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K10 [require]
      116 GETTABLEKS                       R20 R0 K11 ["Util"]
      118 GETTABLEKS                       R19 R20 K30 ["Signals"]
      120 GETTABLEKS                       R18 R19 K31 ["Experimental"]
      122 GETTABLEKS                       R17 R18 K32 ["SignalExperimentalUtils"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R19 R0 K25 ["Parent"]
      129 GETTABLEKS                       R18 R19 K30 ["Signals"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R20 R0 K25 ["Parent"]
      136 GETTABLEKS                       R19 R20 K33 ["SignalsReact"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R21 R0 K13 ["Contexts"]
      143 GETTABLEKS                       R20 R21 K34 ["TimeRangeContext"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETIMPORT                        R22 K1 [script]
      150 GETTABLEKS                       R21 R22 K35 ["useGraphAnalytics"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K10 [require]
      155 GETTABLEKS                       R23 R0 K36 ["Hooks"]
      157 GETTABLEKS                       R22 R23 K37 ["useNodeDefinitionDestroyHelper"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K10 [require]
      162 GETTABLEKS                       R24 R0 K36 ["Hooks"]
      164 GETTABLEKS                       R23 R24 K38 ["useObserveSelection"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K10 [require]
      169 GETTABLEKS                       R25 R0 K36 ["Hooks"]
      171 GETTABLEKS                       R24 R25 K39 ["useParameterDestroyHelper"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K10 [require]
      176 GETTABLEKS                       R26 R0 K36 ["Hooks"]
      178 GETTABLEKS                       R25 R26 K40 ["useSignalDispatcher"]
      180 CALL                             R24 1 1
      181 NEWTABLE                         R25 64 0
      183 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      185 LOADK                            R27 K42 ["observeGraphNodeMap"]
      186 CALL                             R26 1 1
      187 SETTABLEKS                       R26 R25 K42 ["observeGraphNodeMap"]
      189 GETIMPORT                        R26 K45 [Rect.new]
      191 LOADN                            R27 0
      192 LOADN                            R28 0
      193 LOADN                            R29 0
      194 LOADN                            R30 0
      195 CALL                             R26 4 1
      196 SETTABLEKS                       R26 R25 K46 ["graphRect"]
      198 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      200 LOADK                            R27 K47 ["reorderPinsAsync"]
      201 CALL                             R26 1 1
      202 SETTABLEKS                       R26 R25 K47 ["reorderPinsAsync"]
      204 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      206 LOADK                            R27 K48 ["createNodeAsync"]
      207 CALL                             R26 1 1
      208 SETTABLEKS                       R26 R25 K48 ["createNodeAsync"]
      210 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      212 LOADK                            R27 K49 ["createParameterAsync"]
      213 CALL                             R26 1 1
      214 SETTABLEKS                       R26 R25 K49 ["createParameterAsync"]
      216 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      218 LOADK                            R27 K50 ["createConnectedParameterAsync"]
      219 CALL                             R26 1 1
      220 SETTABLEKS                       R26 R25 K50 ["createConnectedParameterAsync"]
      222 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      224 LOADK                            R27 K51 ["createExistingParameterAsync"]
      225 CALL                             R26 1 1
      226 SETTABLEKS                       R26 R25 K51 ["createExistingParameterAsync"]
      228 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      230 LOADK                            R27 K52 ["selectAllParameterNodesWithNameAsync"]
      231 CALL                             R26 1 1
      232 SETTABLEKS                       R26 R25 K52 ["selectAllParameterNodesWithNameAsync"]
      234 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      236 LOADK                            R27 K53 ["selectNodesAsync"]
      237 CALL                             R26 1 1
      238 SETTABLEKS                       R26 R25 K53 ["selectNodesAsync"]
      240 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      242 LOADK                            R27 K54 ["selectNodesFromRectAsync"]
      243 CALL                             R26 1 1
      244 SETTABLEKS                       R26 R25 K54 ["selectNodesFromRectAsync"]
      246 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      248 LOADK                            R27 K55 ["setNodePositionsAsync"]
      249 CALL                             R26 1 1
      250 SETTABLEKS                       R26 R25 K55 ["setNodePositionsAsync"]
      252 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      254 LOADK                            R27 K56 ["setNodeSizeAsync"]
      255 CALL                             R26 1 1
      256 SETTABLEKS                       R26 R25 K56 ["setNodeSizeAsync"]
      258 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      260 LOADK                            R27 K57 ["removeNodeInputConnectionAsync"]
      261 CALL                             R26 1 1
      262 SETTABLEKS                       R26 R25 K57 ["removeNodeInputConnectionAsync"]
      264 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      266 LOADK                            R27 K58 ["removeNodeOutputConnectionAsync"]
      267 CALL                             R26 1 1
      268 SETTABLEKS                       R26 R25 K58 ["removeNodeOutputConnectionAsync"]
      270 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      272 LOADK                            R27 K59 ["removeParameterAsync"]
      273 CALL                             R26 1 1
      274 SETTABLEKS                       R26 R25 K59 ["removeParameterAsync"]
      276 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      278 LOADK                            R27 K60 ["renameNodeAsync"]
      279 CALL                             R26 1 1
      280 SETTABLEKS                       R26 R25 K60 ["renameNodeAsync"]
      282 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      284 LOADK                            R27 K61 ["renameParameterAsync"]
      285 CALL                             R26 1 1
      286 SETTABLEKS                       R26 R25 K61 ["renameParameterAsync"]
      288 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      290 LOADK                            R27 K62 ["deleteNodeInstanceAsync"]
      291 CALL                             R26 1 1
      292 SETTABLEKS                       R26 R25 K62 ["deleteNodeInstanceAsync"]
      294 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      296 LOADK                            R27 K63 ["setNewConnection"]
      297 CALL                             R26 1 1
      298 SETTABLEKS                       R26 R25 K64 ["setNodeConnectionAsync"]
      300 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      302 LOADK                            R27 K65 ["setCollapsedAsync"]
      303 CALL                             R26 1 1
      304 SETTABLEKS                       R26 R25 K65 ["setCollapsedAsync"]
      306 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      308 LOADK                            R27 K66 ["setNodePropertyAsync"]
      309 CALL                             R26 1 1
      310 SETTABLEKS                       R26 R25 K66 ["setNodePropertyAsync"]
      312 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      314 LOADK                            R27 K67 ["setInputPinNodePropertyAsync"]
      315 CALL                             R26 1 1
      316 SETTABLEKS                       R26 R25 K67 ["setInputPinNodePropertyAsync"]
      318 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      320 LOADK                            R27 K68 ["setParameterNodeTypeAsync"]
      321 CALL                             R26 1 1
      322 SETTABLEKS                       R26 R25 K68 ["setParameterNodeTypeAsync"]
      324 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      326 LOADK                            R27 K69 ["getSelectedRect"]
      327 CALL                             R26 1 1
      328 SETTABLEKS                       R26 R25 K69 ["getSelectedRect"]
      330 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      332 LOADK                            R27 K70 ["hasGraphOutput"]
      333 CALL                             R26 1 1
      334 SETTABLEKS                       R26 R25 K70 ["hasGraphOutput"]
      336 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      338 LOADK                            R27 K71 ["observeGraphNodeById"]
      339 CALL                             R26 1 1
      340 SETTABLEKS                       R26 R25 K71 ["observeGraphNodeById"]
      342 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      344 LOADK                            R27 K72 ["observeNodeRenderInfoById"]
      345 CALL                             R26 1 1
      346 SETTABLEKS                       R26 R25 K72 ["observeNodeRenderInfoById"]
      348 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      350 LOADK                            R27 K73 ["observeRenderInfoMap"]
      351 CALL                             R26 1 1
      352 SETTABLEKS                       R26 R25 K73 ["observeRenderInfoMap"]
      354 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      356 LOADK                            R27 K74 ["observeNodePropsById"]
      357 CALL                             R26 1 1
      358 SETTABLEKS                       R26 R25 K74 ["observeNodePropsById"]
      360 GETTABLEKS                       R26 R17 K75 ["createSignal"]
      362 LOADNIL                          R27
      363 CALL                             R26 1 1
      364 SETTABLEKS                       R26 R25 K76 ["observeSelectedGraphInstance"]
      366 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      368 LOADK                            R27 K77 ["beginUndoTransaction"]
      369 CALL                             R26 1 1
      370 SETTABLEKS                       R26 R25 K77 ["beginUndoTransaction"]
      372 GETTABLEKS                       R26 R13 K41 ["createUnimplemented"]
      374 LOADK                            R27 K78 ["finishUndoTransaction"]
      375 CALL                             R26 1 1
      376 SETTABLEKS                       R26 R25 K78 ["finishUndoTransaction"]
      378 LOADNIL                          R26
      379 SETTABLEKS                       R26 R25 K79 ["currentAnimationId"]
      381 LOADNIL                          R26
      382 SETTABLEKS                       R26 R25 K80 ["sourceAssetId"]
      384 LOADNIL                          R26
      385 SETTABLEKS                       R26 R25 K81 ["selectedGraphKey"]
      387 GETTABLEKS                       R26 R12 K82 ["createContext"]
      389 MOVE                             R27 R25
      390 CALL                             R26 1 1
      391 DUPTABLE                         R27 K92 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "GRAPH_NODE_PROPS", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "SELECTED_GRAPH_KEY", "UNDO_TRANSACTION"}]
      392 LOADK                            R28 K93 ["NativeGraphContext_GraphPayloadMap"]
      393 SETTABLEKS                       R28 R27 K83 ["GRAPH_PAYLOAD_MAP"]
      395 LOADK                            R28 K94 ["NativeGraphContext_GraphRenderInfo"]
      396 SETTABLEKS                       R28 R27 K84 ["GRAPH_RENDER_INFO"]
      398 LOADK                            R28 K95 ["NativeGraphContext_GraphNodeProps"]
      399 SETTABLEKS                       R28 R27 K85 ["GRAPH_NODE_PROPS"]
      401 LOADK                            R28 K96 ["NativeGraphContext_TimeRange"]
      402 SETTABLEKS                       R28 R27 K86 ["TIME_RANGE"]
      404 LOADK                            R28 K97 ["NativeGraphContext_GraphPayloadGraphRect"]
      405 SETTABLEKS                       R28 R27 K87 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      407 LOADK                            R28 K98 ["NativeGraphContext_CurrentAnimationId"]
      408 SETTABLEKS                       R28 R27 K88 ["CURRENT_ANIMATION_ID"]
      410 LOADK                            R28 K99 ["NativeGraphContext_SourceAssetId"]
      411 SETTABLEKS                       R28 R27 K89 ["SOURCE_ASSET_ID"]
      413 LOADK                            R28 K100 ["NativeGraphContext_SelectedGraphKey"]
      414 SETTABLEKS                       R28 R27 K90 ["SELECTED_GRAPH_KEY"]
      416 LOADK                            R28 K101 ["NativeGraphContext_UndoTransaction"]
      417 SETTABLEKS                       R28 R27 K91 ["UNDO_TRANSACTION"]
      419 DUPTABLE                         R28 K126 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "CREATE_EXISTING_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SET_PARAMETER_NODE_TYPE", "SELECT_ALL_PARAMETER_NODES_WITH_NAME", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      420 LOADK                            R29 K127 ["NativeGraphContext_CreateNode"]
      421 SETTABLEKS                       R29 R28 K102 ["CREATE_NODE"]
      423 LOADK                            R29 K128 ["NativeGraphContext_CreateParameterAsync"]
      424 SETTABLEKS                       R29 R28 K103 ["CREATE_PARAMETER"]
      426 LOADK                            R29 K129 ["NativeGraphContext_CreateConnectedParameterAsync"]
      427 SETTABLEKS                       R29 R28 K104 ["CREATE_CONNECTED_PARAMETER"]
      429 LOADK                            R29 K130 ["NativeGraphContext_CreateExistingParameterAsync"]
      430 SETTABLEKS                       R29 R28 K105 ["CREATE_EXISTING_PARAMETER"]
      432 LOADK                            R29 K131 ["NativeGraphContext_GetSelectedGraphInstance"]
      433 SETTABLEKS                       R29 R28 K106 ["GET_SELECTED_GRAPH_INSTANCE"]
      435 LOADK                            R29 K132 ["NativeGraphContext_SetNodeConnectionAsync"]
      436 SETTABLEKS                       R29 R28 K107 ["SET_NODE_CONNECTION"]
      438 LOADK                            R29 K133 ["NativeGraphContext_setNodePropertyAsync"]
      439 SETTABLEKS                       R29 R28 K108 ["SET_NODE_PROPERTY"]
      441 LOADK                            R29 K134 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      442 SETTABLEKS                       R29 R28 K109 ["SET_INPUT_PIN_NODE_PROPERTY"]
      444 LOADK                            R29 K135 ["NativeGraphContext_ReorderPinsAsync"]
      445 SETTABLEKS                       R29 R28 K110 ["REORDER_PINS"]
      447 LOADK                            R29 K136 ["NativeGraphContext_RemoveNodeInputConnection"]
      448 SETTABLEKS                       R29 R28 K111 ["REMOVE_NODE_INPUT_CONNECTION"]
      450 LOADK                            R29 K137 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      451 SETTABLEKS                       R29 R28 K112 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      453 LOADK                            R29 K138 ["NativeGraphContext_RemoveParameterAsync"]
      454 SETTABLEKS                       R29 R28 K113 ["REMOVE_PARAMETER"]
      456 LOADK                            R29 K139 ["NativeGraphContext_RenameNodeAsync"]
      457 SETTABLEKS                       R29 R28 K114 ["RENAME_NODE"]
      459 LOADK                            R29 K140 ["NativeGraphContext_RenameParameterAsync"]
      460 SETTABLEKS                       R29 R28 K115 ["RENAME_PARAMETER"]
      462 LOADK                            R29 K141 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      463 SETTABLEKS                       R29 R28 K116 ["DELETE_NODE_INSTANCE"]
      465 LOADK                            R29 K142 ["NativeGraphContext_SetNodeSizeAsync"]
      466 SETTABLEKS                       R29 R28 K117 ["SET_NODE_SIZE"]
      468 LOADK                            R29 K143 ["NativeGraphContext_SetCollapsedAsync"]
      469 SETTABLEKS                       R29 R28 K118 ["SET_COLLAPSED"]
      471 LOADK                            R29 K144 ["NativeGraphContext_SetNodePositionsAsync"]
      472 SETTABLEKS                       R29 R28 K119 ["SET_NODE_POSITIONS"]
      474 LOADK                            R29 K145 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      475 SETTABLEKS                       R29 R28 K120 ["SET_PARAMETER_NODE_TYPE"]
      477 LOADK                            R29 K146 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      478 SETTABLEKS                       R29 R28 K121 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      480 LOADK                            R29 K147 ["NativeGraphContext_SelectNodes"]
      481 SETTABLEKS                       R29 R28 K122 ["SELECT_NODES"]
      483 LOADK                            R29 K148 ["NativeGraphContext_SelectNodesFromRect"]
      484 SETTABLEKS                       R29 R28 K123 ["SELECT_NODES_FROM_RECT"]
      486 LOADK                            R29 K149 ["NativeGraphContext_beginUndoTransaction"]
      487 SETTABLEKS                       R29 R28 K124 ["BEGIN_UNDO_TRANSACTION"]
      489 LOADK                            R29 K150 ["NativeGraphContext_finishUndoTransaction"]
      490 SETTABLEKS                       R29 R28 K125 ["FINISH_UNDO_TRANSACTION"]
      492 DUPCLOSURE                       R29 K151 [PROTO_2]
      493 CAPTURE                          VAL R12
      494 CAPTURE                          VAL R14
      495 DUPCLOSURE                       R30 K152 [PROTO_50]
      496 CAPTURE                          VAL R24
      497 CAPTURE                          VAL R12
      498 CAPTURE                          VAL R15
      499 CAPTURE                          VAL R22
      500 CAPTURE                          VAL R7
      501 CAPTURE                          VAL R20
      502 CAPTURE                          VAL R6
      503 CAPTURE                          VAL R8
      504 CAPTURE                          VAL R13
      505 CAPTURE                          VAL R17
      506 CAPTURE                          VAL R2
      507 CAPTURE                          VAL R18
      508 CAPTURE                          VAL R1
      509 CAPTURE                          VAL R3
      510 CAPTURE                          VAL R5
      511 CAPTURE                          VAL R21
      512 CAPTURE                          VAL R23
      513 CAPTURE                          VAL R29
      514 CAPTURE                          VAL R16
      515 CAPTURE                          VAL R11
      516 CAPTURE                          VAL R9
      517 CAPTURE                          VAL R27
      518 CAPTURE                          VAL R28
      519 CAPTURE                          VAL R26
      520 CAPTURE                          VAL R19
      521 CAPTURE                          VAL R4
      522 DUPCLOSURE                       R31 K153 [PROTO_55]
      523 CAPTURE                          VAL R24
      524 CAPTURE                          VAL R12
      525 CAPTURE                          VAL R17
      526 CAPTURE                          VAL R9
      527 CAPTURE                          VAL R27
      528 CAPTURE                          VAL R16
      529 CAPTURE                          VAL R29
      530 CAPTURE                          VAL R18
      531 CAPTURE                          VAL R28
      532 CAPTURE                          VAL R26
      533 CAPTURE                          VAL R13
      534 CAPTURE                          VAL R19
      535 DUPTABLE                         R32 K157 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      536 SETTABLEKS                       R26 R32 K154 ["Context"]
      538 SETTABLEKS                       R30 R32 K155 ["EditableDataModelProvider"]
      540 SETTABLEKS                       R31 R32 K156 ["UIDataModelProvider"]
      542 RETURN                           R32 1
