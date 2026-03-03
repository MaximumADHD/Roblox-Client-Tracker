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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 SETLIST                          R3 R4 1 [1]
       11 NAMECALL                         R1 R1 K0 ["SerializeInstancesAsync"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["OnServerInvoke"]
        4 RETURN                           R0 0

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
       39 LOADK                            R5 K15 ["GraphVersion"]
       40 NAMECALL                         R3 R1 K5 ["FindFirstChild"]
       42 CALL                             R3 2 1
       43 JUMPIF                           R3 ; [+10]
       44 GETIMPORT                        R4 K8 [Instance.new]
       46 LOADK                            R5 K16 ["IntValue"]
       47 CALL                             R4 1 1
       48 LOADK                            R5 K15 ["GraphVersion"]
       49 SETTABLEKS                       R5 R4 K10 ["Name"]
       51 SETTABLEKS                       R1 R4 K11 ["Parent"]
       53 MOVE                             R3 R4
       54 GETUPVAL                         R5 1
       55 JUMPIFNOT                        R5 ; [+7]
       56 GETUPVAL                         R5 1
       57 LOADK                            R7 K18 ["RBX_GraphVersion"]
       58 NAMECALL                         R5 R5 K19 ["GetAttribute"]
       60 CALL                             R5 2 1
       61 ORK                              R4 R5 K17 [0]
       62 JUMP                             ; [+1]
       63 LOADN                            R4 0
       64 SETTABLEKS                       R4 R3 K14 ["Value"]
       66 LOADK                            R7 K20 ["GetGraphClip"]
       67 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       69 CALL                             R5 2 1
       70 JUMPIF                           R5 ; [+10]
       71 GETIMPORT                        R6 K8 [Instance.new]
       73 LOADK                            R7 K21 ["RemoteFunction"]
       74 CALL                             R6 1 1
       75 LOADK                            R7 K20 ["GetGraphClip"]
       76 SETTABLEKS                       R7 R6 K10 ["Name"]
       78 SETTABLEKS                       R1 R6 K11 ["Parent"]
       80 MOVE                             R5 R6
       81 GETUPVAL                         R6 1
       82 NEWCLOSURE                       R7 P0
       83 CAPTURE                          VAL R6
       84 CAPTURE                          UPVAL U2
       85 SETTABLEKS                       R7 R5 K22 ["OnServerInvoke"]
       87 NEWCLOSURE                       R7 P1
       88 CAPTURE                          REF R5
       89 CLOSEUPVALS                      R5
       90 RETURN                           R7 1

PROTO_23:
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

PROTO_24:
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
       41 GETUPVAL                         R3 0
       42 LOADK                            R5 K11 ["AnimationGraphDefinition"]
       43 NAMECALL                         R3 R3 K6 ["IsA"]
       45 CALL                             R3 2 1
       46 JUMPIF                           R3 ; [+5]
       47 GETIMPORT                        R3 K8 [warn]
       49 LOADK                            R4 K12 ["Selected graph instance is not an AnimationGraphDefinition"]
       50 CALL                             R3 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R4 R5 K14 ["getParameterType"]
       55 GETTABLEKS                       R5 R2 K15 ["NodeType"]
       57 GETTABLEKS                       R6 R0 K16 ["sourcePinName"]
       59 CALL                             R4 2 1
       60 ORK                              R3 R4 K13 ["unknown"]
       61 GETUPVAL                         R5 4
       62 GETTABLEKS                       R4 R5 K17 ["getOrCreateParameterInstance"]
       64 GETUPVAL                         R5 3
       65 GETUPVAL                         R6 0
       66 MOVE                             R7 R3
       67 CALL                             R4 3 1
       68 LOADK                            R6 K18 ["%*Param"]
       69 MOVE                             R8 R3
       70 NAMECALL                         R6 R6 K19 ["format"]
       72 CALL                             R6 2 1
       73 MOVE                             R5 R6
       74 GETUPVAL                         R6 0
       75 MOVE                             R8 R5
       76 NAMECALL                         R6 R6 K20 ["GetAttribute"]
       78 CALL                             R6 2 1
       79 JUMPIF                           R6 ; [+13]
       80 GETUPVAL                         R7 5
       81 GETTABLEKS                       R8 R0 K16 ["sourcePinName"]
       83 GETTABLE                         R6 R7 R8
       84 JUMPIFNOTEQKNIL                  R6 ; [+2]
       86 LOADN                            R6 0
       87 GETUPVAL                         R7 0
       88 MOVE                             R9 R5
       89 MOVE                             R10 R6
       90 NAMECALL                         R7 R7 K21 ["SetAttribute"]
       92 CALL                             R7 3 0
       93 GETUPVAL                         R7 4
       94 GETTABLEKS                       R6 R7 K22 ["setParameterBindingName"]
       96 MOVE                             R7 R2
       97 GETTABLEKS                       R8 R0 K16 ["sourcePinName"]
       99 MOVE                             R9 R5
      100 CALL                             R6 3 0
      101 GETUPVAL                         R7 6
      102 GETTABLEKS                       R6 R7 K23 ["selectionService"]
      104 NEWTABLE                         R8 0 1
      106 MOVE                             R9 R4
      107 SETLIST                          R8 R9 1 [1]
      109 NAMECALL                         R6 R6 K24 ["Set"]
      111 CALL                             R6 2 0
      112 JUMPIFNOT                        R1 ; [+7]
      113 GETUPVAL                         R6 2
      114 MOVE                             R8 R1
      115 GETIMPORT                        R9 K28 [Enum.FinishRecordingOperation.Commit]
      117 NAMECALL                         R6 R6 K29 ["FinishRecording"]
      119 CALL                             R6 3 0
      120 RETURN                           R0 0

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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 NEWTABLE                         R0 0 1
        4 GETUPVAL                         R1 0
        5 SETLIST                          R0 R1 1 [1]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_47:
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
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R11
      177 NEWTABLE                         R22 0 3
      179 MOVE                             R23 R11
      180 GETTABLEKS                       R24 R4 K12 ["selectionService"]
      182 MOVE                             R25 R10
      183 SETLIST                          R22 R23 3 [1]
      185 CALL                             R20 2 1
      186 GETUPVAL                         R22 2
      187 GETTABLEKS                       R21 R22 K11 ["useCallback"]
      189 NEWCLOSURE                       R22 P10
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R11
      194 NEWTABLE                         R23 0 4
      196 GETTABLEKS                       R24 R2 K13 ["get"]
      198 GETTABLEKS                       R25 R4 K12 ["selectionService"]
      200 MOVE                             R26 R11
      201 MOVE                             R27 R13
      202 SETLIST                          R23 R24 4 [1]
      204 CALL                             R21 2 1
      205 GETUPVAL                         R23 2
      206 GETTABLEKS                       R22 R23 K7 ["useMemo"]
      208 NEWCLOSURE                       R23 P11
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R11
      211 NEWTABLE                         R24 0 2
      213 MOVE                             R25 R11
      214 MOVE                             R26 R13
      215 SETLIST                          R24 R25 2 [1]
      217 CALL                             R22 2 1
      218 GETUPVAL                         R24 2
      219 GETTABLEKS                       R23 R24 K2 ["useState"]
      221 LOADK                            R24 K14 [""]
      222 CALL                             R23 1 2
      223 GETUPVAL                         R26 2
      224 GETTABLEKS                       R25 R26 K8 ["useEffect"]
      226 NEWCLOSURE                       R26 P12
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R24
      229 CAPTURE                          UPVAL U9
      230 NEWTABLE                         R27 0 1
      232 MOVE                             R28 R22
      233 SETLIST                          R27 R28 1 [1]
      235 CALL                             R25 2 0
      236 GETUPVAL                         R26 2
      237 GETTABLEKS                       R25 R26 K8 ["useEffect"]
      239 NEWCLOSURE                       R26 P13
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R22
      242 CAPTURE                          UPVAL U10
      243 NEWTABLE                         R27 0 2
      245 MOVE                             R28 R23
      246 MOVE                             R29 R22
      247 SETLIST                          R27 R28 2 [1]
      249 CALL                             R25 2 0
      250 GETUPVAL                         R26 2
      251 GETTABLEKS                       R25 R26 K11 ["useCallback"]
      253 NEWCLOSURE                       R26 P14
      254 CAPTURE                          VAL R22
      255 CAPTURE                          VAL R13
      256 CAPTURE                          UPVAL U8
      257 CAPTURE                          UPVAL U7
      258 CAPTURE                          VAL R11
      259 CAPTURE                          UPVAL U11
      260 CAPTURE                          VAL R4
      261 NEWTABLE                         R27 0 4
      263 GETTABLEKS                       R28 R4 K12 ["selectionService"]
      265 MOVE                             R29 R22
      266 MOVE                             R30 R13
      267 MOVE                             R31 R11
      268 SETLIST                          R27 R28 4 [1]
      270 CALL                             R25 2 1
      271 GETUPVAL                         R27 2
      272 GETTABLEKS                       R26 R27 K11 ["useCallback"]
      274 NEWCLOSURE                       R27 P15
      275 CAPTURE                          VAL R22
      276 CAPTURE                          VAL R13
      277 CAPTURE                          UPVAL U8
      278 CAPTURE                          VAL R11
      279 CAPTURE                          UPVAL U7
      280 CAPTURE                          UPVAL U12
      281 CAPTURE                          VAL R4
      282 NEWTABLE                         R28 0 3
      284 GETTABLEKS                       R29 R4 K12 ["selectionService"]
      286 MOVE                             R30 R22
      287 MOVE                             R31 R11
      288 SETLIST                          R28 R29 3 [1]
      290 CALL                             R26 2 1
      291 GETUPVAL                         R28 2
      292 GETTABLEKS                       R27 R28 K11 ["useCallback"]
      294 NEWCLOSURE                       R28 P16
      295 CAPTURE                          VAL R13
      296 CAPTURE                          UPVAL U8
      297 CAPTURE                          UPVAL U7
      298 CAPTURE                          VAL R11
      299 NEWTABLE                         R29 0 1
      301 MOVE                             R30 R13
      302 SETLIST                          R29 R30 1 [1]
      304 CALL                             R27 2 1
      305 GETUPVAL                         R29 2
      306 GETTABLEKS                       R28 R29 K11 ["useCallback"]
      308 NEWCLOSURE                       R29 P17
      309 CAPTURE                          VAL R13
      310 CAPTURE                          UPVAL U8
      311 CAPTURE                          UPVAL U7
      312 CAPTURE                          VAL R11
      313 NEWTABLE                         R30 0 1
      315 MOVE                             R31 R13
      316 SETLIST                          R30 R31 1 [1]
      318 CALL                             R28 2 1
      319 GETUPVAL                         R30 2
      320 GETTABLEKS                       R29 R30 K11 ["useCallback"]
      322 NEWCLOSURE                       R30 P18
      323 CAPTURE                          VAL R13
      324 CAPTURE                          UPVAL U8
      325 CAPTURE                          UPVAL U7
      326 CAPTURE                          VAL R11
      327 NEWTABLE                         R31 0 2
      329 MOVE                             R32 R11
      330 MOVE                             R33 R13
      331 SETLIST                          R31 R32 2 [1]
      333 CALL                             R29 2 1
      334 GETUPVAL                         R31 2
      335 GETTABLEKS                       R30 R31 K11 ["useCallback"]
      337 NEWCLOSURE                       R31 P19
      338 CAPTURE                          VAL R7
      339 CAPTURE                          UPVAL U8
      340 NEWTABLE                         R32 0 0
      342 CALL                             R30 2 1
      343 GETUPVAL                         R32 2
      344 GETTABLEKS                       R31 R32 K11 ["useCallback"]
      346 NEWCLOSURE                       R32 P20
      347 CAPTURE                          VAL R7
      348 CAPTURE                          UPVAL U8
      349 NEWTABLE                         R33 0 1
      351 GETTABLEKS                       R34 R7 K15 ["current"]
      353 SETLIST                          R33 R34 1 [1]
      355 CALL                             R31 2 1
      356 GETUPVAL                         R33 2
      357 GETTABLEKS                       R32 R33 K8 ["useEffect"]
      359 NEWCLOSURE                       R33 P21
      360 CAPTURE                          VAL R7
      361 CAPTURE                          UPVAL U8
      362 NEWTABLE                         R34 0 0
      364 CALL                             R32 2 0
      365 GETUPVAL                         R33 2
      366 GETTABLEKS                       R32 R33 K11 ["useCallback"]
      368 NEWCLOSURE                       R33 P22
      369 CAPTURE                          UPVAL U8
      370 CAPTURE                          VAL R11
      371 CAPTURE                          UPVAL U9
      372 NEWTABLE                         R34 0 1
      374 MOVE                             R35 R11
      375 SETLIST                          R34 R35 1 [1]
      377 CALL                             R32 2 1
      378 GETUPVAL                         R34 2
      379 GETTABLEKS                       R33 R34 K11 ["useCallback"]
      381 NEWCLOSURE                       R34 P23
      382 CAPTURE                          UPVAL U8
      383 CAPTURE                          VAL R11
      384 NEWTABLE                         R35 0 1
      386 MOVE                             R36 R13
      387 SETLIST                          R35 R36 1 [1]
      389 CALL                             R33 2 1
      390 GETUPVAL                         R35 2
      391 GETTABLEKS                       R34 R35 K11 ["useCallback"]
      393 NEWCLOSURE                       R35 P24
      394 CAPTURE                          VAL R22
      395 NEWTABLE                         R36 0 1
      397 MOVE                             R37 R22
      398 SETLIST                          R36 R37 1 [1]
      400 CALL                             R34 2 1
      401 GETUPVAL                         R36 2
      402 GETTABLEKS                       R35 R36 K11 ["useCallback"]
      404 NEWCLOSURE                       R36 P25
      405 CAPTURE                          UPVAL U8
      406 CAPTURE                          VAL R11
      407 CAPTURE                          VAL R1
      408 CAPTURE                          VAL R13
      409 CAPTURE                          UPVAL U7
      410 NEWTABLE                         R37 0 3
      412 MOVE                             R38 R11
      413 MOVE                             R39 R13
      414 GETTABLEKS                       R40 R1 K16 ["observe"]
      416 SETLIST                          R37 R38 3 [1]
      418 CALL                             R35 2 1
      419 GETUPVAL                         R37 2
      420 GETTABLEKS                       R36 R37 K11 ["useCallback"]
      422 NEWCLOSURE                       R37 P26
      423 CAPTURE                          UPVAL U8
      424 CAPTURE                          UPVAL U7
      425 CAPTURE                          VAL R11
      426 NEWTABLE                         R38 0 1
      428 MOVE                             R39 R11
      429 SETLIST                          R38 R39 1 [1]
      431 CALL                             R36 2 1
      432 GETUPVAL                         R38 2
      433 GETTABLEKS                       R37 R38 K2 ["useState"]
      435 NEWTABLE                         R38 0 0
      437 CALL                             R37 1 2
      438 GETUPVAL                         R40 13
      439 GETTABLEKS                       R39 R40 K17 ["useRefToState"]
      441 MOVE                             R40 R37
      442 CALL                             R39 1 1
      443 GETUPVAL                         R41 2
      444 GETTABLEKS                       R40 R41 K7 ["useMemo"]
      446 NEWCLOSURE                       R41 P27
      447 CAPTURE                          UPVAL U7
      448 CAPTURE                          VAL R11
      449 CAPTURE                          VAL R10
      450 CAPTURE                          VAL R22
      451 NEWTABLE                         R42 0 3
      453 MOVE                             R43 R11
      454 MOVE                             R44 R10
      455 MOVE                             R45 R22
      456 SETLIST                          R42 R43 3 [1]
      458 CALL                             R40 2 1
      459 GETUPVAL                         R42 2
      460 GETTABLEKS                       R41 R42 K11 ["useCallback"]
      462 NEWCLOSURE                       R42 P28
      463 CAPTURE                          VAL R22
      464 CAPTURE                          VAL R13
      465 CAPTURE                          VAL R11
      466 CAPTURE                          UPVAL U7
      467 NEWTABLE                         R43 0 3
      469 MOVE                             R44 R22
      470 MOVE                             R45 R11
      471 MOVE                             R46 R13
      472 SETLIST                          R43 R44 3 [1]
      474 CALL                             R41 2 1
      475 GETUPVAL                         R43 2
      476 GETTABLEKS                       R42 R43 K11 ["useCallback"]
      478 NEWCLOSURE                       R43 P29
      479 CAPTURE                          VAL R13
      480 CAPTURE                          VAL R11
      481 CAPTURE                          UPVAL U8
      482 CAPTURE                          UPVAL U7
      483 CAPTURE                          UPVAL U14
      484 CAPTURE                          VAL R37
      485 CAPTURE                          VAL R38
      486 NEWTABLE                         R44 0 3
      488 MOVE                             R45 R11
      489 MOVE                             R46 R13
      490 MOVE                             R47 R37
      491 SETLIST                          R44 R45 3 [1]
      493 CALL                             R42 2 1
      494 GETUPVAL                         R44 2
      495 GETTABLEKS                       R43 R44 K8 ["useEffect"]
      497 NEWCLOSURE                       R44 P30
      498 CAPTURE                          UPVAL U4
      499 CAPTURE                          VAL R40
      500 CAPTURE                          VAL R37
      501 CAPTURE                          VAL R11
      502 CAPTURE                          VAL R39
      503 CAPTURE                          VAL R41
      504 CAPTURE                          VAL R38
      505 CAPTURE                          UPVAL U14
      506 NEWTABLE                         R45 0 4
      508 MOVE                             R46 R11
      509 MOVE                             R47 R37
      510 MOVE                             R48 R40
      511 MOVE                             R49 R41
      512 SETLIST                          R45 R46 4 [1]
      514 CALL                             R43 2 0
      515 GETUPVAL                         R43 15
      516 MOVE                             R44 R2
      517 MOVE                             R45 R13
      518 CALL                             R43 2 1
      519 GETUPVAL                         R45 2
      520 GETTABLEKS                       R44 R45 K7 ["useMemo"]
      522 NEWCLOSURE                       R45 P31
      523 CAPTURE                          UPVAL U4
      524 CAPTURE                          VAL R22
      525 NEWTABLE                         R46 0 0
      527 CALL                             R44 2 2
      528 GETUPVAL                         R47 2
      529 GETTABLEKS                       R46 R47 K7 ["useMemo"]
      531 NEWCLOSURE                       R47 P32
      532 CAPTURE                          VAL R45
      533 CAPTURE                          VAL R22
      534 NEWTABLE                         R48 0 2
      536 MOVE                             R49 R45
      537 MOVE                             R50 R22
      538 SETLIST                          R48 R49 2 [1]
      540 CALL                             R46 2 0
      541 DUPTABLE                         R46 K46 [{"graphPayloadMap", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "graphRect", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "getSelectedRect", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById", "beginUndoTransaction", "finishUndoTransaction", "undoTransaction"}]
      542 SETTABLEKS                       R13 R46 K18 ["graphPayloadMap"]
      544 SETTABLEKS                       R36 R46 K19 ["reorderPinsAsync"]
      546 SETTABLEKS                       R25 R46 K20 ["createNodeAsync"]
      548 SETTABLEKS                       R26 R46 K21 ["createParameterAsync"]
      550 SETTABLEKS                       R5 R46 K22 ["graphRect"]
      552 SETTABLEKS                       R20 R46 K23 ["selectNodesAsync"]
      554 SETTABLEKS                       R21 R46 K24 ["selectNodesFromRectAsync"]
      556 SETTABLEKS                       R18 R46 K25 ["setNodePositionsAsync"]
      558 SETTABLEKS                       R19 R46 K26 ["setNodeSizeAsync"]
      560 SETTABLEKS                       R29 R46 K27 ["setNodeConnectionAsync"]
      562 SETTABLEKS                       R28 R46 K28 ["removeNodeOutputConnectionAsync"]
      564 SETTABLEKS                       R27 R46 K29 ["removeNodeInputConnectionAsync"]
      566 SETTABLEKS                       R41 R46 K30 ["removeParameterAsync"]
      568 SETTABLEKS                       R35 R46 K31 ["renameNodeAsync"]
      570 SETTABLEKS                       R42 R46 K32 ["renameParameterAsync"]
      572 SETTABLEKS                       R17 R46 K33 ["setCollapsedAsync"]
      574 SETTABLEKS                       R32 R46 K34 ["setNodePropertyAsync"]
      576 SETTABLEKS                       R33 R46 K35 ["setInputPinNodePropertyAsync"]
      578 SETTABLEKS                       R34 R46 K36 ["getSelectedGraphInstance"]
      580 SETTABLEKS                       R22 R46 K37 ["selectedGraphInstance"]
      582 SETTABLEKS                       R23 R46 K38 ["currentAnimationId"]
      584 GETTABLEKS                       R47 R43 K39 ["getSelectedRect"]
      586 SETTABLEKS                       R47 R46 K39 ["getSelectedRect"]
      588 SETTABLEKS                       R44 R46 K40 ["observeSelectedGraphInstance"]
      590 GETTABLEKS                       R47 R1 K16 ["observe"]
      592 SETTABLEKS                       R47 R46 K41 ["observeGraphNodeById"]
      594 GETTABLEKS                       R47 R2 K16 ["observe"]
      596 SETTABLEKS                       R47 R46 K42 ["observeNodeRenderInfoById"]
      598 SETTABLEKS                       R30 R46 K43 ["beginUndoTransaction"]
      600 SETTABLEKS                       R31 R46 K44 ["finishUndoTransaction"]
      602 SETTABLEKS                       R7 R46 K45 ["undoTransaction"]
      604 GETUPVAL                         R48 2
      605 GETTABLEKS                       R47 R48 K7 ["useMemo"]
      607 DUPCLOSURE                       R48 K47 [PROTO_45]
      608 NEWTABLE                         R49 0 0
      610 CALL                             R47 2 1
      611 GETUPVAL                         R49 2
      612 GETTABLEKS                       R48 R49 K7 ["useMemo"]
      614 NEWCLOSURE                       R49 P34
      615 CAPTURE                          VAL R22
      616 NEWTABLE                         R50 0 2
      618 MOVE                             R51 R22
      619 MOVE                             R52 R13
      620 SETLIST                          R50 R51 2 [1]
      622 CALL                             R48 2 1
      623 GETUPVAL                         R50 16
      624 GETTABLEKS                       R49 R50 K48 ["useReplicatedState"]
      626 GETUPVAL                         R51 17
      627 GETTABLEKS                       R50 R51 K49 ["GRAPH_PAYLOAD_MAP"]
      629 MOVE                             R51 R13
      630 CALL                             R49 2 0
      631 GETUPVAL                         R50 16
      632 GETTABLEKS                       R49 R50 K48 ["useReplicatedState"]
      634 GETUPVAL                         R51 17
      635 GETTABLEKS                       R50 R51 K50 ["GRAPH_RENDER_INFO"]
      637 MOVE                             R51 R15
      638 CALL                             R49 2 0
      639 GETUPVAL                         R50 16
      640 GETTABLEKS                       R49 R50 K48 ["useReplicatedState"]
      642 GETUPVAL                         R51 17
      643 GETTABLEKS                       R50 R51 K51 ["TIME_RANGE"]
      645 MOVE                             R51 R47
      646 CALL                             R49 2 0
      647 GETUPVAL                         R50 16
      648 GETTABLEKS                       R49 R50 K48 ["useReplicatedState"]
      650 GETUPVAL                         R51 17
      651 GETTABLEKS                       R50 R51 K52 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      653 MOVE                             R51 R5
      654 CALL                             R49 2 0
      655 GETUPVAL                         R50 16
      656 GETTABLEKS                       R49 R50 K48 ["useReplicatedState"]
      658 GETUPVAL                         R51 17
      659 GETTABLEKS                       R50 R51 K53 ["CURRENT_ANIMATION_ID"]
      661 MOVE                             R51 R23
      662 CALL                             R49 2 0
      663 GETUPVAL                         R50 16
      664 GETTABLEKS                       R49 R50 K48 ["useReplicatedState"]
      666 GETUPVAL                         R51 17
      667 GETTABLEKS                       R50 R51 K54 ["UNDO_TRANSACTION"]
      669 MOVE                             R51 R7
      670 CALL                             R49 2 0
      671 GETUPVAL                         R50 16
      672 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      674 GETUPVAL                         R51 18
      675 GETTABLEKS                       R50 R51 K56 ["CREATE_NODE"]
      677 MOVE                             R51 R25
      678 CALL                             R49 2 0
      679 GETUPVAL                         R50 16
      680 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      682 GETUPVAL                         R51 18
      683 GETTABLEKS                       R50 R51 K57 ["CREATE_PARAMETER"]
      685 MOVE                             R51 R26
      686 CALL                             R49 2 0
      687 GETUPVAL                         R50 16
      688 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      690 GETUPVAL                         R51 18
      691 GETTABLEKS                       R50 R51 K58 ["SELECT_NODES"]
      693 MOVE                             R51 R20
      694 CALL                             R49 2 0
      695 GETUPVAL                         R50 16
      696 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      698 GETUPVAL                         R51 18
      699 GETTABLEKS                       R50 R51 K59 ["SELECT_NODES_FROM_RECT"]
      701 MOVE                             R51 R21
      702 CALL                             R49 2 0
      703 GETUPVAL                         R50 16
      704 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      706 GETUPVAL                         R51 18
      707 GETTABLEKS                       R50 R51 K60 ["SET_NODE_POSITIONS"]
      709 MOVE                             R51 R18
      710 CALL                             R49 2 0
      711 GETUPVAL                         R50 16
      712 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      714 GETUPVAL                         R51 18
      715 GETTABLEKS                       R50 R51 K61 ["SET_NODE_SIZE"]
      717 MOVE                             R51 R19
      718 CALL                             R49 2 0
      719 GETUPVAL                         R50 16
      720 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      722 GETUPVAL                         R51 18
      723 GETTABLEKS                       R50 R51 K62 ["SET_NODE_CONNECTION"]
      725 MOVE                             R51 R29
      726 CALL                             R49 2 0
      727 GETUPVAL                         R50 16
      728 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      730 GETUPVAL                         R51 18
      731 GETTABLEKS                       R50 R51 K63 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      733 MOVE                             R51 R28
      734 CALL                             R49 2 0
      735 GETUPVAL                         R50 16
      736 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      738 GETUPVAL                         R51 18
      739 GETTABLEKS                       R50 R51 K64 ["REMOVE_NODE_INPUT_CONNECTION"]
      741 MOVE                             R51 R27
      742 CALL                             R49 2 0
      743 GETUPVAL                         R50 16
      744 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      746 GETUPVAL                         R51 18
      747 GETTABLEKS                       R50 R51 K65 ["REMOVE_PARAMETER"]
      749 MOVE                             R51 R41
      750 CALL                             R49 2 0
      751 GETUPVAL                         R50 16
      752 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      754 GETUPVAL                         R51 18
      755 GETTABLEKS                       R50 R51 K66 ["RENAME_NODE"]
      757 MOVE                             R51 R35
      758 CALL                             R49 2 0
      759 GETUPVAL                         R50 16
      760 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      762 GETUPVAL                         R51 18
      763 GETTABLEKS                       R50 R51 K67 ["RENAME_PARAMETER"]
      765 MOVE                             R51 R42
      766 CALL                             R49 2 0
      767 GETUPVAL                         R50 16
      768 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      770 GETUPVAL                         R51 18
      771 GETTABLEKS                       R50 R51 K68 ["SET_COLLAPSED"]
      773 MOVE                             R51 R17
      774 CALL                             R49 2 0
      775 GETUPVAL                         R50 16
      776 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      778 GETUPVAL                         R51 18
      779 GETTABLEKS                       R50 R51 K69 ["SET_NODE_PROPERTY"]
      781 MOVE                             R51 R32
      782 CALL                             R49 2 0
      783 GETUPVAL                         R50 16
      784 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      786 GETUPVAL                         R51 18
      787 GETTABLEKS                       R50 R51 K70 ["SET_INPUT_PIN_NODE_PROPERTY"]
      789 MOVE                             R51 R33
      790 CALL                             R49 2 0
      791 GETUPVAL                         R50 16
      792 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      794 GETUPVAL                         R51 18
      795 GETTABLEKS                       R50 R51 K71 ["GET_SELECTED_GRAPH_INSTANCE"]
      797 MOVE                             R51 R34
      798 CALL                             R49 2 0
      799 GETUPVAL                         R50 16
      800 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      802 GETUPVAL                         R51 18
      803 GETTABLEKS                       R50 R51 K72 ["REORDER_PINS"]
      805 MOVE                             R51 R36
      806 CALL                             R49 2 0
      807 GETUPVAL                         R50 16
      808 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      810 GETUPVAL                         R51 18
      811 GETTABLEKS                       R50 R51 K73 ["BEGIN_UNDO_TRANSACTION"]
      813 MOVE                             R51 R30
      814 CALL                             R49 2 0
      815 GETUPVAL                         R50 16
      816 GETTABLEKS                       R49 R50 K55 ["useBoundAction"]
      818 GETUPVAL                         R51 18
      819 GETTABLEKS                       R50 R51 K74 ["FINISH_UNDO_TRANSACTION"]
      821 MOVE                             R51 R31
      822 CALL                             R49 2 0
      823 GETUPVAL                         R50 2
      824 GETTABLEKS                       R49 R50 K75 ["createElement"]
      826 GETUPVAL                         R51 19
      827 GETTABLEKS                       R50 R51 K76 ["Provider"]
      829 DUPTABLE                         R51 K78 [{"value"}]
      830 SETTABLEKS                       R46 R51 K77 ["value"]
      832 DUPTABLE                         R52 K80 [{"ContextStack"}]
      833 GETUPVAL                         R54 2
      834 GETTABLEKS                       R53 R54 K75 ["createElement"]
      836 GETUPVAL                         R55 13
      837 GETTABLEKS                       R54 R55 K79 ["ContextStack"]
      839 DUPTABLE                         R55 K82 [{"providers"}]
      840 NEWTABLE                         R56 0 2
      842 GETUPVAL                         R58 2
      843 GETTABLEKS                       R57 R58 K75 ["createElement"]
      845 GETUPVAL                         R59 20
      846 GETTABLEKS                       R58 R59 K76 ["Provider"]
      848 DUPTABLE                         R59 K84 [{"timeRange"}]
      849 SETTABLEKS                       R47 R59 K83 ["timeRange"]
      851 CALL                             R57 2 1
      852 GETUPVAL                         R59 2
      853 GETTABLEKS                       R58 R59 K75 ["createElement"]
      855 GETUPVAL                         R60 21
      856 GETTABLEKS                       R59 R60 K76 ["Provider"]
      858 DUPTABLE                         R60 K86 [{"animationClipsList"}]
      859 SETTABLEKS                       R48 R60 K85 ["animationClipsList"]
      861 CALL                             R58 2 -1
      862 SETLIST                          R56 R57 -1 [1]
      864 SETTABLEKS                       R56 R55 K81 ["providers"]
      866 GETTABLEKS                       R56 R0 K87 ["children"]
      868 CALL                             R53 3 1
      869 SETTABLEKS                       R53 R52 K79 ["ContextStack"]
      871 CALL                             R49 3 -1
      872 RETURN                           R49 -1

PROTO_48:
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

PROTO_49:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_50:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_51:
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
       77 DUPCLOSURE                       R8 K17 [PROTO_49]
       78 NEWTABLE                         R9 0 0
       80 CALL                             R7 2 1
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R8 R9 K18 ["createComputed"]
       84 DUPCLOSURE                       R9 K19 [PROTO_50]
       85 CALL                             R8 1 1
       86 GETUPVAL                         R9 5
       87 MOVE                             R10 R2
       88 MOVE                             R11 R3
       89 CALL                             R9 2 1
       90 DUPTABLE                         R10 K47 [{"graphPayloadMap", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "graphRect", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "getSelectedRect", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById", "beginUndoTransaction", "finishUndoTransaction"}]
       91 SETTABLEKS                       R3 R10 K20 ["graphPayloadMap"]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
       96 GETUPVAL                         R13 6
       97 GETTABLEKS                       R12 R13 K49 ["REORDER_PINS"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K21 ["reorderPinsAsync"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      105 GETUPVAL                         R13 6
      106 GETTABLEKS                       R12 R13 K50 ["CREATE_NODE"]
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K22 ["createNodeAsync"]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      114 GETUPVAL                         R13 6
      115 GETTABLEKS                       R12 R13 K51 ["CREATE_PARAMETER"]
      117 CALL                             R11 1 1
      118 SETTABLEKS                       R11 R10 K23 ["createParameterAsync"]
      120 SETTABLEKS                       R5 R10 K24 ["graphRect"]
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      125 GETUPVAL                         R13 6
      126 GETTABLEKS                       R12 R13 K52 ["SELECT_NODES"]
      128 CALL                             R11 1 1
      129 SETTABLEKS                       R11 R10 K25 ["selectNodesAsync"]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      134 GETUPVAL                         R13 6
      135 GETTABLEKS                       R12 R13 K53 ["SELECT_NODES_FROM_RECT"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K26 ["selectNodesFromRectAsync"]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      143 GETUPVAL                         R13 6
      144 GETTABLEKS                       R12 R13 K54 ["SET_NODE_POSITIONS"]
      146 CALL                             R11 1 1
      147 SETTABLEKS                       R11 R10 K27 ["setNodePositionsAsync"]
      149 GETUPVAL                         R12 1
      150 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      152 GETUPVAL                         R13 6
      153 GETTABLEKS                       R12 R13 K55 ["SET_NODE_SIZE"]
      155 CALL                             R11 1 1
      156 SETTABLEKS                       R11 R10 K28 ["setNodeSizeAsync"]
      158 GETUPVAL                         R12 1
      159 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      161 GETUPVAL                         R13 6
      162 GETTABLEKS                       R12 R13 K56 ["SET_NODE_CONNECTION"]
      164 CALL                             R11 1 1
      165 SETTABLEKS                       R11 R10 K29 ["setNodeConnectionAsync"]
      167 GETUPVAL                         R12 1
      168 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      170 GETUPVAL                         R13 6
      171 GETTABLEKS                       R12 R13 K57 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      173 CALL                             R11 1 1
      174 SETTABLEKS                       R11 R10 K30 ["removeNodeOutputConnectionAsync"]
      176 GETUPVAL                         R12 1
      177 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      179 GETUPVAL                         R13 6
      180 GETTABLEKS                       R12 R13 K58 ["REMOVE_NODE_INPUT_CONNECTION"]
      182 CALL                             R11 1 1
      183 SETTABLEKS                       R11 R10 K31 ["removeNodeInputConnectionAsync"]
      185 GETUPVAL                         R12 1
      186 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      188 GETUPVAL                         R13 6
      189 GETTABLEKS                       R12 R13 K59 ["REMOVE_PARAMETER"]
      191 CALL                             R11 1 1
      192 SETTABLEKS                       R11 R10 K32 ["removeParameterAsync"]
      194 GETUPVAL                         R12 1
      195 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      197 GETUPVAL                         R13 6
      198 GETTABLEKS                       R12 R13 K60 ["RENAME_NODE"]
      200 CALL                             R11 1 1
      201 SETTABLEKS                       R11 R10 K33 ["renameNodeAsync"]
      203 GETUPVAL                         R12 1
      204 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      206 GETUPVAL                         R13 6
      207 GETTABLEKS                       R12 R13 K61 ["RENAME_PARAMETER"]
      209 CALL                             R11 1 1
      210 SETTABLEKS                       R11 R10 K34 ["renameParameterAsync"]
      212 GETUPVAL                         R12 1
      213 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      215 GETUPVAL                         R13 6
      216 GETTABLEKS                       R12 R13 K62 ["SET_COLLAPSED"]
      218 CALL                             R11 1 1
      219 SETTABLEKS                       R11 R10 K35 ["setCollapsedAsync"]
      221 GETUPVAL                         R12 1
      222 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      224 GETUPVAL                         R13 6
      225 GETTABLEKS                       R12 R13 K63 ["SET_NODE_PROPERTY"]
      227 CALL                             R11 1 1
      228 SETTABLEKS                       R11 R10 K36 ["setNodePropertyAsync"]
      230 GETUPVAL                         R12 1
      231 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      233 GETUPVAL                         R13 6
      234 GETTABLEKS                       R12 R13 K64 ["SET_INPUT_PIN_NODE_PROPERTY"]
      236 CALL                             R11 1 1
      237 SETTABLEKS                       R11 R10 K37 ["setInputPinNodePropertyAsync"]
      239 SETTABLEKS                       R7 R10 K38 ["getSelectedGraphInstance"]
      241 LOADNIL                          R11
      242 SETTABLEKS                       R11 R10 K39 ["selectedGraphInstance"]
      244 SETTABLEKS                       R6 R10 K40 ["currentAnimationId"]
      246 GETTABLEKS                       R11 R9 K41 ["getSelectedRect"]
      248 SETTABLEKS                       R11 R10 K41 ["getSelectedRect"]
      250 SETTABLEKS                       R8 R10 K42 ["observeSelectedGraphInstance"]
      252 GETTABLEKS                       R11 R1 K65 ["observe"]
      254 SETTABLEKS                       R11 R10 K43 ["observeGraphNodeById"]
      256 GETTABLEKS                       R11 R2 K65 ["observe"]
      258 SETTABLEKS                       R11 R10 K44 ["observeNodeRenderInfoById"]
      260 GETUPVAL                         R12 1
      261 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      263 GETUPVAL                         R13 6
      264 GETTABLEKS                       R12 R13 K66 ["BEGIN_UNDO_TRANSACTION"]
      266 CALL                             R11 1 1
      267 SETTABLEKS                       R11 R10 K45 ["beginUndoTransaction"]
      269 GETUPVAL                         R12 1
      270 GETTABLEKS                       R11 R12 K48 ["useBoundAction"]
      272 GETUPVAL                         R13 6
      273 GETTABLEKS                       R12 R13 K67 ["FINISH_UNDO_TRANSACTION"]
      275 CALL                             R11 1 1
      276 SETTABLEKS                       R11 R10 K46 ["finishUndoTransaction"]
      278 GETUPVAL                         R12 3
      279 GETTABLEKS                       R11 R12 K68 ["createElement"]
      281 GETUPVAL                         R13 7
      282 GETTABLEKS                       R12 R13 K69 ["Provider"]
      284 DUPTABLE                         R13 K71 [{"value"}]
      285 SETTABLEKS                       R10 R13 K70 ["value"]
      287 DUPTABLE                         R14 K73 [{"ContextStack"}]
      288 GETUPVAL                         R16 3
      289 GETTABLEKS                       R15 R16 K68 ["createElement"]
      291 GETUPVAL                         R17 8
      292 GETTABLEKS                       R16 R17 K72 ["ContextStack"]
      294 DUPTABLE                         R17 K75 [{"providers"}]
      295 NEWTABLE                         R18 0 1
      297 GETUPVAL                         R20 3
      298 GETTABLEKS                       R19 R20 K68 ["createElement"]
      300 GETUPVAL                         R21 9
      301 GETTABLEKS                       R20 R21 K69 ["Provider"]
      303 DUPTABLE                         R21 K77 [{"timeRange"}]
      304 SETTABLEKS                       R4 R21 K76 ["timeRange"]
      306 CALL                             R19 2 -1
      307 SETLIST                          R18 R19 -1 [1]
      309 SETTABLEKS                       R18 R17 K74 ["providers"]
      311 GETTABLEKS                       R18 R0 K78 ["children"]
      313 CALL                             R15 3 1
      314 SETTABLEKS                       R15 R14 K72 ["ContextStack"]
      316 CALL                             R11 3 -1
      317 CLOSEUPVALS                      R3
      318 RETURN                           R11 -1

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
       21 LOADK                            R5 K9 ["SerializationService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R6 K13 ["AnimationNodeWrapper"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Contexts"]
       36 GETTABLEKS                       R6 R7 K15 ["AnimationPreviewClipsContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Util"]
       43 GETTABLEKS                       R7 R8 K16 ["Constants"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       50 GETTABLEKS                       R8 R9 K17 ["InstanceRegistryContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R11 R0 K12 ["Util"]
       57 GETTABLEKS                       R10 R11 K18 ["Instances"]
       59 GETTABLEKS                       R9 R10 K19 ["InstanceSelectionRegistry"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R12 R0 K14 ["Contexts"]
       66 GETTABLEKS                       R11 R12 K20 ["NativeGraphContext"]
       68 GETTABLEKS                       R10 R11 K21 ["NativeGraphUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R13 R0 K12 ["Util"]
       75 GETTABLEKS                       R12 R13 K22 ["Networking"]
       77 GETTABLEKS                       R11 R12 K23 ["NetworkUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K11 [require]
       82 GETTABLEKS                       R12 R0 K24 ["NodeViewTypes"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R14 R0 K25 ["Parent"]
       89 GETTABLEKS                       R13 R14 K26 ["React"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R15 R0 K25 ["Parent"]
       96 GETTABLEKS                       R14 R15 K27 ["ReactUtils"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K11 [require]
      101 GETTABLEKS                       R16 R0 K12 ["Util"]
      103 GETTABLEKS                       R15 R16 K28 ["RectUtil"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R17 R0 K14 ["Contexts"]
      110 GETTABLEKS                       R16 R17 K29 ["SelectionServiceContext"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K11 [require]
      115 GETTABLEKS                       R18 R0 K25 ["Parent"]
      117 GETTABLEKS                       R17 R18 K30 ["Signals"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K11 [require]
      122 GETTABLEKS                       R19 R0 K14 ["Contexts"]
      124 GETTABLEKS                       R18 R19 K31 ["TimeRangeContext"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K11 [require]
      129 GETTABLEKS                       R20 R0 K32 ["Hooks"]
      131 GETTABLEKS                       R19 R20 K33 ["useSelection"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K11 [require]
      136 GETTABLEKS                       R21 R0 K32 ["Hooks"]
      138 GETTABLEKS                       R20 R21 K34 ["useSignalDispatcher"]
      140 CALL                             R19 1 1
      141 DUPTABLE                         R20 K62 [{"graphPayloadMap", "graphRect", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "setNodeConnectionAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedRect", "observeGraphNodeById", "observeNodeRenderInfoById", "observeSelectedGraphInstance", "beginUndoTransaction", "finishUndoTransaction", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId"}]
      142 LOADNIL                          R21
      143 SETTABLEKS                       R21 R20 K35 ["graphPayloadMap"]
      145 GETIMPORT                        R21 K65 [Rect.new]
      147 LOADN                            R22 0
      148 LOADN                            R23 0
      149 LOADN                            R24 0
      150 LOADN                            R25 0
      151 CALL                             R21 4 1
      152 SETTABLEKS                       R21 R20 K36 ["graphRect"]
      154 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      156 LOADK                            R22 K37 ["reorderPinsAsync"]
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K37 ["reorderPinsAsync"]
      160 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      162 LOADK                            R22 K38 ["createNodeAsync"]
      163 CALL                             R21 1 1
      164 SETTABLEKS                       R21 R20 K38 ["createNodeAsync"]
      166 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      168 LOADK                            R22 K39 ["createParameterAsync"]
      169 CALL                             R21 1 1
      170 SETTABLEKS                       R21 R20 K39 ["createParameterAsync"]
      172 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      174 LOADK                            R22 K40 ["selectNodesAsync"]
      175 CALL                             R21 1 1
      176 SETTABLEKS                       R21 R20 K40 ["selectNodesAsync"]
      178 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      180 LOADK                            R22 K41 ["selectNodesFromRectAsync"]
      181 CALL                             R21 1 1
      182 SETTABLEKS                       R21 R20 K41 ["selectNodesFromRectAsync"]
      184 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      186 LOADK                            R22 K42 ["setNodePositionsAsync"]
      187 CALL                             R21 1 1
      188 SETTABLEKS                       R21 R20 K42 ["setNodePositionsAsync"]
      190 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      192 LOADK                            R22 K43 ["setNodeSizeAsync"]
      193 CALL                             R21 1 1
      194 SETTABLEKS                       R21 R20 K43 ["setNodeSizeAsync"]
      196 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      198 LOADK                            R22 K44 ["removeNodeInputConnectionAsync"]
      199 CALL                             R21 1 1
      200 SETTABLEKS                       R21 R20 K44 ["removeNodeInputConnectionAsync"]
      202 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      204 LOADK                            R22 K45 ["removeNodeOutputConnectionAsync"]
      205 CALL                             R21 1 1
      206 SETTABLEKS                       R21 R20 K45 ["removeNodeOutputConnectionAsync"]
      208 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      210 LOADK                            R22 K46 ["removeParameterAsync"]
      211 CALL                             R21 1 1
      212 SETTABLEKS                       R21 R20 K46 ["removeParameterAsync"]
      214 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      216 LOADK                            R22 K47 ["renameNodeAsync"]
      217 CALL                             R21 1 1
      218 SETTABLEKS                       R21 R20 K47 ["renameNodeAsync"]
      220 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      222 LOADK                            R22 K48 ["renameParameterAsync"]
      223 CALL                             R21 1 1
      224 SETTABLEKS                       R21 R20 K48 ["renameParameterAsync"]
      226 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      228 LOADK                            R22 K67 ["setNewConnection"]
      229 CALL                             R21 1 1
      230 SETTABLEKS                       R21 R20 K49 ["setNodeConnectionAsync"]
      232 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      234 LOADK                            R22 K50 ["setCollapsedAsync"]
      235 CALL                             R21 1 1
      236 SETTABLEKS                       R21 R20 K50 ["setCollapsedAsync"]
      238 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      240 LOADK                            R22 K51 ["setNodePropertyAsync"]
      241 CALL                             R21 1 1
      242 SETTABLEKS                       R21 R20 K51 ["setNodePropertyAsync"]
      244 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      246 LOADK                            R22 K52 ["setInputPinNodePropertyAsync"]
      247 CALL                             R21 1 1
      248 SETTABLEKS                       R21 R20 K52 ["setInputPinNodePropertyAsync"]
      250 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      252 LOADK                            R22 K53 ["getSelectedRect"]
      253 CALL                             R21 1 1
      254 SETTABLEKS                       R21 R20 K53 ["getSelectedRect"]
      256 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      258 LOADK                            R22 K54 ["observeGraphNodeById"]
      259 CALL                             R21 1 1
      260 SETTABLEKS                       R21 R20 K54 ["observeGraphNodeById"]
      262 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      264 LOADK                            R22 K55 ["observeNodeRenderInfoById"]
      265 CALL                             R21 1 1
      266 SETTABLEKS                       R21 R20 K55 ["observeNodeRenderInfoById"]
      268 GETTABLEKS                       R21 R16 K68 ["createSignal"]
      270 LOADNIL                          R22
      271 CALL                             R21 1 1
      272 SETTABLEKS                       R21 R20 K56 ["observeSelectedGraphInstance"]
      274 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      276 LOADK                            R22 K57 ["beginUndoTransaction"]
      277 CALL                             R21 1 1
      278 SETTABLEKS                       R21 R20 K57 ["beginUndoTransaction"]
      280 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      282 LOADK                            R22 K58 ["finishUndoTransaction"]
      283 CALL                             R21 1 1
      284 SETTABLEKS                       R21 R20 K58 ["finishUndoTransaction"]
      286 GETTABLEKS                       R21 R13 K66 ["createUnimplemented"]
      288 LOADK                            R22 K59 ["getSelectedGraphInstance"]
      289 CALL                             R21 1 1
      290 SETTABLEKS                       R21 R20 K59 ["getSelectedGraphInstance"]
      292 LOADNIL                          R21
      293 SETTABLEKS                       R21 R20 K60 ["selectedGraphInstance"]
      295 LOADNIL                          R21
      296 SETTABLEKS                       R21 R20 K61 ["currentAnimationId"]
      298 GETTABLEKS                       R21 R12 K69 ["createContext"]
      300 MOVE                             R22 R20
      301 CALL                             R21 1 1
      302 DUPTABLE                         R22 K76 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "UNDO_TRANSACTION"}]
      303 LOADK                            R23 K77 ["NativeGraphContext_GraphPayloadMap"]
      304 SETTABLEKS                       R23 R22 K70 ["GRAPH_PAYLOAD_MAP"]
      306 LOADK                            R23 K78 ["NativeGraphContext_GraphRenderInfo"]
      307 SETTABLEKS                       R23 R22 K71 ["GRAPH_RENDER_INFO"]
      309 LOADK                            R23 K79 ["NativeGraphContext_TimeRange"]
      310 SETTABLEKS                       R23 R22 K72 ["TIME_RANGE"]
      312 LOADK                            R23 K80 ["NativeGraphContext_GraphPayloadGraphRect"]
      313 SETTABLEKS                       R23 R22 K73 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      315 LOADK                            R23 K81 ["NativeGraphContext_CurrentAnimationId"]
      316 SETTABLEKS                       R23 R22 K74 ["CURRENT_ANIMATION_ID"]
      318 LOADK                            R23 K82 ["NativeGraphContext_UndoTransaction"]
      319 SETTABLEKS                       R23 R22 K75 ["UNDO_TRANSACTION"]
      321 DUPTABLE                         R23 K102 [{"CREATE_NODE", "CREATE_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      322 LOADK                            R24 K103 ["NativeGraphContext_CreateNode"]
      323 SETTABLEKS                       R24 R23 K83 ["CREATE_NODE"]
      325 LOADK                            R24 K104 ["NativeGraphContext_CreateParameterAsync"]
      326 SETTABLEKS                       R24 R23 K84 ["CREATE_PARAMETER"]
      328 LOADK                            R24 K105 ["NativeGraphContext_GetSelectedGraphInstance"]
      329 SETTABLEKS                       R24 R23 K85 ["GET_SELECTED_GRAPH_INSTANCE"]
      331 LOADK                            R24 K106 ["NativeGraphContext_SetNodeConnectionAsync"]
      332 SETTABLEKS                       R24 R23 K86 ["SET_NODE_CONNECTION"]
      334 LOADK                            R24 K107 ["NativeGraphContext_setNodePropertyAsync"]
      335 SETTABLEKS                       R24 R23 K87 ["SET_NODE_PROPERTY"]
      337 LOADK                            R24 K108 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      338 SETTABLEKS                       R24 R23 K88 ["SET_INPUT_PIN_NODE_PROPERTY"]
      340 LOADK                            R24 K109 ["NativeGraphContext_ReorderPinsAsync"]
      341 SETTABLEKS                       R24 R23 K89 ["REORDER_PINS"]
      343 LOADK                            R24 K110 ["NativeGraphContext_RemoveNodeInputConnection"]
      344 SETTABLEKS                       R24 R23 K90 ["REMOVE_NODE_INPUT_CONNECTION"]
      346 LOADK                            R24 K111 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      347 SETTABLEKS                       R24 R23 K91 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      349 LOADK                            R24 K112 ["NativeGraphContext_RemoveParameterAsync"]
      350 SETTABLEKS                       R24 R23 K92 ["REMOVE_PARAMETER"]
      352 LOADK                            R24 K113 ["NativeGraphContext_RenameNodeAsync"]
      353 SETTABLEKS                       R24 R23 K93 ["RENAME_NODE"]
      355 LOADK                            R24 K114 ["NativeGraphContext_RenameParameterAsync"]
      356 SETTABLEKS                       R24 R23 K94 ["RENAME_PARAMETER"]
      358 LOADK                            R24 K115 ["NativeGraphContext_SetNodeSizeAsync"]
      359 SETTABLEKS                       R24 R23 K95 ["SET_NODE_SIZE"]
      361 LOADK                            R24 K116 ["NativeGraphContext_SetCollapsedAsync"]
      362 SETTABLEKS                       R24 R23 K96 ["SET_COLLAPSED"]
      364 LOADK                            R24 K117 ["NativeGraphContext_SetNodePositionsAsync"]
      365 SETTABLEKS                       R24 R23 K97 ["SET_NODE_POSITIONS"]
      367 LOADK                            R24 K118 ["NativeGraphContext_SelectNodes"]
      368 SETTABLEKS                       R24 R23 K98 ["SELECT_NODES"]
      370 LOADK                            R24 K119 ["NativeGraphContext_SelectNodesFromRect"]
      371 SETTABLEKS                       R24 R23 K99 ["SELECT_NODES_FROM_RECT"]
      373 LOADK                            R24 K120 ["NativeGraphContext_beginUndoTransaction"]
      374 SETTABLEKS                       R24 R23 K100 ["BEGIN_UNDO_TRANSACTION"]
      376 LOADK                            R24 K121 ["NativeGraphContext_finishUndoTransaction"]
      377 SETTABLEKS                       R24 R23 K101 ["FINISH_UNDO_TRANSACTION"]
      379 NEWTABLE                         R24 16 0
      381 LOADN                            R25 1
      382 SETTABLEKS                       R25 R24 K122 ["Speed"]
      384 LOADN                            R25 1
      385 SETTABLEKS                       R25 R24 K123 ["PlayCount"]
      387 LOADN                            R25 0
      388 SETTABLEKS                       R25 R24 K124 ["StartOffset"]
      390 LOADN                            R25 0
      391 SETTABLEKS                       R25 R24 K125 ["EndOffset"]
      393 LOADN                            R25 0
      394 SETTABLEKS                       R25 R24 K126 ["X"]
      396 LOADN                            R25 0
      397 SETTABLEKS                       R25 R24 K127 ["Y"]
      399 LOADN                            R25 0
      400 SETTABLEKS                       R25 R24 K128 ["LoopCount"]
      402 LOADN                            R25 0
      403 SETTABLEKS                       R25 R24 K129 ["Weight"]
      405 LOADN                            R25 0
      406 SETTABLEKS                       R25 R24 K130 ["Position"]
      408 GETIMPORT                        R25 K134 [Enum.AnimationNodePlayMode.Loop]
      410 SETTABLEKS                       R25 R24 K135 ["PlayMode"]
      412 GETIMPORT                        R25 K138 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      414 SETTABLEKS                       R25 R24 K139 ["InputMode"]
      416 LOADB                            R25 0
      417 SETTABLEKS                       R25 R24 K140 ["Reverse"]
      419 LOADB                            R25 0
      420 SETTABLEKS                       R25 R24 K141 ["Invert"]
      422 DUPCLOSURE                       R25 K142 [PROTO_1]
      423 CAPTURE                          VAL R12
      424 CAPTURE                          VAL R14
      425 DUPCLOSURE                       R26 K143 [PROTO_47]
      426 CAPTURE                          VAL R19
      427 CAPTURE                          VAL R18
      428 CAPTURE                          VAL R12
      429 CAPTURE                          VAL R15
      430 CAPTURE                          VAL R16
      431 CAPTURE                          VAL R8
      432 CAPTURE                          VAL R7
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R2
      435 CAPTURE                          VAL R1
      436 CAPTURE                          VAL R3
      437 CAPTURE                          VAL R4
      438 CAPTURE                          VAL R24
      439 CAPTURE                          VAL R13
      440 CAPTURE                          VAL R6
      441 CAPTURE                          VAL R25
      442 CAPTURE                          VAL R10
      443 CAPTURE                          VAL R22
      444 CAPTURE                          VAL R23
      445 CAPTURE                          VAL R21
      446 CAPTURE                          VAL R17
      447 CAPTURE                          VAL R5
      448 DUPCLOSURE                       R27 K144 [PROTO_51]
      449 CAPTURE                          VAL R19
      450 CAPTURE                          VAL R10
      451 CAPTURE                          VAL R22
      452 CAPTURE                          VAL R12
      453 CAPTURE                          VAL R16
      454 CAPTURE                          VAL R25
      455 CAPTURE                          VAL R23
      456 CAPTURE                          VAL R21
      457 CAPTURE                          VAL R13
      458 CAPTURE                          VAL R17
      459 DUPTABLE                         R28 K148 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      460 SETTABLEKS                       R21 R28 K145 ["Context"]
      462 SETTABLEKS                       R26 R28 K146 ["EditableDataModelProvider"]
      464 SETTABLEKS                       R27 R28 K147 ["UIDataModelProvider"]
      466 RETURN                           R28 1
