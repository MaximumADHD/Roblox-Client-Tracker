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
       31 GETTABLEKS                       R11 R7 K10 ["Y"]
       33 GETTABLEKS                       R13 R7 K9 ["X"]
       35 GETTABLEKS                       R14 R8 K9 ["X"]
       37 ADD                              R12 R13 R14
       38 GETTABLEKS                       R14 R7 K10 ["Y"]
       40 GETTABLEKS                       R15 R8 K10 ["Y"]
       42 ADD                              R13 R14 R15
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_GraphDirty"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["RBX_SourceAssetId"]
        7 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        9 CALL                             R1 2 1
       10 JUMPIFNOTEQKB                    R0 FALSE ; [+27]
       12 JUMPIFNOT                        R1 ; [+25]
       13 JUMPIFEQKS                       R1 K3 [""] ; [+24]
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K5 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K6 ["number"] ; [+8]
       22 LOADK                            R3 K7 ["rbxassetid://%*"]
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R3 K8 ["format"]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 JUMP                             ; [+5]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K10 [tostring]
       33 CALL                             R2 1 1
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 2
       39 GETUPVAL                         R4 0
       40 NAMECALL                         R2 R2 K11 ["RegisterAnimationClip"]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 1
       44 MOVE                             R4 R2
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_17:
        0 JUMPIFEQKS                       R0 K0 ["RBX_GraphDirty"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["RBX_SourceAssetId"] ; [+3]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 MOVE                             R1 R0
       13 CALL                             R1 0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K1 ["AttributeChanged"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R1 R1 K2 ["Connect"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1

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
       39 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K0 ["NativeGraphContext"]
        9 LOADK                            R4 K1 ["createParameterAsync"]
       10 NAMECALL                         R1 R1 K2 ["TryBeginRecording"]
       12 CALL                             R1 3 1
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R4 R0 K3 ["sourcePinNodeId"]
       16 NAMECALL                         R2 R2 K4 ["idToInstance"]
       18 CALL                             R2 2 1
       19 JUMPIFEQKNIL                     R2 ; [+6]
       21 LOADK                            R5 K5 ["AnimationNodeDefinition"]
       22 NAMECALL                         R3 R2 K6 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+5]
       26 GETIMPORT                        R3 K8 [warn]
       28 LOADK                            R4 K9 ["Failed to find node definition instance for createParameterAsync"]
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
       31 LOADK                            R5 K5 ["AnimationNodeDefinition"]
       32 NAMECALL                         R3 R2 K6 ["IsA"]
       34 CALL                             R3 2 1
       35 JUMPIF                           R3 ; [+5]
       36 GETIMPORT                        R3 K8 [warn]
       38 LOADK                            R4 K10 ["Instance is not an AnimationNodeDefinition"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R4 R5 K12 ["getParameterType"]
       44 GETTABLEKS                       R5 R2 K13 ["NodeType"]
       46 GETTABLEKS                       R6 R0 K14 ["sourcePinName"]
       48 CALL                             R4 2 1
       49 ORK                              R3 R4 K11 ["unknown"]
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R4 R5 K15 ["getOrCreateParameterInstance"]
       53 MOVE                             R5 R2
       54 GETTABLEKS                       R6 R0 K14 ["sourcePinName"]
       56 MOVE                             R7 R3
       57 CALL                             R4 3 1
       58 LOADK                            R6 K16 ["%*Param"]
       59 MOVE                             R8 R3
       60 NAMECALL                         R6 R6 K17 ["format"]
       62 CALL                             R6 2 1
       63 MOVE                             R5 R6
       64 GETUPVAL                         R6 0
       65 MOVE                             R8 R5
       66 NAMECALL                         R6 R6 K18 ["GetAttribute"]
       68 CALL                             R6 2 1
       69 JUMPIF                           R6 ; [+13]
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R8 R0 K14 ["sourcePinName"]
       73 GETTABLE                         R6 R7 R8
       74 JUMPIFNOTEQKNIL                  R6 ; [+2]
       76 LOADN                            R6 0
       77 GETUPVAL                         R7 0
       78 MOVE                             R9 R5
       79 MOVE                             R10 R6
       80 NAMECALL                         R7 R7 K19 ["SetAttribute"]
       82 CALL                             R7 3 0
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R6 R7 K20 ["setParameterBindingName"]
       86 MOVE                             R7 R2
       87 GETTABLEKS                       R8 R0 K14 ["sourcePinName"]
       89 MOVE                             R9 R5
       90 CALL                             R6 3 0
       91 GETUPVAL                         R7 6
       92 GETTABLEKS                       R6 R7 K21 ["selectionService"]
       94 NEWTABLE                         R8 0 1
       96 MOVE                             R9 R4
       97 SETLIST                          R8 R9 1 [1]
       99 NAMECALL                         R6 R6 K22 ["Set"]
      101 CALL                             R6 2 0
      102 JUMPIFNOT                        R1 ; [+7]
      103 GETUPVAL                         R6 2
      104 MOVE                             R8 R1
      105 GETIMPORT                        R9 K26 [Enum.FinishRecordingOperation.Commit]
      107 NAMECALL                         R6 R6 K27 ["FinishRecording"]
      109 CALL                             R6 3 0
      110 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R2 R5 K0 ["lookup"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R7 1
       10 MOVE                             R9 R5
       11 NAMECALL                         R7 R7 K1 ["idToInstance"]
       13 CALL                             R7 2 1
       14 JUMPIFEQKNIL                     R7 ; [+34]
       16 LOADK                            R10 K2 ["AnimationNodeDefinition"]
       17 NAMECALL                         R8 R7 K3 ["IsA"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+28]
       21 LOADB                            R9 0
       22 JUMPIFEQKNIL                     R7 ; [+5]
       24 LOADK                            R11 K2 ["AnimationNodeDefinition"]
       25 NAMECALL                         R9 R7 K3 ["IsA"]
       27 CALL                             R9 2 1
       28 FASTCALL2K                       ASSERT R9 K4 ; [+4]
       30 LOADK                            R10 K4 ["Not an AnimationNodeDefinition"]
       31 GETIMPORT                        R8 K6 [assert]
       33 CALL                             R8 2 0
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R8 R9 K7 ["getParameterBindingNameFromParameterName"]
       37 MOVE                             R9 R7
       38 MOVE                             R10 R0
       39 CALL                             R8 2 1
       40 JUMPIFEQKNIL                     R8 ; [+8]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R9 R10 K8 ["setParameterBindingName"]
       45 MOVE                             R10 R7
       46 MOVE                             R11 R8
       47 MOVE                             R12 R1
       48 CALL                             R9 3 0
       49 FORGLOOP                         R2 2 ; [-41]
       51 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 NEWTABLE                         R0 0 1
        4 GETUPVAL                         R1 0
        5 SETLIST                          R0 R1 1 [1]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_36:
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
       25 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R9 0 0
       32 CALL                             R7 2 2
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R9 R10 K7 ["useEffect"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R11 0 1
       41 MOVE                             R12 R3
       42 SETLIST                          R11 R12 1 [1]
       44 CALL                             R9 2 0
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R9 R10 K6 ["useMemo"]
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R7
       51 NEWTABLE                         R11 0 1
       53 MOVE                             R12 R7
       54 SETLIST                          R11 R12 1 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R10 R11 K7 ["useEffect"]
       60 NEWCLOSURE                       R11 P3
       61 CAPTURE                          VAL R9
       62 NEWTABLE                         R12 0 1
       64 MOVE                             R13 R9
       65 SETLIST                          R12 R13 1 [1]
       67 CALL                             R10 2 0
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R11 R12 K0 ["useContext"]
       71 GETUPVAL                         R13 6
       72 GETTABLEKS                       R12 R13 K1 ["Context"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R10 R11 K8 ["instanceRegistry"]
       77 GETUPVAL                         R12 2
       78 GETTABLEKS                       R11 R12 K6 ["useMemo"]
       80 NEWCLOSURE                       R12 P4
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R7
       85 NEWTABLE                         R13 0 3
       87 MOVE                             R14 R10
       88 MOVE                             R15 R9
       89 MOVE                             R16 R7
       90 SETLIST                          R13 R14 3 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R12 R13 K2 ["useState"]
       96 LOADNIL                          R13
       97 CALL                             R12 1 2
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R14 R15 K2 ["useState"]
      101 NEWTABLE                         R15 0 0
      103 CALL                             R14 1 2
      104 GETUPVAL                         R17 2
      105 GETTABLEKS                       R16 R17 K7 ["useEffect"]
      107 NEWCLOSURE                       R17 P5
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R6
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 NEWTABLE                         R18 0 5
      119 MOVE                             R19 R11
      120 MOVE                             R20 R13
      121 MOVE                             R21 R6
      122 GETTABLEKS                       R22 R1 K9 ["setMap"]
      124 GETTABLEKS                       R23 R2 K9 ["setMap"]
      126 SETLIST                          R18 R19 5 [1]
      128 CALL                             R16 2 0
      129 GETUPVAL                         R17 2
      130 GETTABLEKS                       R16 R17 K10 ["useCallback"]
      132 NEWCLOSURE                       R17 P6
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U7
      135 NEWTABLE                         R18 0 1
      137 MOVE                             R19 R10
      138 SETLIST                          R18 R19 1 [1]
      140 CALL                             R16 2 1
      141 GETUPVAL                         R18 2
      142 GETTABLEKS                       R17 R18 K10 ["useCallback"]
      144 NEWCLOSURE                       R18 P7
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          VAL R10
      147 CAPTURE                          UPVAL U7
      148 NEWTABLE                         R19 0 1
      150 MOVE                             R20 R10
      151 SETLIST                          R19 R20 1 [1]
      153 CALL                             R17 2 1
      154 GETUPVAL                         R19 2
      155 GETTABLEKS                       R18 R19 K10 ["useCallback"]
      157 NEWCLOSURE                       R19 P8
      158 CAPTURE                          VAL R10
      159 CAPTURE                          UPVAL U7
      160 NEWTABLE                         R20 0 1
      162 MOVE                             R21 R10
      163 SETLIST                          R20 R21 1 [1]
      165 CALL                             R18 2 1
      166 GETUPVAL                         R20 2
      167 GETTABLEKS                       R19 R20 K10 ["useCallback"]
      169 NEWCLOSURE                       R20 P9
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R10
      172 NEWTABLE                         R21 0 3
      174 MOVE                             R22 R10
      175 GETTABLEKS                       R23 R4 K11 ["selectionService"]
      177 MOVE                             R24 R9
      178 SETLIST                          R21 R22 3 [1]
      180 CALL                             R19 2 1
      181 GETUPVAL                         R21 2
      182 GETTABLEKS                       R20 R21 K10 ["useCallback"]
      184 NEWCLOSURE                       R21 P10
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R10
      189 NEWTABLE                         R22 0 4
      191 GETTABLEKS                       R23 R2 K12 ["get"]
      193 GETTABLEKS                       R24 R4 K11 ["selectionService"]
      195 MOVE                             R25 R10
      196 MOVE                             R26 R12
      197 SETLIST                          R22 R23 4 [1]
      199 CALL                             R20 2 1
      200 GETUPVAL                         R22 2
      201 GETTABLEKS                       R21 R22 K6 ["useMemo"]
      203 NEWCLOSURE                       R22 P11
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R10
      206 NEWTABLE                         R23 0 2
      208 MOVE                             R24 R10
      209 MOVE                             R25 R12
      210 SETLIST                          R23 R24 2 [1]
      212 CALL                             R21 2 1
      213 GETUPVAL                         R23 2
      214 GETTABLEKS                       R22 R23 K2 ["useState"]
      216 LOADK                            R23 K13 [""]
      217 CALL                             R22 1 2
      218 GETUPVAL                         R25 2
      219 GETTABLEKS                       R24 R25 K7 ["useEffect"]
      221 NEWCLOSURE                       R25 P12
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R23
      224 CAPTURE                          UPVAL U9
      225 NEWTABLE                         R26 0 1
      227 MOVE                             R27 R21
      228 SETLIST                          R26 R27 1 [1]
      230 CALL                             R24 2 0
      231 GETUPVAL                         R25 2
      232 GETTABLEKS                       R24 R25 K7 ["useEffect"]
      234 NEWCLOSURE                       R25 P13
      235 CAPTURE                          VAL R22
      236 NEWTABLE                         R26 0 1
      238 MOVE                             R27 R22
      239 SETLIST                          R26 R27 1 [1]
      241 CALL                             R24 2 0
      242 GETUPVAL                         R25 2
      243 GETTABLEKS                       R24 R25 K10 ["useCallback"]
      245 NEWCLOSURE                       R25 P14
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R12
      248 CAPTURE                          UPVAL U8
      249 CAPTURE                          UPVAL U7
      250 CAPTURE                          VAL R10
      251 CAPTURE                          UPVAL U10
      252 CAPTURE                          VAL R4
      253 NEWTABLE                         R26 0 4
      255 GETTABLEKS                       R27 R4 K11 ["selectionService"]
      257 MOVE                             R28 R21
      258 MOVE                             R29 R12
      259 MOVE                             R30 R10
      260 SETLIST                          R26 R27 4 [1]
      262 CALL                             R24 2 1
      263 GETUPVAL                         R26 2
      264 GETTABLEKS                       R25 R26 K10 ["useCallback"]
      266 NEWCLOSURE                       R26 P15
      267 CAPTURE                          VAL R21
      268 CAPTURE                          VAL R12
      269 CAPTURE                          UPVAL U8
      270 CAPTURE                          VAL R10
      271 CAPTURE                          UPVAL U7
      272 CAPTURE                          UPVAL U11
      273 CAPTURE                          VAL R4
      274 NEWTABLE                         R27 0 3
      276 GETTABLEKS                       R28 R4 K11 ["selectionService"]
      278 MOVE                             R29 R21
      279 MOVE                             R30 R10
      280 SETLIST                          R27 R28 3 [1]
      282 CALL                             R25 2 1
      283 GETUPVAL                         R27 2
      284 GETTABLEKS                       R26 R27 K10 ["useCallback"]
      286 NEWCLOSURE                       R27 P16
      287 CAPTURE                          VAL R12
      288 CAPTURE                          UPVAL U8
      289 CAPTURE                          UPVAL U7
      290 CAPTURE                          VAL R10
      291 NEWTABLE                         R28 0 1
      293 MOVE                             R29 R12
      294 SETLIST                          R28 R29 1 [1]
      296 CALL                             R26 2 1
      297 GETUPVAL                         R28 2
      298 GETTABLEKS                       R27 R28 K10 ["useCallback"]
      300 NEWCLOSURE                       R28 P17
      301 CAPTURE                          VAL R12
      302 CAPTURE                          UPVAL U8
      303 CAPTURE                          UPVAL U7
      304 CAPTURE                          VAL R10
      305 NEWTABLE                         R29 0 1
      307 MOVE                             R30 R12
      308 SETLIST                          R29 R30 1 [1]
      310 CALL                             R27 2 1
      311 GETUPVAL                         R29 2
      312 GETTABLEKS                       R28 R29 K10 ["useCallback"]
      314 NEWCLOSURE                       R29 P18
      315 CAPTURE                          VAL R12
      316 CAPTURE                          UPVAL U8
      317 CAPTURE                          UPVAL U7
      318 CAPTURE                          VAL R10
      319 NEWTABLE                         R30 0 2
      321 MOVE                             R31 R10
      322 MOVE                             R32 R12
      323 SETLIST                          R30 R31 2 [1]
      325 CALL                             R28 2 1
      326 GETUPVAL                         R30 2
      327 GETTABLEKS                       R29 R30 K10 ["useCallback"]
      329 NEWCLOSURE                       R30 P19
      330 CAPTURE                          UPVAL U8
      331 CAPTURE                          VAL R10
      332 CAPTURE                          UPVAL U9
      333 NEWTABLE                         R31 0 1
      335 MOVE                             R32 R10
      336 SETLIST                          R31 R32 1 [1]
      338 CALL                             R29 2 1
      339 GETUPVAL                         R31 2
      340 GETTABLEKS                       R30 R31 K10 ["useCallback"]
      342 NEWCLOSURE                       R31 P20
      343 CAPTURE                          UPVAL U8
      344 CAPTURE                          VAL R10
      345 NEWTABLE                         R32 0 1
      347 MOVE                             R33 R12
      348 SETLIST                          R32 R33 1 [1]
      350 CALL                             R30 2 1
      351 GETUPVAL                         R32 2
      352 GETTABLEKS                       R31 R32 K10 ["useCallback"]
      354 NEWCLOSURE                       R32 P21
      355 CAPTURE                          VAL R21
      356 NEWTABLE                         R33 0 1
      358 MOVE                             R34 R21
      359 SETLIST                          R33 R34 1 [1]
      361 CALL                             R31 2 1
      362 GETUPVAL                         R33 2
      363 GETTABLEKS                       R32 R33 K10 ["useCallback"]
      365 NEWCLOSURE                       R33 P22
      366 CAPTURE                          UPVAL U8
      367 CAPTURE                          VAL R10
      368 CAPTURE                          VAL R1
      369 CAPTURE                          VAL R12
      370 CAPTURE                          UPVAL U7
      371 NEWTABLE                         R34 0 3
      373 MOVE                             R35 R10
      374 MOVE                             R36 R12
      375 GETTABLEKS                       R37 R1 K14 ["observe"]
      377 SETLIST                          R34 R35 3 [1]
      379 CALL                             R32 2 1
      380 GETUPVAL                         R34 2
      381 GETTABLEKS                       R33 R34 K10 ["useCallback"]
      383 NEWCLOSURE                       R34 P23
      384 CAPTURE                          UPVAL U8
      385 CAPTURE                          UPVAL U7
      386 CAPTURE                          VAL R10
      387 NEWTABLE                         R35 0 1
      389 MOVE                             R36 R10
      390 SETLIST                          R35 R36 1 [1]
      392 CALL                             R33 2 1
      393 GETUPVAL                         R35 2
      394 GETTABLEKS                       R34 R35 K10 ["useCallback"]
      396 NEWCLOSURE                       R35 P24
      397 CAPTURE                          VAL R12
      398 CAPTURE                          VAL R10
      399 CAPTURE                          UPVAL U7
      400 NEWTABLE                         R36 0 2
      402 MOVE                             R37 R10
      403 MOVE                             R38 R12
      404 SETLIST                          R36 R37 2 [1]
      406 CALL                             R34 2 1
      407 GETUPVAL                         R35 12
      408 MOVE                             R36 R2
      409 MOVE                             R37 R12
      410 CALL                             R35 2 1
      411 GETUPVAL                         R37 2
      412 GETTABLEKS                       R36 R37 K6 ["useMemo"]
      414 NEWCLOSURE                       R37 P25
      415 CAPTURE                          UPVAL U4
      416 CAPTURE                          VAL R21
      417 NEWTABLE                         R38 0 0
      419 CALL                             R36 2 2
      420 GETUPVAL                         R39 2
      421 GETTABLEKS                       R38 R39 K6 ["useMemo"]
      423 NEWCLOSURE                       R39 P26
      424 CAPTURE                          VAL R37
      425 CAPTURE                          VAL R21
      426 NEWTABLE                         R40 0 2
      428 MOVE                             R41 R37
      429 MOVE                             R42 R21
      430 SETLIST                          R40 R41 2 [1]
      432 CALL                             R38 2 0
      433 DUPTABLE                         R38 K39 [{"graphPayloadMap", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "graphRect", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "renameNodeAsync", "renameParameterAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "getSelectedRect", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById"}]
      434 SETTABLEKS                       R12 R38 K15 ["graphPayloadMap"]
      436 SETTABLEKS                       R33 R38 K16 ["reorderPinsAsync"]
      438 SETTABLEKS                       R24 R38 K17 ["createNodeAsync"]
      440 SETTABLEKS                       R25 R38 K18 ["createParameterAsync"]
      442 SETTABLEKS                       R5 R38 K19 ["graphRect"]
      444 SETTABLEKS                       R19 R38 K20 ["selectNodesAsync"]
      446 SETTABLEKS                       R20 R38 K21 ["selectNodesFromRectAsync"]
      448 SETTABLEKS                       R17 R38 K22 ["setNodePositionsAsync"]
      450 SETTABLEKS                       R18 R38 K23 ["setNodeSizeAsync"]
      452 SETTABLEKS                       R28 R38 K24 ["setNodeConnectionAsync"]
      454 SETTABLEKS                       R27 R38 K25 ["removeNodeOutputConnectionAsync"]
      456 SETTABLEKS                       R26 R38 K26 ["removeNodeInputConnectionAsync"]
      458 SETTABLEKS                       R32 R38 K27 ["renameNodeAsync"]
      460 SETTABLEKS                       R34 R38 K28 ["renameParameterAsync"]
      462 SETTABLEKS                       R16 R38 K29 ["setCollapsedAsync"]
      464 SETTABLEKS                       R29 R38 K30 ["setNodePropertyAsync"]
      466 SETTABLEKS                       R30 R38 K31 ["setInputPinNodePropertyAsync"]
      468 SETTABLEKS                       R31 R38 K32 ["getSelectedGraphInstance"]
      470 SETTABLEKS                       R21 R38 K33 ["selectedGraphInstance"]
      472 SETTABLEKS                       R22 R38 K34 ["currentAnimationId"]
      474 GETTABLEKS                       R39 R35 K35 ["getSelectedRect"]
      476 SETTABLEKS                       R39 R38 K35 ["getSelectedRect"]
      478 SETTABLEKS                       R36 R38 K36 ["observeSelectedGraphInstance"]
      480 GETTABLEKS                       R39 R1 K14 ["observe"]
      482 SETTABLEKS                       R39 R38 K37 ["observeGraphNodeById"]
      484 GETTABLEKS                       R39 R2 K14 ["observe"]
      486 SETTABLEKS                       R39 R38 K38 ["observeNodeRenderInfoById"]
      488 GETUPVAL                         R40 2
      489 GETTABLEKS                       R39 R40 K6 ["useMemo"]
      491 DUPCLOSURE                       R40 K40 [PROTO_34]
      492 NEWTABLE                         R41 0 0
      494 CALL                             R39 2 1
      495 GETUPVAL                         R41 2
      496 GETTABLEKS                       R40 R41 K6 ["useMemo"]
      498 NEWCLOSURE                       R41 P28
      499 CAPTURE                          VAL R21
      500 NEWTABLE                         R42 0 2
      502 MOVE                             R43 R21
      503 MOVE                             R44 R12
      504 SETLIST                          R42 R43 2 [1]
      506 CALL                             R40 2 1
      507 GETUPVAL                         R42 13
      508 GETTABLEKS                       R41 R42 K41 ["useReplicatedState"]
      510 GETUPVAL                         R43 14
      511 GETTABLEKS                       R42 R43 K42 ["GRAPH_PAYLOAD_MAP"]
      513 MOVE                             R43 R12
      514 CALL                             R41 2 0
      515 GETUPVAL                         R42 13
      516 GETTABLEKS                       R41 R42 K41 ["useReplicatedState"]
      518 GETUPVAL                         R43 14
      519 GETTABLEKS                       R42 R43 K43 ["GRAPH_RENDER_INFO"]
      521 MOVE                             R43 R14
      522 CALL                             R41 2 0
      523 GETUPVAL                         R42 13
      524 GETTABLEKS                       R41 R42 K41 ["useReplicatedState"]
      526 GETUPVAL                         R43 14
      527 GETTABLEKS                       R42 R43 K44 ["TIME_RANGE"]
      529 MOVE                             R43 R39
      530 CALL                             R41 2 0
      531 GETUPVAL                         R42 13
      532 GETTABLEKS                       R41 R42 K41 ["useReplicatedState"]
      534 GETUPVAL                         R43 14
      535 GETTABLEKS                       R42 R43 K45 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      537 MOVE                             R43 R5
      538 CALL                             R41 2 0
      539 GETUPVAL                         R42 13
      540 GETTABLEKS                       R41 R42 K41 ["useReplicatedState"]
      542 GETUPVAL                         R43 14
      543 GETTABLEKS                       R42 R43 K46 ["CURRENT_ANIMATION_ID"]
      545 MOVE                             R43 R22
      546 CALL                             R41 2 0
      547 GETUPVAL                         R42 13
      548 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      550 GETUPVAL                         R43 15
      551 GETTABLEKS                       R42 R43 K48 ["CREATE_NODE"]
      553 MOVE                             R43 R24
      554 CALL                             R41 2 0
      555 GETUPVAL                         R42 13
      556 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      558 GETUPVAL                         R43 15
      559 GETTABLEKS                       R42 R43 K49 ["CREATE_PARAMETER"]
      561 MOVE                             R43 R25
      562 CALL                             R41 2 0
      563 GETUPVAL                         R42 13
      564 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      566 GETUPVAL                         R43 15
      567 GETTABLEKS                       R42 R43 K50 ["SELECT_NODES"]
      569 MOVE                             R43 R19
      570 CALL                             R41 2 0
      571 GETUPVAL                         R42 13
      572 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      574 GETUPVAL                         R43 15
      575 GETTABLEKS                       R42 R43 K51 ["SELECT_NODES_FROM_RECT"]
      577 MOVE                             R43 R20
      578 CALL                             R41 2 0
      579 GETUPVAL                         R42 13
      580 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      582 GETUPVAL                         R43 15
      583 GETTABLEKS                       R42 R43 K52 ["SET_NODE_POSITIONS"]
      585 MOVE                             R43 R17
      586 CALL                             R41 2 0
      587 GETUPVAL                         R42 13
      588 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      590 GETUPVAL                         R43 15
      591 GETTABLEKS                       R42 R43 K53 ["SET_NODE_SIZE"]
      593 MOVE                             R43 R18
      594 CALL                             R41 2 0
      595 GETUPVAL                         R42 13
      596 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      598 GETUPVAL                         R43 15
      599 GETTABLEKS                       R42 R43 K54 ["SET_NODE_CONNECTION"]
      601 MOVE                             R43 R28
      602 CALL                             R41 2 0
      603 GETUPVAL                         R42 13
      604 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      606 GETUPVAL                         R43 15
      607 GETTABLEKS                       R42 R43 K55 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      609 MOVE                             R43 R27
      610 CALL                             R41 2 0
      611 GETUPVAL                         R42 13
      612 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      614 GETUPVAL                         R43 15
      615 GETTABLEKS                       R42 R43 K56 ["REMOVE_NODE_INPUT_CONNECTION"]
      617 MOVE                             R43 R26
      618 CALL                             R41 2 0
      619 GETUPVAL                         R42 13
      620 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      622 GETUPVAL                         R43 15
      623 GETTABLEKS                       R42 R43 K57 ["RENAME_NODE"]
      625 MOVE                             R43 R32
      626 CALL                             R41 2 0
      627 GETUPVAL                         R42 13
      628 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      630 GETUPVAL                         R43 15
      631 GETTABLEKS                       R42 R43 K58 ["RENAME_PARAMETER"]
      633 MOVE                             R43 R34
      634 CALL                             R41 2 0
      635 GETUPVAL                         R42 13
      636 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      638 GETUPVAL                         R43 15
      639 GETTABLEKS                       R42 R43 K59 ["SET_COLLAPSED"]
      641 MOVE                             R43 R16
      642 CALL                             R41 2 0
      643 GETUPVAL                         R42 13
      644 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      646 GETUPVAL                         R43 15
      647 GETTABLEKS                       R42 R43 K60 ["SET_NODE_PROPERTY"]
      649 MOVE                             R43 R29
      650 CALL                             R41 2 0
      651 GETUPVAL                         R42 13
      652 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      654 GETUPVAL                         R43 15
      655 GETTABLEKS                       R42 R43 K61 ["SET_INPUT_PIN_NODE_PROPERTY"]
      657 MOVE                             R43 R30
      658 CALL                             R41 2 0
      659 GETUPVAL                         R42 13
      660 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      662 GETUPVAL                         R43 15
      663 GETTABLEKS                       R42 R43 K62 ["GET_SELECTED_GRAPH_INSTANCE"]
      665 MOVE                             R43 R31
      666 CALL                             R41 2 0
      667 GETUPVAL                         R42 13
      668 GETTABLEKS                       R41 R42 K47 ["useBoundAction"]
      670 GETUPVAL                         R43 15
      671 GETTABLEKS                       R42 R43 K63 ["REORDER_PINS"]
      673 MOVE                             R43 R33
      674 CALL                             R41 2 0
      675 GETUPVAL                         R42 2
      676 GETTABLEKS                       R41 R42 K64 ["createElement"]
      678 GETUPVAL                         R43 16
      679 GETTABLEKS                       R42 R43 K65 ["Provider"]
      681 DUPTABLE                         R43 K67 [{"value"}]
      682 SETTABLEKS                       R38 R43 K66 ["value"]
      684 DUPTABLE                         R44 K69 [{"ContextStack"}]
      685 GETUPVAL                         R46 2
      686 GETTABLEKS                       R45 R46 K64 ["createElement"]
      688 GETUPVAL                         R47 17
      689 GETTABLEKS                       R46 R47 K68 ["ContextStack"]
      691 DUPTABLE                         R47 K71 [{"providers"}]
      692 NEWTABLE                         R48 0 2
      694 GETUPVAL                         R50 2
      695 GETTABLEKS                       R49 R50 K64 ["createElement"]
      697 GETUPVAL                         R51 18
      698 GETTABLEKS                       R50 R51 K65 ["Provider"]
      700 DUPTABLE                         R51 K73 [{"timeRange"}]
      701 SETTABLEKS                       R39 R51 K72 ["timeRange"]
      703 CALL                             R49 2 1
      704 GETUPVAL                         R51 2
      705 GETTABLEKS                       R50 R51 K64 ["createElement"]
      707 GETUPVAL                         R52 19
      708 GETTABLEKS                       R51 R52 K65 ["Provider"]
      710 DUPTABLE                         R52 K75 [{"animationClipsList"}]
      711 SETTABLEKS                       R40 R52 K74 ["animationClipsList"]
      713 CALL                             R50 2 -1
      714 SETLIST                          R48 R49 -1 [1]
      716 SETTABLEKS                       R48 R47 K70 ["providers"]
      718 GETTABLEKS                       R48 R0 K76 ["children"]
      720 CALL                             R45 3 1
      721 SETTABLEKS                       R45 R44 K68 ["ContextStack"]
      723 CALL                             R41 3 -1
      724 RETURN                           R41 -1

PROTO_37:
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

PROTO_38:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_39:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_40:
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
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R7 R8 K16 ["useCallback"]
       77 DUPCLOSURE                       R8 K17 [PROTO_38]
       78 NEWTABLE                         R9 0 0
       80 CALL                             R7 2 1
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R8 R9 K18 ["createComputed"]
       84 DUPCLOSURE                       R9 K19 [PROTO_39]
       85 CALL                             R8 1 1
       86 GETUPVAL                         R9 5
       87 MOVE                             R10 R2
       88 MOVE                             R11 R3
       89 CALL                             R9 2 1
       90 DUPTABLE                         R10 K44 [{"graphPayloadMap", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "graphRect", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "renameNodeAsync", "renameParameterAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "getSelectedRect", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById"}]
       91 SETTABLEKS                       R3 R10 K20 ["graphPayloadMap"]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
       96 GETUPVAL                         R13 6
       97 GETTABLEKS                       R12 R13 K46 ["REORDER_PINS"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K21 ["reorderPinsAsync"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      105 GETUPVAL                         R13 6
      106 GETTABLEKS                       R12 R13 K47 ["CREATE_NODE"]
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K22 ["createNodeAsync"]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      114 GETUPVAL                         R13 6
      115 GETTABLEKS                       R12 R13 K48 ["CREATE_PARAMETER"]
      117 CALL                             R11 1 1
      118 SETTABLEKS                       R11 R10 K23 ["createParameterAsync"]
      120 SETTABLEKS                       R5 R10 K24 ["graphRect"]
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      125 GETUPVAL                         R13 6
      126 GETTABLEKS                       R12 R13 K49 ["SELECT_NODES"]
      128 CALL                             R11 1 1
      129 SETTABLEKS                       R11 R10 K25 ["selectNodesAsync"]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      134 GETUPVAL                         R13 6
      135 GETTABLEKS                       R12 R13 K50 ["SELECT_NODES_FROM_RECT"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K26 ["selectNodesFromRectAsync"]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      143 GETUPVAL                         R13 6
      144 GETTABLEKS                       R12 R13 K51 ["SET_NODE_POSITIONS"]
      146 CALL                             R11 1 1
      147 SETTABLEKS                       R11 R10 K27 ["setNodePositionsAsync"]
      149 GETUPVAL                         R12 1
      150 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      152 GETUPVAL                         R13 6
      153 GETTABLEKS                       R12 R13 K52 ["SET_NODE_SIZE"]
      155 CALL                             R11 1 1
      156 SETTABLEKS                       R11 R10 K28 ["setNodeSizeAsync"]
      158 GETUPVAL                         R12 1
      159 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      161 GETUPVAL                         R13 6
      162 GETTABLEKS                       R12 R13 K53 ["SET_NODE_CONNECTION"]
      164 CALL                             R11 1 1
      165 SETTABLEKS                       R11 R10 K29 ["setNodeConnectionAsync"]
      167 GETUPVAL                         R12 1
      168 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      170 GETUPVAL                         R13 6
      171 GETTABLEKS                       R12 R13 K54 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      173 CALL                             R11 1 1
      174 SETTABLEKS                       R11 R10 K30 ["removeNodeOutputConnectionAsync"]
      176 GETUPVAL                         R12 1
      177 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      179 GETUPVAL                         R13 6
      180 GETTABLEKS                       R12 R13 K55 ["REMOVE_NODE_INPUT_CONNECTION"]
      182 CALL                             R11 1 1
      183 SETTABLEKS                       R11 R10 K31 ["removeNodeInputConnectionAsync"]
      185 GETUPVAL                         R12 1
      186 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      188 GETUPVAL                         R13 6
      189 GETTABLEKS                       R12 R13 K56 ["RENAME_NODE"]
      191 CALL                             R11 1 1
      192 SETTABLEKS                       R11 R10 K32 ["renameNodeAsync"]
      194 GETUPVAL                         R12 1
      195 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      197 GETUPVAL                         R13 6
      198 GETTABLEKS                       R12 R13 K57 ["RENAME_PARAMETER"]
      200 CALL                             R11 1 1
      201 SETTABLEKS                       R11 R10 K33 ["renameParameterAsync"]
      203 GETUPVAL                         R12 1
      204 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      206 GETUPVAL                         R13 6
      207 GETTABLEKS                       R12 R13 K58 ["SET_COLLAPSED"]
      209 CALL                             R11 1 1
      210 SETTABLEKS                       R11 R10 K34 ["setCollapsedAsync"]
      212 GETUPVAL                         R12 1
      213 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      215 GETUPVAL                         R13 6
      216 GETTABLEKS                       R12 R13 K59 ["SET_NODE_PROPERTY"]
      218 CALL                             R11 1 1
      219 SETTABLEKS                       R11 R10 K35 ["setNodePropertyAsync"]
      221 GETUPVAL                         R12 1
      222 GETTABLEKS                       R11 R12 K45 ["useBoundAction"]
      224 GETUPVAL                         R13 6
      225 GETTABLEKS                       R12 R13 K60 ["SET_INPUT_PIN_NODE_PROPERTY"]
      227 CALL                             R11 1 1
      228 SETTABLEKS                       R11 R10 K36 ["setInputPinNodePropertyAsync"]
      230 SETTABLEKS                       R7 R10 K37 ["getSelectedGraphInstance"]
      232 LOADNIL                          R11
      233 SETTABLEKS                       R11 R10 K38 ["selectedGraphInstance"]
      235 SETTABLEKS                       R6 R10 K39 ["currentAnimationId"]
      237 GETTABLEKS                       R11 R9 K40 ["getSelectedRect"]
      239 SETTABLEKS                       R11 R10 K40 ["getSelectedRect"]
      241 SETTABLEKS                       R8 R10 K41 ["observeSelectedGraphInstance"]
      243 GETTABLEKS                       R11 R1 K61 ["observe"]
      245 SETTABLEKS                       R11 R10 K42 ["observeGraphNodeById"]
      247 GETTABLEKS                       R11 R2 K61 ["observe"]
      249 SETTABLEKS                       R11 R10 K43 ["observeNodeRenderInfoById"]
      251 GETUPVAL                         R12 3
      252 GETTABLEKS                       R11 R12 K62 ["createElement"]
      254 GETUPVAL                         R13 7
      255 GETTABLEKS                       R12 R13 K63 ["Provider"]
      257 DUPTABLE                         R13 K65 [{"value"}]
      258 SETTABLEKS                       R10 R13 K64 ["value"]
      260 DUPTABLE                         R14 K67 [{"ContextStack"}]
      261 GETUPVAL                         R16 3
      262 GETTABLEKS                       R15 R16 K62 ["createElement"]
      264 GETUPVAL                         R17 8
      265 GETTABLEKS                       R16 R17 K66 ["ContextStack"]
      267 DUPTABLE                         R17 K69 [{"providers"}]
      268 NEWTABLE                         R18 0 1
      270 GETUPVAL                         R20 3
      271 GETTABLEKS                       R19 R20 K62 ["createElement"]
      273 GETUPVAL                         R21 9
      274 GETTABLEKS                       R20 R21 K63 ["Provider"]
      276 DUPTABLE                         R21 K71 [{"timeRange"}]
      277 SETTABLEKS                       R4 R21 K70 ["timeRange"]
      279 CALL                             R19 2 -1
      280 SETLIST                          R18 R19 -1 [1]
      282 SETTABLEKS                       R18 R17 K68 ["providers"]
      284 GETTABLEKS                       R18 R0 K72 ["children"]
      286 CALL                             R15 3 1
      287 SETTABLEKS                       R15 R14 K66 ["ContextStack"]
      289 CALL                             R11 3 -1
      290 CLOSEUPVALS                      R3
      291 RETURN                           R11 -1

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
       35 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R7 K15 ["InstanceRegistryContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Util"]
       44 GETTABLEKS                       R8 R9 K16 ["Instances"]
       46 GETTABLEKS                       R7 R8 K17 ["InstanceSelectionRegistry"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Contexts"]
       53 GETTABLEKS                       R9 R10 K18 ["NativeGraphContext"]
       55 GETTABLEKS                       R8 R9 K19 ["NativeGraphUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R11 R0 K11 ["Util"]
       62 GETTABLEKS                       R10 R11 K20 ["Networking"]
       64 GETTABLEKS                       R9 R10 K21 ["NetworkUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R0 K22 ["NodeViewTypes"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R12 R0 K23 ["Parent"]
       76 GETTABLEKS                       R11 R12 K24 ["React"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R13 R0 K23 ["Parent"]
       83 GETTABLEKS                       R12 R13 K25 ["ReactUtils"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R14 R0 K11 ["Util"]
       90 GETTABLEKS                       R13 R14 K26 ["RectUtil"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R15 R0 K13 ["Contexts"]
       97 GETTABLEKS                       R14 R15 K27 ["SelectionServiceContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R16 R0 K23 ["Parent"]
      104 GETTABLEKS                       R15 R16 K28 ["Signals"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R17 R0 K13 ["Contexts"]
      111 GETTABLEKS                       R16 R17 K29 ["TimeRangeContext"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K10 [require]
      116 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      118 GETTABLEKS                       R17 R18 K31 ["useSelection"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K10 [require]
      123 GETTABLEKS                       R19 R0 K30 ["Hooks"]
      125 GETTABLEKS                       R18 R19 K32 ["useSignalDispatcher"]
      127 CALL                             R17 1 1
      128 DUPTABLE                         R18 K57 [{"graphPayloadMap", "graphRect", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "renameNodeAsync", "renameParameterAsync", "setNodeConnectionAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedRect", "observeGraphNodeById", "observeNodeRenderInfoById", "observeSelectedGraphInstance", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId"}]
      129 LOADNIL                          R19
      130 SETTABLEKS                       R19 R18 K33 ["graphPayloadMap"]
      132 GETIMPORT                        R19 K60 [Rect.new]
      134 LOADN                            R20 0
      135 LOADN                            R21 0
      136 LOADN                            R22 0
      137 LOADN                            R23 0
      138 CALL                             R19 4 1
      139 SETTABLEKS                       R19 R18 K34 ["graphRect"]
      141 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      143 LOADK                            R20 K35 ["reorderPinsAsync"]
      144 CALL                             R19 1 1
      145 SETTABLEKS                       R19 R18 K35 ["reorderPinsAsync"]
      147 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      149 LOADK                            R20 K36 ["createNodeAsync"]
      150 CALL                             R19 1 1
      151 SETTABLEKS                       R19 R18 K36 ["createNodeAsync"]
      153 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      155 LOADK                            R20 K37 ["createParameterAsync"]
      156 CALL                             R19 1 1
      157 SETTABLEKS                       R19 R18 K37 ["createParameterAsync"]
      159 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      161 LOADK                            R20 K38 ["selectNodesAsync"]
      162 CALL                             R19 1 1
      163 SETTABLEKS                       R19 R18 K38 ["selectNodesAsync"]
      165 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      167 LOADK                            R20 K39 ["selectNodesFromRectAsync"]
      168 CALL                             R19 1 1
      169 SETTABLEKS                       R19 R18 K39 ["selectNodesFromRectAsync"]
      171 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      173 LOADK                            R20 K40 ["setNodePositionsAsync"]
      174 CALL                             R19 1 1
      175 SETTABLEKS                       R19 R18 K40 ["setNodePositionsAsync"]
      177 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      179 LOADK                            R20 K41 ["setNodeSizeAsync"]
      180 CALL                             R19 1 1
      181 SETTABLEKS                       R19 R18 K41 ["setNodeSizeAsync"]
      183 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      185 LOADK                            R20 K42 ["removeNodeInputConnectionAsync"]
      186 CALL                             R19 1 1
      187 SETTABLEKS                       R19 R18 K42 ["removeNodeInputConnectionAsync"]
      189 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      191 LOADK                            R20 K43 ["removeNodeOutputConnectionAsync"]
      192 CALL                             R19 1 1
      193 SETTABLEKS                       R19 R18 K43 ["removeNodeOutputConnectionAsync"]
      195 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      197 LOADK                            R20 K44 ["renameNodeAsync"]
      198 CALL                             R19 1 1
      199 SETTABLEKS                       R19 R18 K44 ["renameNodeAsync"]
      201 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      203 LOADK                            R20 K45 ["renameParameterAsync"]
      204 CALL                             R19 1 1
      205 SETTABLEKS                       R19 R18 K45 ["renameParameterAsync"]
      207 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      209 LOADK                            R20 K62 ["setNewConnection"]
      210 CALL                             R19 1 1
      211 SETTABLEKS                       R19 R18 K46 ["setNodeConnectionAsync"]
      213 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      215 LOADK                            R20 K47 ["setCollapsedAsync"]
      216 CALL                             R19 1 1
      217 SETTABLEKS                       R19 R18 K47 ["setCollapsedAsync"]
      219 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      221 LOADK                            R20 K48 ["setNodePropertyAsync"]
      222 CALL                             R19 1 1
      223 SETTABLEKS                       R19 R18 K48 ["setNodePropertyAsync"]
      225 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      227 LOADK                            R20 K49 ["setInputPinNodePropertyAsync"]
      228 CALL                             R19 1 1
      229 SETTABLEKS                       R19 R18 K49 ["setInputPinNodePropertyAsync"]
      231 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      233 LOADK                            R20 K50 ["getSelectedRect"]
      234 CALL                             R19 1 1
      235 SETTABLEKS                       R19 R18 K50 ["getSelectedRect"]
      237 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      239 LOADK                            R20 K51 ["observeGraphNodeById"]
      240 CALL                             R19 1 1
      241 SETTABLEKS                       R19 R18 K51 ["observeGraphNodeById"]
      243 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      245 LOADK                            R20 K52 ["observeNodeRenderInfoById"]
      246 CALL                             R19 1 1
      247 SETTABLEKS                       R19 R18 K52 ["observeNodeRenderInfoById"]
      249 GETTABLEKS                       R19 R14 K63 ["createSignal"]
      251 LOADNIL                          R20
      252 CALL                             R19 1 1
      253 SETTABLEKS                       R19 R18 K53 ["observeSelectedGraphInstance"]
      255 GETTABLEKS                       R19 R11 K61 ["createUnimplemented"]
      257 LOADK                            R20 K54 ["getSelectedGraphInstance"]
      258 CALL                             R19 1 1
      259 SETTABLEKS                       R19 R18 K54 ["getSelectedGraphInstance"]
      261 LOADNIL                          R19
      262 SETTABLEKS                       R19 R18 K55 ["selectedGraphInstance"]
      264 LOADNIL                          R19
      265 SETTABLEKS                       R19 R18 K56 ["currentAnimationId"]
      267 GETTABLEKS                       R19 R10 K64 ["createContext"]
      269 MOVE                             R20 R18
      270 CALL                             R19 1 1
      271 DUPTABLE                         R20 K70 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID"}]
      272 LOADK                            R21 K71 ["NativeGraphContext_GraphPayloadMap"]
      273 SETTABLEKS                       R21 R20 K65 ["GRAPH_PAYLOAD_MAP"]
      275 LOADK                            R21 K72 ["NativeGraphContext_GraphRenderInfo"]
      276 SETTABLEKS                       R21 R20 K66 ["GRAPH_RENDER_INFO"]
      278 LOADK                            R21 K73 ["NativeGraphContext_TimeRange"]
      279 SETTABLEKS                       R21 R20 K67 ["TIME_RANGE"]
      281 LOADK                            R21 K74 ["NativeGraphContext_GraphPayloadGraphRect"]
      282 SETTABLEKS                       R21 R20 K68 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      284 LOADK                            R21 K75 ["NativeGraphContext_CurrentAnimationId"]
      285 SETTABLEKS                       R21 R20 K69 ["CURRENT_ANIMATION_ID"]
      287 DUPTABLE                         R21 K92 [{"CREATE_NODE", "CREATE_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "RENAME_NODE", "RENAME_PARAMETER", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SELECT_NODES", "SELECT_NODES_FROM_RECT"}]
      288 LOADK                            R22 K93 ["NativeGraphContext_CreateNode"]
      289 SETTABLEKS                       R22 R21 K76 ["CREATE_NODE"]
      291 LOADK                            R22 K94 ["NativeGraphContext_CreateParameterAsync"]
      292 SETTABLEKS                       R22 R21 K77 ["CREATE_PARAMETER"]
      294 LOADK                            R22 K95 ["NativeGraphContext_GetSelectedGraphInstance"]
      295 SETTABLEKS                       R22 R21 K78 ["GET_SELECTED_GRAPH_INSTANCE"]
      297 LOADK                            R22 K96 ["NativeGraphContext_SetNodeConnectionAsync"]
      298 SETTABLEKS                       R22 R21 K79 ["SET_NODE_CONNECTION"]
      300 LOADK                            R22 K97 ["NativeGraphContext_setNodePropertyAsync"]
      301 SETTABLEKS                       R22 R21 K80 ["SET_NODE_PROPERTY"]
      303 LOADK                            R22 K98 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      304 SETTABLEKS                       R22 R21 K81 ["SET_INPUT_PIN_NODE_PROPERTY"]
      306 LOADK                            R22 K99 ["NativeGraphContext_ReorderPinsAsync"]
      307 SETTABLEKS                       R22 R21 K82 ["REORDER_PINS"]
      309 LOADK                            R22 K100 ["NativeGraphContext_RenameNodeAsync"]
      310 SETTABLEKS                       R22 R21 K83 ["RENAME_NODE"]
      312 LOADK                            R22 K101 ["NativeGraphContext_RenameParameterAsync"]
      313 SETTABLEKS                       R22 R21 K84 ["RENAME_PARAMETER"]
      315 LOADK                            R22 K102 ["NativeGraphContext_RemoveNodeInputConnection"]
      316 SETTABLEKS                       R22 R21 K85 ["REMOVE_NODE_INPUT_CONNECTION"]
      318 LOADK                            R22 K103 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      319 SETTABLEKS                       R22 R21 K86 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      321 LOADK                            R22 K104 ["NativeGraphContext_SetNodeSizeAsync"]
      322 SETTABLEKS                       R22 R21 K87 ["SET_NODE_SIZE"]
      324 LOADK                            R22 K105 ["NativeGraphContext_SetCollapsedAsync"]
      325 SETTABLEKS                       R22 R21 K88 ["SET_COLLAPSED"]
      327 LOADK                            R22 K106 ["NativeGraphContext_SetNodePositionsAsync"]
      328 SETTABLEKS                       R22 R21 K89 ["SET_NODE_POSITIONS"]
      330 LOADK                            R22 K107 ["NativeGraphContext_SelectNodes"]
      331 SETTABLEKS                       R22 R21 K90 ["SELECT_NODES"]
      333 LOADK                            R22 K108 ["NativeGraphContext_SelectNodesFromRect"]
      334 SETTABLEKS                       R22 R21 K91 ["SELECT_NODES_FROM_RECT"]
      336 NEWTABLE                         R22 16 0
      338 LOADN                            R23 1
      339 SETTABLEKS                       R23 R22 K109 ["Speed"]
      341 LOADN                            R23 1
      342 SETTABLEKS                       R23 R22 K110 ["PlayCount"]
      344 LOADN                            R23 0
      345 SETTABLEKS                       R23 R22 K111 ["StartOffset"]
      347 LOADN                            R23 0
      348 SETTABLEKS                       R23 R22 K112 ["EndOffset"]
      350 LOADN                            R23 0
      351 SETTABLEKS                       R23 R22 K113 ["X"]
      353 LOADN                            R23 0
      354 SETTABLEKS                       R23 R22 K114 ["Y"]
      356 LOADN                            R23 0
      357 SETTABLEKS                       R23 R22 K115 ["LoopCount"]
      359 LOADN                            R23 0
      360 SETTABLEKS                       R23 R22 K116 ["Weight"]
      362 LOADN                            R23 0
      363 SETTABLEKS                       R23 R22 K117 ["Position"]
      365 GETIMPORT                        R23 K121 [Enum.AnimationNodePlayMode.Loop]
      367 SETTABLEKS                       R23 R22 K122 ["PlayMode"]
      369 GETIMPORT                        R23 K125 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      371 SETTABLEKS                       R23 R22 K126 ["InputMode"]
      373 LOADB                            R23 0
      374 SETTABLEKS                       R23 R22 K127 ["Reverse"]
      376 LOADB                            R23 0
      377 SETTABLEKS                       R23 R22 K128 ["Invert"]
      379 DUPCLOSURE                       R23 K129 [PROTO_1]
      380 CAPTURE                          VAL R10
      381 CAPTURE                          VAL R12
      382 DUPCLOSURE                       R24 K130 [PROTO_36]
      383 CAPTURE                          VAL R17
      384 CAPTURE                          VAL R16
      385 CAPTURE                          VAL R10
      386 CAPTURE                          VAL R13
      387 CAPTURE                          VAL R14
      388 CAPTURE                          VAL R6
      389 CAPTURE                          VAL R5
      390 CAPTURE                          VAL R7
      391 CAPTURE                          VAL R2
      392 CAPTURE                          VAL R1
      393 CAPTURE                          VAL R3
      394 CAPTURE                          VAL R22
      395 CAPTURE                          VAL R23
      396 CAPTURE                          VAL R8
      397 CAPTURE                          VAL R20
      398 CAPTURE                          VAL R21
      399 CAPTURE                          VAL R19
      400 CAPTURE                          VAL R11
      401 CAPTURE                          VAL R15
      402 CAPTURE                          VAL R4
      403 DUPCLOSURE                       R25 K131 [PROTO_40]
      404 CAPTURE                          VAL R17
      405 CAPTURE                          VAL R8
      406 CAPTURE                          VAL R20
      407 CAPTURE                          VAL R10
      408 CAPTURE                          VAL R14
      409 CAPTURE                          VAL R23
      410 CAPTURE                          VAL R21
      411 CAPTURE                          VAL R19
      412 CAPTURE                          VAL R11
      413 CAPTURE                          VAL R15
      414 DUPTABLE                         R26 K135 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      415 SETTABLEKS                       R19 R26 K132 ["Context"]
      417 SETTABLEKS                       R24 R26 K133 ["EditableDataModelProvider"]
      419 SETTABLEKS                       R25 R26 K134 ["UIDataModelProvider"]
      421 RETURN                           R26 1
