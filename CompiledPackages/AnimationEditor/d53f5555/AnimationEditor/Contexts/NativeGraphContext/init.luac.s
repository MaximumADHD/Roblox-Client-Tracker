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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["OnServerInvoke"]
        4 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K0 ["NativeGraphContext"]
       10 LOADK                            R5 K1 ["createParameterAsync"]
       11 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
       13 CALL                             R2 3 1
       14 GETUPVAL                         R3 0
       15 LOADK                            R5 K3 ["AnimationGraphDefinition"]
       16 NAMECALL                         R3 R3 K4 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIF                           R3 ; [+6]
       20 GETIMPORT                        R3 K6 [warn]
       22 LOADK                            R4 K7 ["Selected graph instance is not an AnimationGraphDefinition"]
       23 CALL                             R3 1 0
       24 LOADB                            R3 0
       25 RETURN                           R3 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R3 R4 K8 ["getOrCreateParameterInstance"]
       29 GETUPVAL                         R4 4
       30 GETUPVAL                         R5 0
       31 MOVE                             R6 R0
       32 CALL                             R3 3 1
       33 LOADK                            R5 K9 ["%*Param"]
       34 MOVE                             R7 R0
       35 NAMECALL                         R5 R5 K10 ["format"]
       37 CALL                             R5 2 1
       38 MOVE                             R4 R5
       39 GETUPVAL                         R5 0
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R5 K11 ["GetAttribute"]
       43 CALL                             R5 2 1
       44 JUMPIF                           R5 ; [+16]
       45 LOADNIL                          R5
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETUPVAL                         R6 5
       48 GETTABLE                         R5 R6 R1
       49 JUMP                             ; [+2]
       50 GETUPVAL                         R6 6
       51 GETTABLE                         R5 R6 R0
       52 JUMPIFNOTEQKNIL                  R5 ; [+2]
       54 LOADN                            R5 0
       55 GETUPVAL                         R6 0
       56 MOVE                             R8 R4
       57 MOVE                             R9 R5
       58 NAMECALL                         R6 R6 K12 ["SetAttribute"]
       60 CALL                             R6 3 0
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R5 R6 K13 ["selectionService"]
       64 NEWTABLE                         R7 0 1
       66 MOVE                             R8 R3
       67 SETLIST                          R7 R8 1 [1]
       69 NAMECALL                         R5 R5 K14 ["Set"]
       71 CALL                             R5 2 0
       72 JUMPIFNOT                        R2 ; [+7]
       73 GETUPVAL                         R5 2
       74 MOVE                             R7 R2
       75 GETIMPORT                        R8 K18 [Enum.FinishRecordingOperation.Commit]
       77 NAMECALL                         R5 R5 K19 ["FinishRecording"]
       79 CALL                             R5 3 0
       80 LOADB                            R5 1
       81 RETURN                           R5 1

PROTO_26:
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
       61 GETUPVAL                         R4 5
       62 MOVE                             R5 R3
       63 GETTABLEKS                       R6 R0 K16 ["sourcePinName"]
       65 CALL                             R4 2 1
       66 JUMPIFNOT                        R4 ; [+23]
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R5 R6 K17 ["getOrCreateParameterInstance"]
       70 GETUPVAL                         R6 3
       71 GETUPVAL                         R7 0
       72 MOVE                             R8 R3
       73 CALL                             R5 3 1
       74 GETUPVAL                         R10 6
       75 GETTABLEKS                       R9 R10 K18 ["NODE_ATTRIBUTES"]
       77 GETTABLEKS                       R8 R9 K19 ["BindingName"]
       79 NAMECALL                         R6 R5 K20 ["GetAttribute"]
       81 CALL                             R6 2 1
       82 GETUPVAL                         R8 4
       83 GETTABLEKS                       R7 R8 K21 ["setParameterBindingName"]
       85 MOVE                             R8 R2
       86 GETTABLEKS                       R9 R0 K16 ["sourcePinName"]
       88 MOVE                             R10 R6
       89 CALL                             R7 3 0
       90 JUMPIFNOT                        R1 ; [+7]
       91 GETUPVAL                         R5 2
       92 MOVE                             R7 R1
       93 GETIMPORT                        R8 K25 [Enum.FinishRecordingOperation.Commit]
       95 NAMECALL                         R5 R5 K26 ["FinishRecording"]
       97 CALL                             R5 3 0
       98 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_32:
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
        1 RETURN                           R0 1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeParameterNodeInfoLookupList"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_48:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 NEWTABLE                         R0 0 1
        4 GETUPVAL                         R1 0
        5 SETLIST                          R0 R1 1 [1]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_50:
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
      238 GETTABLEKS                       R26 R27 K8 ["useEffect"]
      240 NEWCLOSURE                       R27 P13
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R25
      243 CAPTURE                          UPVAL U9
      244 NEWTABLE                         R28 0 1
      246 MOVE                             R29 R23
      247 SETLIST                          R28 R29 1 [1]
      249 CALL                             R26 2 0
      250 GETUPVAL                         R27 2
      251 GETTABLEKS                       R26 R27 K8 ["useEffect"]
      253 NEWCLOSURE                       R27 P14
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R23
      256 CAPTURE                          UPVAL U10
      257 NEWTABLE                         R28 0 2
      259 MOVE                             R29 R24
      260 MOVE                             R30 R23
      261 SETLIST                          R28 R29 2 [1]
      263 CALL                             R26 2 0
      264 GETUPVAL                         R27 2
      265 GETTABLEKS                       R26 R27 K11 ["useCallback"]
      267 NEWCLOSURE                       R27 P15
      268 CAPTURE                          VAL R23
      269 CAPTURE                          VAL R13
      270 CAPTURE                          UPVAL U8
      271 CAPTURE                          UPVAL U7
      272 CAPTURE                          VAL R11
      273 CAPTURE                          UPVAL U11
      274 CAPTURE                          VAL R4
      275 NEWTABLE                         R28 0 4
      277 GETTABLEKS                       R29 R4 K12 ["selectionService"]
      279 MOVE                             R30 R23
      280 MOVE                             R31 R13
      281 MOVE                             R32 R11
      282 SETLIST                          R28 R29 4 [1]
      284 CALL                             R26 2 1
      285 GETUPVAL                         R28 2
      286 GETTABLEKS                       R27 R28 K11 ["useCallback"]
      288 NEWCLOSURE                       R28 P16
      289 CAPTURE                          VAL R23
      290 CAPTURE                          VAL R13
      291 CAPTURE                          UPVAL U8
      292 CAPTURE                          UPVAL U7
      293 CAPTURE                          VAL R11
      294 CAPTURE                          UPVAL U12
      295 CAPTURE                          UPVAL U13
      296 CAPTURE                          VAL R4
      297 NEWTABLE                         R29 0 3
      299 GETTABLEKS                       R30 R4 K12 ["selectionService"]
      301 MOVE                             R31 R23
      302 MOVE                             R32 R11
      303 SETLIST                          R29 R30 3 [1]
      305 CALL                             R27 2 1
      306 GETUPVAL                         R29 2
      307 GETTABLEKS                       R28 R29 K11 ["useCallback"]
      309 NEWCLOSURE                       R29 P17
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R13
      312 CAPTURE                          UPVAL U8
      313 CAPTURE                          VAL R11
      314 CAPTURE                          UPVAL U7
      315 CAPTURE                          VAL R27
      316 CAPTURE                          UPVAL U14
      317 NEWTABLE                         R30 0 3
      319 GETTABLEKS                       R31 R4 K12 ["selectionService"]
      321 MOVE                             R32 R23
      322 MOVE                             R33 R11
      323 SETLIST                          R30 R31 3 [1]
      325 CALL                             R28 2 1
      326 GETUPVAL                         R30 2
      327 GETTABLEKS                       R29 R30 K11 ["useCallback"]
      329 NEWCLOSURE                       R30 P18
      330 CAPTURE                          VAL R13
      331 CAPTURE                          UPVAL U8
      332 CAPTURE                          UPVAL U7
      333 CAPTURE                          VAL R11
      334 NEWTABLE                         R31 0 1
      336 MOVE                             R32 R13
      337 SETLIST                          R31 R32 1 [1]
      339 CALL                             R29 2 1
      340 GETUPVAL                         R31 2
      341 GETTABLEKS                       R30 R31 K11 ["useCallback"]
      343 NEWCLOSURE                       R31 P19
      344 CAPTURE                          VAL R13
      345 CAPTURE                          UPVAL U8
      346 CAPTURE                          UPVAL U7
      347 CAPTURE                          VAL R11
      348 NEWTABLE                         R32 0 1
      350 MOVE                             R33 R13
      351 SETLIST                          R32 R33 1 [1]
      353 CALL                             R30 2 1
      354 GETUPVAL                         R32 2
      355 GETTABLEKS                       R31 R32 K11 ["useCallback"]
      357 NEWCLOSURE                       R32 P20
      358 CAPTURE                          VAL R13
      359 CAPTURE                          UPVAL U8
      360 CAPTURE                          UPVAL U7
      361 CAPTURE                          VAL R11
      362 NEWTABLE                         R33 0 2
      364 MOVE                             R34 R11
      365 MOVE                             R35 R13
      366 SETLIST                          R33 R34 2 [1]
      368 CALL                             R31 2 1
      369 GETUPVAL                         R33 2
      370 GETTABLEKS                       R32 R33 K11 ["useCallback"]
      372 NEWCLOSURE                       R33 P21
      373 CAPTURE                          VAL R7
      374 CAPTURE                          UPVAL U8
      375 NEWTABLE                         R34 0 0
      377 CALL                             R32 2 1
      378 GETUPVAL                         R34 2
      379 GETTABLEKS                       R33 R34 K11 ["useCallback"]
      381 NEWCLOSURE                       R34 P22
      382 CAPTURE                          VAL R7
      383 CAPTURE                          UPVAL U8
      384 NEWTABLE                         R35 0 1
      386 GETTABLEKS                       R36 R7 K15 ["current"]
      388 SETLIST                          R35 R36 1 [1]
      390 CALL                             R33 2 1
      391 GETUPVAL                         R35 2
      392 GETTABLEKS                       R34 R35 K8 ["useEffect"]
      394 NEWCLOSURE                       R35 P23
      395 CAPTURE                          VAL R7
      396 CAPTURE                          UPVAL U8
      397 NEWTABLE                         R36 0 0
      399 CALL                             R34 2 0
      400 GETUPVAL                         R35 2
      401 GETTABLEKS                       R34 R35 K11 ["useCallback"]
      403 NEWCLOSURE                       R35 P24
      404 CAPTURE                          UPVAL U8
      405 CAPTURE                          VAL R11
      406 CAPTURE                          UPVAL U9
      407 NEWTABLE                         R36 0 1
      409 MOVE                             R37 R11
      410 SETLIST                          R36 R37 1 [1]
      412 CALL                             R34 2 1
      413 GETUPVAL                         R36 2
      414 GETTABLEKS                       R35 R36 K11 ["useCallback"]
      416 NEWCLOSURE                       R36 P25
      417 CAPTURE                          UPVAL U8
      418 CAPTURE                          VAL R11
      419 NEWTABLE                         R37 0 1
      421 MOVE                             R38 R13
      422 SETLIST                          R37 R38 1 [1]
      424 CALL                             R35 2 1
      425 GETUPVAL                         R37 2
      426 GETTABLEKS                       R36 R37 K11 ["useCallback"]
      428 NEWCLOSURE                       R37 P26
      429 CAPTURE                          VAL R23
      430 NEWTABLE                         R38 0 1
      432 MOVE                             R39 R23
      433 SETLIST                          R38 R39 1 [1]
      435 CALL                             R36 2 1
      436 GETUPVAL                         R38 2
      437 GETTABLEKS                       R37 R38 K11 ["useCallback"]
      439 NEWCLOSURE                       R38 P27
      440 CAPTURE                          UPVAL U8
      441 CAPTURE                          VAL R11
      442 CAPTURE                          VAL R1
      443 CAPTURE                          VAL R13
      444 CAPTURE                          UPVAL U7
      445 NEWTABLE                         R39 0 3
      447 MOVE                             R40 R11
      448 MOVE                             R41 R13
      449 GETTABLEKS                       R42 R1 K16 ["observe"]
      451 SETLIST                          R39 R40 3 [1]
      453 CALL                             R37 2 1
      454 GETUPVAL                         R39 2
      455 GETTABLEKS                       R38 R39 K11 ["useCallback"]
      457 NEWCLOSURE                       R39 P28
      458 CAPTURE                          UPVAL U8
      459 CAPTURE                          UPVAL U7
      460 CAPTURE                          VAL R11
      461 NEWTABLE                         R40 0 1
      463 MOVE                             R41 R11
      464 SETLIST                          R40 R41 1 [1]
      466 CALL                             R38 2 1
      467 GETUPVAL                         R40 2
      468 GETTABLEKS                       R39 R40 K2 ["useState"]
      470 NEWTABLE                         R40 0 0
      472 CALL                             R39 1 2
      473 GETUPVAL                         R42 15
      474 GETTABLEKS                       R41 R42 K17 ["useRefToState"]
      476 MOVE                             R42 R39
      477 CALL                             R41 1 1
      478 GETUPVAL                         R43 2
      479 GETTABLEKS                       R42 R43 K7 ["useMemo"]
      481 NEWCLOSURE                       R43 P29
      482 CAPTURE                          UPVAL U7
      483 CAPTURE                          VAL R11
      484 CAPTURE                          VAL R10
      485 CAPTURE                          VAL R23
      486 NEWTABLE                         R44 0 3
      488 MOVE                             R45 R11
      489 MOVE                             R46 R10
      490 MOVE                             R47 R23
      491 SETLIST                          R44 R45 3 [1]
      493 CALL                             R42 2 1
      494 GETUPVAL                         R44 2
      495 GETTABLEKS                       R43 R44 K11 ["useCallback"]
      497 NEWCLOSURE                       R44 P30
      498 CAPTURE                          VAL R23
      499 CAPTURE                          VAL R13
      500 CAPTURE                          VAL R11
      501 CAPTURE                          UPVAL U7
      502 NEWTABLE                         R45 0 3
      504 MOVE                             R46 R23
      505 MOVE                             R47 R11
      506 MOVE                             R48 R13
      507 SETLIST                          R45 R46 3 [1]
      509 CALL                             R43 2 1
      510 GETUPVAL                         R45 2
      511 GETTABLEKS                       R44 R45 K11 ["useCallback"]
      513 NEWCLOSURE                       R45 P31
      514 CAPTURE                          VAL R13
      515 CAPTURE                          VAL R11
      516 CAPTURE                          UPVAL U8
      517 CAPTURE                          UPVAL U7
      518 CAPTURE                          UPVAL U14
      519 CAPTURE                          VAL R39
      520 CAPTURE                          VAL R40
      521 NEWTABLE                         R46 0 3
      523 MOVE                             R47 R11
      524 MOVE                             R48 R13
      525 MOVE                             R49 R39
      526 SETLIST                          R46 R47 3 [1]
      528 CALL                             R44 2 1
      529 GETUPVAL                         R46 2
      530 GETTABLEKS                       R45 R46 K11 ["useCallback"]
      532 NEWCLOSURE                       R46 P32
      533 CAPTURE                          VAL R11
      534 CAPTURE                          UPVAL U8
      535 NEWTABLE                         R47 0 1
      537 MOVE                             R48 R11
      538 SETLIST                          R47 R48 1 [1]
      540 CALL                             R45 2 1
      541 GETUPVAL                         R47 2
      542 GETTABLEKS                       R46 R47 K8 ["useEffect"]
      544 NEWCLOSURE                       R47 P33
      545 CAPTURE                          UPVAL U4
      546 CAPTURE                          VAL R42
      547 CAPTURE                          VAL R39
      548 CAPTURE                          VAL R11
      549 CAPTURE                          VAL R41
      550 CAPTURE                          VAL R43
      551 CAPTURE                          VAL R40
      552 CAPTURE                          UPVAL U14
      553 NEWTABLE                         R48 0 4
      555 MOVE                             R49 R11
      556 MOVE                             R50 R39
      557 MOVE                             R51 R42
      558 MOVE                             R52 R43
      559 SETLIST                          R48 R49 4 [1]
      561 CALL                             R46 2 0
      562 GETUPVAL                         R46 16
      563 MOVE                             R47 R2
      564 MOVE                             R48 R13
      565 CALL                             R46 2 1
      566 GETUPVAL                         R48 2
      567 GETTABLEKS                       R47 R48 K7 ["useMemo"]
      569 NEWCLOSURE                       R48 P34
      570 CAPTURE                          UPVAL U4
      571 CAPTURE                          VAL R23
      572 NEWTABLE                         R49 0 0
      574 CALL                             R47 2 2
      575 GETUPVAL                         R50 2
      576 GETTABLEKS                       R49 R50 K7 ["useMemo"]
      578 NEWCLOSURE                       R50 P35
      579 CAPTURE                          VAL R48
      580 CAPTURE                          VAL R23
      581 NEWTABLE                         R51 0 2
      583 MOVE                             R52 R48
      584 MOVE                             R53 R23
      585 SETLIST                          R51 R52 2 [1]
      587 CALL                             R49 2 0
      588 DUPTABLE                         R49 K49 [{"graphPayloadMap", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "createConnectedParameterAsync", "graphRect", "selectNodeFromNodeIdAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "deleteNodeInstanceAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "getSelectedRect", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById", "beginUndoTransaction", "finishUndoTransaction", "undoTransaction"}]
      589 SETTABLEKS                       R13 R49 K18 ["graphPayloadMap"]
      591 SETTABLEKS                       R38 R49 K19 ["reorderPinsAsync"]
      593 SETTABLEKS                       R26 R49 K20 ["createNodeAsync"]
      595 SETTABLEKS                       R27 R49 K21 ["createParameterAsync"]
      597 SETTABLEKS                       R28 R49 K22 ["createConnectedParameterAsync"]
      599 SETTABLEKS                       R5 R49 K23 ["graphRect"]
      601 SETTABLEKS                       R20 R49 K24 ["selectNodeFromNodeIdAsync"]
      603 SETTABLEKS                       R21 R49 K25 ["selectNodesAsync"]
      605 SETTABLEKS                       R22 R49 K26 ["selectNodesFromRectAsync"]
      607 SETTABLEKS                       R18 R49 K27 ["setNodePositionsAsync"]
      609 SETTABLEKS                       R19 R49 K28 ["setNodeSizeAsync"]
      611 SETTABLEKS                       R31 R49 K29 ["setNodeConnectionAsync"]
      613 SETTABLEKS                       R30 R49 K30 ["removeNodeOutputConnectionAsync"]
      615 SETTABLEKS                       R29 R49 K31 ["removeNodeInputConnectionAsync"]
      617 SETTABLEKS                       R43 R49 K32 ["removeParameterAsync"]
      619 SETTABLEKS                       R37 R49 K33 ["renameNodeAsync"]
      621 SETTABLEKS                       R44 R49 K34 ["renameParameterAsync"]
      623 SETTABLEKS                       R45 R49 K35 ["deleteNodeInstanceAsync"]
      625 SETTABLEKS                       R17 R49 K36 ["setCollapsedAsync"]
      627 SETTABLEKS                       R34 R49 K37 ["setNodePropertyAsync"]
      629 SETTABLEKS                       R35 R49 K38 ["setInputPinNodePropertyAsync"]
      631 SETTABLEKS                       R36 R49 K39 ["getSelectedGraphInstance"]
      633 SETTABLEKS                       R23 R49 K40 ["selectedGraphInstance"]
      635 SETTABLEKS                       R24 R49 K41 ["currentAnimationId"]
      637 GETTABLEKS                       R50 R46 K42 ["getSelectedRect"]
      639 SETTABLEKS                       R50 R49 K42 ["getSelectedRect"]
      641 SETTABLEKS                       R47 R49 K43 ["observeSelectedGraphInstance"]
      643 GETTABLEKS                       R50 R1 K16 ["observe"]
      645 SETTABLEKS                       R50 R49 K44 ["observeGraphNodeById"]
      647 GETTABLEKS                       R50 R2 K16 ["observe"]
      649 SETTABLEKS                       R50 R49 K45 ["observeNodeRenderInfoById"]
      651 SETTABLEKS                       R32 R49 K46 ["beginUndoTransaction"]
      653 SETTABLEKS                       R33 R49 K47 ["finishUndoTransaction"]
      655 SETTABLEKS                       R7 R49 K48 ["undoTransaction"]
      657 GETUPVAL                         R51 2
      658 GETTABLEKS                       R50 R51 K7 ["useMemo"]
      660 DUPCLOSURE                       R51 K50 [PROTO_48]
      661 NEWTABLE                         R52 0 0
      663 CALL                             R50 2 1
      664 GETUPVAL                         R52 2
      665 GETTABLEKS                       R51 R52 K7 ["useMemo"]
      667 NEWCLOSURE                       R52 P37
      668 CAPTURE                          VAL R23
      669 NEWTABLE                         R53 0 2
      671 MOVE                             R54 R23
      672 MOVE                             R55 R13
      673 SETLIST                          R53 R54 2 [1]
      675 CALL                             R51 2 1
      676 GETUPVAL                         R53 17
      677 GETTABLEKS                       R52 R53 K51 ["useReplicatedState"]
      679 GETUPVAL                         R54 18
      680 GETTABLEKS                       R53 R54 K52 ["GRAPH_PAYLOAD_MAP"]
      682 MOVE                             R54 R13
      683 CALL                             R52 2 0
      684 GETUPVAL                         R53 17
      685 GETTABLEKS                       R52 R53 K51 ["useReplicatedState"]
      687 GETUPVAL                         R54 18
      688 GETTABLEKS                       R53 R54 K53 ["GRAPH_RENDER_INFO"]
      690 MOVE                             R54 R15
      691 CALL                             R52 2 0
      692 GETUPVAL                         R53 17
      693 GETTABLEKS                       R52 R53 K51 ["useReplicatedState"]
      695 GETUPVAL                         R54 18
      696 GETTABLEKS                       R53 R54 K54 ["TIME_RANGE"]
      698 MOVE                             R54 R50
      699 CALL                             R52 2 0
      700 GETUPVAL                         R53 17
      701 GETTABLEKS                       R52 R53 K51 ["useReplicatedState"]
      703 GETUPVAL                         R54 18
      704 GETTABLEKS                       R53 R54 K55 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      706 MOVE                             R54 R5
      707 CALL                             R52 2 0
      708 GETUPVAL                         R53 17
      709 GETTABLEKS                       R52 R53 K51 ["useReplicatedState"]
      711 GETUPVAL                         R54 18
      712 GETTABLEKS                       R53 R54 K56 ["CURRENT_ANIMATION_ID"]
      714 MOVE                             R54 R24
      715 CALL                             R52 2 0
      716 GETUPVAL                         R53 17
      717 GETTABLEKS                       R52 R53 K51 ["useReplicatedState"]
      719 GETUPVAL                         R54 18
      720 GETTABLEKS                       R53 R54 K57 ["UNDO_TRANSACTION"]
      722 MOVE                             R54 R7
      723 CALL                             R52 2 0
      724 GETUPVAL                         R53 17
      725 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      727 GETUPVAL                         R54 19
      728 GETTABLEKS                       R53 R54 K59 ["CREATE_NODE"]
      730 MOVE                             R54 R26
      731 CALL                             R52 2 0
      732 GETUPVAL                         R53 17
      733 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      735 GETUPVAL                         R54 19
      736 GETTABLEKS                       R53 R54 K60 ["CREATE_PARAMETER"]
      738 MOVE                             R54 R27
      739 CALL                             R52 2 0
      740 GETUPVAL                         R53 17
      741 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      743 GETUPVAL                         R54 19
      744 GETTABLEKS                       R53 R54 K61 ["CREATE_CONNECTED_PARAMETER"]
      746 MOVE                             R54 R28
      747 CALL                             R52 2 0
      748 GETUPVAL                         R53 17
      749 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      751 GETUPVAL                         R54 19
      752 GETTABLEKS                       R53 R54 K62 ["SELECT_NODE_FROM_NODE_ID"]
      754 MOVE                             R54 R20
      755 CALL                             R52 2 0
      756 GETUPVAL                         R53 17
      757 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      759 GETUPVAL                         R54 19
      760 GETTABLEKS                       R53 R54 K63 ["SELECT_NODES"]
      762 MOVE                             R54 R21
      763 CALL                             R52 2 0
      764 GETUPVAL                         R53 17
      765 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      767 GETUPVAL                         R54 19
      768 GETTABLEKS                       R53 R54 K64 ["SELECT_NODES_FROM_RECT"]
      770 MOVE                             R54 R22
      771 CALL                             R52 2 0
      772 GETUPVAL                         R53 17
      773 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      775 GETUPVAL                         R54 19
      776 GETTABLEKS                       R53 R54 K65 ["SET_NODE_POSITIONS"]
      778 MOVE                             R54 R18
      779 CALL                             R52 2 0
      780 GETUPVAL                         R53 17
      781 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      783 GETUPVAL                         R54 19
      784 GETTABLEKS                       R53 R54 K66 ["SET_NODE_SIZE"]
      786 MOVE                             R54 R19
      787 CALL                             R52 2 0
      788 GETUPVAL                         R53 17
      789 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      791 GETUPVAL                         R54 19
      792 GETTABLEKS                       R53 R54 K67 ["SET_NODE_CONNECTION"]
      794 MOVE                             R54 R31
      795 CALL                             R52 2 0
      796 GETUPVAL                         R53 17
      797 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      799 GETUPVAL                         R54 19
      800 GETTABLEKS                       R53 R54 K68 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      802 MOVE                             R54 R30
      803 CALL                             R52 2 0
      804 GETUPVAL                         R53 17
      805 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      807 GETUPVAL                         R54 19
      808 GETTABLEKS                       R53 R54 K69 ["REMOVE_NODE_INPUT_CONNECTION"]
      810 MOVE                             R54 R29
      811 CALL                             R52 2 0
      812 GETUPVAL                         R53 17
      813 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      815 GETUPVAL                         R54 19
      816 GETTABLEKS                       R53 R54 K70 ["REMOVE_PARAMETER"]
      818 MOVE                             R54 R43
      819 CALL                             R52 2 0
      820 GETUPVAL                         R53 17
      821 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      823 GETUPVAL                         R54 19
      824 GETTABLEKS                       R53 R54 K71 ["RENAME_NODE"]
      826 MOVE                             R54 R37
      827 CALL                             R52 2 0
      828 GETUPVAL                         R53 17
      829 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      831 GETUPVAL                         R54 19
      832 GETTABLEKS                       R53 R54 K72 ["RENAME_PARAMETER"]
      834 MOVE                             R54 R44
      835 CALL                             R52 2 0
      836 GETUPVAL                         R53 17
      837 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      839 GETUPVAL                         R54 19
      840 GETTABLEKS                       R53 R54 K73 ["DELETE_NODE_INSTANCE"]
      842 MOVE                             R54 R45
      843 CALL                             R52 2 0
      844 GETUPVAL                         R53 17
      845 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      847 GETUPVAL                         R54 19
      848 GETTABLEKS                       R53 R54 K74 ["SET_COLLAPSED"]
      850 MOVE                             R54 R17
      851 CALL                             R52 2 0
      852 GETUPVAL                         R53 17
      853 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      855 GETUPVAL                         R54 19
      856 GETTABLEKS                       R53 R54 K75 ["SET_NODE_PROPERTY"]
      858 MOVE                             R54 R34
      859 CALL                             R52 2 0
      860 GETUPVAL                         R53 17
      861 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      863 GETUPVAL                         R54 19
      864 GETTABLEKS                       R53 R54 K76 ["SET_INPUT_PIN_NODE_PROPERTY"]
      866 MOVE                             R54 R35
      867 CALL                             R52 2 0
      868 GETUPVAL                         R53 17
      869 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      871 GETUPVAL                         R54 19
      872 GETTABLEKS                       R53 R54 K77 ["GET_SELECTED_GRAPH_INSTANCE"]
      874 MOVE                             R54 R36
      875 CALL                             R52 2 0
      876 GETUPVAL                         R53 17
      877 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      879 GETUPVAL                         R54 19
      880 GETTABLEKS                       R53 R54 K78 ["REORDER_PINS"]
      882 MOVE                             R54 R38
      883 CALL                             R52 2 0
      884 GETUPVAL                         R53 17
      885 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      887 GETUPVAL                         R54 19
      888 GETTABLEKS                       R53 R54 K79 ["BEGIN_UNDO_TRANSACTION"]
      890 MOVE                             R54 R32
      891 CALL                             R52 2 0
      892 GETUPVAL                         R53 17
      893 GETTABLEKS                       R52 R53 K58 ["useBoundAction"]
      895 GETUPVAL                         R54 19
      896 GETTABLEKS                       R53 R54 K80 ["FINISH_UNDO_TRANSACTION"]
      898 MOVE                             R54 R33
      899 CALL                             R52 2 0
      900 GETUPVAL                         R53 2
      901 GETTABLEKS                       R52 R53 K81 ["createElement"]
      903 GETUPVAL                         R54 20
      904 GETTABLEKS                       R53 R54 K82 ["Provider"]
      906 DUPTABLE                         R54 K84 [{"value"}]
      907 SETTABLEKS                       R49 R54 K83 ["value"]
      909 DUPTABLE                         R55 K86 [{"ContextStack"}]
      910 GETUPVAL                         R57 2
      911 GETTABLEKS                       R56 R57 K81 ["createElement"]
      913 GETUPVAL                         R58 15
      914 GETTABLEKS                       R57 R58 K85 ["ContextStack"]
      916 DUPTABLE                         R58 K88 [{"providers"}]
      917 NEWTABLE                         R59 0 2
      919 GETUPVAL                         R61 2
      920 GETTABLEKS                       R60 R61 K81 ["createElement"]
      922 GETUPVAL                         R62 21
      923 GETTABLEKS                       R61 R62 K82 ["Provider"]
      925 DUPTABLE                         R62 K90 [{"timeRange"}]
      926 SETTABLEKS                       R50 R62 K89 ["timeRange"]
      928 CALL                             R60 2 1
      929 GETUPVAL                         R62 2
      930 GETTABLEKS                       R61 R62 K81 ["createElement"]
      932 GETUPVAL                         R63 22
      933 GETTABLEKS                       R62 R63 K82 ["Provider"]
      935 DUPTABLE                         R63 K92 [{"animationClipsList"}]
      936 SETTABLEKS                       R51 R63 K91 ["animationClipsList"]
      938 CALL                             R61 2 -1
      939 SETLIST                          R59 R60 -1 [1]
      941 SETTABLEKS                       R59 R58 K87 ["providers"]
      943 GETTABLEKS                       R59 R0 K93 ["children"]
      945 CALL                             R56 3 1
      946 SETTABLEKS                       R56 R55 K85 ["ContextStack"]
      948 CALL                             R52 3 -1
      949 RETURN                           R52 -1

PROTO_51:
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

PROTO_52:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_53:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_54:
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
       77 DUPCLOSURE                       R8 K17 [PROTO_52]
       78 NEWTABLE                         R9 0 0
       80 CALL                             R7 2 1
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R8 R9 K18 ["createComputed"]
       84 DUPCLOSURE                       R9 K19 [PROTO_53]
       85 CALL                             R8 1 1
       86 GETUPVAL                         R9 5
       87 MOVE                             R10 R2
       88 MOVE                             R11 R3
       89 CALL                             R9 2 1
       90 DUPTABLE                         R10 K50 [{"graphPayloadMap", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "createConnectedParameterAsync", "graphRect", "selectNodeFromNodeIdAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "deleteNodeInstanceAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId", "getSelectedRect", "observeSelectedGraphInstance", "observeGraphNodeById", "observeNodeRenderInfoById", "beginUndoTransaction", "finishUndoTransaction"}]
       91 SETTABLEKS                       R3 R10 K20 ["graphPayloadMap"]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
       96 GETUPVAL                         R13 6
       97 GETTABLEKS                       R12 R13 K52 ["REORDER_PINS"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K21 ["reorderPinsAsync"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      105 GETUPVAL                         R13 6
      106 GETTABLEKS                       R12 R13 K53 ["CREATE_NODE"]
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K22 ["createNodeAsync"]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      114 GETUPVAL                         R13 6
      115 GETTABLEKS                       R12 R13 K54 ["CREATE_PARAMETER"]
      117 CALL                             R11 1 1
      118 SETTABLEKS                       R11 R10 K23 ["createParameterAsync"]
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      123 GETUPVAL                         R13 6
      124 GETTABLEKS                       R12 R13 K55 ["CREATE_CONNECTED_PARAMETER"]
      126 CALL                             R11 1 1
      127 SETTABLEKS                       R11 R10 K24 ["createConnectedParameterAsync"]
      129 SETTABLEKS                       R5 R10 K25 ["graphRect"]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      134 GETUPVAL                         R13 6
      135 GETTABLEKS                       R12 R13 K56 ["SELECT_NODE_FROM_NODE_ID"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K26 ["selectNodeFromNodeIdAsync"]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      143 GETUPVAL                         R13 6
      144 GETTABLEKS                       R12 R13 K57 ["SELECT_NODES"]
      146 CALL                             R11 1 1
      147 SETTABLEKS                       R11 R10 K27 ["selectNodesAsync"]
      149 GETUPVAL                         R12 1
      150 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      152 GETUPVAL                         R13 6
      153 GETTABLEKS                       R12 R13 K58 ["SELECT_NODES_FROM_RECT"]
      155 CALL                             R11 1 1
      156 SETTABLEKS                       R11 R10 K28 ["selectNodesFromRectAsync"]
      158 GETUPVAL                         R12 1
      159 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      161 GETUPVAL                         R13 6
      162 GETTABLEKS                       R12 R13 K59 ["SET_NODE_POSITIONS"]
      164 CALL                             R11 1 1
      165 SETTABLEKS                       R11 R10 K29 ["setNodePositionsAsync"]
      167 GETUPVAL                         R12 1
      168 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      170 GETUPVAL                         R13 6
      171 GETTABLEKS                       R12 R13 K60 ["SET_NODE_SIZE"]
      173 CALL                             R11 1 1
      174 SETTABLEKS                       R11 R10 K30 ["setNodeSizeAsync"]
      176 GETUPVAL                         R12 1
      177 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      179 GETUPVAL                         R13 6
      180 GETTABLEKS                       R12 R13 K61 ["SET_NODE_CONNECTION"]
      182 CALL                             R11 1 1
      183 SETTABLEKS                       R11 R10 K31 ["setNodeConnectionAsync"]
      185 GETUPVAL                         R12 1
      186 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      188 GETUPVAL                         R13 6
      189 GETTABLEKS                       R12 R13 K62 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      191 CALL                             R11 1 1
      192 SETTABLEKS                       R11 R10 K32 ["removeNodeOutputConnectionAsync"]
      194 GETUPVAL                         R12 1
      195 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      197 GETUPVAL                         R13 6
      198 GETTABLEKS                       R12 R13 K63 ["REMOVE_NODE_INPUT_CONNECTION"]
      200 CALL                             R11 1 1
      201 SETTABLEKS                       R11 R10 K33 ["removeNodeInputConnectionAsync"]
      203 GETUPVAL                         R12 1
      204 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      206 GETUPVAL                         R13 6
      207 GETTABLEKS                       R12 R13 K64 ["REMOVE_PARAMETER"]
      209 CALL                             R11 1 1
      210 SETTABLEKS                       R11 R10 K34 ["removeParameterAsync"]
      212 GETUPVAL                         R12 1
      213 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      215 GETUPVAL                         R13 6
      216 GETTABLEKS                       R12 R13 K65 ["RENAME_NODE"]
      218 CALL                             R11 1 1
      219 SETTABLEKS                       R11 R10 K35 ["renameNodeAsync"]
      221 GETUPVAL                         R12 1
      222 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      224 GETUPVAL                         R13 6
      225 GETTABLEKS                       R12 R13 K66 ["RENAME_PARAMETER"]
      227 CALL                             R11 1 1
      228 SETTABLEKS                       R11 R10 K36 ["renameParameterAsync"]
      230 GETUPVAL                         R12 1
      231 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      233 GETUPVAL                         R13 6
      234 GETTABLEKS                       R12 R13 K67 ["DELETE_NODE_INSTANCE"]
      236 CALL                             R11 1 1
      237 SETTABLEKS                       R11 R10 K37 ["deleteNodeInstanceAsync"]
      239 GETUPVAL                         R12 1
      240 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      242 GETUPVAL                         R13 6
      243 GETTABLEKS                       R12 R13 K68 ["SET_COLLAPSED"]
      245 CALL                             R11 1 1
      246 SETTABLEKS                       R11 R10 K38 ["setCollapsedAsync"]
      248 GETUPVAL                         R12 1
      249 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      251 GETUPVAL                         R13 6
      252 GETTABLEKS                       R12 R13 K69 ["SET_NODE_PROPERTY"]
      254 CALL                             R11 1 1
      255 SETTABLEKS                       R11 R10 K39 ["setNodePropertyAsync"]
      257 GETUPVAL                         R12 1
      258 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      260 GETUPVAL                         R13 6
      261 GETTABLEKS                       R12 R13 K70 ["SET_INPUT_PIN_NODE_PROPERTY"]
      263 CALL                             R11 1 1
      264 SETTABLEKS                       R11 R10 K40 ["setInputPinNodePropertyAsync"]
      266 SETTABLEKS                       R7 R10 K41 ["getSelectedGraphInstance"]
      268 LOADNIL                          R11
      269 SETTABLEKS                       R11 R10 K42 ["selectedGraphInstance"]
      271 SETTABLEKS                       R6 R10 K43 ["currentAnimationId"]
      273 GETTABLEKS                       R11 R9 K44 ["getSelectedRect"]
      275 SETTABLEKS                       R11 R10 K44 ["getSelectedRect"]
      277 SETTABLEKS                       R8 R10 K45 ["observeSelectedGraphInstance"]
      279 GETTABLEKS                       R11 R1 K71 ["observe"]
      281 SETTABLEKS                       R11 R10 K46 ["observeGraphNodeById"]
      283 GETTABLEKS                       R11 R2 K71 ["observe"]
      285 SETTABLEKS                       R11 R10 K47 ["observeNodeRenderInfoById"]
      287 GETUPVAL                         R12 1
      288 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      290 GETUPVAL                         R13 6
      291 GETTABLEKS                       R12 R13 K72 ["BEGIN_UNDO_TRANSACTION"]
      293 CALL                             R11 1 1
      294 SETTABLEKS                       R11 R10 K48 ["beginUndoTransaction"]
      296 GETUPVAL                         R12 1
      297 GETTABLEKS                       R11 R12 K51 ["useBoundAction"]
      299 GETUPVAL                         R13 6
      300 GETTABLEKS                       R12 R13 K73 ["FINISH_UNDO_TRANSACTION"]
      302 CALL                             R11 1 1
      303 SETTABLEKS                       R11 R10 K49 ["finishUndoTransaction"]
      305 GETUPVAL                         R12 3
      306 GETTABLEKS                       R11 R12 K74 ["createElement"]
      308 GETUPVAL                         R13 7
      309 GETTABLEKS                       R12 R13 K75 ["Provider"]
      311 DUPTABLE                         R13 K77 [{"value"}]
      312 SETTABLEKS                       R10 R13 K76 ["value"]
      314 DUPTABLE                         R14 K79 [{"ContextStack"}]
      315 GETUPVAL                         R16 3
      316 GETTABLEKS                       R15 R16 K74 ["createElement"]
      318 GETUPVAL                         R17 8
      319 GETTABLEKS                       R16 R17 K78 ["ContextStack"]
      321 DUPTABLE                         R17 K81 [{"providers"}]
      322 NEWTABLE                         R18 0 1
      324 GETUPVAL                         R20 3
      325 GETTABLEKS                       R19 R20 K74 ["createElement"]
      327 GETUPVAL                         R21 9
      328 GETTABLEKS                       R20 R21 K75 ["Provider"]
      330 DUPTABLE                         R21 K83 [{"timeRange"}]
      331 SETTABLEKS                       R4 R21 K82 ["timeRange"]
      333 CALL                             R19 2 -1
      334 SETLIST                          R18 R19 -1 [1]
      336 SETTABLEKS                       R18 R17 K80 ["providers"]
      338 GETTABLEKS                       R18 R0 K84 ["children"]
      340 CALL                             R15 3 1
      341 SETTABLEKS                       R15 R14 K78 ["ContextStack"]
      343 CALL                             R11 3 -1
      344 CLOSEUPVALS                      R3
      345 RETURN                           R11 -1

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
      141 DUPTABLE                         R20 K65 [{"graphPayloadMap", "graphRect", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "createConnectedParameterAsync", "selectNodeFromNodeIdAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameterAsync", "renameNodeAsync", "renameParameterAsync", "deleteNodeInstanceAsync", "setNodeConnectionAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedRect", "observeGraphNodeById", "observeNodeRenderInfoById", "observeSelectedGraphInstance", "beginUndoTransaction", "finishUndoTransaction", "getSelectedGraphInstance", "selectedGraphInstance", "currentAnimationId"}]
      142 LOADNIL                          R21
      143 SETTABLEKS                       R21 R20 K35 ["graphPayloadMap"]
      145 GETIMPORT                        R21 K68 [Rect.new]
      147 LOADN                            R22 0
      148 LOADN                            R23 0
      149 LOADN                            R24 0
      150 LOADN                            R25 0
      151 CALL                             R21 4 1
      152 SETTABLEKS                       R21 R20 K36 ["graphRect"]
      154 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      156 LOADK                            R22 K37 ["reorderPinsAsync"]
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K37 ["reorderPinsAsync"]
      160 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      162 LOADK                            R22 K38 ["createNodeAsync"]
      163 CALL                             R21 1 1
      164 SETTABLEKS                       R21 R20 K38 ["createNodeAsync"]
      166 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      168 LOADK                            R22 K39 ["createParameterAsync"]
      169 CALL                             R21 1 1
      170 SETTABLEKS                       R21 R20 K39 ["createParameterAsync"]
      172 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      174 LOADK                            R22 K40 ["createConnectedParameterAsync"]
      175 CALL                             R21 1 1
      176 SETTABLEKS                       R21 R20 K40 ["createConnectedParameterAsync"]
      178 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      180 LOADK                            R22 K41 ["selectNodeFromNodeIdAsync"]
      181 CALL                             R21 1 1
      182 SETTABLEKS                       R21 R20 K41 ["selectNodeFromNodeIdAsync"]
      184 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      186 LOADK                            R22 K42 ["selectNodesAsync"]
      187 CALL                             R21 1 1
      188 SETTABLEKS                       R21 R20 K42 ["selectNodesAsync"]
      190 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      192 LOADK                            R22 K43 ["selectNodesFromRectAsync"]
      193 CALL                             R21 1 1
      194 SETTABLEKS                       R21 R20 K43 ["selectNodesFromRectAsync"]
      196 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      198 LOADK                            R22 K44 ["setNodePositionsAsync"]
      199 CALL                             R21 1 1
      200 SETTABLEKS                       R21 R20 K44 ["setNodePositionsAsync"]
      202 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      204 LOADK                            R22 K45 ["setNodeSizeAsync"]
      205 CALL                             R21 1 1
      206 SETTABLEKS                       R21 R20 K45 ["setNodeSizeAsync"]
      208 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      210 LOADK                            R22 K46 ["removeNodeInputConnectionAsync"]
      211 CALL                             R21 1 1
      212 SETTABLEKS                       R21 R20 K46 ["removeNodeInputConnectionAsync"]
      214 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      216 LOADK                            R22 K47 ["removeNodeOutputConnectionAsync"]
      217 CALL                             R21 1 1
      218 SETTABLEKS                       R21 R20 K47 ["removeNodeOutputConnectionAsync"]
      220 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      222 LOADK                            R22 K48 ["removeParameterAsync"]
      223 CALL                             R21 1 1
      224 SETTABLEKS                       R21 R20 K48 ["removeParameterAsync"]
      226 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      228 LOADK                            R22 K49 ["renameNodeAsync"]
      229 CALL                             R21 1 1
      230 SETTABLEKS                       R21 R20 K49 ["renameNodeAsync"]
      232 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      234 LOADK                            R22 K50 ["renameParameterAsync"]
      235 CALL                             R21 1 1
      236 SETTABLEKS                       R21 R20 K50 ["renameParameterAsync"]
      238 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      240 LOADK                            R22 K51 ["deleteNodeInstanceAsync"]
      241 CALL                             R21 1 1
      242 SETTABLEKS                       R21 R20 K51 ["deleteNodeInstanceAsync"]
      244 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      246 LOADK                            R22 K70 ["setNewConnection"]
      247 CALL                             R21 1 1
      248 SETTABLEKS                       R21 R20 K52 ["setNodeConnectionAsync"]
      250 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      252 LOADK                            R22 K53 ["setCollapsedAsync"]
      253 CALL                             R21 1 1
      254 SETTABLEKS                       R21 R20 K53 ["setCollapsedAsync"]
      256 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      258 LOADK                            R22 K54 ["setNodePropertyAsync"]
      259 CALL                             R21 1 1
      260 SETTABLEKS                       R21 R20 K54 ["setNodePropertyAsync"]
      262 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      264 LOADK                            R22 K55 ["setInputPinNodePropertyAsync"]
      265 CALL                             R21 1 1
      266 SETTABLEKS                       R21 R20 K55 ["setInputPinNodePropertyAsync"]
      268 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      270 LOADK                            R22 K56 ["getSelectedRect"]
      271 CALL                             R21 1 1
      272 SETTABLEKS                       R21 R20 K56 ["getSelectedRect"]
      274 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      276 LOADK                            R22 K57 ["observeGraphNodeById"]
      277 CALL                             R21 1 1
      278 SETTABLEKS                       R21 R20 K57 ["observeGraphNodeById"]
      280 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      282 LOADK                            R22 K58 ["observeNodeRenderInfoById"]
      283 CALL                             R21 1 1
      284 SETTABLEKS                       R21 R20 K58 ["observeNodeRenderInfoById"]
      286 GETTABLEKS                       R21 R16 K71 ["createSignal"]
      288 LOADNIL                          R22
      289 CALL                             R21 1 1
      290 SETTABLEKS                       R21 R20 K59 ["observeSelectedGraphInstance"]
      292 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      294 LOADK                            R22 K60 ["beginUndoTransaction"]
      295 CALL                             R21 1 1
      296 SETTABLEKS                       R21 R20 K60 ["beginUndoTransaction"]
      298 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      300 LOADK                            R22 K61 ["finishUndoTransaction"]
      301 CALL                             R21 1 1
      302 SETTABLEKS                       R21 R20 K61 ["finishUndoTransaction"]
      304 GETTABLEKS                       R21 R13 K69 ["createUnimplemented"]
      306 LOADK                            R22 K62 ["getSelectedGraphInstance"]
      307 CALL                             R21 1 1
      308 SETTABLEKS                       R21 R20 K62 ["getSelectedGraphInstance"]
      310 LOADNIL                          R21
      311 SETTABLEKS                       R21 R20 K63 ["selectedGraphInstance"]
      313 LOADNIL                          R21
      314 SETTABLEKS                       R21 R20 K64 ["currentAnimationId"]
      316 GETTABLEKS                       R21 R12 K72 ["createContext"]
      318 MOVE                             R22 R20
      319 CALL                             R21 1 1
      320 DUPTABLE                         R22 K79 [{"GRAPH_PAYLOAD_MAP", "GRAPH_RENDER_INFO", "TIME_RANGE", "GRAPH_PAYLOAD_GRAPH_RECT", "CURRENT_ANIMATION_ID", "UNDO_TRANSACTION"}]
      321 LOADK                            R23 K80 ["NativeGraphContext_GraphPayloadMap"]
      322 SETTABLEKS                       R23 R22 K73 ["GRAPH_PAYLOAD_MAP"]
      324 LOADK                            R23 K81 ["NativeGraphContext_GraphRenderInfo"]
      325 SETTABLEKS                       R23 R22 K74 ["GRAPH_RENDER_INFO"]
      327 LOADK                            R23 K82 ["NativeGraphContext_TimeRange"]
      328 SETTABLEKS                       R23 R22 K75 ["TIME_RANGE"]
      330 LOADK                            R23 K83 ["NativeGraphContext_GraphPayloadGraphRect"]
      331 SETTABLEKS                       R23 R22 K76 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      333 LOADK                            R23 K84 ["NativeGraphContext_CurrentAnimationId"]
      334 SETTABLEKS                       R23 R22 K77 ["CURRENT_ANIMATION_ID"]
      336 LOADK                            R23 K85 ["NativeGraphContext_UndoTransaction"]
      337 SETTABLEKS                       R23 R22 K78 ["UNDO_TRANSACTION"]
      339 DUPTABLE                         R23 K108 [{"CREATE_NODE", "CREATE_PARAMETER", "CREATE_CONNECTED_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "REMOVE_PARAMETER", "RENAME_NODE", "RENAME_PARAMETER", "DELETE_NODE_INSTANCE", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SELECT_NODE_FROM_NODE_ID", "SELECT_NODES", "SELECT_NODES_FROM_RECT", "BEGIN_UNDO_TRANSACTION", "FINISH_UNDO_TRANSACTION"}]
      340 LOADK                            R24 K109 ["NativeGraphContext_CreateNode"]
      341 SETTABLEKS                       R24 R23 K86 ["CREATE_NODE"]
      343 LOADK                            R24 K110 ["NativeGraphContext_CreateParameterAsync"]
      344 SETTABLEKS                       R24 R23 K87 ["CREATE_PARAMETER"]
      346 LOADK                            R24 K111 ["NativeGraphContext_CreateConnectedParameterAsync"]
      347 SETTABLEKS                       R24 R23 K88 ["CREATE_CONNECTED_PARAMETER"]
      349 LOADK                            R24 K112 ["NativeGraphContext_GetSelectedGraphInstance"]
      350 SETTABLEKS                       R24 R23 K89 ["GET_SELECTED_GRAPH_INSTANCE"]
      352 LOADK                            R24 K113 ["NativeGraphContext_SetNodeConnectionAsync"]
      353 SETTABLEKS                       R24 R23 K90 ["SET_NODE_CONNECTION"]
      355 LOADK                            R24 K114 ["NativeGraphContext_setNodePropertyAsync"]
      356 SETTABLEKS                       R24 R23 K91 ["SET_NODE_PROPERTY"]
      358 LOADK                            R24 K115 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      359 SETTABLEKS                       R24 R23 K92 ["SET_INPUT_PIN_NODE_PROPERTY"]
      361 LOADK                            R24 K116 ["NativeGraphContext_ReorderPinsAsync"]
      362 SETTABLEKS                       R24 R23 K93 ["REORDER_PINS"]
      364 LOADK                            R24 K117 ["NativeGraphContext_RemoveNodeInputConnection"]
      365 SETTABLEKS                       R24 R23 K94 ["REMOVE_NODE_INPUT_CONNECTION"]
      367 LOADK                            R24 K118 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      368 SETTABLEKS                       R24 R23 K95 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      370 LOADK                            R24 K119 ["NativeGraphContext_RemoveParameterAsync"]
      371 SETTABLEKS                       R24 R23 K96 ["REMOVE_PARAMETER"]
      373 LOADK                            R24 K120 ["NativeGraphContext_RenameNodeAsync"]
      374 SETTABLEKS                       R24 R23 K97 ["RENAME_NODE"]
      376 LOADK                            R24 K121 ["NativeGraphContext_RenameParameterAsync"]
      377 SETTABLEKS                       R24 R23 K98 ["RENAME_PARAMETER"]
      379 LOADK                            R24 K122 ["NativeGraphContext_DeleteNodeInstanceAsync"]
      380 SETTABLEKS                       R24 R23 K99 ["DELETE_NODE_INSTANCE"]
      382 LOADK                            R24 K123 ["NativeGraphContext_SetNodeSizeAsync"]
      383 SETTABLEKS                       R24 R23 K100 ["SET_NODE_SIZE"]
      385 LOADK                            R24 K124 ["NativeGraphContext_SetCollapsedAsync"]
      386 SETTABLEKS                       R24 R23 K101 ["SET_COLLAPSED"]
      388 LOADK                            R24 K125 ["NativeGraphContext_SetNodePositionsAsync"]
      389 SETTABLEKS                       R24 R23 K102 ["SET_NODE_POSITIONS"]
      391 LOADK                            R24 K126 ["NativeGraphContext_SelectNodeFromNodeId"]
      392 SETTABLEKS                       R24 R23 K103 ["SELECT_NODE_FROM_NODE_ID"]
      394 LOADK                            R24 K127 ["NativeGraphContext_SelectNodes"]
      395 SETTABLEKS                       R24 R23 K104 ["SELECT_NODES"]
      397 LOADK                            R24 K128 ["NativeGraphContext_SelectNodesFromRect"]
      398 SETTABLEKS                       R24 R23 K105 ["SELECT_NODES_FROM_RECT"]
      400 LOADK                            R24 K129 ["NativeGraphContext_beginUndoTransaction"]
      401 SETTABLEKS                       R24 R23 K106 ["BEGIN_UNDO_TRANSACTION"]
      403 LOADK                            R24 K130 ["NativeGraphContext_finishUndoTransaction"]
      404 SETTABLEKS                       R24 R23 K107 ["FINISH_UNDO_TRANSACTION"]
      406 NEWTABLE                         R24 2 0
      408 LOADB                            R25 0
      409 SETTABLEKS                       R25 R24 K131 ["boolean"]
      411 LOADN                            R25 0
      412 SETTABLEKS                       R25 R24 K132 ["number"]
      414 NEWTABLE                         R25 16 0
      416 LOADN                            R26 1
      417 SETTABLEKS                       R26 R25 K133 ["Speed"]
      419 LOADN                            R26 1
      420 SETTABLEKS                       R26 R25 K134 ["PlayCount"]
      422 LOADN                            R26 0
      423 SETTABLEKS                       R26 R25 K135 ["StartOffset"]
      425 LOADN                            R26 0
      426 SETTABLEKS                       R26 R25 K136 ["EndOffset"]
      428 LOADN                            R26 0
      429 SETTABLEKS                       R26 R25 K137 ["X"]
      431 LOADN                            R26 0
      432 SETTABLEKS                       R26 R25 K138 ["Y"]
      434 LOADN                            R26 0
      435 SETTABLEKS                       R26 R25 K139 ["LoopCount"]
      437 LOADN                            R26 0
      438 SETTABLEKS                       R26 R25 K140 ["Weight"]
      440 LOADN                            R26 0
      441 SETTABLEKS                       R26 R25 K141 ["Position"]
      443 GETIMPORT                        R26 K145 [Enum.AnimationNodePlayMode.Loop]
      445 SETTABLEKS                       R26 R25 K146 ["PlayMode"]
      447 GETIMPORT                        R26 K149 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      449 SETTABLEKS                       R26 R25 K150 ["InputMode"]
      451 LOADB                            R26 0
      452 SETTABLEKS                       R26 R25 K151 ["Reverse"]
      454 LOADB                            R26 0
      455 SETTABLEKS                       R26 R25 K152 ["Invert"]
      457 DUPCLOSURE                       R26 K153 [PROTO_1]
      458 CAPTURE                          VAL R12
      459 CAPTURE                          VAL R14
      460 DUPCLOSURE                       R27 K154 [PROTO_50]
      461 CAPTURE                          VAL R19
      462 CAPTURE                          VAL R18
      463 CAPTURE                          VAL R12
      464 CAPTURE                          VAL R15
      465 CAPTURE                          VAL R16
      466 CAPTURE                          VAL R8
      467 CAPTURE                          VAL R7
      468 CAPTURE                          VAL R9
      469 CAPTURE                          VAL R2
      470 CAPTURE                          VAL R1
      471 CAPTURE                          VAL R3
      472 CAPTURE                          VAL R4
      473 CAPTURE                          VAL R25
      474 CAPTURE                          VAL R24
      475 CAPTURE                          VAL R6
      476 CAPTURE                          VAL R13
      477 CAPTURE                          VAL R26
      478 CAPTURE                          VAL R10
      479 CAPTURE                          VAL R22
      480 CAPTURE                          VAL R23
      481 CAPTURE                          VAL R21
      482 CAPTURE                          VAL R17
      483 CAPTURE                          VAL R5
      484 DUPCLOSURE                       R28 K155 [PROTO_54]
      485 CAPTURE                          VAL R19
      486 CAPTURE                          VAL R10
      487 CAPTURE                          VAL R22
      488 CAPTURE                          VAL R12
      489 CAPTURE                          VAL R16
      490 CAPTURE                          VAL R26
      491 CAPTURE                          VAL R23
      492 CAPTURE                          VAL R21
      493 CAPTURE                          VAL R13
      494 CAPTURE                          VAL R17
      495 DUPTABLE                         R29 K159 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      496 SETTABLEKS                       R21 R29 K156 ["Context"]
      498 SETTABLEKS                       R27 R29 K157 ["EditableDataModelProvider"]
      500 SETTABLEKS                       R28 R29 K158 ["UIDataModelProvider"]
      502 RETURN                           R29 1
