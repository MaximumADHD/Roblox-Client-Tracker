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
       40 JUMPIFNOT                        R3 ; [+36]
       41 GETUPVAL                         R3 1
       42 LOADK                            R5 K15 ["ObjectValue"]
       43 NAMECALL                         R3 R3 K16 ["FindFirstAncestorWhichIsA"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+30]
       47 GETTABLEKS                       R5 R3 K10 ["Name"]
       49 LOADK                            R6 K17 ["_"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K10 ["Name"]
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
       92 GETUPVAL                         R11 5
       93 CALL                             R11 0 1
       94 JUMPIFNOT                        R11 ; [+4]
       95 LOADNIL                          R11
       96 SETTABLEKS                       R11 R10 K16 ["Parent"]
       98 JUMP                             ; [+3]
       99 NAMECALL                         R11 R10 K17 ["Destroy"]
      101 CALL                             R11 1 0
      102 FORGLOOP                         R6 2 ; [-37]
      104 GETUPVAL                         R9 3
      105 GETTABLEKS                       R8 R9 K18 ["getParameterInstanceName"]
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+77]
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
       27 JUMPIFNOT                        R4 ; [+45]
       28 JUMPIFNOT                        R3 ; [+10]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R5 R6 K7 ["removeOrderedInputPin"]
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
       79 GETUPVAL                         R7 2
       80 GETTABLEKS                       R6 R7 K20 ["setNodeDestroyConnectionMap"]
       82 MOVE                             R7 R5
       83 CALL                             R6 1 0
       84 RETURN                           R0 0

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
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R5 R6 K12 ["setNodeDestroyConnectionMap"]
       61 MOVE                             R6 R3
       62 CALL                             R5 1 0
       63 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 1
       10 RETURN                           R0 1

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
      266 CAPTURE                          UPVAL U13
      267 NEWTABLE                         R34 0 2
      269 MOVE                             R35 R25
      270 MOVE                             R36 R31
      271 SETLIST                          R34 R35 2 [1]
      273 CALL                             R32 2 0
      274 GETUPVAL                         R32 1
      275 GETTABLEKS                       R31 R32 K13 ["useCallback"]
      277 NEWCLOSURE                       R32 P13
      278 CAPTURE                          VAL R11
      279 CAPTURE                          VAL R13
      280 CAPTURE                          UPVAL U10
      281 CAPTURE                          UPVAL U7
      282 CAPTURE                          VAL R10
      283 CAPTURE                          UPVAL U14
      284 CAPTURE                          VAL R4
      285 NEWTABLE                         R33 0 4
      287 GETTABLEKS                       R34 R4 K14 ["selectionService"]
      289 MOVE                             R35 R11
      290 MOVE                             R36 R13
      291 MOVE                             R37 R10
      292 SETLIST                          R33 R34 4 [1]
      294 CALL                             R31 2 1
      295 GETUPVAL                         R33 1
      296 GETTABLEKS                       R32 R33 K13 ["useCallback"]
      298 NEWCLOSURE                       R33 P14
      299 CAPTURE                          VAL R11
      300 CAPTURE                          UPVAL U7
      301 CAPTURE                          VAL R4
      302 NEWTABLE                         R34 0 2
      304 MOVE                             R35 R11
      305 GETTABLEKS                       R36 R4 K14 ["selectionService"]
      307 SETLIST                          R34 R35 2 [1]
      309 CALL                             R32 2 1
      310 GETUPVAL                         R34 1
      311 GETTABLEKS                       R33 R34 K13 ["useCallback"]
      313 NEWCLOSURE                       R34 P15
      314 CAPTURE                          VAL R11
      315 CAPTURE                          VAL R13
      316 CAPTURE                          UPVAL U10
      317 CAPTURE                          UPVAL U7
      318 CAPTURE                          VAL R10
      319 CAPTURE                          UPVAL U15
      320 CAPTURE                          VAL R4
      321 NEWTABLE                         R35 0 4
      323 GETTABLEKS                       R36 R4 K14 ["selectionService"]
      325 MOVE                             R37 R11
      326 MOVE                             R38 R10
      327 MOVE                             R39 R13
      328 SETLIST                          R35 R36 4 [1]
      330 CALL                             R33 2 1
      331 GETUPVAL                         R35 1
      332 GETTABLEKS                       R34 R35 K13 ["useCallback"]
      334 NEWCLOSURE                       R35 P16
      335 CAPTURE                          VAL R11
      336 CAPTURE                          VAL R13
      337 CAPTURE                          UPVAL U7
      338 CAPTURE                          UPVAL U15
      339 CAPTURE                          UPVAL U10
      340 CAPTURE                          VAL R10
      341 CAPTURE                          VAL R33
      342 CAPTURE                          VAL R4
      343 NEWTABLE                         R36 0 5
      345 GETTABLEKS                       R37 R4 K14 ["selectionService"]
      347 MOVE                             R38 R11
      348 MOVE                             R39 R10
      349 MOVE                             R40 R13
      350 MOVE                             R41 R33
      351 SETLIST                          R36 R37 5 [1]
      353 CALL                             R34 2 1
      354 GETUPVAL                         R36 1
      355 GETTABLEKS                       R35 R36 K13 ["useCallback"]
      357 NEWCLOSURE                       R36 P17
      358 CAPTURE                          VAL R13
      359 CAPTURE                          UPVAL U10
      360 CAPTURE                          UPVAL U7
      361 CAPTURE                          VAL R10
      362 NEWTABLE                         R37 0 2
      364 MOVE                             R38 R10
      365 MOVE                             R39 R13
      366 SETLIST                          R37 R38 2 [1]
      368 CALL                             R35 2 1
      369 GETUPVAL                         R36 16
      370 MOVE                             R37 R10
      371 MOVE                             R38 R11
      372 CALL                             R36 2 1
      373 GETUPVAL                         R37 17
      374 MOVE                             R38 R10
      375 MOVE                             R39 R11
      376 CALL                             R37 2 1
      377 GETUPVAL                         R39 1
      378 GETTABLEKS                       R38 R39 K13 ["useCallback"]
      380 NEWCLOSURE                       R39 P18
      381 CAPTURE                          VAL R13
      382 CAPTURE                          UPVAL U10
      383 CAPTURE                          UPVAL U7
      384 CAPTURE                          VAL R10
      385 NEWTABLE                         R40 0 2
      387 MOVE                             R41 R10
      388 MOVE                             R42 R13
      389 SETLIST                          R40 R41 2 [1]
      391 CALL                             R38 2 1
      392 GETUPVAL                         R40 1
      393 GETTABLEKS                       R39 R40 K13 ["useCallback"]
      395 NEWCLOSURE                       R40 P19
      396 CAPTURE                          VAL R13
      397 CAPTURE                          UPVAL U10
      398 CAPTURE                          UPVAL U7
      399 CAPTURE                          VAL R10
      400 CAPTURE                          VAL R36
      401 NEWTABLE                         R41 0 3
      403 MOVE                             R42 R10
      404 MOVE                             R43 R13
      405 GETTABLEKS                       R44 R36 K18 ["setNodeOutputInfoInDestroyMapRef"]
      407 SETLIST                          R41 R42 3 [1]
      409 CALL                             R39 2 1
      410 GETUPVAL                         R41 1
      411 GETTABLEKS                       R40 R41 K13 ["useCallback"]
      413 NEWCLOSURE                       R41 P20
      414 CAPTURE                          VAL R11
      415 CAPTURE                          UPVAL U10
      416 CAPTURE                          VAL R10
      417 CAPTURE                          UPVAL U7
      418 CAPTURE                          VAL R33
      419 CAPTURE                          VAL R34
      420 CAPTURE                          VAL R39
      421 NEWTABLE                         R42 0 7
      423 GETTABLEKS                       R43 R4 K14 ["selectionService"]
      425 MOVE                             R44 R11
      426 MOVE                             R45 R13
      427 MOVE                             R46 R10
      428 MOVE                             R47 R33
      429 MOVE                             R48 R34
      430 MOVE                             R49 R39
      431 SETLIST                          R42 R43 7 [1]
      433 CALL                             R40 2 1
      434 GETUPVAL                         R42 1
      435 GETTABLEKS                       R41 R42 K13 ["useCallback"]
      437 NEWCLOSURE                       R42 P21
      438 CAPTURE                          VAL R7
      439 CAPTURE                          UPVAL U10
      440 NEWTABLE                         R43 0 0
      442 CALL                             R41 2 1
      443 GETUPVAL                         R43 1
      444 GETTABLEKS                       R42 R43 K13 ["useCallback"]
      446 NEWCLOSURE                       R43 P22
      447 CAPTURE                          VAL R7
      448 CAPTURE                          UPVAL U10
      449 NEWTABLE                         R44 0 0
      451 CALL                             R42 2 1
      452 GETUPVAL                         R44 1
      453 GETTABLEKS                       R43 R44 K8 ["useEffect"]
      455 NEWCLOSURE                       R44 P23
      456 CAPTURE                          VAL R7
      457 CAPTURE                          UPVAL U10
      458 NEWTABLE                         R45 0 0
      460 CALL                             R43 2 0
      461 GETUPVAL                         R44 1
      462 GETTABLEKS                       R43 R44 K13 ["useCallback"]
      464 NEWCLOSURE                       R44 P24
      465 CAPTURE                          UPVAL U10
      466 CAPTURE                          VAL R10
      467 CAPTURE                          UPVAL U12
      468 NEWTABLE                         R45 0 1
      470 MOVE                             R46 R10
      471 SETLIST                          R45 R46 1 [1]
      473 CALL                             R43 2 1
      474 GETUPVAL                         R45 1
      475 GETTABLEKS                       R44 R45 K13 ["useCallback"]
      477 NEWCLOSURE                       R45 P25
      478 CAPTURE                          UPVAL U10
      479 CAPTURE                          VAL R10
      480 NEWTABLE                         R46 0 1
      482 MOVE                             R47 R10
      483 SETLIST                          R46 R47 1 [1]
      485 CALL                             R44 2 1
      486 GETUPVAL                         R46 1
      487 GETTABLEKS                       R45 R46 K13 ["useCallback"]
      489 NEWCLOSURE                       R46 P26
      490 CAPTURE                          UPVAL U10
      491 CAPTURE                          VAL R10
      492 CAPTURE                          UPVAL U15
      493 CAPTURE                          VAL R1
      494 CAPTURE                          VAL R13
      495 CAPTURE                          UPVAL U7
      496 NEWTABLE                         R47 0 3
      498 MOVE                             R48 R10
      499 MOVE                             R49 R13
      500 GETTABLEKS                       R50 R1 K19 ["observe"]
      502 SETLIST                          R47 R48 3 [1]
      504 CALL                             R45 2 1
      505 GETUPVAL                         R47 1
      506 GETTABLEKS                       R46 R47 K13 ["useCallback"]
      508 NEWCLOSURE                       R47 P27
      509 CAPTURE                          UPVAL U10
      510 CAPTURE                          UPVAL U7
      511 CAPTURE                          VAL R10
      512 NEWTABLE                         R48 0 1
      514 MOVE                             R49 R10
      515 SETLIST                          R48 R49 1 [1]
      517 CALL                             R46 2 1
      518 GETUPVAL                         R48 1
      519 GETTABLEKS                       R47 R48 K13 ["useCallback"]
      521 NEWCLOSURE                       R48 P28
      522 CAPTURE                          VAL R11
      523 CAPTURE                          VAL R13
      524 CAPTURE                          VAL R10
      525 CAPTURE                          UPVAL U7
      526 CAPTURE                          UPVAL U10
      527 CAPTURE                          UPVAL U13
      528 NEWTABLE                         R49 0 3
      530 MOVE                             R50 R11
      531 MOVE                             R51 R10
      532 MOVE                             R52 R13
      533 SETLIST                          R49 R50 3 [1]
      535 CALL                             R47 2 1
      536 GETUPVAL                         R49 1
      537 GETTABLEKS                       R48 R49 K13 ["useCallback"]
      539 NEWCLOSURE                       R49 P29
      540 CAPTURE                          VAL R11
      541 CAPTURE                          VAL R10
      542 CAPTURE                          UPVAL U7
      543 CAPTURE                          UPVAL U10
      544 CAPTURE                          VAL R37
      545 CAPTURE                          UPVAL U15
      546 NEWTABLE                         R50 0 4
      548 MOVE                             R51 R10
      549 MOVE                             R52 R11
      550 MOVE                             R53 R13
      551 GETTABLEKS                       R54 R37 K20 ["parameterDestroyConnectionMapRef"]
      553 SETLIST                          R50 R51 4 [1]
      555 CALL                             R48 2 1
      556 GETUPVAL                         R50 1
      557 GETTABLEKS                       R49 R50 K13 ["useCallback"]
      559 NEWCLOSURE                       R50 P30
      560 CAPTURE                          VAL R11
      561 CAPTURE                          UPVAL U7
      562 CAPTURE                          UPVAL U10
      563 CAPTURE                          UPVAL U15
      564 NEWTABLE                         R51 0 1
      566 MOVE                             R52 R11
      567 SETLIST                          R51 R52 1 [1]
      569 CALL                             R49 2 1
      570 GETUPVAL                         R51 1
      571 GETTABLEKS                       R50 R51 K13 ["useCallback"]
      573 NEWCLOSURE                       R51 P31
      574 CAPTURE                          VAL R10
      575 CAPTURE                          UPVAL U10
      576 CAPTURE                          UPVAL U13
      577 NEWTABLE                         R52 0 1
      579 MOVE                             R53 R10
      580 SETLIST                          R52 R53 1 [1]
      582 CALL                             R50 2 1
      583 GETUPVAL                         R52 1
      584 GETTABLEKS                       R51 R52 K8 ["useEffect"]
      586 NEWCLOSURE                       R52 P32
      587 CAPTURE                          UPVAL U9
      588 CAPTURE                          VAL R36
      589 CAPTURE                          VAL R10
      590 CAPTURE                          VAL R19
      591 CAPTURE                          UPVAL U7
      592 CAPTURE                          UPVAL U13
      593 NEWTABLE                         R53 0 2
      595 MOVE                             R54 R10
      596 GETTABLEKS                       R55 R36 K21 ["nodeDestroyConnectionMapRef"]
      598 SETLIST                          R53 R54 2 [1]
      600 CALL                             R51 2 0
      601 GETUPVAL                         R52 1
      602 GETTABLEKS                       R51 R52 K8 ["useEffect"]
      604 NEWCLOSURE                       R52 P33
      605 CAPTURE                          UPVAL U9
      606 CAPTURE                          VAL R37
      607 CAPTURE                          VAL R10
      608 CAPTURE                          VAL R47
      609 CAPTURE                          UPVAL U15
      610 NEWTABLE                         R53 0 3
      612 MOVE                             R54 R10
      613 GETTABLEKS                       R55 R37 K20 ["parameterDestroyConnectionMapRef"]
      615 MOVE                             R56 R47
      616 SETLIST                          R53 R54 3 [1]
      618 CALL                             R51 2 0
      619 GETUPVAL                         R51 18
      620 MOVE                             R52 R2
      621 MOVE                             R53 R1
      622 CALL                             R51 2 1
      623 NEWTABLE                         R52 64 0
      625 JUMPIFNOT                        R13 ; [+3]
      626 GETTABLEKS                       R53 R13 K22 ["graphInstanceId"]
      628 JUMP                             ; [+1]
      629 LOADNIL                          R53
      630 SETTABLEKS                       R53 R52 K23 ["selectedGraphInstanceId"]
      632 SETTABLEKS                       R46 R52 K24 ["reorderPinsAsync"]
      634 SETTABLEKS                       R31 R52 K25 ["createNodeAsync"]
      636 SETTABLEKS                       R33 R52 K26 ["createParameterAsync"]
      638 SETTABLEKS                       R34 R52 K27 ["createExistingParameterAsync"]
      640 SETTABLEKS                       R40 R52 K28 ["createConnectedParameterAsync"]
      642 SETTABLEKS                       R5 R52 K29 ["graphRect"]
      644 SETTABLEKS                       R32 R52 K30 ["selectAllParameterNodesWithNameAsync"]
      646 SETTABLEKS                       R23 R52 K31 ["selectNodesAsync"]
      648 SETTABLEKS                       R24 R52 K32 ["selectNodesFromRectAsync"]
      650 SETTABLEKS                       R21 R52 K33 ["setNodePositionsAsync"]
      652 SETTABLEKS                       R22 R52 K34 ["setNodeSizeAsync"]
      654 SETTABLEKS                       R39 R52 K35 ["setNodeConnectionAsync"]
      656 SETTABLEKS                       R38 R52 K36 ["removeNodeOutputConnectionAsync"]
      658 SETTABLEKS                       R35 R52 K37 ["removeNodeInputConnectionAsync"]
      660 SETTABLEKS                       R47 R52 K38 ["removeParameterAsync"]
      662 SETTABLEKS                       R45 R52 K39 ["renameNodeAsync"]
      664 SETTABLEKS                       R48 R52 K40 ["renameParameterAsync"]
      666 SETTABLEKS                       R50 R52 K41 ["deleteNodeInstanceAsync"]
      668 SETTABLEKS                       R20 R52 K42 ["setCollapsedAsync"]
      670 SETTABLEKS                       R43 R52 K43 ["setNodePropertyAsync"]
      672 SETTABLEKS                       R44 R52 K44 ["setInputPinNodePropertyAsync"]
      674 SETTABLEKS                       R49 R52 K45 ["setParameterNodeTypeAsync"]
      676 SETTABLEKS                       R25 R52 K46 ["currentAnimationId"]
      678 SETTABLEKS                       R27 R52 K47 ["sourceAssetId"]
      680 SETTABLEKS                       R30 R52 K48 ["selectedGraphKey"]
      682 GETTABLEKS                       R53 R51 K49 ["getSelectedRect"]
      684 SETTABLEKS                       R53 R52 K49 ["getSelectedRect"]
      686 SETTABLEKS                       R11 R52 K50 ["observeSelectedGraphInstance"]
      688 GETTABLEKS                       R53 R1 K19 ["observe"]
      690 SETTABLEKS                       R53 R52 K51 ["observeGraphNodeById"]
      692 GETTABLEKS                       R53 R2 K19 ["observe"]
      694 SETTABLEKS                       R53 R52 K52 ["observeNodeRenderInfoById"]
      696 SETTABLEKS                       R41 R52 K53 ["beginUndoTransaction"]
      698 SETTABLEKS                       R42 R52 K54 ["finishUndoTransaction"]
      700 SETTABLEKS                       R7 R52 K55 ["undoTransaction"]
      702 GETTABLEKS                       R53 R1 K56 ["observeMap"]
      704 SETTABLEKS                       R53 R52 K57 ["observeGraphNodeMap"]
      706 GETTABLEKS                       R53 R2 K56 ["observeMap"]
      708 SETTABLEKS                       R53 R52 K58 ["observeRenderInfoMap"]
      710 GETTABLEKS                       R53 R51 K59 ["hasGraphOutput"]
      712 SETTABLEKS                       R53 R52 K59 ["hasGraphOutput"]
      714 GETTABLEKS                       R53 R3 K19 ["observe"]
      716 SETTABLEKS                       R53 R52 K60 ["observeNodePropsById"]
      718 GETUPVAL                         R54 1
      719 GETTABLEKS                       R53 R54 K7 ["useMemo"]
      721 DUPCLOSURE                       R54 K61 [PROTO_47]
      722 NEWTABLE                         R55 0 0
      724 CALL                             R53 2 1
      725 GETUPVAL                         R55 1
      726 GETTABLEKS                       R54 R55 K7 ["useMemo"]
      728 NEWCLOSURE                       R55 P35
      729 CAPTURE                          UPVAL U19
      730 CAPTURE                          VAL R11
      731 NEWTABLE                         R56 0 2
      733 MOVE                             R57 R11
      734 MOVE                             R58 R13
      735 SETLIST                          R56 R57 2 [1]
      737 CALL                             R54 2 1
      738 GETUPVAL                         R56 20
      739 GETTABLEKS                       R55 R56 K62 ["usePasteHooks"]
      741 MOVE                             R56 R11
      742 CALL                             R55 1 0
      743 GETUPVAL                         R56 11
      744 GETTABLEKS                       R55 R56 K17 ["useSignalState"]
      746 MOVE                             R56 R54
      747 CALL                             R55 1 1
      748 GETUPVAL                         R57 21
      749 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      751 GETUPVAL                         R58 22
      752 GETTABLEKS                       R57 R58 K64 ["GRAPH_PAYLOAD_MAP"]
      754 MOVE                             R58 R13
      755 CALL                             R56 2 0
      756 GETUPVAL                         R57 21
      757 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      759 GETUPVAL                         R58 22
      760 GETTABLEKS                       R57 R58 K65 ["GRAPH_RENDER_INFO"]
      762 MOVE                             R58 R15
      763 CALL                             R56 2 0
      764 GETUPVAL                         R57 21
      765 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      767 GETUPVAL                         R58 22
      768 GETTABLEKS                       R57 R58 K66 ["GRAPH_NODE_PROPS"]
      770 MOVE                             R58 R17
      771 CALL                             R56 2 0
      772 GETUPVAL                         R57 21
      773 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      775 GETUPVAL                         R58 22
      776 GETTABLEKS                       R57 R58 K67 ["TIME_RANGE"]
      778 MOVE                             R58 R53
      779 CALL                             R56 2 0
      780 GETUPVAL                         R57 21
      781 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      783 GETUPVAL                         R58 22
      784 GETTABLEKS                       R57 R58 K68 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      786 MOVE                             R58 R5
      787 CALL                             R56 2 0
      788 GETUPVAL                         R57 21
      789 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      791 GETUPVAL                         R58 22
      792 GETTABLEKS                       R57 R58 K69 ["CURRENT_ANIMATION_ID"]
      794 MOVE                             R58 R25
      795 CALL                             R56 2 0
      796 GETUPVAL                         R57 21
      797 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      799 GETUPVAL                         R58 22
      800 GETTABLEKS                       R57 R58 K70 ["SOURCE_ASSET_ID"]
      802 MOVE                             R58 R27
      803 CALL                             R56 2 0
      804 GETUPVAL                         R57 21
      805 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      807 GETUPVAL                         R58 22
      808 GETTABLEKS                       R57 R58 K71 ["SELECTED_GRAPH_KEY"]
      810 MOVE                             R58 R30
      811 CALL                             R56 2 0
      812 GETUPVAL                         R57 21
      813 GETTABLEKS                       R56 R57 K63 ["useReplicatedState"]
      815 GETUPVAL                         R58 22
      816 GETTABLEKS                       R57 R58 K72 ["UNDO_TRANSACTION"]
      818 MOVE                             R58 R7
      819 CALL                             R56 2 0
      820 GETUPVAL                         R57 21
      821 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      823 GETUPVAL                         R58 23
      824 GETTABLEKS                       R57 R58 K74 ["CREATE_NODE"]
      826 MOVE                             R58 R31
      827 CALL                             R56 2 0
      828 GETUPVAL                         R57 21
      829 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      831 GETUPVAL                         R58 23
      832 GETTABLEKS                       R57 R58 K75 ["CREATE_PARAMETER"]
      834 MOVE                             R58 R33
      835 CALL                             R56 2 0
      836 GETUPVAL                         R57 21
      837 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      839 GETUPVAL                         R58 23
      840 GETTABLEKS                       R57 R58 K76 ["CREATE_CONNECTED_PARAMETER"]
      842 MOVE                             R58 R40
      843 CALL                             R56 2 0
      844 GETUPVAL                         R57 21
      845 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      847 GETUPVAL                         R58 23
      848 GETTABLEKS                       R57 R58 K77 ["CREATE_EXISTING_PARAMETER"]
      850 MOVE                             R58 R34
      851 CALL                             R56 2 0
      852 GETUPVAL                         R57 21
      853 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      855 GETUPVAL                         R58 23
      856 GETTABLEKS                       R57 R58 K78 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      858 MOVE                             R58 R32
      859 CALL                             R56 2 0
      860 GETUPVAL                         R57 21
      861 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      863 GETUPVAL                         R58 23
      864 GETTABLEKS                       R57 R58 K79 ["SELECT_NODES"]
      866 MOVE                             R58 R23
      867 CALL                             R56 2 0
      868 GETUPVAL                         R57 21
      869 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      871 GETUPVAL                         R58 23
      872 GETTABLEKS                       R57 R58 K80 ["SELECT_NODES_FROM_RECT"]
      874 MOVE                             R58 R24
      875 CALL                             R56 2 0
      876 GETUPVAL                         R57 21
      877 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      879 GETUPVAL                         R58 23
      880 GETTABLEKS                       R57 R58 K81 ["SET_NODE_POSITIONS"]
      882 MOVE                             R58 R21
      883 CALL                             R56 2 0
      884 GETUPVAL                         R57 21
      885 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      887 GETUPVAL                         R58 23
      888 GETTABLEKS                       R57 R58 K82 ["SET_NODE_SIZE"]
      890 MOVE                             R58 R22
      891 CALL                             R56 2 0
      892 GETUPVAL                         R57 21
      893 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      895 GETUPVAL                         R58 23
      896 GETTABLEKS                       R57 R58 K83 ["SET_NODE_CONNECTION"]
      898 MOVE                             R58 R39
      899 CALL                             R56 2 0
      900 GETUPVAL                         R57 21
      901 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      903 GETUPVAL                         R58 23
      904 GETTABLEKS                       R57 R58 K84 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      906 MOVE                             R58 R38
      907 CALL                             R56 2 0
      908 GETUPVAL                         R57 21
      909 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      911 GETUPVAL                         R58 23
      912 GETTABLEKS                       R57 R58 K85 ["REMOVE_NODE_INPUT_CONNECTION"]
      914 MOVE                             R58 R35
      915 CALL                             R56 2 0
      916 GETUPVAL                         R57 21
      917 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      919 GETUPVAL                         R58 23
      920 GETTABLEKS                       R57 R58 K86 ["REMOVE_PARAMETER"]
      922 MOVE                             R58 R47
      923 CALL                             R56 2 0
      924 GETUPVAL                         R57 21
      925 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      927 GETUPVAL                         R58 23
      928 GETTABLEKS                       R57 R58 K87 ["RENAME_NODE"]
      930 MOVE                             R58 R45
      931 CALL                             R56 2 0
      932 GETUPVAL                         R57 21
      933 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      935 GETUPVAL                         R58 23
      936 GETTABLEKS                       R57 R58 K88 ["RENAME_PARAMETER"]
      938 MOVE                             R58 R48
      939 CALL                             R56 2 0
      940 GETUPVAL                         R57 21
      941 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      943 GETUPVAL                         R58 23
      944 GETTABLEKS                       R57 R58 K89 ["DELETE_NODE_INSTANCE"]
      946 MOVE                             R58 R50
      947 CALL                             R56 2 0
      948 GETUPVAL                         R57 21
      949 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      951 GETUPVAL                         R58 23
      952 GETTABLEKS                       R57 R58 K90 ["SET_COLLAPSED"]
      954 MOVE                             R58 R20
      955 CALL                             R56 2 0
      956 GETUPVAL                         R57 21
      957 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      959 GETUPVAL                         R58 23
      960 GETTABLEKS                       R57 R58 K91 ["SET_NODE_PROPERTY"]
      962 MOVE                             R58 R43
      963 CALL                             R56 2 0
      964 GETUPVAL                         R57 21
      965 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      967 GETUPVAL                         R58 23
      968 GETTABLEKS                       R57 R58 K92 ["SET_INPUT_PIN_NODE_PROPERTY"]
      970 MOVE                             R58 R44
      971 CALL                             R56 2 0
      972 GETUPVAL                         R57 21
      973 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      975 GETUPVAL                         R58 23
      976 GETTABLEKS                       R57 R58 K93 ["SET_PARAMETER_NODE_TYPE"]
      978 MOVE                             R58 R49
      979 CALL                             R56 2 0
      980 GETUPVAL                         R57 21
      981 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      983 GETUPVAL                         R58 23
      984 GETTABLEKS                       R57 R58 K94 ["REORDER_PINS"]
      986 MOVE                             R58 R46
      987 CALL                             R56 2 0
      988 GETUPVAL                         R57 21
      989 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      991 GETUPVAL                         R58 23
      992 GETTABLEKS                       R57 R58 K95 ["BEGIN_UNDO_TRANSACTION"]
      994 MOVE                             R58 R41
      995 CALL                             R56 2 0
      996 GETUPVAL                         R57 21
      997 GETTABLEKS                       R56 R57 K73 ["useBoundAction"]
      999 GETUPVAL                         R58 23
     1000 GETTABLEKS                       R57 R58 K96 ["FINISH_UNDO_TRANSACTION"]
     1002 MOVE                             R58 R42
     1003 CALL                             R56 2 0
     1004 GETUPVAL                         R57 1
     1005 GETTABLEKS                       R56 R57 K97 ["createElement"]
     1007 GETUPVAL                         R58 24
     1008 GETTABLEKS                       R57 R58 K98 ["Provider"]
     1010 DUPTABLE                         R58 K100 [{"value"}]
     1011 SETTABLEKS                       R52 R58 K99 ["value"]
     1013 DUPTABLE                         R59 K102 [{"ContextStack"}]
     1014 GETUPVAL                         R61 1
     1015 GETTABLEKS                       R60 R61 K97 ["createElement"]
     1017 GETUPVAL                         R62 8
     1018 GETTABLEKS                       R61 R62 K101 ["ContextStack"]
     1020 DUPTABLE                         R62 K104 [{"providers"}]
     1021 NEWTABLE                         R63 0 2
     1023 GETUPVAL                         R65 1
     1024 GETTABLEKS                       R64 R65 K97 ["createElement"]
     1026 GETUPVAL                         R66 25
     1027 GETTABLEKS                       R65 R66 K98 ["Provider"]
     1029 DUPTABLE                         R66 K106 [{"timeRange"}]
     1030 SETTABLEKS                       R53 R66 K105 ["timeRange"]
     1032 CALL                             R64 2 1
     1033 GETUPVAL                         R66 1
     1034 GETTABLEKS                       R65 R66 K97 ["createElement"]
     1036 GETUPVAL                         R67 26
     1037 GETTABLEKS                       R66 R67 K98 ["Provider"]
     1039 DUPTABLE                         R67 K108 [{"animationClipsList"}]
     1040 SETTABLEKS                       R55 R67 K107 ["animationClipsList"]
     1042 CALL                             R65 2 -1
     1043 SETLIST                          R63 R64 -1 [1]
     1045 SETTABLEKS                       R63 R62 K103 ["providers"]
     1047 GETTABLEKS                       R63 R0 K109 ["children"]
     1049 CALL                             R60 3 1
     1050 SETTABLEKS                       R60 R59 K101 ["ContextStack"]
     1052 CALL                             R56 3 -1
     1053 RETURN                           R56 -1

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
      148 GETTABLEKS                       R22 R0 K35 ["Flags"]
      150 GETTABLEKS                       R21 R22 K36 ["getFFlagAnimGraphUseRemove"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K10 [require]
      155 GETIMPORT                        R23 K1 [script]
      157 GETTABLEKS                       R22 R23 K37 ["useGraphAnalytics"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K10 [require]
      162 GETTABLEKS                       R24 R0 K38 ["Hooks"]
      164 GETTABLEKS                       R23 R24 K39 ["useNodeDefinitionDestroyHelper"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K10 [require]
      169 GETTABLEKS                       R25 R0 K38 ["Hooks"]
      171 GETTABLEKS                       R24 R25 K40 ["useObserveSelection"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K10 [require]
      176 GETTABLEKS                       R26 R0 K38 ["Hooks"]
      178 GETTABLEKS                       R25 R26 K41 ["useParameterDestroyHelper"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K10 [require]
      183 GETTABLEKS                       R27 R0 K38 ["Hooks"]
      185 GETTABLEKS                       R26 R27 K42 ["useSignalDispatcher"]
      187 CALL                             R25 1 1
      188 NEWTABLE                         R26 64 0
      190 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      192 LOADK                            R28 K44 ["observeGraphNodeMap"]
      193 CALL                             R27 1 1
      194 SETTABLEKS                       R27 R26 K44 ["observeGraphNodeMap"]
      196 GETIMPORT                        R27 K47 [Rect.new]
      198 LOADN                            R28 0
      199 LOADN                            R29 0
      200 LOADN                            R30 0
      201 LOADN                            R31 0
      202 CALL                             R27 4 1
      203 SETTABLEKS                       R27 R26 K48 ["graphRect"]
      205 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      207 LOADK                            R28 K49 ["reorderPinsAsync"]
      208 CALL                             R27 1 1
      209 SETTABLEKS                       R27 R26 K49 ["reorderPinsAsync"]
      211 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      213 LOADK                            R28 K50 ["createNodeAsync"]
      214 CALL                             R27 1 1
      215 SETTABLEKS                       R27 R26 K50 ["createNodeAsync"]
      217 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      219 LOADK                            R28 K51 ["createParameterAsync"]
      220 CALL                             R27 1 1
      221 SETTABLEKS                       R27 R26 K51 ["createParameterAsync"]
      223 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      225 LOADK                            R28 K52 ["createConnectedParameterAsync"]
      226 CALL                             R27 1 1
      227 SETTABLEKS                       R27 R26 K52 ["createConnectedParameterAsync"]
      229 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      231 LOADK                            R28 K53 ["createExistingParameterAsync"]
      232 CALL                             R27 1 1
      233 SETTABLEKS                       R27 R26 K53 ["createExistingParameterAsync"]
      235 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      237 LOADK                            R28 K54 ["selectAllParameterNodesWithNameAsync"]
      238 CALL                             R27 1 1
      239 SETTABLEKS                       R27 R26 K54 ["selectAllParameterNodesWithNameAsync"]
      241 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      243 LOADK                            R28 K55 ["selectNodesAsync"]
      244 CALL                             R27 1 1
      245 SETTABLEKS                       R27 R26 K55 ["selectNodesAsync"]
      247 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      249 LOADK                            R28 K56 ["selectNodesFromRectAsync"]
      250 CALL                             R27 1 1
      251 SETTABLEKS                       R27 R26 K56 ["selectNodesFromRectAsync"]
      253 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      255 LOADK                            R28 K57 ["setNodePositionsAsync"]
      256 CALL                             R27 1 1
      257 SETTABLEKS                       R27 R26 K57 ["setNodePositionsAsync"]
      259 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      261 LOADK                            R28 K58 ["setNodeSizeAsync"]
      262 CALL                             R27 1 1
      263 SETTABLEKS                       R27 R26 K58 ["setNodeSizeAsync"]
      265 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      267 LOADK                            R28 K59 ["removeNodeInputConnectionAsync"]
      268 CALL                             R27 1 1
      269 SETTABLEKS                       R27 R26 K59 ["removeNodeInputConnectionAsync"]
      271 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      273 LOADK                            R28 K60 ["removeNodeOutputConnectionAsync"]
      274 CALL                             R27 1 1
      275 SETTABLEKS                       R27 R26 K60 ["removeNodeOutputConnectionAsync"]
      277 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      279 LOADK                            R28 K61 ["removeParameterAsync"]
      280 CALL                             R27 1 1
      281 SETTABLEKS                       R27 R26 K61 ["removeParameterAsync"]
      283 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      285 LOADK                            R28 K62 ["renameNodeAsync"]
      286 CALL                             R27 1 1
      287 SETTABLEKS                       R27 R26 K62 ["renameNodeAsync"]
      289 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      291 LOADK                            R28 K63 ["renameParameterAsync"]
      292 CALL                             R27 1 1
      293 SETTABLEKS                       R27 R26 K63 ["renameParameterAsync"]
      295 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      297 LOADK                            R28 K64 ["deleteNodeInstanceAsync"]
      298 CALL                             R27 1 1
      299 SETTABLEKS                       R27 R26 K64 ["deleteNodeInstanceAsync"]
      301 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      303 LOADK                            R28 K65 ["setNewConnection"]
      304 CALL                             R27 1 1
      305 SETTABLEKS                       R27 R26 K66 ["setNodeConnectionAsync"]
      307 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      309 LOADK                            R28 K67 ["setCollapsedAsync"]
      310 CALL                             R27 1 1
      311 SETTABLEKS                       R27 R26 K67 ["setCollapsedAsync"]
      313 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      315 LOADK                            R28 K68 ["setNodePropertyAsync"]
      316 CALL                             R27 1 1
      317 SETTABLEKS                       R27 R26 K68 ["setNodePropertyAsync"]
      319 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      321 LOADK                            R28 K69 ["setInputPinNodePropertyAsync"]
      322 CALL                             R27 1 1
      323 SETTABLEKS                       R27 R26 K69 ["setInputPinNodePropertyAsync"]
      325 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      327 LOADK                            R28 K70 ["setParameterNodeTypeAsync"]
      328 CALL                             R27 1 1
      329 SETTABLEKS                       R27 R26 K70 ["setParameterNodeTypeAsync"]
      331 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      333 LOADK                            R28 K71 ["getSelectedRect"]
      334 CALL                             R27 1 1
      335 SETTABLEKS                       R27 R26 K71 ["getSelectedRect"]
      337 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      339 LOADK                            R28 K72 ["hasGraphOutput"]
      340 CALL                             R27 1 1
      341 SETTABLEKS                       R27 R26 K72 ["hasGraphOutput"]
      343 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      345 LOADK                            R28 K73 ["observeGraphNodeById"]
      346 CALL                             R27 1 1
      347 SETTABLEKS                       R27 R26 K73 ["observeGraphNodeById"]
      349 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      351 LOADK                            R28 K74 ["observeNodeRenderInfoById"]
      352 CALL                             R27 1 1
      353 SETTABLEKS                       R27 R26 K74 ["observeNodeRenderInfoById"]
      355 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      357 LOADK                            R28 K75 ["observeRenderInfoMap"]
      358 CALL                             R27 1 1
      359 SETTABLEKS                       R27 R26 K75 ["observeRenderInfoMap"]
      361 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      363 LOADK                            R28 K76 ["observeNodePropsById"]
      364 CALL                             R27 1 1
      365 SETTABLEKS                       R27 R26 K76 ["observeNodePropsById"]
      367 GETTABLEKS                       R27 R17 K77 ["createSignal"]
      369 LOADNIL                          R28
      370 CALL                             R27 1 1
      371 SETTABLEKS                       R27 R26 K78 ["observeSelectedGraphInstance"]
      373 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      375 LOADK                            R28 K79 ["beginUndoTransaction"]
      376 CALL                             R27 1 1
      377 SETTABLEKS                       R27 R26 K79 ["beginUndoTransaction"]
      379 GETTABLEKS                       R27 R13 K43 ["createUnimplemented"]
      381 LOADK                            R28 K80 ["finishUndoTransaction"]
      382 CALL                             R27 1 1
      383 SETTABLEKS                       R27 R26 K80 ["finishUndoTransaction"]
      385 LOADNIL                          R27
      386 SETTABLEKS                       R27 R26 K81 ["currentAnimationId"]
      388 LOADNIL                          R27
      389 SETTABLEKS                       R27 R26 K82 ["sourceAssetId"]
      391 LOADNIL                          R27
      392 SETTABLEKS                       R27 R26 K83 ["selectedGraphKey"]
      394 GETTABLEKS                       R27 R12 K84 ["createContext"]
      396 MOVE                             R28 R26
      397 CALL                             R27 1 1
      398 DUPTABLE                         R28 K94 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "GRAPH_NODE_PROPS", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "SELECTED_GRAPH_KEY", "UNDO_TRANSACTION"}]
      399 LOADK                            R29 K95 ["NativeGraphContext_GraphPayloadMap"]
      400 SETTABLEKS                       R29 R28 K85 ["GRAPH_PAYLOAD_MAP"]
      402 LOADK                            R29 K96 ["NativeGraphContext_GraphRenderInfo"]
      403 SETTABLEKS                       R29 R28 K86 ["GRAPH_RENDER_INFO"]
      405 LOADK                            R29 K97 ["NativeGraphContext_GraphNodeProps"]
      406 SETTABLEKS                       R29 R28 K87 ["GRAPH_NODE_PROPS"]
      408 LOADK                            R29 K98 ["NativeGraphContext_TimeRange"]
      409 SETTABLEKS                       R29 R28 K88 ["TIME_RANGE"]
      411 LOADK                            R29 K99 ["NativeGraphContext_GraphPayloadGraphRect"]
      412 SETTABLEKS                       R29 R28 K89 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      414 LOADK                            R29 K100 ["NativeGraphContext_CurrentAnimationId"]
      415 SETTABLEKS                       R29 R28 K90 ["CURRENT_ANIMATION_ID"]
      417 LOADK                            R29 K101 ["NativeGraphContext_SourceAssetId"]
      418 SETTABLEKS                       R29 R28 K91 ["SOURCE_ASSET_ID"]
      420 LOADK                            R29 K102 ["NativeGraphContext_SelectedGraphKey"]
      421 SETTABLEKS                       R29 R28 K92 ["SELECTED_GRAPH_KEY"]
      423 LOADK                            R29 K103 ["NativeGraphContext_UndoTransaction"]
      424 SETTABLEKS                       R29 R28 K93 ["UNDO_TRANSACTION"]
      426 DUPTABLE                         R29 K128 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "CREATE_EXISTING_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SET_PARAMETER_NODE_TYPE", "SELECT_ALL_PARAMETER_NODES_WITH_NAME", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      427 LOADK                            R30 K129 ["NativeGraphContext_CreateNode"]
      428 SETTABLEKS                       R30 R29 K104 ["CREATE_NODE"]
      430 LOADK                            R30 K130 ["NativeGraphContext_CreateParameterAsync"]
      431 SETTABLEKS                       R30 R29 K105 ["CREATE_PARAMETER"]
      433 LOADK                            R30 K131 ["NativeGraphContext_CreateConnectedParameterAsync"]
      434 SETTABLEKS                       R30 R29 K106 ["CREATE_CONNECTED_PARAMETER"]
      436 LOADK                            R30 K132 ["NativeGraphContext_CreateExistingParameterAsync"]
      437 SETTABLEKS                       R30 R29 K107 ["CREATE_EXISTING_PARAMETER"]
      439 LOADK                            R30 K133 ["NativeGraphContext_GetSelectedGraphInstance"]
      440 SETTABLEKS                       R30 R29 K108 ["GET_SELECTED_GRAPH_INSTANCE"]
      442 LOADK                            R30 K134 ["NativeGraphContext_SetNodeConnectionAsync"]
      443 SETTABLEKS                       R30 R29 K109 ["SET_NODE_CONNECTION"]
      445 LOADK                            R30 K135 ["NativeGraphContext_setNodePropertyAsync"]
      446 SETTABLEKS                       R30 R29 K110 ["SET_NODE_PROPERTY"]
      448 LOADK                            R30 K136 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      449 SETTABLEKS                       R30 R29 K111 ["SET_INPUT_PIN_NODE_PROPERTY"]
      451 LOADK                            R30 K137 ["NativeGraphContext_ReorderPinsAsync"]
      452 SETTABLEKS                       R30 R29 K112 ["REORDER_PINS"]
      454 LOADK                            R30 K138 ["NativeGraphContext_RemoveNodeInputConnection"]
      455 SETTABLEKS                       R30 R29 K113 ["REMOVE_NODE_INPUT_CONNECTION"]
      457 LOADK                            R30 K139 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      458 SETTABLEKS                       R30 R29 K114 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      460 LOADK                            R30 K140 ["NativeGraphContext_RemoveParameterAsync"]
      461 SETTABLEKS                       R30 R29 K115 ["REMOVE_PARAMETER"]
      463 LOADK                            R30 K141 ["NativeGraphContext_RenameNodeAsync"]
      464 SETTABLEKS                       R30 R29 K116 ["RENAME_NODE"]
      466 LOADK                            R30 K142 ["NativeGraphContext_RenameParameterAsync"]
      467 SETTABLEKS                       R30 R29 K117 ["RENAME_PARAMETER"]
      469 LOADK                            R30 K143 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      470 SETTABLEKS                       R30 R29 K118 ["DELETE_NODE_INSTANCE"]
      472 LOADK                            R30 K144 ["NativeGraphContext_SetNodeSizeAsync"]
      473 SETTABLEKS                       R30 R29 K119 ["SET_NODE_SIZE"]
      475 LOADK                            R30 K145 ["NativeGraphContext_SetCollapsedAsync"]
      476 SETTABLEKS                       R30 R29 K120 ["SET_COLLAPSED"]
      478 LOADK                            R30 K146 ["NativeGraphContext_SetNodePositionsAsync"]
      479 SETTABLEKS                       R30 R29 K121 ["SET_NODE_POSITIONS"]
      481 LOADK                            R30 K147 ["NativeGraphContext_SetParameterNodeTypeAsync"]
      482 SETTABLEKS                       R30 R29 K122 ["SET_PARAMETER_NODE_TYPE"]
      484 LOADK                            R30 K148 ["NativeGraphContext_SelectAllParameterNodesWithNameAsync"]
      485 SETTABLEKS                       R30 R29 K123 ["SELECT_ALL_PARAMETER_NODES_WITH_NAME"]
      487 LOADK                            R30 K149 ["NativeGraphContext_SelectNodes"]
      488 SETTABLEKS                       R30 R29 K124 ["SELECT_NODES"]
      490 LOADK                            R30 K150 ["NativeGraphContext_SelectNodesFromRect"]
      491 SETTABLEKS                       R30 R29 K125 ["SELECT_NODES_FROM_RECT"]
      493 LOADK                            R30 K151 ["NativeGraphContext_beginUndoTransaction"]
      494 SETTABLEKS                       R30 R29 K126 ["BEGIN_UNDO_TRANSACTION"]
      496 LOADK                            R30 K152 ["NativeGraphContext_finishUndoTransaction"]
      497 SETTABLEKS                       R30 R29 K127 ["FINISH_UNDO_TRANSACTION"]
      499 DUPCLOSURE                       R30 K153 [PROTO_2]
      500 CAPTURE                          VAL R12
      501 CAPTURE                          VAL R14
      502 DUPCLOSURE                       R31 K154 [PROTO_50]
      503 CAPTURE                          VAL R25
      504 CAPTURE                          VAL R12
      505 CAPTURE                          VAL R15
      506 CAPTURE                          VAL R23
      507 CAPTURE                          VAL R7
      508 CAPTURE                          VAL R21
      509 CAPTURE                          VAL R6
      510 CAPTURE                          VAL R8
      511 CAPTURE                          VAL R13
      512 CAPTURE                          VAL R17
      513 CAPTURE                          VAL R2
      514 CAPTURE                          VAL R18
      515 CAPTURE                          VAL R1
      516 CAPTURE                          VAL R20
      517 CAPTURE                          VAL R3
      518 CAPTURE                          VAL R5
      519 CAPTURE                          VAL R22
      520 CAPTURE                          VAL R24
      521 CAPTURE                          VAL R30
      522 CAPTURE                          VAL R16
      523 CAPTURE                          VAL R11
      524 CAPTURE                          VAL R9
      525 CAPTURE                          VAL R28
      526 CAPTURE                          VAL R29
      527 CAPTURE                          VAL R27
      528 CAPTURE                          VAL R19
      529 CAPTURE                          VAL R4
      530 DUPCLOSURE                       R32 K155 [PROTO_55]
      531 CAPTURE                          VAL R25
      532 CAPTURE                          VAL R12
      533 CAPTURE                          VAL R17
      534 CAPTURE                          VAL R9
      535 CAPTURE                          VAL R28
      536 CAPTURE                          VAL R16
      537 CAPTURE                          VAL R30
      538 CAPTURE                          VAL R18
      539 CAPTURE                          VAL R29
      540 CAPTURE                          VAL R27
      541 CAPTURE                          VAL R13
      542 CAPTURE                          VAL R19
      543 DUPTABLE                         R33 K159 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      544 SETTABLEKS                       R27 R33 K156 ["Context"]
      546 SETTABLEKS                       R31 R33 K157 ["EditableDataModelProvider"]
      548 SETTABLEKS                       R32 R33 K158 ["UIDataModelProvider"]
      550 RETURN                           R33 1
