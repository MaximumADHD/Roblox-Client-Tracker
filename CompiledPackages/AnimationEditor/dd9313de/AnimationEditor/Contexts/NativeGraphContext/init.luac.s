PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 LOADNIL                          R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R1 R4 K0 ["lookup"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K1 ["get"]
       15 GETTABLEKS                       R7 R5 K2 ["id"]
       17 CALL                             R6 1 1
       18 JUMPIFEQKNIL                     R6 ; [+36]
       20 GETTABLEKS                       R7 R6 K3 ["position"]
       22 GETTABLEKS                       R8 R6 K4 ["size"]
       24 GETTABLEKS                       R9 R6 K5 ["isSelected"]
       26 JUMPIFNOT                        R9 ; [+28]
       27 GETIMPORT                        R9 K8 [Rect.new]
       29 GETTABLEKS                       R10 R7 K9 ["X"]
       31 GETTABLEKS                       R12 R7 K10 ["Y"]
       33 GETTABLEKS                       R13 R8 K10 ["Y"]
       35 SUB                              R11 R12 R13
       36 GETTABLEKS                       R13 R7 K9 ["X"]
       38 GETTABLEKS                       R14 R8 K9 ["X"]
       40 ADD                              R12 R13 R14
       41 GETTABLEKS                       R13 R7 K10 ["Y"]
       43 CALL                             R9 4 1
       44 JUMPIFNOTEQKNIL                  R0 ; [+3]
       46 MOVE                             R0 R9
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K11 ["union"]
       51 MOVE                             R11 R0
       52 MOVE                             R12 R9
       53 CALL                             R10 2 1
       54 MOVE                             R0 R10
       55 FORGLOOP                         R1 2 ; [-44]
       57 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 DUPTABLE                         R3 K2 [{"getSelectedRect"}]
       14 SETTABLEKS                       R2 R3 K1 ["getSelectedRect"]
       16 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["selectionService"]
        9 NEWTABLE                         R4 0 1
       11 MOVE                             R5 R1
       12 SETLIST                          R4 R5 1 [1]
       14 NAMECALL                         R2 R2 K2 ["Set"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["graphInstanceId"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["graphInstanceId"]
       14 NAMECALL                         R0 R0 K1 ["idToInstance"]
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_17:
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

PROTO_18:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["RBX_GraphVersion"] ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ReplicatedStorage"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K1 [game]
        8 LOADK                            R3 K4 ["RunService"]
        9 NAMECALL                         R1 R1 K3 ["GetService"]
       11 CALL                             R1 2 1
       12 LOADK                            R4 K5 ["AnimationGraphEditor"]
       13 NAMECALL                         R2 R0 K6 ["FindFirstChild"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+10]
       17 GETIMPORT                        R3 K9 [Instance.new]
       19 LOADK                            R4 K10 ["Folder"]
       20 CALL                             R3 1 1
       21 LOADK                            R4 K5 ["AnimationGraphEditor"]
       22 SETTABLEKS                       R4 R3 K11 ["Name"]
       24 SETTABLEKS                       R0 R3 K12 ["Parent"]
       26 MOVE                             R2 R3
       27 LOADK                            R5 K13 ["CurrentAnimationId"]
       28 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+10]
       32 GETIMPORT                        R4 K9 [Instance.new]
       34 LOADK                            R5 K14 ["StringValue"]
       35 CALL                             R4 1 1
       36 LOADK                            R5 K13 ["CurrentAnimationId"]
       37 SETTABLEKS                       R5 R4 K11 ["Name"]
       39 SETTABLEKS                       R2 R4 K12 ["Parent"]
       41 MOVE                             R3 R4
       42 GETUPVAL                         R4 0
       43 SETTABLEKS                       R4 R3 K15 ["Value"]
       45 GETUPVAL                         R4 1
       46 JUMPIFNOT                        R4 ; [+29]
       47 GETUPVAL                         R4 1
       48 LOADK                            R6 K16 ["ObjectValue"]
       49 NAMECALL                         R4 R4 K17 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R4 2 1
       52 JUMPIFNOT                        R4 ; [+23]
       53 GETTABLEKS                       R6 R4 K11 ["Name"]
       55 LOADK                            R7 K18 ["_"]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K11 ["Name"]
       59 CONCAT                           R5 R6 R8
       60 MOVE                             R8 R5
       61 NAMECALL                         R6 R2 K6 ["FindFirstChild"]
       63 CALL                             R6 2 1
       64 JUMPIFNOT                        R6 ; [+3]
       65 NAMECALL                         R7 R6 K19 ["Destroy"]
       67 CALL                             R7 1 0
       68 GETUPVAL                         R7 1
       69 NAMECALL                         R7 R7 K20 ["Clone"]
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R5 R7 K11 ["Name"]
       74 SETTABLEKS                       R2 R7 K12 ["Parent"]
       76 LOADNIL                          R4
       77 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K0 ["NativeGraphContext"]
       10 LOADK                            R6 K1 ["createNodeAsync"]
       11 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["createNodeOfType"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 GETUPVAL                         R7 0
       20 CALL                             R4 3 1
       21 JUMPIFNOT                        R4 ; [+6]
       22 GETUPVAL                         R5 4
       23 MOVE                             R7 R4
       24 NAMECALL                         R5 R5 K4 ["instanceToId"]
       26 CALL                             R5 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       31 MOVE                             R7 R5
       32 LOADK                            R8 K5 ["Failed to get new node ID after creation"]
       33 GETIMPORT                        R6 K7 [assert]
       35 CALL                             R6 2 0
       36 JUMPIFNOT                        R2 ; [+86]
       37 GETTABLEKS                       R6 R2 K8 ["sourcePinSide"]
       39 JUMPIFNOTEQKS                    R6 K9 ["Input"] ; [+16]
       41 JUMPIFEQKNIL                     R5 ; [+81]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R6 R7 K10 ["setNodeConnection"]
       46 GETUPVAL                         R7 4
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R9 R2 K11 ["sourcePinNodeId"]
       50 GETTABLEKS                       R10 R2 K12 ["sourcePinName"]
       52 MOVE                             R11 R5
       53 LOADK                            R12 K13 ["Output"]
       54 CALL                             R6 6 0
       55 JUMP                             ; [+67]
       56 GETTABLEKS                       R6 R2 K8 ["sourcePinSide"]
       58 JUMPIFNOTEQKS                    R6 K13 ["Output"] ; [+60]
       60 GETUPVAL                         R6 5
       61 MOVE                             R8 R0
       62 NAMECALL                         R6 R6 K14 ["GetAnimationNodeDefinition"]
       64 CALL                             R6 2 1
       65 LOADNIL                          R7
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R8 R9 K15 ["hasDynamicInputPins"]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R10 R2 K11 ["sourcePinNodeId"]
       72 CALL                             R8 2 1
       73 JUMPIFNOT                        R8 ; [+9]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R8 R9 K16 ["getDynamicInputPinNameFromInputNode"]
       77 MOVE                             R9 R4
       78 GETTABLEKS                       R10 R2 K12 ["sourcePinName"]
       80 CALL                             R8 2 1
       81 MOVE                             R7 R8
       82 JUMP                             ; [+13]
       83 JUMPIFNOT                        R6 ; [+12]
       84 GETTABLEKS                       R8 R6 K17 ["Inputs"]
       86 JUMPIFNOT                        R8 ; [+9]
       87 GETTABLEKS                       R9 R6 K17 ["Inputs"]
       89 GETTABLEN                        R8 R9 1
       90 JUMPIFNOT                        R8 ; [+5]
       91 GETTABLEKS                       R9 R6 K17 ["Inputs"]
       93 GETTABLEN                        R8 R9 1
       94 GETTABLEKS                       R7 R8 K18 ["InputName"]
       96 JUMPIFEQKNIL                     R7 ; [+16]
       98 JUMPIFEQKNIL                     R5 ; [+24]
      100 GETUPVAL                         R9 3
      101 GETTABLEKS                       R8 R9 K10 ["setNodeConnection"]
      103 GETUPVAL                         R9 4
      104 GETUPVAL                         R10 1
      105 MOVE                             R11 R5
      106 MOVE                             R12 R7
      107 GETTABLEKS                       R13 R2 K11 ["sourcePinNodeId"]
      109 GETTABLEKS                       R14 R2 K12 ["sourcePinName"]
      111 CALL                             R8 6 0
      112 JUMP                             ; [+10]
      113 GETIMPORT                        R8 K20 [warn]
      115 LOADK                            R9 K21 ["Failed to find input pin name for node type:"]
      116 MOVE                             R10 R0
      117 CALL                             R8 2 0
      118 JUMP                             ; [+4]
      119 GETIMPORT                        R6 K23 [error]
      121 LOADK                            R7 K24 ["Bad sourcePinSide state"]
      122 CALL                             R6 1 0
      123 GETUPVAL                         R7 6
      124 GETTABLEKS                       R6 R7 K25 ["selectionService"]
      126 NEWTABLE                         R8 0 1
      128 MOVE                             R9 R4
      129 SETLIST                          R8 R9 1 [1]
      131 NAMECALL                         R6 R6 K26 ["Set"]
      133 CALL                             R6 2 0
      134 JUMPIFNOT                        R3 ; [+7]
      135 GETUPVAL                         R6 2
      136 MOVE                             R8 R3
      137 GETIMPORT                        R9 K30 [Enum.FinishRecordingOperation.Commit]
      139 NAMECALL                         R6 R6 K31 ["FinishRecording"]
      141 CALL                             R6 3 0
      142 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K0 ["NativeGraphContext"]
       10 LOADK                            R6 K1 ["createParameterAsync"]
       11 NAMECALL                         R3 R3 K2 ["TryBeginRecording"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 0
       15 LOADK                            R6 K3 ["AnimationGraphDefinition"]
       16 NAMECALL                         R4 R4 K4 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIF                           R4 ; [+6]
       20 GETIMPORT                        R4 K6 [warn]
       22 LOADK                            R5 K7 ["Selected graph instance is not an AnimationGraphDefinition"]
       23 CALL                             R4 1 0
       24 LOADB                            R4 0
       25 RETURN                           R4 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K8 ["getOrCreateParameterInstance"]
       29 GETUPVAL                         R5 4
       30 GETUPVAL                         R6 0
       31 MOVE                             R7 R0
       32 CALL                             R4 3 1
       33 LOADK                            R6 K9 ["%*Param"]
       34 MOVE                             R8 R0
       35 NAMECALL                         R6 R6 K10 ["format"]
       37 CALL                             R6 2 1
       38 MOVE                             R5 R6
       39 GETUPVAL                         R6 0
       40 MOVE                             R8 R5
       41 NAMECALL                         R6 R6 K11 ["GetAttribute"]
       43 CALL                             R6 2 1
       44 JUMPIF                           R6 ; [+16]
       45 LOADNIL                          R6
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETUPVAL                         R7 5
       48 GETTABLE                         R6 R7 R1
       49 JUMP                             ; [+2]
       50 GETUPVAL                         R7 6
       51 GETTABLE                         R6 R7 R0
       52 JUMPIFNOTEQKNIL                  R6 ; [+2]
       54 LOADN                            R6 0
       55 GETUPVAL                         R7 0
       56 MOVE                             R9 R5
       57 MOVE                             R10 R6
       58 NAMECALL                         R7 R7 K12 ["SetAttribute"]
       60 CALL                             R7 3 0
       61 GETUPVAL                         R7 7
       62 GETTABLEKS                       R6 R7 K13 ["selectionService"]
       64 NEWTABLE                         R8 0 1
       66 MOVE                             R9 R4
       67 SETLIST                          R8 R9 1 [1]
       69 NAMECALL                         R6 R6 K14 ["Set"]
       71 CALL                             R6 2 0
       72 JUMPIFNOT                        R2 ; [+6]
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R6 R7 K15 ["setNodePosition"]
       76 MOVE                             R7 R4
       77 MOVE                             R8 R2
       78 CALL                             R6 2 0
       79 JUMPIFNOT                        R3 ; [+7]
       80 GETUPVAL                         R6 2
       81 MOVE                             R8 R3
       82 GETIMPORT                        R9 K19 [Enum.FinishRecordingOperation.Commit]
       84 NAMECALL                         R6 R6 K20 ["FinishRecording"]
       86 CALL                             R6 3 0
       87 LOADB                            R6 1
       88 RETURN                           R6 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 LOADK                            R4 K0 ["NativeGraphContext"]
        9 LOADK                            R5 K1 ["createParameterAsync"]
       10 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
       12 CALL                             R2 3 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R5 R0 K3 ["sourcePinNodeId"]
       16 NAMECALL                         R3 R3 K4 ["idToInstance"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+6]
       21 LOADK                            R6 K5 ["AnimationNodeDefinition"]
       22 NAMECALL                         R4 R3 K6 ["IsA"]
       24 CALL                             R4 2 1
       25 JUMPIF                           R4 ; [+5]
       26 GETIMPORT                        R4 K8 [warn]
       28 LOADK                            R5 K9 ["Failed to find node definition instance for createParameterAsync"]
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 LOADK                            R6 K5 ["AnimationNodeDefinition"]
       32 NAMECALL                         R4 R3 K6 ["IsA"]
       34 CALL                             R4 2 1
       35 JUMPIF                           R4 ; [+5]
       36 GETIMPORT                        R4 K8 [warn]
       38 LOADK                            R5 K10 ["Instance is not an AnimationNodeDefinition"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R4 0
       42 LOADK                            R6 K11 ["AnimationGraphDefinition"]
       43 NAMECALL                         R4 R4 K6 ["IsA"]
       45 CALL                             R4 2 1
       46 JUMPIF                           R4 ; [+5]
       47 GETIMPORT                        R4 K8 [warn]
       49 LOADK                            R5 K12 ["Selected graph instance is not an AnimationGraphDefinition"]
       50 CALL                             R4 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R5 R6 K14 ["getParameterType"]
       55 GETTABLEKS                       R6 R3 K15 ["NodeType"]
       57 GETTABLEKS                       R7 R0 K16 ["sourcePinName"]
       59 CALL                             R5 2 1
       60 ORK                              R4 R5 K13 ["unknown"]
       61 GETUPVAL                         R5 5
       62 MOVE                             R6 R4
       63 GETTABLEKS                       R7 R0 K16 ["sourcePinName"]
       65 MOVE                             R8 R1
       66 CALL                             R5 3 1
       67 JUMPIFNOT                        R5 ; [+29]
       68 GETUPVAL                         R7 4
       69 GETTABLEKS                       R6 R7 K17 ["getOrCreateParameterInstance"]
       71 GETUPVAL                         R7 3
       72 GETUPVAL                         R8 0
       73 MOVE                             R9 R4
       74 CALL                             R6 3 1
       75 GETUPVAL                         R11 6
       76 GETTABLEKS                       R10 R11 K18 ["NODE_ATTRIBUTES"]
       78 GETTABLEKS                       R9 R10 K19 ["BindingName"]
       80 NAMECALL                         R7 R6 K20 ["GetAttribute"]
       82 CALL                             R7 2 1
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R8 R9 K21 ["setNodePosition"]
       86 MOVE                             R9 R6
       87 MOVE                             R10 R1
       88 CALL                             R8 2 0
       89 GETUPVAL                         R9 4
       90 GETTABLEKS                       R8 R9 K22 ["setParameterBindingName"]
       92 MOVE                             R9 R3
       93 GETTABLEKS                       R10 R0 K16 ["sourcePinName"]
       95 MOVE                             R11 R7
       96 CALL                             R8 3 0
       97 JUMPIFNOT                        R2 ; [+7]
       98 GETUPVAL                         R6 2
       99 MOVE                             R8 R2
      100 GETIMPORT                        R9 K26 [Enum.FinishRecordingOperation.Commit]
      102 NAMECALL                         R6 R6 K27 ["FinishRecording"]
      104 CALL                             R6 3 0
      105 RETURN                           R0 0

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
       23 CALL                             R5 6 0
       24 JUMPIFNOT                        R4 ; [+7]
       25 GETUPVAL                         R5 1
       26 MOVE                             R7 R4
       27 GETIMPORT                        R8 K10 [Enum.FinishRecordingOperation.Commit]
       29 NAMECALL                         R5 R5 K11 ["FinishRecording"]
       31 CALL                             R5 3 0
       32 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

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
       11 JUMPIFNOT                        R3 ; [+2]
       12 SETTABLEKS                       R1 R3 K4 ["Name"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K5 ["observe"]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 LOADB                            R5 0
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+28]
       22 GETUPVAL                         R5 3
       23 JUMPIFNOT                        R5 ; [+26]
       24 GETTABLEKS                       R5 R4 K6 ["outputPinToConnectionMap"]
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R10 R11 K7 ["hasDynamicInputPins"]
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R12 R9 K8 ["inputNodeId"]
       35 CALL                             R10 2 1
       36 JUMPIFNOT                        R10 ; [+11]
       37 GETUPVAL                         R11 4
       38 GETTABLEKS                       R10 R11 K9 ["renameDynamicInputPin"]
       40 GETUPVAL                         R11 1
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R13 R9 K8 ["inputNodeId"]
       44 GETTABLEKS                       R14 R9 K10 ["inputNodePinId"]
       46 MOVE                             R15 R1
       47 CALL                             R10 5 0
       48 FORGLOOP                         R5 2 ; [-20]
       50 JUMPIFNOT                        R2 ; [+7]
       51 GETUPVAL                         R5 0
       52 MOVE                             R7 R2
       53 GETIMPORT                        R8 K14 [Enum.FinishRecordingOperation.Commit]
       55 NAMECALL                         R5 R5 K15 ["FinishRecording"]
       57 CALL                             R5 3 0
       58 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeParameterNodeInfoLookupList"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["GetAttribute"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+7]
       12 GETUPVAL                         R2 0
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 NAMECALL                         R2 R2 K1 ["SetAttribute"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R2 R5 K2 ["lookup"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R7 2
       25 MOVE                             R9 R5
       26 NAMECALL                         R7 R7 K3 ["idToInstance"]
       28 CALL                             R7 2 1
       29 JUMPIFEQKNIL                     R7 ; [+23]
       31 LOADK                            R10 K4 ["Configuration"]
       32 NAMECALL                         R8 R7 K5 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIF                           R8 ; [+17]
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R8 R9 K6 ["getParameterBindingNameFromParameterName"]
       39 MOVE                             R9 R7
       40 MOVE                             R10 R1
       41 CALL                             R8 2 1
       42 MOVE                             R9 R8
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 FORGPREP                         R9
       46 MOVE                             R16 R13
       47 LOADNIL                          R17
       48 NAMECALL                         R14 R7 K1 ["SetAttribute"]
       50 CALL                             R14 3 0
       51 FORGLOOP                         R9 2 ; [-6]
       53 FORGLOOP                         R2 2 ; [-30]
       55 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K0 ["idToInstance"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 2
       11 LOADK                            R6 K1 ["NativeGraphContext"]
       12 LOADK                            R7 K2 ["renameParameterAsync"]
       13 NAMECALL                         R4 R4 K3 ["TryBeginRecording"]
       15 CALL                             R4 3 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K4 ["getNodeParameterConfigurationName"]
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 SETTABLEKS                       R5 R3 K5 ["Name"]
       23 GETUPVAL                         R9 4
       24 GETTABLEKS                       R8 R9 K6 ["NODE_ATTRIBUTES"]
       26 GETTABLEKS                       R7 R8 K7 ["BindingName"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R5 R3 K8 ["SetAttribute"]
       31 CALL                             R5 3 0
       32 GETUPVAL                         R6 5
       33 GETTABLE                         R5 R6 R0
       34 JUMPIFNOT                        R5 ; [+19]
       35 GETIMPORT                        R5 K11 [table.clone]
       37 GETUPVAL                         R6 5
       38 CALL                             R5 1 1
       39 DUPTABLE                         R6 K15 [{"connection", "nodeId", "parameterName"}]
       40 GETUPVAL                         R9 5
       41 GETTABLE                         R8 R9 R0
       42 GETTABLEKS                       R7 R8 K12 ["connection"]
       44 SETTABLEKS                       R7 R6 K12 ["connection"]
       46 SETTABLEKS                       R0 R6 K13 ["nodeId"]
       48 SETTABLEKS                       R2 R6 K14 ["parameterName"]
       50 SETTABLE                         R6 R5 R0
       51 GETUPVAL                         R6 6
       52 MOVE                             R7 R5
       53 CALL                             R6 1 0
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R5 R8 K16 ["lookup"]
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 FORGPREP                         R5
       60 GETUPVAL                         R10 1
       61 MOVE                             R12 R8
       62 NAMECALL                         R10 R10 K0 ["idToInstance"]
       64 CALL                             R10 2 1
       65 JUMPIFEQKNIL                     R10 ; [+38]
       67 LOADK                            R13 K17 ["AnimationNodeDefinition"]
       68 NAMECALL                         R11 R10 K18 ["IsA"]
       70 CALL                             R11 2 1
       71 JUMPIFNOT                        R11 ; [+32]
       72 LOADB                            R12 0
       73 JUMPIFEQKNIL                     R10 ; [+5]
       75 LOADK                            R14 K17 ["AnimationNodeDefinition"]
       76 NAMECALL                         R12 R10 K18 ["IsA"]
       78 CALL                             R12 2 1
       79 FASTCALL2K                       ASSERT R12 K19 ; [+4]
       81 LOADK                            R13 K19 ["Not an AnimationNodeDefinition"]
       82 GETIMPORT                        R11 K21 [assert]
       84 CALL                             R11 2 0
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R11 R12 K22 ["getParameterBindingNameFromParameterName"]
       88 MOVE                             R12 R10
       89 MOVE                             R13 R1
       90 CALL                             R11 2 1
       91 MOVE                             R12 R11
       92 LOADNIL                          R13
       93 LOADNIL                          R14
       94 FORGPREP                         R12
       95 GETUPVAL                         R18 3
       96 GETTABLEKS                       R17 R18 K23 ["setParameterBindingName"]
       98 MOVE                             R18 R10
       99 MOVE                             R19 R16
      100 MOVE                             R20 R2
      101 CALL                             R17 3 0
      102 FORGLOOP                         R12 2 ; [-8]
      104 FORGLOOP                         R5 2 ; [-45]
      106 JUMPIFNOT                        R4 ; [+7]
      107 GETUPVAL                         R5 2
      108 MOVE                             R7 R4
      109 GETIMPORT                        R8 K27 [Enum.FinishRecordingOperation.Commit]
      111 NAMECALL                         R5 R5 K28 ["FinishRecording"]
      113 CALL                             R5 3 0
      114 RETURN                           R0 0

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
       17 GETTABLEKS                       R4 R2 K5 ["nodeId"]
       19 GETTABLEKS                       R5 R2 K6 ["parameterName"]
       21 CALL                             R3 2 0
       22 GETTABLEKS                       R3 R2 K7 ["connection"]
       24 NAMECALL                         R3 R3 K8 ["Disconnect"]
       26 CALL                             R3 1 0
       27 GETIMPORT                        R3 K11 [table.clone]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R2 K5 ["nodeId"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_46:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 NEWTABLE                         R0 0 1
        4 GETUPVAL                         R1 0
        5 SETLIST                          R0 R1 1 [1]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K0 ["useContext"]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K1 ["Context"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K2 ["useState"]
       16 GETIMPORT                        R6 K5 [Rect.new]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 CALL                             R6 4 -1
       23 CALL                             R5 -1 2
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R7 R8 K6 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R10 0 0
       37 CALL                             R8 2 2
       38 GETUPVAL                         R11 2
       39 GETTABLEKS                       R10 R11 K8 ["useEffect"]
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R12 0 1
       46 MOVE                             R13 R3
       47 SETLIST                          R12 R13 1 [1]
       49 CALL                             R10 2 0
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R10 R11 K7 ["useMemo"]
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R8
       56 NEWTABLE                         R12 0 1
       58 MOVE                             R13 R8
       59 SETLIST                          R12 R13 1 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R11 R12 K8 ["useEffect"]
       65 NEWCLOSURE                       R12 P3
       66 CAPTURE                          VAL R10
       67 NEWTABLE                         R13 0 1
       69 MOVE                             R14 R10
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 0
       73 GETUPVAL                         R13 2
       74 GETTABLEKS                       R12 R13 K0 ["useContext"]
       76 GETUPVAL                         R14 6
       77 GETTABLEKS                       R13 R14 K1 ["Context"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R11 R12 K9 ["instanceRegistry"]
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R12 R13 K7 ["useMemo"]
       85 NEWCLOSURE                       R13 P4
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R8
       90 NEWTABLE                         R14 0 3
       92 MOVE                             R15 R11
       93 MOVE                             R16 R10
       94 MOVE                             R17 R8
       95 SETLIST                          R14 R15 3 [1]
       97 CALL                             R12 2 1
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R13 R14 K2 ["useState"]
      101 LOADNIL                          R14
      102 CALL                             R13 1 2
      103 GETUPVAL                         R16 2
      104 GETTABLEKS                       R15 R16 K2 ["useState"]
      106 NEWTABLE                         R16 0 0
      108 CALL                             R15 1 2
      109 GETUPVAL                         R18 2
      110 GETTABLEKS                       R17 R18 K8 ["useEffect"]
      112 NEWCLOSURE                       R18 P5
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R6
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 NEWTABLE                         R19 0 5
      124 MOVE                             R20 R12
      125 MOVE                             R21 R14
      126 MOVE                             R22 R6
      127 GETTABLEKS                       R23 R1 K10 ["setMap"]
      129 GETTABLEKS                       R24 R2 K10 ["setMap"]
      131 SETLIST                          R19 R20 5 [1]
      133 CALL                             R17 2 0
      134 GETUPVAL                         R18 2
      135 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      137 NEWCLOSURE                       R18 P6
      138 CAPTURE                          VAL R11
      139 CAPTURE                          UPVAL U7
      140 NEWTABLE                         R19 0 1
      142 MOVE                             R20 R11
      143 SETLIST                          R19 R20 1 [1]
      145 CALL                             R17 2 1
      146 GETUPVAL                         R19 2
      147 GETTABLEKS                       R18 R19 K11 ["useCallback"]
      149 NEWCLOSURE                       R19 P7
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R11
      152 CAPTURE                          UPVAL U7
      153 NEWTABLE                         R20 0 1
      155 MOVE                             R21 R11
      156 SETLIST                          R20 R21 1 [1]
      158 CALL                             R18 2 1
      159 GETUPVAL                         R20 2
      160 GETTABLEKS                       R19 R20 K11 ["useCallback"]
      162 NEWCLOSURE                       R20 P8
      163 CAPTURE                          VAL R11
      164 CAPTURE                          UPVAL U7
      165 NEWTABLE                         R21 0 1
      167 MOVE                             R22 R11
      168 SETLIST                          R21 R22 1 [1]
      170 CALL                             R19 2 1
      171 GETUPVAL                         R21 2
      172 GETTABLEKS                       R20 R21 K11 ["useCallback"]
      174 NEWCLOSURE                       R21 P9
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R4
      177 NEWTABLE                         R22 0 2
      179 MOVE                             R23 R11
      180 GETTABLEKS                       R24 R4 K12 ["selectionService"]
      182 SETLIST                          R22 R23 2 [1]
      184 CALL                             R20 2 1
      185 GETUPVAL                         R22 2
      186 GETTABLEKS                       R21 R22 K11 ["useCallback"]
      188 NEWCLOSURE                       R22 P10
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R11
      191 NEWTABLE                         R23 0 3
      193 MOVE                             R24 R11
      194 GETTABLEKS                       R25 R4 K12 ["selectionService"]
      196 MOVE                             R26 R10
      197 SETLIST                          R23 R24 3 [1]
      199 CALL                             R21 2 1
      200 GETUPVAL                         R23 2
      201 GETTABLEKS                       R22 R23 K11 ["useCallback"]
      203 NEWCLOSURE                       R23 P11
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R11
      208 NEWTABLE                         R24 0 4
      210 GETTABLEKS                       R25 R2 K13 ["get"]
      212 GETTABLEKS                       R26 R4 K12 ["selectionService"]
      214 MOVE                             R27 R11
      215 MOVE                             R28 R13
      216 SETLIST                          R24 R25 4 [1]
      218 CALL                             R22 2 1
      219 GETUPVAL                         R24 2
      220 GETTABLEKS                       R23 R24 K7 ["useMemo"]
      222 NEWCLOSURE                       R24 P12
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R11
      225 NEWTABLE                         R25 0 2
      227 MOVE                             R26 R11
      228 MOVE                             R27 R13
      229 SETLIST                          R25 R26 2 [1]
      231 CALL                             R23 2 1
      232 GETUPVAL                         R25 2
      233 GETTABLEKS                       R24 R25 K2 ["useState"]
      235 LOADK                            R25 K14 [""]
      236 CALL                             R24 1 2
      237 GETUPVAL                         R27 2
      238 GETTABLEKS                       R26 R27 K2 ["useState"]
      240 LOADNIL                          R27
      241 CALL                             R26 1 2
      242 GETUPVAL                         R29 2
      243 GETTABLEKS                       R28 R29 K8 ["useEffect"]
      245 NEWCLOSURE                       R29 P13
      246 CAPTURE                          VAL R23
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R27
      249 CAPTURE                          UPVAL U9
      250 NEWTABLE                         R30 0 1
      252 MOVE                             R31 R23
      253 SETLIST                          R30 R31 1 [1]
      255 CALL                             R28 2 0
      256 GETUPVAL                         R29 2
      257 GETTABLEKS                       R28 R29 K8 ["useEffect"]
      259 NEWCLOSURE                       R29 P14
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R23
      262 NEWTABLE                         R30 0 2
      264 MOVE                             R31 R24
      265 MOVE                             R32 R23
      266 SETLIST                          R30 R31 2 [1]
      268 CALL                             R28 2 0
      269 GETUPVAL                         R29 2
      270 GETTABLEKS                       R28 R29 K11 ["useCallback"]
      272 NEWCLOSURE                       R29 P15
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R13
      275 CAPTURE                          UPVAL U8
      276 CAPTURE                          UPVAL U7
      277 CAPTURE                          VAL R11
      278 CAPTURE                          UPVAL U10
      279 CAPTURE                          VAL R4
      280 NEWTABLE                         R30 0 4
      282 GETTABLEKS                       R31 R4 K12 ["selectionService"]
      284 MOVE                             R32 R23
      285 MOVE                             R33 R13
      286 MOVE                             R34 R11
      287 SETLIST                          R30 R31 4 [1]
      289 CALL                             R28 2 1
      290 GETUPVAL                         R30 2
      291 GETTABLEKS                       R29 R30 K11 ["useCallback"]
      293 NEWCLOSURE                       R30 P16
      294 CAPTURE                          VAL R23
      295 CAPTURE                          VAL R13
      296 CAPTURE                          UPVAL U8
      297 CAPTURE                          UPVAL U7
      298 CAPTURE                          VAL R11
      299 CAPTURE                          UPVAL U11
      300 CAPTURE                          UPVAL U12
      301 CAPTURE                          VAL R4
      302 NEWTABLE                         R31 0 3
      304 GETTABLEKS                       R32 R4 K12 ["selectionService"]
      306 MOVE                             R33 R23
      307 MOVE                             R34 R11
      308 SETLIST                          R31 R32 3 [1]
      310 CALL                             R29 2 1
      311 GETUPVAL                         R31 2
      312 GETTABLEKS                       R30 R31 K11 ["useCallback"]
      314 NEWCLOSURE                       R31 P17
      315 CAPTURE                          VAL R23
      316 CAPTURE                          VAL R13
      317 CAPTURE                          UPVAL U8
      318 CAPTURE                          VAL R11
      319 CAPTURE                          UPVAL U7
      320 CAPTURE                          VAL R29
      321 CAPTURE                          UPVAL U13
      322 NEWTABLE                         R32 0 3
      324 GETTABLEKS                       R33 R4 K12 ["selectionService"]
      326 MOVE                             R34 R23
      327 MOVE                             R35 R11
      328 SETLIST                          R32 R33 3 [1]
      330 CALL                             R30 2 1
      331 GETUPVAL                         R32 2
      332 GETTABLEKS                       R31 R32 K11 ["useCallback"]
      334 NEWCLOSURE                       R32 P18
      335 CAPTURE                          VAL R13
      336 CAPTURE                          UPVAL U8
      337 CAPTURE                          UPVAL U7
      338 CAPTURE                          VAL R11
      339 NEWTABLE                         R33 0 1
      341 MOVE                             R34 R13
      342 SETLIST                          R33 R34 1 [1]
      344 CALL                             R31 2 1
      345 GETUPVAL                         R33 2
      346 GETTABLEKS                       R32 R33 K11 ["useCallback"]
      348 NEWCLOSURE                       R33 P19
      349 CAPTURE                          VAL R13
      350 CAPTURE                          UPVAL U8
      351 CAPTURE                          UPVAL U7
      352 CAPTURE                          VAL R11
      353 NEWTABLE                         R34 0 1
      355 MOVE                             R35 R13
      356 SETLIST                          R34 R35 1 [1]
      358 CALL                             R32 2 1
      359 GETUPVAL                         R34 2
      360 GETTABLEKS                       R33 R34 K11 ["useCallback"]
      362 NEWCLOSURE                       R34 P20
      363 CAPTURE                          VAL R13
      364 CAPTURE                          UPVAL U8
      365 CAPTURE                          UPVAL U7
      366 CAPTURE                          VAL R11
      367 NEWTABLE                         R35 0 2
      369 MOVE                             R36 R11
      370 MOVE                             R37 R13
      371 SETLIST                          R35 R36 2 [1]
      373 CALL                             R33 2 1
      374 GETUPVAL                         R35 2
      375 GETTABLEKS                       R34 R35 K11 ["useCallback"]
      377 NEWCLOSURE                       R35 P21
      378 CAPTURE                          VAL R7
      379 CAPTURE                          UPVAL U8
      380 NEWTABLE                         R36 0 0
      382 CALL                             R34 2 1
      383 GETUPVAL                         R36 2
      384 GETTABLEKS                       R35 R36 K11 ["useCallback"]
      386 NEWCLOSURE                       R36 P22
      387 CAPTURE                          VAL R7
      388 CAPTURE                          UPVAL U8
      389 NEWTABLE                         R37 0 1
      391 GETTABLEKS                       R38 R7 K15 ["current"]
      393 SETLIST                          R37 R38 1 [1]
      395 CALL                             R35 2 1
      396 GETUPVAL                         R37 2
      397 GETTABLEKS                       R36 R37 K8 ["useEffect"]
      399 NEWCLOSURE                       R37 P23
      400 CAPTURE                          VAL R7
      401 CAPTURE                          UPVAL U8
      402 NEWTABLE                         R38 0 0
      404 CALL                             R36 2 0
      405 GETUPVAL                         R37 2
      406 GETTABLEKS                       R36 R37 K11 ["useCallback"]
      408 NEWCLOSURE                       R37 P24
      409 CAPTURE                          UPVAL U8
      410 CAPTURE                          VAL R11
      411 CAPTURE                          UPVAL U9
      412 NEWTABLE                         R38 0 1
      414 MOVE                             R39 R11
      415 SETLIST                          R38 R39 1 [1]
      417 CALL                             R36 2 1
      418 GETUPVAL                         R38 2
      419 GETTABLEKS                       R37 R38 K11 ["useCallback"]
      421 NEWCLOSURE                       R38 P25
      422 CAPTURE                          UPVAL U8
      423 CAPTURE                          VAL R11
      424 NEWTABLE                         R39 0 1
      426 MOVE                             R40 R13
      427 SETLIST                          R39 R40 1 [1]
      429 CALL                             R37 2 1
      430 GETUPVAL                         R39 2
      431 GETTABLEKS                       R38 R39 K11 ["useCallback"]
      433 NEWCLOSURE                       R39 P26
      434 CAPTURE                          VAL R23
      435 NEWTABLE                         R40 0 1
      437 MOVE                             R41 R23
      438 SETLIST                          R40 R41 1 [1]
      440 CALL                             R38 2 1
      441 GETUPVAL                         R40 2
      442 GETTABLEKS                       R39 R40 K11 ["useCallback"]
      444 NEWCLOSURE                       R40 P27
      445 CAPTURE                          UPVAL U8
      446 CAPTURE                          VAL R11
      447 CAPTURE                          VAL R1
      448 CAPTURE                          VAL R13
      449 CAPTURE                          UPVAL U7
      450 NEWTABLE                         R41 0 3
      452 MOVE                             R42 R11
      453 MOVE                             R43 R13
      454 GETTABLEKS                       R44 R1 K16 ["observe"]
      456 SETLIST                          R41 R42 3 [1]
      458 CALL                             R39 2 1
      459 GETUPVAL                         R41 2
      460 GETTABLEKS                       R40 R41 K11 ["useCallback"]
      462 NEWCLOSURE                       R41 P28
      463 CAPTURE                          UPVAL U8
      464 CAPTURE                          UPVAL U7
      465 CAPTURE                          VAL R11
      466 NEWTABLE                         R42 0 1
      468 MOVE                             R43 R11
      469 SETLIST                          R42 R43 1 [1]
      471 CALL                             R40 2 1
      472 GETUPVAL                         R42 2
      473 GETTABLEKS                       R41 R42 K2 ["useState"]
      475 NEWTABLE                         R42 0 0
      477 CALL                             R41 1 2
      478 GETUPVAL                         R44 14
      479 GETTABLEKS                       R43 R44 K17 ["useRefToState"]
      481 MOVE                             R44 R41
      482 CALL                             R43 1 1
      483 GETUPVAL                         R45 2
      484 GETTABLEKS                       R44 R45 K7 ["useMemo"]
      486 NEWCLOSURE                       R45 P29
      487 CAPTURE                          UPVAL U7
      488 CAPTURE                          VAL R11
      489 CAPTURE                          VAL R10
      490 CAPTURE                          VAL R23
      491 NEWTABLE                         R46 0 3
      493 MOVE                             R47 R11
      494 MOVE                             R48 R10
      495 MOVE                             R49 R23
      496 SETLIST                          R46 R47 3 [1]
      498 CALL                             R44 2 1
      499 GETUPVAL                         R46 2
      500 GETTABLEKS                       R45 R46 K11 ["useCallback"]
      502 NEWCLOSURE                       R46 P30
      503 CAPTURE                          VAL R23
      504 CAPTURE                          VAL R13
      505 CAPTURE                          VAL R11
      506 CAPTURE                          UPVAL U7
      507 NEWTABLE                         R47 0 3
      509 MOVE                             R48 R23
      510 MOVE                             R49 R11
      511 MOVE                             R50 R13
      512 SETLIST                          R47 R48 3 [1]
      514 CALL                             R45 2 1
      515 GETUPVAL                         R47 2
      516 GETTABLEKS                       R46 R47 K11 ["useCallback"]
      518 NEWCLOSURE                       R47 P31
      519 CAPTURE                          VAL R13
      520 CAPTURE                          VAL R11
      521 CAPTURE                          UPVAL U8
      522 CAPTURE                          UPVAL U7
      523 CAPTURE                          UPVAL U13
      524 CAPTURE                          VAL R41
      525 CAPTURE                          VAL R42
      526 NEWTABLE                         R48 0 3
      528 MOVE                             R49 R11
      529 MOVE                             R50 R13
      530 MOVE                             R51 R41
      531 SETLIST                          R48 R49 3 [1]
      533 CALL                             R46 2 1
      534 GETUPVAL                         R48 2
      535 GETTABLEKS                       R47 R48 K11 ["useCallback"]
      537 NEWCLOSURE                       R48 P32
      538 CAPTURE                          VAL R11
      539 CAPTURE                          UPVAL U8
      540 NEWTABLE                         R49 0 1
      542 MOVE                             R50 R11
      543 SETLIST                          R49 R50 1 [1]
      545 CALL                             R47 2 1
      546 GETUPVAL                         R49 2
      547 GETTABLEKS                       R48 R49 K8 ["useEffect"]
      549 NEWCLOSURE                       R49 P33
      550 CAPTURE                          UPVAL U4
      551 CAPTURE                          VAL R44
      552 CAPTURE                          VAL R41
      553 CAPTURE                          VAL R11
      554 CAPTURE                          VAL R43
      555 CAPTURE                          VAL R45
      556 CAPTURE                          VAL R42
      557 CAPTURE                          UPVAL U13
      558 NEWTABLE                         R50 0 4
      560 MOVE                             R51 R11
      561 MOVE                             R52 R41
      562 MOVE                             R53 R44
      563 MOVE                             R54 R45
      564 SETLIST                          R50 R51 4 [1]
      566 CALL                             R48 2 0
      567 GETUPVAL                         R48 15
      568 MOVE                             R49 R2
      569 MOVE                             R50 R13
      570 CALL                             R48 2 1
      571 GETUPVAL                         R50 2
      572 GETTABLEKS                       R49 R50 K7 ["useMemo"]
      574 NEWCLOSURE                       R50 P34
      575 CAPTURE                          UPVAL U4
      576 CAPTURE                          VAL R23
      577 NEWTABLE                         R51 0 0
      579 CALL                             R49 2 2
      580 GETUPVAL                         R52 2
      581 GETTABLEKS                       R51 R52 K7 ["useMemo"]
      583 NEWCLOSURE                       R52 P35
      584 CAPTURE                          VAL R50
      585 CAPTURE                          VAL R23
      586 NEWTABLE                         R53 0 2
      588 MOVE                             R54 R50
      589 MOVE                             R55 R23
      590 SETLIST                          R53 R54 2 [1]
      592 CALL                             R51 2 0
      593 NEWTABLE                         R51 64 0
      595 JUMPIFNOT                        R13 ; [+3]
      596 GETTABLEKS                       R52 R13 K18 ["graphInstanceId"]
      598 JUMP                             ; [+1]
      599 LOADNIL                          R52
      600 SETTABLEKS                       R52 R51 K19 ["selectedGraphInstanceId"]
      602 SETTABLEKS                       R40 R51 K20 ["reorderPinsAsync"]
      604 SETTABLEKS                       R28 R51 K21 ["createNodeAsync"]
      606 SETTABLEKS                       R29 R51 K22 ["createParameterAsync"]
      608 SETTABLEKS                       R30 R51 K23 ["createConnectedParameterAsync"]
      610 SETTABLEKS                       R5 R51 K24 ["graphRect"]
      612 SETTABLEKS                       R20 R51 K25 ["selectNodeFromNodeIdAsync"]
      614 SETTABLEKS                       R21 R51 K26 ["selectNodesAsync"]
      616 SETTABLEKS                       R22 R51 K27 ["selectNodesFromRectAsync"]
      618 SETTABLEKS                       R18 R51 K28 ["setNodePositionsAsync"]
      620 SETTABLEKS                       R19 R51 K29 ["setNodeSizeAsync"]
      622 SETTABLEKS                       R33 R51 K30 ["setNodeConnectionAsync"]
      624 SETTABLEKS                       R32 R51 K31 ["removeNodeOutputConnectionAsync"]
      626 SETTABLEKS                       R31 R51 K32 ["removeNodeInputConnectionAsync"]
      628 SETTABLEKS                       R45 R51 K33 ["removeParameterAsync"]
      630 SETTABLEKS                       R39 R51 K34 ["renameNodeAsync"]
      632 SETTABLEKS                       R46 R51 K35 ["renameParameterAsync"]
      634 SETTABLEKS                       R47 R51 K36 ["deleteNodeInstanceAsync"]
      636 SETTABLEKS                       R17 R51 K37 ["setCollapsedAsync"]
      638 SETTABLEKS                       R36 R51 K38 ["setNodePropertyAsync"]
      640 SETTABLEKS                       R37 R51 K39 ["setInputPinNodePropertyAsync"]
      642 SETTABLEKS                       R38 R51 K40 ["getSelectedGraphInstance"]
      644 SETTABLEKS                       R23 R51 K41 ["selectedGraphInstance"]
      646 SETTABLEKS                       R24 R51 K42 ["currentAnimationId"]
      648 SETTABLEKS                       R26 R51 K43 ["sourceAssetId"]
      650 GETTABLEKS                       R52 R48 K44 ["getSelectedRect"]
      652 SETTABLEKS                       R52 R51 K44 ["getSelectedRect"]
      654 SETTABLEKS                       R49 R51 K45 ["observeSelectedGraphInstance"]
      656 GETTABLEKS                       R52 R1 K16 ["observe"]
      658 SETTABLEKS                       R52 R51 K46 ["observeGraphNodeById"]
      660 GETTABLEKS                       R52 R2 K16 ["observe"]
      662 SETTABLEKS                       R52 R51 K47 ["observeNodeRenderInfoById"]
      664 SETTABLEKS                       R34 R51 K48 ["beginUndoTransaction"]
      666 SETTABLEKS                       R35 R51 K49 ["finishUndoTransaction"]
      668 SETTABLEKS                       R7 R51 K50 ["undoTransaction"]
      670 GETTABLEKS                       R52 R1 K51 ["observeMap"]
      672 SETTABLEKS                       R52 R51 K52 ["observeGraphNodeMap"]
      674 GETTABLEKS                       R52 R2 K51 ["observeMap"]
      676 SETTABLEKS                       R52 R51 K53 ["observeRenderInfoMap"]
      678 GETUPVAL                         R53 2
      679 GETTABLEKS                       R52 R53 K7 ["useMemo"]
      681 DUPCLOSURE                       R53 K54 [PROTO_46]
      682 NEWTABLE                         R54 0 0
      684 CALL                             R52 2 1
      685 GETUPVAL                         R54 2
      686 GETTABLEKS                       R53 R54 K7 ["useMemo"]
      688 NEWCLOSURE                       R54 P37
      689 CAPTURE                          VAL R23
      690 NEWTABLE                         R55 0 2
      692 MOVE                             R56 R23
      693 MOVE                             R57 R13
      694 SETLIST                          R55 R56 2 [1]
      696 CALL                             R53 2 1
      697 GETUPVAL                         R55 16
      698 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      700 GETUPVAL                         R56 17
      701 GETTABLEKS                       R55 R56 K56 ["GRAPH_PAYLOAD_MAP"]
      703 MOVE                             R56 R13
      704 CALL                             R54 2 0
      705 GETUPVAL                         R55 16
      706 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      708 GETUPVAL                         R56 17
      709 GETTABLEKS                       R55 R56 K57 ["GRAPH_RENDER_INFO"]
      711 MOVE                             R56 R15
      712 CALL                             R54 2 0
      713 GETUPVAL                         R55 16
      714 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      716 GETUPVAL                         R56 17
      717 GETTABLEKS                       R55 R56 K58 ["TIME_RANGE"]
      719 MOVE                             R56 R52
      720 CALL                             R54 2 0
      721 GETUPVAL                         R55 16
      722 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      724 GETUPVAL                         R56 17
      725 GETTABLEKS                       R55 R56 K59 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      727 MOVE                             R56 R5
      728 CALL                             R54 2 0
      729 GETUPVAL                         R55 16
      730 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      732 GETUPVAL                         R56 17
      733 GETTABLEKS                       R55 R56 K60 ["CURRENT_ANIMATION_ID"]
      735 MOVE                             R56 R24
      736 CALL                             R54 2 0
      737 GETUPVAL                         R55 16
      738 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      740 GETUPVAL                         R56 17
      741 GETTABLEKS                       R55 R56 K61 ["SOURCE_ASSET_ID"]
      743 MOVE                             R56 R26
      744 CALL                             R54 2 0
      745 GETUPVAL                         R55 16
      746 GETTABLEKS                       R54 R55 K55 ["useReplicatedState"]
      748 GETUPVAL                         R56 17
      749 GETTABLEKS                       R55 R56 K62 ["UNDO_TRANSACTION"]
      751 MOVE                             R56 R7
      752 CALL                             R54 2 0
      753 GETUPVAL                         R55 16
      754 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      756 GETUPVAL                         R56 18
      757 GETTABLEKS                       R55 R56 K64 ["CREATE_NODE"]
      759 MOVE                             R56 R28
      760 CALL                             R54 2 0
      761 GETUPVAL                         R55 16
      762 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      764 GETUPVAL                         R56 18
      765 GETTABLEKS                       R55 R56 K65 ["CREATE_PARAMETER"]
      767 MOVE                             R56 R29
      768 CALL                             R54 2 0
      769 GETUPVAL                         R55 16
      770 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      772 GETUPVAL                         R56 18
      773 GETTABLEKS                       R55 R56 K66 ["CREATE_CONNECTED_PARAMETER"]
      775 MOVE                             R56 R30
      776 CALL                             R54 2 0
      777 GETUPVAL                         R55 16
      778 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      780 GETUPVAL                         R56 18
      781 GETTABLEKS                       R55 R56 K67 ["SELECT_NODE_FROM_NODE_ID"]
      783 MOVE                             R56 R20
      784 CALL                             R54 2 0
      785 GETUPVAL                         R55 16
      786 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      788 GETUPVAL                         R56 18
      789 GETTABLEKS                       R55 R56 K68 ["SELECT_NODES"]
      791 MOVE                             R56 R21
      792 CALL                             R54 2 0
      793 GETUPVAL                         R55 16
      794 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      796 GETUPVAL                         R56 18
      797 GETTABLEKS                       R55 R56 K69 ["SELECT_NODES_FROM_RECT"]
      799 MOVE                             R56 R22
      800 CALL                             R54 2 0
      801 GETUPVAL                         R55 16
      802 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      804 GETUPVAL                         R56 18
      805 GETTABLEKS                       R55 R56 K70 ["SET_NODE_POSITIONS"]
      807 MOVE                             R56 R18
      808 CALL                             R54 2 0
      809 GETUPVAL                         R55 16
      810 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      812 GETUPVAL                         R56 18
      813 GETTABLEKS                       R55 R56 K71 ["SET_NODE_SIZE"]
      815 MOVE                             R56 R19
      816 CALL                             R54 2 0
      817 GETUPVAL                         R55 16
      818 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      820 GETUPVAL                         R56 18
      821 GETTABLEKS                       R55 R56 K72 ["SET_NODE_CONNECTION"]
      823 MOVE                             R56 R33
      824 CALL                             R54 2 0
      825 GETUPVAL                         R55 16
      826 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      828 GETUPVAL                         R56 18
      829 GETTABLEKS                       R55 R56 K73 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      831 MOVE                             R56 R32
      832 CALL                             R54 2 0
      833 GETUPVAL                         R55 16
      834 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      836 GETUPVAL                         R56 18
      837 GETTABLEKS                       R55 R56 K74 ["REMOVE_NODE_INPUT_CONNECTION"]
      839 MOVE                             R56 R31
      840 CALL                             R54 2 0
      841 GETUPVAL                         R55 16
      842 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      844 GETUPVAL                         R56 18
      845 GETTABLEKS                       R55 R56 K75 ["REMOVE_PARAMETER"]
      847 MOVE                             R56 R45
      848 CALL                             R54 2 0
      849 GETUPVAL                         R55 16
      850 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      852 GETUPVAL                         R56 18
      853 GETTABLEKS                       R55 R56 K76 ["RENAME_NODE"]
      855 MOVE                             R56 R39
      856 CALL                             R54 2 0
      857 GETUPVAL                         R55 16
      858 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      860 GETUPVAL                         R56 18
      861 GETTABLEKS                       R55 R56 K77 ["RENAME_PARAMETER"]
      863 MOVE                             R56 R46
      864 CALL                             R54 2 0
      865 GETUPVAL                         R55 16
      866 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      868 GETUPVAL                         R56 18
      869 GETTABLEKS                       R55 R56 K78 ["DELETE_NODE_INSTANCE"]
      871 MOVE                             R56 R47
      872 CALL                             R54 2 0
      873 GETUPVAL                         R55 16
      874 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      876 GETUPVAL                         R56 18
      877 GETTABLEKS                       R55 R56 K79 ["SET_COLLAPSED"]
      879 MOVE                             R56 R17
      880 CALL                             R54 2 0
      881 GETUPVAL                         R55 16
      882 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      884 GETUPVAL                         R56 18
      885 GETTABLEKS                       R55 R56 K80 ["SET_NODE_PROPERTY"]
      887 MOVE                             R56 R36
      888 CALL                             R54 2 0
      889 GETUPVAL                         R55 16
      890 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      892 GETUPVAL                         R56 18
      893 GETTABLEKS                       R55 R56 K81 ["SET_INPUT_PIN_NODE_PROPERTY"]
      895 MOVE                             R56 R37
      896 CALL                             R54 2 0
      897 GETUPVAL                         R55 16
      898 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      900 GETUPVAL                         R56 18
      901 GETTABLEKS                       R55 R56 K82 ["GET_SELECTED_GRAPH_INSTANCE"]
      903 MOVE                             R56 R38
      904 CALL                             R54 2 0
      905 GETUPVAL                         R55 16
      906 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      908 GETUPVAL                         R56 18
      909 GETTABLEKS                       R55 R56 K83 ["REORDER_PINS"]
      911 MOVE                             R56 R40
      912 CALL                             R54 2 0
      913 GETUPVAL                         R55 16
      914 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      916 GETUPVAL                         R56 18
      917 GETTABLEKS                       R55 R56 K84 ["BEGIN_UNDO_TRANSACTION"]
      919 MOVE                             R56 R34
      920 CALL                             R54 2 0
      921 GETUPVAL                         R55 16
      922 GETTABLEKS                       R54 R55 K63 ["useBoundAction"]
      924 GETUPVAL                         R56 18
      925 GETTABLEKS                       R55 R56 K85 ["FINISH_UNDO_TRANSACTION"]
      927 MOVE                             R56 R35
      928 CALL                             R54 2 0
      929 GETUPVAL                         R55 2
      930 GETTABLEKS                       R54 R55 K86 ["createElement"]
      932 GETUPVAL                         R56 19
      933 GETTABLEKS                       R55 R56 K87 ["Provider"]
      935 DUPTABLE                         R56 K89 [{"value"}]
      936 SETTABLEKS                       R51 R56 K88 ["value"]
      938 DUPTABLE                         R57 K91 [{"ContextStack"}]
      939 GETUPVAL                         R59 2
      940 GETTABLEKS                       R58 R59 K86 ["createElement"]
      942 GETUPVAL                         R60 14
      943 GETTABLEKS                       R59 R60 K90 ["ContextStack"]
      945 DUPTABLE                         R60 K93 [{"providers"}]
      946 NEWTABLE                         R61 0 2
      948 GETUPVAL                         R63 2
      949 GETTABLEKS                       R62 R63 K86 ["createElement"]
      951 GETUPVAL                         R64 20
      952 GETTABLEKS                       R63 R64 K87 ["Provider"]
      954 DUPTABLE                         R64 K95 [{"timeRange"}]
      955 SETTABLEKS                       R52 R64 K94 ["timeRange"]
      957 CALL                             R62 2 1
      958 GETUPVAL                         R64 2
      959 GETTABLEKS                       R63 R64 K86 ["createElement"]
      961 GETUPVAL                         R65 21
      962 GETTABLEKS                       R64 R65 K87 ["Provider"]
      964 DUPTABLE                         R65 K97 [{"animationClipsList"}]
      965 SETTABLEKS                       R53 R65 K96 ["animationClipsList"]
      967 CALL                             R63 2 -1
      968 SETLIST                          R61 R62 -1 [1]
      970 SETTABLEKS                       R61 R60 K92 ["providers"]
      972 GETTABLEKS                       R61 R0 K98 ["children"]
      974 CALL                             R58 3 1
      975 SETTABLEKS                       R58 R57 K90 ["ContextStack"]
      977 CALL                             R54 3 -1
      978 RETURN                           R54 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setMap"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["lookup"]
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R1 0 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_50:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_51:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
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
        5 GETTABLEKS                       R3 R4 K0 ["useReplicatedStateListener"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K1 ["GRAPH_PAYLOAD_MAP"]
       10 LOADNIL                          R5
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K2 ["useReplicatedStateListenerCallback"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K3 ["GRAPH_RENDER_INFO"]
       18 GETTABLEKS                       R6 R2 K4 ["setMap"]
       20 CALL                             R4 2 0
       21 GETTABLEKS                       R4 R0 K5 ["testOverrideGraphPayloadMap"]
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETTABLEKS                       R3 R0 K5 ["testOverrideGraphPayloadMap"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K0 ["useReplicatedStateListener"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K6 ["TIME_RANGE"]
       32 GETIMPORT                        R6 K9 [NumberRange.new]
       34 LOADN                            R7 0
       35 LOADN                            R8 10
       36 CALL                             R6 2 -1
       37 CALL                             R4 -1 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K0 ["useReplicatedStateListener"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K10 ["GRAPH_PAYLOAD_GRAPH_RECT"]
       44 GETIMPORT                        R7 K12 [Rect.new]
       46 LOADN                            R8 0
       47 LOADN                            R9 0
       48 LOADN                            R10 0
       49 LOADN                            R11 0
       50 CALL                             R7 4 -1
       51 CALL                             R5 -1 1
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R6 R7 K13 ["useMemo"]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          REF R3
       58 NEWTABLE                         R8 0 2
       60 GETTABLEKS                       R9 R1 K4 ["setMap"]
       62 MOVE                             R10 R3
       63 SETLIST                          R8 R9 2 [1]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R6 R7 K0 ["useReplicatedStateListener"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R7 R8 K14 ["CURRENT_ANIMATION_ID"]
       72 LOADK                            R8 K15 [""]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R7 R8 K0 ["useReplicatedStateListener"]
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R8 R9 K16 ["SOURCE_ASSET_ID"]
       80 LOADNIL                          R9
       81 CALL                             R7 2 1
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R8 R9 K17 ["useCallback"]
       85 DUPCLOSURE                       R9 K18 [PROTO_50]
       86 NEWTABLE                         R10 0 0
       88 CALL                             R8 2 1
       89 GETUPVAL                         R10 4
       90 GETTABLEKS                       R9 R10 K19 ["createComputed"]
       92 DUPCLOSURE                       R10 K20 [PROTO_51]
       93 CALL                             R9 1 1
       94 GETUPVAL                         R10 5
       95 MOVE                             R11 R2
       96 MOVE                             R12 R3
       97 CALL                             R10 2 1
       98 NEWTABLE                         R11 64 0
      100 JUMPIFNOT                        R3 ; [+3]
      101 GETTABLEKS                       R12 R3 K21 ["graphInstanceId"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R12
      105 SETTABLEKS                       R12 R11 K22 ["selectedGraphInstanceId"]
      107 GETUPVAL                         R13 1
      108 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      110 GETUPVAL                         R14 6
      111 GETTABLEKS                       R13 R14 K24 ["REORDER_PINS"]
      113 CALL                             R12 1 1
      114 SETTABLEKS                       R12 R11 K25 ["reorderPinsAsync"]
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      119 GETUPVAL                         R14 6
      120 GETTABLEKS                       R13 R14 K26 ["CREATE_NODE"]
      122 CALL                             R12 1 1
      123 SETTABLEKS                       R12 R11 K27 ["createNodeAsync"]
      125 GETUPVAL                         R13 1
      126 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      128 GETUPVAL                         R14 6
      129 GETTABLEKS                       R13 R14 K28 ["CREATE_PARAMETER"]
      131 CALL                             R12 1 1
      132 SETTABLEKS                       R12 R11 K29 ["createParameterAsync"]
      134 GETUPVAL                         R13 1
      135 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      137 GETUPVAL                         R14 6
      138 GETTABLEKS                       R13 R14 K30 ["CREATE_CONNECTED_PARAMETER"]
      140 CALL                             R12 1 1
      141 SETTABLEKS                       R12 R11 K31 ["createConnectedParameterAsync"]
      143 SETTABLEKS                       R5 R11 K32 ["graphRect"]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      148 GETUPVAL                         R14 6
      149 GETTABLEKS                       R13 R14 K33 ["SELECT_NODE_FROM_NODE_ID"]
      151 CALL                             R12 1 1
      152 SETTABLEKS                       R12 R11 K34 ["selectNodeFromNodeIdAsync"]
      154 GETUPVAL                         R13 1
      155 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      157 GETUPVAL                         R14 6
      158 GETTABLEKS                       R13 R14 K35 ["SELECT_NODES"]
      160 CALL                             R12 1 1
      161 SETTABLEKS                       R12 R11 K36 ["selectNodesAsync"]
      163 GETUPVAL                         R13 1
      164 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      166 GETUPVAL                         R14 6
      167 GETTABLEKS                       R13 R14 K37 ["SELECT_NODES_FROM_RECT"]
      169 CALL                             R12 1 1
      170 SETTABLEKS                       R12 R11 K38 ["selectNodesFromRectAsync"]
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      175 GETUPVAL                         R14 6
      176 GETTABLEKS                       R13 R14 K39 ["SET_NODE_POSITIONS"]
      178 CALL                             R12 1 1
      179 SETTABLEKS                       R12 R11 K40 ["setNodePositionsAsync"]
      181 GETUPVAL                         R13 1
      182 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      184 GETUPVAL                         R14 6
      185 GETTABLEKS                       R13 R14 K41 ["SET_NODE_SIZE"]
      187 CALL                             R12 1 1
      188 SETTABLEKS                       R12 R11 K42 ["setNodeSizeAsync"]
      190 GETUPVAL                         R13 1
      191 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      193 GETUPVAL                         R14 6
      194 GETTABLEKS                       R13 R14 K43 ["SET_NODE_CONNECTION"]
      196 CALL                             R12 1 1
      197 SETTABLEKS                       R12 R11 K44 ["setNodeConnectionAsync"]
      199 GETUPVAL                         R13 1
      200 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      202 GETUPVAL                         R14 6
      203 GETTABLEKS                       R13 R14 K45 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      205 CALL                             R12 1 1
      206 SETTABLEKS                       R12 R11 K46 ["removeNodeOutputConnectionAsync"]
      208 GETUPVAL                         R13 1
      209 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      211 GETUPVAL                         R14 6
      212 GETTABLEKS                       R13 R14 K47 ["REMOVE_NODE_INPUT_CONNECTION"]
      214 CALL                             R12 1 1
      215 SETTABLEKS                       R12 R11 K48 ["removeNodeInputConnectionAsync"]
      217 GETUPVAL                         R13 1
      218 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      220 GETUPVAL                         R14 6
      221 GETTABLEKS                       R13 R14 K49 ["REMOVE_PARAMETER"]
      223 CALL                             R12 1 1
      224 SETTABLEKS                       R12 R11 K50 ["removeParameterAsync"]
      226 GETUPVAL                         R13 1
      227 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      229 GETUPVAL                         R14 6
      230 GETTABLEKS                       R13 R14 K51 ["RENAME_NODE"]
      232 CALL                             R12 1 1
      233 SETTABLEKS                       R12 R11 K52 ["renameNodeAsync"]
      235 GETUPVAL                         R13 1
      236 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      238 GETUPVAL                         R14 6
      239 GETTABLEKS                       R13 R14 K53 ["RENAME_PARAMETER"]
      241 CALL                             R12 1 1
      242 SETTABLEKS                       R12 R11 K54 ["renameParameterAsync"]
      244 GETUPVAL                         R13 1
      245 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      247 GETUPVAL                         R14 6
      248 GETTABLEKS                       R13 R14 K55 ["DELETE_NODE_INSTANCE"]
      250 CALL                             R12 1 1
      251 SETTABLEKS                       R12 R11 K56 ["deleteNodeInstanceAsync"]
      253 GETUPVAL                         R13 1
      254 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      256 GETUPVAL                         R14 6
      257 GETTABLEKS                       R13 R14 K57 ["SET_COLLAPSED"]
      259 CALL                             R12 1 1
      260 SETTABLEKS                       R12 R11 K58 ["setCollapsedAsync"]
      262 GETUPVAL                         R13 1
      263 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      265 GETUPVAL                         R14 6
      266 GETTABLEKS                       R13 R14 K59 ["SET_NODE_PROPERTY"]
      268 CALL                             R12 1 1
      269 SETTABLEKS                       R12 R11 K60 ["setNodePropertyAsync"]
      271 GETUPVAL                         R13 1
      272 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      274 GETUPVAL                         R14 6
      275 GETTABLEKS                       R13 R14 K61 ["SET_INPUT_PIN_NODE_PROPERTY"]
      277 CALL                             R12 1 1
      278 SETTABLEKS                       R12 R11 K62 ["setInputPinNodePropertyAsync"]
      280 SETTABLEKS                       R8 R11 K63 ["getSelectedGraphInstance"]
      282 LOADNIL                          R12
      283 SETTABLEKS                       R12 R11 K64 ["selectedGraphInstance"]
      285 SETTABLEKS                       R6 R11 K65 ["currentAnimationId"]
      287 SETTABLEKS                       R7 R11 K66 ["sourceAssetId"]
      289 GETTABLEKS                       R12 R10 K67 ["getSelectedRect"]
      291 SETTABLEKS                       R12 R11 K67 ["getSelectedRect"]
      293 SETTABLEKS                       R9 R11 K68 ["observeSelectedGraphInstance"]
      295 GETTABLEKS                       R12 R1 K69 ["observe"]
      297 SETTABLEKS                       R12 R11 K70 ["observeGraphNodeById"]
      299 GETTABLEKS                       R12 R2 K69 ["observe"]
      301 SETTABLEKS                       R12 R11 K71 ["observeNodeRenderInfoById"]
      303 GETUPVAL                         R13 1
      304 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      306 GETUPVAL                         R14 6
      307 GETTABLEKS                       R13 R14 K72 ["BEGIN_UNDO_TRANSACTION"]
      309 CALL                             R12 1 1
      310 SETTABLEKS                       R12 R11 K73 ["beginUndoTransaction"]
      312 GETUPVAL                         R13 1
      313 GETTABLEKS                       R12 R13 K23 ["useBoundAction"]
      315 GETUPVAL                         R14 6
      316 GETTABLEKS                       R13 R14 K74 ["FINISH_UNDO_TRANSACTION"]
      318 CALL                             R12 1 1
      319 SETTABLEKS                       R12 R11 K75 ["finishUndoTransaction"]
      321 GETTABLEKS                       R12 R1 K76 ["observeMap"]
      323 SETTABLEKS                       R12 R11 K77 ["observeGraphNodeMap"]
      325 GETTABLEKS                       R12 R2 K76 ["observeMap"]
      327 SETTABLEKS                       R12 R11 K78 ["observeRenderInfoMap"]
      329 GETUPVAL                         R13 3
      330 GETTABLEKS                       R12 R13 K79 ["createElement"]
      332 GETUPVAL                         R14 7
      333 GETTABLEKS                       R13 R14 K80 ["Provider"]
      335 DUPTABLE                         R14 K82 [{"value"}]
      336 SETTABLEKS                       R11 R14 K81 ["value"]
      338 DUPTABLE                         R15 K84 [{"ContextStack"}]
      339 GETUPVAL                         R17 3
      340 GETTABLEKS                       R16 R17 K79 ["createElement"]
      342 GETUPVAL                         R18 8
      343 GETTABLEKS                       R17 R18 K83 ["ContextStack"]
      345 DUPTABLE                         R18 K86 [{"providers"}]
      346 NEWTABLE                         R19 0 1
      348 GETUPVAL                         R21 3
      349 GETTABLEKS                       R20 R21 K79 ["createElement"]
      351 GETUPVAL                         R22 9
      352 GETTABLEKS                       R21 R22 K80 ["Provider"]
      354 DUPTABLE                         R22 K88 [{"timeRange"}]
      355 SETTABLEKS                       R4 R22 K87 ["timeRange"]
      357 CALL                             R20 2 -1
      358 SETLIST                          R19 R20 -1 [1]
      360 SETTABLEKS                       R19 R18 K85 ["providers"]
      362 GETTABLEKS                       R19 R0 K89 ["children"]
      364 CALL                             R16 3 1
      365 SETTABLEKS                       R16 R15 K83 ["ContextStack"]
      367 CALL                             R12 3 -1
      368 CLOSEUPVALS                      R3
      369 RETURN                           R12 -1

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
      109 GETTABLEKS                       R17 R0 K24 ["Parent"]
      111 GETTABLEKS                       R16 R17 K29 ["Signals"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K10 [require]
      116 GETTABLEKS                       R18 R0 K13 ["Contexts"]
      118 GETTABLEKS                       R17 R18 K30 ["TimeRangeContext"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K10 [require]
      123 GETTABLEKS                       R19 R0 K31 ["Hooks"]
      125 GETTABLEKS                       R18 R19 K32 ["useSelection"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K10 [require]
      130 GETTABLEKS                       R20 R0 K31 ["Hooks"]
      132 GETTABLEKS                       R19 R20 K33 ["useSignalDispatcher"]
      134 CALL                             R18 1 1
      135 DUPTABLE                         R19 K66 [{"observeGraphNodeMap", "graphRect", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "createConnectedParameterAsync", "selectNodeFromNodeIdAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "deleteNodeInstanceAsync", "setNodeConnectionAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedRect", "observeGraphNodeById", "observeNodeRenderInfoById", "observeRenderInfoMap", "observeSelectedGraphInstance", "beginUndoTransaction", "finishUndoTransaction", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "sourceAssetId"}]
      136 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      138 LOADK                            R21 K34 ["observeGraphNodeMap"]
      139 CALL                             R20 1 1
      140 SETTABLEKS                       R20 R19 K34 ["observeGraphNodeMap"]
      142 GETIMPORT                        R20 K70 [Rect.new]
      144 LOADN                            R21 0
      145 LOADN                            R22 0
      146 LOADN                            R23 0
      147 LOADN                            R24 0
      148 CALL                             R20 4 1
      149 SETTABLEKS                       R20 R19 K35 ["graphRect"]
      151 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      153 LOADK                            R21 K36 ["reorderPinsAsync"]
      154 CALL                             R20 1 1
      155 SETTABLEKS                       R20 R19 K36 ["reorderPinsAsync"]
      157 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      159 LOADK                            R21 K37 ["createNodeAsync"]
      160 CALL                             R20 1 1
      161 SETTABLEKS                       R20 R19 K37 ["createNodeAsync"]
      163 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      165 LOADK                            R21 K38 ["createParameterAsync"]
      166 CALL                             R20 1 1
      167 SETTABLEKS                       R20 R19 K38 ["createParameterAsync"]
      169 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      171 LOADK                            R21 K39 ["createConnectedParameterAsync"]
      172 CALL                             R20 1 1
      173 SETTABLEKS                       R20 R19 K39 ["createConnectedParameterAsync"]
      175 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      177 LOADK                            R21 K40 ["selectNodeFromNodeIdAsync"]
      178 CALL                             R20 1 1
      179 SETTABLEKS                       R20 R19 K40 ["selectNodeFromNodeIdAsync"]
      181 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      183 LOADK                            R21 K41 ["selectNodesAsync"]
      184 CALL                             R20 1 1
      185 SETTABLEKS                       R20 R19 K41 ["selectNodesAsync"]
      187 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      189 LOADK                            R21 K42 ["selectNodesFromRectAsync"]
      190 CALL                             R20 1 1
      191 SETTABLEKS                       R20 R19 K42 ["selectNodesFromRectAsync"]
      193 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      195 LOADK                            R21 K43 ["setNodePositionsAsync"]
      196 CALL                             R20 1 1
      197 SETTABLEKS                       R20 R19 K43 ["setNodePositionsAsync"]
      199 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      201 LOADK                            R21 K44 ["setNodeSizeAsync"]
      202 CALL                             R20 1 1
      203 SETTABLEKS                       R20 R19 K44 ["setNodeSizeAsync"]
      205 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      207 LOADK                            R21 K45 ["removeNodeInputConnectionAsync"]
      208 CALL                             R20 1 1
      209 SETTABLEKS                       R20 R19 K45 ["removeNodeInputConnectionAsync"]
      211 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      213 LOADK                            R21 K46 ["removeNodeOutputConnectionAsync"]
      214 CALL                             R20 1 1
      215 SETTABLEKS                       R20 R19 K46 ["removeNodeOutputConnectionAsync"]
      217 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      219 LOADK                            R21 K47 ["removeParameterAsync"]
      220 CALL                             R20 1 1
      221 SETTABLEKS                       R20 R19 K47 ["removeParameterAsync"]
      223 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      225 LOADK                            R21 K48 ["renameNodeAsync"]
      226 CALL                             R20 1 1
      227 SETTABLEKS                       R20 R19 K48 ["renameNodeAsync"]
      229 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      231 LOADK                            R21 K49 ["renameParameterAsync"]
      232 CALL                             R20 1 1
      233 SETTABLEKS                       R20 R19 K49 ["renameParameterAsync"]
      235 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      237 LOADK                            R21 K50 ["deleteNodeInstanceAsync"]
      238 CALL                             R20 1 1
      239 SETTABLEKS                       R20 R19 K50 ["deleteNodeInstanceAsync"]
      241 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      243 LOADK                            R21 K71 ["setNewConnection"]
      244 CALL                             R20 1 1
      245 SETTABLEKS                       R20 R19 K51 ["setNodeConnectionAsync"]
      247 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      249 LOADK                            R21 K52 ["setCollapsedAsync"]
      250 CALL                             R20 1 1
      251 SETTABLEKS                       R20 R19 K52 ["setCollapsedAsync"]
      253 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      255 LOADK                            R21 K53 ["setNodePropertyAsync"]
      256 CALL                             R20 1 1
      257 SETTABLEKS                       R20 R19 K53 ["setNodePropertyAsync"]
      259 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      261 LOADK                            R21 K54 ["setInputPinNodePropertyAsync"]
      262 CALL                             R20 1 1
      263 SETTABLEKS                       R20 R19 K54 ["setInputPinNodePropertyAsync"]
      265 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      267 LOADK                            R21 K55 ["getSelectedRect"]
      268 CALL                             R20 1 1
      269 SETTABLEKS                       R20 R19 K55 ["getSelectedRect"]
      271 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      273 LOADK                            R21 K56 ["observeGraphNodeById"]
      274 CALL                             R20 1 1
      275 SETTABLEKS                       R20 R19 K56 ["observeGraphNodeById"]
      277 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      279 LOADK                            R21 K57 ["observeNodeRenderInfoById"]
      280 CALL                             R20 1 1
      281 SETTABLEKS                       R20 R19 K57 ["observeNodeRenderInfoById"]
      283 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      285 LOADK                            R21 K58 ["observeRenderInfoMap"]
      286 CALL                             R20 1 1
      287 SETTABLEKS                       R20 R19 K58 ["observeRenderInfoMap"]
      289 GETTABLEKS                       R20 R15 K72 ["createSignal"]
      291 LOADNIL                          R21
      292 CALL                             R20 1 1
      293 SETTABLEKS                       R20 R19 K59 ["observeSelectedGraphInstance"]
      295 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      297 LOADK                            R21 K60 ["beginUndoTransaction"]
      298 CALL                             R20 1 1
      299 SETTABLEKS                       R20 R19 K60 ["beginUndoTransaction"]
      301 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      303 LOADK                            R21 K61 ["finishUndoTransaction"]
      304 CALL                             R20 1 1
      305 SETTABLEKS                       R20 R19 K61 ["finishUndoTransaction"]
      307 GETTABLEKS                       R20 R12 K67 ["createUnimplemented"]
      309 LOADK                            R21 K62 ["getSelectedGraphInstance"]
      310 CALL                             R20 1 1
      311 SETTABLEKS                       R20 R19 K62 ["getSelectedGraphInstance"]
      313 LOADNIL                          R20
      314 SETTABLEKS                       R20 R19 K63 ["selectedGraphInstance"]
      316 LOADNIL                          R20
      317 SETTABLEKS                       R20 R19 K64 ["currentAnimationId"]
      319 LOADNIL                          R20
      320 SETTABLEKS                       R20 R19 K65 ["sourceAssetId"]
      322 GETTABLEKS                       R20 R11 K73 ["createContext"]
      324 MOVE                             R21 R19
      325 CALL                             R20 1 1
      326 DUPTABLE                         R21 K81 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "SOURCE_ASSET_ID", "UNDO_TRANSACTION"}]
      327 LOADK                            R22 K82 ["NativeGraphContext_GraphPayloadMap"]
      328 SETTABLEKS                       R22 R21 K74 ["GRAPH_PAYLOAD_MAP"]
      330 LOADK                            R22 K83 ["NativeGraphContext_GraphRenderInfo"]
      331 SETTABLEKS                       R22 R21 K75 ["GRAPH_RENDER_INFO"]
      333 LOADK                            R22 K84 ["NativeGraphContext_TimeRange"]
      334 SETTABLEKS                       R22 R21 K76 ["TIME_RANGE"]
      336 LOADK                            R22 K85 ["NativeGraphContext_GraphPayloadGraphRect"]
      337 SETTABLEKS                       R22 R21 K77 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      339 LOADK                            R22 K86 ["NativeGraphContext_CurrentAnimationId"]
      340 SETTABLEKS                       R22 R21 K78 ["CURRENT_ANIMATION_ID"]
      342 LOADK                            R22 K87 ["NativeGraphContext_SourceAssetId"]
      343 SETTABLEKS                       R22 R21 K79 ["SOURCE_ASSET_ID"]
      345 LOADK                            R22 K88 ["NativeGraphContext_UndoTransaction"]
      346 SETTABLEKS                       R22 R21 K80 ["UNDO_TRANSACTION"]
      348 DUPTABLE                         R22 K111 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SELECT_NODE_FROM_NODE_ID", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      349 LOADK                            R23 K112 ["NativeGraphContext_CreateNode"]
      350 SETTABLEKS                       R23 R22 K89 ["CREATE_NODE"]
      352 LOADK                            R23 K113 ["NativeGraphContext_CreateParameterAsync"]
      353 SETTABLEKS                       R23 R22 K90 ["CREATE_PARAMETER"]
      355 LOADK                            R23 K114 ["NativeGraphContext_CreateConnectedParameterAsync"]
      356 SETTABLEKS                       R23 R22 K91 ["CREATE_CONNECTED_PARAMETER"]
      358 LOADK                            R23 K115 ["NativeGraphContext_GetSelectedGraphInstance"]
      359 SETTABLEKS                       R23 R22 K92 ["GET_SELECTED_GRAPH_INSTANCE"]
      361 LOADK                            R23 K116 ["NativeGraphContext_SetNodeConnectionAsync"]
      362 SETTABLEKS                       R23 R22 K93 ["SET_NODE_CONNECTION"]
      364 LOADK                            R23 K117 ["NativeGraphContext_setNodePropertyAsync"]
      365 SETTABLEKS                       R23 R22 K94 ["SET_NODE_PROPERTY"]
      367 LOADK                            R23 K118 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      368 SETTABLEKS                       R23 R22 K95 ["SET_INPUT_PIN_NODE_PROPERTY"]
      370 LOADK                            R23 K119 ["NativeGraphContext_ReorderPinsAsync"]
      371 SETTABLEKS                       R23 R22 K96 ["REORDER_PINS"]
      373 LOADK                            R23 K120 ["NativeGraphContext_RemoveNodeInputConnection"]
      374 SETTABLEKS                       R23 R22 K97 ["REMOVE_NODE_INPUT_CONNECTION"]
      376 LOADK                            R23 K121 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      377 SETTABLEKS                       R23 R22 K98 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      379 LOADK                            R23 K122 ["NativeGraphContext_RemoveParameterAsync"]
      380 SETTABLEKS                       R23 R22 K99 ["REMOVE_PARAMETER"]
      382 LOADK                            R23 K123 ["NativeGraphContext_RenameNodeAsync"]
      383 SETTABLEKS                       R23 R22 K100 ["RENAME_NODE"]
      385 LOADK                            R23 K124 ["NativeGraphContext_RenameParameterAsync"]
      386 SETTABLEKS                       R23 R22 K101 ["RENAME_PARAMETER"]
      388 LOADK                            R23 K125 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      389 SETTABLEKS                       R23 R22 K102 ["DELETE_NODE_INSTANCE"]
      391 LOADK                            R23 K126 ["NativeGraphContext_SetNodeSizeAsync"]
      392 SETTABLEKS                       R23 R22 K103 ["SET_NODE_SIZE"]
      394 LOADK                            R23 K127 ["NativeGraphContext_SetCollapsedAsync"]
      395 SETTABLEKS                       R23 R22 K104 ["SET_COLLAPSED"]
      397 LOADK                            R23 K128 ["NativeGraphContext_SetNodePositionsAsync"]
      398 SETTABLEKS                       R23 R22 K105 ["SET_NODE_POSITIONS"]
      400 LOADK                            R23 K129 ["NativeGraphContext_SelectNodeFromNodeId"]
      401 SETTABLEKS                       R23 R22 K106 ["SELECT_NODE_FROM_NODE_ID"]
      403 LOADK                            R23 K130 ["NativeGraphContext_SelectNodes"]
      404 SETTABLEKS                       R23 R22 K107 ["SELECT_NODES"]
      406 LOADK                            R23 K131 ["NativeGraphContext_SelectNodesFromRect"]
      407 SETTABLEKS                       R23 R22 K108 ["SELECT_NODES_FROM_RECT"]
      409 LOADK                            R23 K132 ["NativeGraphContext_beginUndoTransaction"]
      410 SETTABLEKS                       R23 R22 K109 ["BEGIN_UNDO_TRANSACTION"]
      412 LOADK                            R23 K133 ["NativeGraphContext_finishUndoTransaction"]
      413 SETTABLEKS                       R23 R22 K110 ["FINISH_UNDO_TRANSACTION"]
      415 NEWTABLE                         R23 2 0
      417 LOADB                            R24 0
      418 SETTABLEKS                       R24 R23 K134 ["boolean"]
      420 LOADN                            R24 0
      421 SETTABLEKS                       R24 R23 K135 ["number"]
      423 NEWTABLE                         R24 16 0
      425 LOADN                            R25 1
      426 SETTABLEKS                       R25 R24 K136 ["Speed"]
      428 LOADN                            R25 1
      429 SETTABLEKS                       R25 R24 K137 ["PlayCount"]
      431 LOADN                            R25 0
      432 SETTABLEKS                       R25 R24 K138 ["StartOffset"]
      434 LOADN                            R25 0
      435 SETTABLEKS                       R25 R24 K139 ["EndOffset"]
      437 LOADN                            R25 0
      438 SETTABLEKS                       R25 R24 K140 ["X"]
      440 LOADN                            R25 0
      441 SETTABLEKS                       R25 R24 K141 ["Y"]
      443 LOADN                            R25 0
      444 SETTABLEKS                       R25 R24 K142 ["LoopCount"]
      446 LOADN                            R25 0
      447 SETTABLEKS                       R25 R24 K143 ["Weight"]
      449 LOADN                            R25 0
      450 SETTABLEKS                       R25 R24 K144 ["Position"]
      452 GETIMPORT                        R25 K148 [Enum.AnimationNodePlayMode.Loop]
      454 SETTABLEKS                       R25 R24 K149 ["PlayMode"]
      456 GETIMPORT                        R25 K152 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      458 SETTABLEKS                       R25 R24 K153 ["InputMode"]
      460 LOADB                            R25 0
      461 SETTABLEKS                       R25 R24 K154 ["Reverse"]
      463 LOADB                            R25 0
      464 SETTABLEKS                       R25 R24 K155 ["Invert"]
      466 DUPCLOSURE                       R25 K156 [PROTO_1]
      467 CAPTURE                          VAL R11
      468 CAPTURE                          VAL R13
      469 DUPCLOSURE                       R26 K157 [PROTO_48]
      470 CAPTURE                          VAL R18
      471 CAPTURE                          VAL R17
      472 CAPTURE                          VAL R11
      473 CAPTURE                          VAL R14
      474 CAPTURE                          VAL R15
      475 CAPTURE                          VAL R7
      476 CAPTURE                          VAL R6
      477 CAPTURE                          VAL R8
      478 CAPTURE                          VAL R2
      479 CAPTURE                          VAL R1
      480 CAPTURE                          VAL R3
      481 CAPTURE                          VAL R24
      482 CAPTURE                          VAL R23
      483 CAPTURE                          VAL R5
      484 CAPTURE                          VAL R12
      485 CAPTURE                          VAL R25
      486 CAPTURE                          VAL R9
      487 CAPTURE                          VAL R21
      488 CAPTURE                          VAL R22
      489 CAPTURE                          VAL R20
      490 CAPTURE                          VAL R16
      491 CAPTURE                          VAL R4
      492 DUPCLOSURE                       R27 K158 [PROTO_52]
      493 CAPTURE                          VAL R18
      494 CAPTURE                          VAL R9
      495 CAPTURE                          VAL R21
      496 CAPTURE                          VAL R11
      497 CAPTURE                          VAL R15
      498 CAPTURE                          VAL R25
      499 CAPTURE                          VAL R22
      500 CAPTURE                          VAL R20
      501 CAPTURE                          VAL R12
      502 CAPTURE                          VAL R16
      503 DUPTABLE                         R28 K162 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      504 SETTABLEKS                       R20 R28 K159 ["Context"]
      506 SETTABLEKS                       R26 R28 K160 ["EditableDataModelProvider"]
      508 SETTABLEKS                       R27 R28 K161 ["UIDataModelProvider"]
      510 RETURN                           R28 1
