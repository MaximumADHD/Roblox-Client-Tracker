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
       12 GETTABLEKS                       R6 R5 K1 ["isSelected"]
       14 JUMPIFNOT                        R6 ; [+46]
       15 GETTABLEKS                       R6 R5 K2 ["position"]
       17 JUMPIFNOT                        R6 ; [+43]
       18 GETTABLEKS                       R6 R5 K3 ["size"]
       20 JUMPIFNOT                        R6 ; [+40]
       21 GETIMPORT                        R6 K6 [Rect.new]
       23 GETTABLEKS                       R8 R5 K2 ["position"]
       25 GETTABLEKS                       R7 R8 K7 ["X"]
       27 GETTABLEKS                       R9 R5 K2 ["position"]
       29 GETTABLEKS                       R8 R9 K8 ["Y"]
       31 GETTABLEKS                       R11 R5 K2 ["position"]
       33 GETTABLEKS                       R10 R11 K7 ["X"]
       35 GETTABLEKS                       R12 R5 K3 ["size"]
       37 GETTABLEKS                       R11 R12 K7 ["X"]
       39 ADD                              R9 R10 R11
       40 GETTABLEKS                       R12 R5 K2 ["position"]
       42 GETTABLEKS                       R11 R12 K8 ["Y"]
       44 GETTABLEKS                       R13 R5 K3 ["size"]
       46 GETTABLEKS                       R12 R13 K8 ["Y"]
       48 ADD                              R10 R11 R12
       49 CALL                             R6 4 1
       50 JUMPIFNOTEQKNIL                  R0 ; [+3]
       52 MOVE                             R0 R6
       53 JUMP                             ; [+7]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R7 R8 K9 ["union"]
       57 MOVE                             R8 R0
       58 MOVE                             R9 R6
       59 CALL                             R7 2 1
       60 MOVE                             R0 R7
       61 FORGLOOP                         R1 2 ; [-50]
       63 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 DUPTABLE                         R2 K2 [{"getSelectedRect"}]
       13 SETTABLEKS                       R1 R2 K1 ["getSelectedRect"]
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphState"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 DUPTABLE                         R3 K2 [{"debugTrackAnimationId"}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K1 ["debugTrackAnimationId"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsRunning"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["GetAnimationClipAsync"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+7]
       15 GETUPVAL                         R2 3
       16 LOADK                            R4 K2 ["Failed to fetch animation graph for trackId:"]
       17 MOVE                             R5 R0
       18 NAMECALL                         R2 R2 K3 ["warning"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 4
       23 NEWTABLE                         R3 0 1
       25 MOVE                             R4 R1
       26 SETLIST                          R3 R4 1 [1]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 5
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R0
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_11:
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
       13 JUMPIFEQKNIL                     R2 ; [+8]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K2 ["fitGraphRect"]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 -1
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R3 R4 K3 ["setMap"]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R4 R2 K4 ["lookup"]
       31 JUMP                             ; [+2]
       32 NEWTABLE                         R4 0 0
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 1
       11 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       23 GETTABLEKS                       R10 R9 K3 ["position"]
       25 JUMPIFNOT                        R10 ; [+55]
       26 GETTABLEKS                       R10 R9 K4 ["size"]
       28 JUMPIFNOT                        R10 ; [+52]
       29 GETTABLEKS                       R11 R9 K3 ["position"]
       31 GETTABLEKS                       R10 R11 K5 ["X"]
       33 GETTABLEKS                       R12 R0 K6 ["Max"]
       35 GETTABLEKS                       R11 R12 K5 ["X"]
       37 JUMPIFLT                         R11 R10 ; [+43]
       39 GETTABLEKS                       R12 R9 K3 ["position"]
       41 GETTABLEKS                       R11 R12 K5 ["X"]
       43 GETTABLEKS                       R13 R9 K4 ["size"]
       45 GETTABLEKS                       R12 R13 K5 ["X"]
       47 ADD                              R10 R11 R12
       48 GETTABLEKS                       R12 R0 K7 ["Min"]
       50 GETTABLEKS                       R11 R12 K5 ["X"]
       52 JUMPIFLT                         R10 R11 ; [+28]
       54 GETTABLEKS                       R11 R9 K3 ["position"]
       56 GETTABLEKS                       R10 R11 K8 ["Y"]
       58 GETTABLEKS                       R12 R0 K7 ["Min"]
       60 GETTABLEKS                       R11 R12 K8 ["Y"]
       62 JUMPIFLT                         R10 R11 ; [+18]
       64 GETTABLEKS                       R12 R9 K3 ["position"]
       66 GETTABLEKS                       R11 R12 K8 ["Y"]
       68 GETTABLEKS                       R13 R9 K4 ["size"]
       70 GETTABLEKS                       R12 R13 K8 ["Y"]
       72 SUB                              R10 R11 R12
       73 GETTABLEKS                       R12 R0 K6 ["Max"]
       75 GETTABLEKS                       R11 R12 K8 ["Y"]
       77 JUMPIFLT                         R11 R10 ; [+3]
       79 LOADB                            R10 1
       80 SETTABLE                         R10 R4 R8
       81 FORGLOOP                         R5 2 ; [-59]
       83 MOVE                             R5 R4
       84 LOADNIL                          R6
       85 LOADNIL                          R7
       86 FORGPREP                         R5
       87 GETUPVAL                         R10 2
       88 MOVE                             R12 R8
       89 NAMECALL                         R10 R10 K9 ["idToInstance"]
       91 CALL                             R10 2 1
       92 JUMPIFNOT                        R10 ; [+13]
       93 GETIMPORT                        R11 K12 [table.find]
       95 MOVE                             R12 R3
       96 MOVE                             R13 R10
       97 CALL                             R11 2 1
       98 JUMPIF                           R11 ; [+7]
       99 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      101 MOVE                             R12 R3
      102 MOVE                             R13 R10
      103 GETIMPORT                        R11 K14 [table.insert]
      105 CALL                             R11 2 0
      106 FORGLOOP                         R5 2 ; [-20]
      108 GETUPVAL                         R6 0
      109 GETTABLEKS                       R5 R6 K0 ["selectionService"]
      111 MOVE                             R7 R3
      112 NAMECALL                         R5 R5 K15 ["Set"]
      114 CALL                             R5 2 0
      115 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R3 R4 K11 ["getOrCreateParameterInstance"]
       44 MOVE                             R4 R2
       45 GETTABLEKS                       R5 R0 K12 ["sourcePinName"]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R5 R6 K14 ["getParameterType"]
       51 GETTABLEKS                       R6 R2 K15 ["NodeType"]
       53 GETTABLEKS                       R7 R0 K12 ["sourcePinName"]
       55 CALL                             R5 2 1
       56 ORK                              R4 R5 K13 ["unknown"]
       57 LOADK                            R6 K16 ["%*Param"]
       58 MOVE                             R8 R4
       59 NAMECALL                         R6 R6 K17 ["format"]
       61 CALL                             R6 2 1
       62 MOVE                             R5 R6
       63 GETUPVAL                         R6 0
       64 MOVE                             R8 R5
       65 NAMECALL                         R6 R6 K18 ["GetAttribute"]
       67 CALL                             R6 2 1
       68 JUMPIF                           R6 ; [+6]
       69 GETUPVAL                         R6 0
       70 MOVE                             R8 R5
       71 LOADN                            R9 0
       72 NAMECALL                         R6 R6 K19 ["SetAttribute"]
       74 CALL                             R6 3 0
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R6 R7 K20 ["setParameterBindingName"]
       78 MOVE                             R7 R2
       79 GETTABLEKS                       R8 R0 K12 ["sourcePinName"]
       81 MOVE                             R9 R5
       82 CALL                             R6 3 0
       83 GETUPVAL                         R7 5
       84 GETTABLEKS                       R6 R7 K21 ["selectionService"]
       86 NEWTABLE                         R8 0 1
       88 MOVE                             R9 R3
       89 SETLIST                          R8 R9 1 [1]
       91 NAMECALL                         R6 R6 K22 ["Set"]
       93 CALL                             R6 2 0
       94 JUMPIFNOT                        R1 ; [+7]
       95 GETUPVAL                         R6 2
       96 MOVE                             R8 R1
       97 GETIMPORT                        R9 K26 [Enum.FinishRecordingOperation.Commit]
       99 NAMECALL                         R6 R6 K27 ["FinishRecording"]
      101 CALL                             R6 3 0
      102 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 10
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 NEWTABLE                         R0 0 1
        4 GETUPVAL                         R1 0
        5 SETLIST                          R0 R1 1 [1]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useContext"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["Context"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["useState"]
       14 GETIMPORT                        R5 K5 [Rect.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 LOADN                            R8 0
       19 LOADN                            R9 0
       20 CALL                             R5 4 -1
       21 CALL                             R4 -1 2
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K2 ["useState"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 2
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K6 ["useMemo"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R10 0 0
       35 CALL                             R8 2 2
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       39 DUPCLOSURE                       R11 K7 [PROTO_3]
       40 CAPTURE                          UPVAL U4
       41 NEWTABLE                         R12 0 0
       43 CALL                             R10 2 2
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R12 R13 K8 ["useEffect"]
       47 NEWCLOSURE                       R13 P2
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R14 0 1
       52 MOVE                             R15 R2
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 0
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       59 NEWCLOSURE                       R13 P3
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R8
       62 NEWTABLE                         R14 0 1
       64 MOVE                             R15 R8
       65 SETLIST                          R14 R15 1 [1]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R14 2
       69 GETTABLEKS                       R13 R14 K8 ["useEffect"]
       71 NEWCLOSURE                       R14 P4
       72 CAPTURE                          VAL R12
       73 NEWTABLE                         R15 0 1
       75 MOVE                             R16 R12
       76 SETLIST                          R15 R16 1 [1]
       78 CALL                             R13 2 0
       79 GETUPVAL                         R15 2
       80 GETTABLEKS                       R14 R15 K0 ["useContext"]
       82 GETUPVAL                         R16 6
       83 GETTABLEKS                       R15 R16 K1 ["Context"]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R13 R14 K9 ["instanceRegistry"]
       88 GETUPVAL                         R15 2
       89 GETTABLEKS                       R14 R15 K6 ["useMemo"]
       91 NEWCLOSURE                       R15 P5
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R10
       97 NEWTABLE                         R16 0 4
       99 MOVE                             R17 R13
      100 MOVE                             R18 R12
      101 MOVE                             R19 R8
      102 MOVE                             R20 R10
      103 SETLIST                          R16 R17 4 [1]
      105 CALL                             R14 2 1
      106 GETUPVAL                         R16 2
      107 GETTABLEKS                       R15 R16 K2 ["useState"]
      109 LOADNIL                          R16
      110 CALL                             R15 1 2
      111 GETUPVAL                         R18 2
      112 GETTABLEKS                       R17 R18 K10 ["useCallback"]
      114 NEWCLOSURE                       R18 P6
      115 CAPTURE                          UPVAL U8
      116 CAPTURE                          VAL R6
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          UPVAL U10
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R7
      121 CAPTURE                          UPVAL U11
      122 NEWTABLE                         R19 0 3
      124 MOVE                             R20 R6
      125 MOVE                             R21 R7
      126 MOVE                             R22 R11
      127 SETLIST                          R19 R20 3 [1]
      129 CALL                             R17 2 1
      130 GETUPVAL                         R19 2
      131 GETTABLEKS                       R18 R19 K8 ["useEffect"]
      133 NEWCLOSURE                       R19 P7
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R5
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R1
      141 NEWTABLE                         R20 0 5
      143 MOVE                             R21 R14
      144 MOVE                             R22 R7
      145 MOVE                             R23 R16
      146 MOVE                             R24 R5
      147 GETTABLEKS                       R25 R1 K11 ["setMap"]
      149 SETLIST                          R20 R21 5 [1]
      151 CALL                             R18 2 0
      152 GETUPVAL                         R19 2
      153 GETTABLEKS                       R18 R19 K10 ["useCallback"]
      155 NEWCLOSURE                       R19 P8
      156 CAPTURE                          VAL R13
      157 CAPTURE                          UPVAL U7
      158 NEWTABLE                         R20 0 1
      160 MOVE                             R21 R13
      161 SETLIST                          R20 R21 1 [1]
      163 CALL                             R18 2 1
      164 GETUPVAL                         R20 2
      165 GETTABLEKS                       R19 R20 K10 ["useCallback"]
      167 NEWCLOSURE                       R20 P9
      168 CAPTURE                          UPVAL U12
      169 CAPTURE                          VAL R13
      170 CAPTURE                          UPVAL U7
      171 NEWTABLE                         R21 0 1
      173 MOVE                             R22 R13
      174 SETLIST                          R21 R22 1 [1]
      176 CALL                             R19 2 1
      177 GETUPVAL                         R21 2
      178 GETTABLEKS                       R20 R21 K10 ["useCallback"]
      180 NEWCLOSURE                       R21 P10
      181 CAPTURE                          VAL R13
      182 CAPTURE                          UPVAL U7
      183 NEWTABLE                         R22 0 1
      185 MOVE                             R23 R13
      186 SETLIST                          R22 R23 1 [1]
      188 CALL                             R20 2 1
      189 GETUPVAL                         R22 2
      190 GETTABLEKS                       R21 R22 K10 ["useCallback"]
      192 NEWCLOSURE                       R22 P11
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R13
      195 NEWTABLE                         R23 0 3
      197 MOVE                             R24 R13
      198 GETTABLEKS                       R25 R3 K12 ["selectionService"]
      200 MOVE                             R26 R12
      201 SETLIST                          R23 R24 3 [1]
      203 CALL                             R21 2 1
      204 GETUPVAL                         R23 2
      205 GETTABLEKS                       R22 R23 K10 ["useCallback"]
      207 NEWCLOSURE                       R23 P12
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R13
      211 NEWTABLE                         R24 0 3
      213 GETTABLEKS                       R25 R3 K12 ["selectionService"]
      215 MOVE                             R26 R13
      216 MOVE                             R27 R15
      217 SETLIST                          R24 R25 3 [1]
      219 CALL                             R22 2 1
      220 GETUPVAL                         R24 2
      221 GETTABLEKS                       R23 R24 K6 ["useMemo"]
      223 NEWCLOSURE                       R24 P13
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R13
      226 NEWTABLE                         R25 0 2
      228 MOVE                             R26 R13
      229 MOVE                             R27 R15
      230 SETLIST                          R25 R26 2 [1]
      232 CALL                             R23 2 1
      233 GETUPVAL                         R25 2
      234 GETTABLEKS                       R24 R25 K10 ["useCallback"]
      236 NEWCLOSURE                       R25 P14
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R15
      239 CAPTURE                          UPVAL U12
      240 CAPTURE                          UPVAL U7
      241 CAPTURE                          VAL R13
      242 CAPTURE                          UPVAL U13
      243 CAPTURE                          VAL R3
      244 NEWTABLE                         R26 0 4
      246 GETTABLEKS                       R27 R3 K12 ["selectionService"]
      248 MOVE                             R28 R23
      249 MOVE                             R29 R15
      250 MOVE                             R30 R13
      251 SETLIST                          R26 R27 4 [1]
      253 CALL                             R24 2 1
      254 GETUPVAL                         R26 2
      255 GETTABLEKS                       R25 R26 K10 ["useCallback"]
      257 NEWCLOSURE                       R26 P15
      258 CAPTURE                          VAL R23
      259 CAPTURE                          VAL R15
      260 CAPTURE                          UPVAL U12
      261 CAPTURE                          VAL R13
      262 CAPTURE                          UPVAL U7
      263 CAPTURE                          VAL R3
      264 NEWTABLE                         R27 0 3
      266 GETTABLEKS                       R28 R3 K12 ["selectionService"]
      268 MOVE                             R29 R23
      269 MOVE                             R30 R13
      270 SETLIST                          R27 R28 3 [1]
      272 CALL                             R25 2 1
      273 GETUPVAL                         R27 2
      274 GETTABLEKS                       R26 R27 K10 ["useCallback"]
      276 NEWCLOSURE                       R27 P16
      277 CAPTURE                          VAL R15
      278 CAPTURE                          UPVAL U12
      279 CAPTURE                          UPVAL U7
      280 CAPTURE                          VAL R13
      281 NEWTABLE                         R28 0 1
      283 MOVE                             R29 R15
      284 SETLIST                          R28 R29 1 [1]
      286 CALL                             R26 2 1
      287 GETUPVAL                         R28 2
      288 GETTABLEKS                       R27 R28 K10 ["useCallback"]
      290 NEWCLOSURE                       R28 P17
      291 CAPTURE                          VAL R15
      292 CAPTURE                          UPVAL U12
      293 CAPTURE                          UPVAL U7
      294 CAPTURE                          VAL R13
      295 NEWTABLE                         R29 0 1
      297 MOVE                             R30 R15
      298 SETLIST                          R29 R30 1 [1]
      300 CALL                             R27 2 1
      301 GETUPVAL                         R29 2
      302 GETTABLEKS                       R28 R29 K10 ["useCallback"]
      304 NEWCLOSURE                       R29 P18
      305 CAPTURE                          VAL R15
      306 CAPTURE                          UPVAL U12
      307 CAPTURE                          UPVAL U7
      308 CAPTURE                          VAL R13
      309 NEWTABLE                         R30 0 2
      311 MOVE                             R31 R13
      312 MOVE                             R32 R15
      313 SETLIST                          R30 R31 2 [1]
      315 CALL                             R28 2 1
      316 GETUPVAL                         R30 2
      317 GETTABLEKS                       R29 R30 K10 ["useCallback"]
      319 NEWCLOSURE                       R30 P19
      320 CAPTURE                          UPVAL U12
      321 CAPTURE                          VAL R13
      322 CAPTURE                          UPVAL U9
      323 NEWTABLE                         R31 0 1
      325 MOVE                             R32 R13
      326 SETLIST                          R31 R32 1 [1]
      328 CALL                             R29 2 1
      329 GETUPVAL                         R31 2
      330 GETTABLEKS                       R30 R31 K10 ["useCallback"]
      332 NEWCLOSURE                       R31 P20
      333 CAPTURE                          UPVAL U12
      334 CAPTURE                          VAL R13
      335 NEWTABLE                         R32 0 1
      337 MOVE                             R33 R15
      338 SETLIST                          R32 R33 1 [1]
      340 CALL                             R30 2 1
      341 GETUPVAL                         R32 2
      342 GETTABLEKS                       R31 R32 K10 ["useCallback"]
      344 NEWCLOSURE                       R32 P21
      345 CAPTURE                          VAL R23
      346 NEWTABLE                         R33 0 1
      348 MOVE                             R34 R23
      349 SETLIST                          R33 R34 1 [1]
      351 CALL                             R31 2 1
      352 GETUPVAL                         R33 2
      353 GETTABLEKS                       R32 R33 K10 ["useCallback"]
      355 NEWCLOSURE                       R33 P22
      356 CAPTURE                          UPVAL U12
      357 CAPTURE                          VAL R13
      358 CAPTURE                          VAL R1
      359 CAPTURE                          VAL R15
      360 CAPTURE                          UPVAL U7
      361 NEWTABLE                         R34 0 3
      363 MOVE                             R35 R13
      364 MOVE                             R36 R15
      365 GETTABLEKS                       R37 R1 K13 ["observe"]
      367 SETLIST                          R34 R35 3 [1]
      369 CALL                             R32 2 1
      370 GETUPVAL                         R34 2
      371 GETTABLEKS                       R33 R34 K10 ["useCallback"]
      373 NEWCLOSURE                       R34 P23
      374 CAPTURE                          UPVAL U12
      375 CAPTURE                          UPVAL U7
      376 CAPTURE                          VAL R13
      377 NEWTABLE                         R35 0 1
      379 MOVE                             R36 R13
      380 SETLIST                          R35 R36 1 [1]
      382 CALL                             R33 2 1
      383 GETUPVAL                         R35 2
      384 GETTABLEKS                       R34 R35 K10 ["useCallback"]
      386 NEWCLOSURE                       R35 P24
      387 CAPTURE                          VAL R15
      388 CAPTURE                          VAL R13
      389 CAPTURE                          UPVAL U7
      390 NEWTABLE                         R36 0 2
      392 MOVE                             R37 R13
      393 MOVE                             R38 R15
      394 SETLIST                          R36 R37 2 [1]
      396 CALL                             R34 2 1
      397 GETUPVAL                         R35 14
      398 MOVE                             R36 R15
      399 CALL                             R35 1 1
      400 GETUPVAL                         R37 2
      401 GETTABLEKS                       R36 R37 K6 ["useMemo"]
      403 NEWCLOSURE                       R37 P25
      404 CAPTURE                          UPVAL U4
      405 CAPTURE                          VAL R23
      406 NEWTABLE                         R38 0 0
      408 CALL                             R36 2 2
      409 GETUPVAL                         R39 2
      410 GETTABLEKS                       R38 R39 K6 ["useMemo"]
      412 NEWCLOSURE                       R39 P26
      413 CAPTURE                          VAL R37
      414 CAPTURE                          VAL R23
      415 NEWTABLE                         R40 0 2
      417 MOVE                             R41 R37
      418 MOVE                             R42 R23
      419 SETLIST                          R40 R41 2 [1]
      421 CALL                             R38 2 0
      422 DUPTABLE                         R38 K38 [{"graphPayloadMap", "runtimeDebugInfo", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "graphRect", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "renameNodeAsync", "renameParameterAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "getSelectedRect", "selectDebugTrackByIdAsync", "observeSelectedGraphInstance", "observeGraphNodeById"}]
      423 SETTABLEKS                       R15 R38 K14 ["graphPayloadMap"]
      425 SETTABLEKS                       R6 R38 K15 ["runtimeDebugInfo"]
      427 SETTABLEKS                       R33 R38 K16 ["reorderPinsAsync"]
      429 SETTABLEKS                       R24 R38 K17 ["createNodeAsync"]
      431 SETTABLEKS                       R25 R38 K18 ["createParameterAsync"]
      433 SETTABLEKS                       R4 R38 K19 ["graphRect"]
      435 SETTABLEKS                       R21 R38 K20 ["selectNodesAsync"]
      437 SETTABLEKS                       R22 R38 K21 ["selectNodesFromRectAsync"]
      439 SETTABLEKS                       R19 R38 K22 ["setNodePositionsAsync"]
      441 SETTABLEKS                       R20 R38 K23 ["setNodeSizeAsync"]
      443 SETTABLEKS                       R28 R38 K24 ["setNodeConnectionAsync"]
      445 SETTABLEKS                       R27 R38 K25 ["removeNodeOutputConnectionAsync"]
      447 SETTABLEKS                       R26 R38 K26 ["removeNodeInputConnectionAsync"]
      449 SETTABLEKS                       R32 R38 K27 ["renameNodeAsync"]
      451 SETTABLEKS                       R34 R38 K28 ["renameParameterAsync"]
      453 SETTABLEKS                       R18 R38 K29 ["setCollapsedAsync"]
      455 SETTABLEKS                       R29 R38 K30 ["setNodePropertyAsync"]
      457 SETTABLEKS                       R30 R38 K31 ["setInputPinNodePropertyAsync"]
      459 SETTABLEKS                       R31 R38 K32 ["getSelectedGraphInstance"]
      461 SETTABLEKS                       R23 R38 K33 ["selectedGraphInstance"]
      463 GETTABLEKS                       R39 R35 K34 ["getSelectedRect"]
      465 SETTABLEKS                       R39 R38 K34 ["getSelectedRect"]
      467 SETTABLEKS                       R17 R38 K35 ["selectDebugTrackByIdAsync"]
      469 SETTABLEKS                       R36 R38 K36 ["observeSelectedGraphInstance"]
      471 GETTABLEKS                       R39 R1 K13 ["observe"]
      473 SETTABLEKS                       R39 R38 K37 ["observeGraphNodeById"]
      475 GETUPVAL                         R40 2
      476 GETTABLEKS                       R39 R40 K6 ["useMemo"]
      478 DUPCLOSURE                       R40 K39 [PROTO_32]
      479 NEWTABLE                         R41 0 0
      481 CALL                             R39 2 1
      482 GETUPVAL                         R41 2
      483 GETTABLEKS                       R40 R41 K6 ["useMemo"]
      485 NEWCLOSURE                       R41 P28
      486 CAPTURE                          VAL R23
      487 NEWTABLE                         R42 0 2
      489 MOVE                             R43 R23
      490 MOVE                             R44 R15
      491 SETLIST                          R42 R43 2 [1]
      493 CALL                             R40 2 1
      494 GETUPVAL                         R42 15
      495 GETTABLEKS                       R41 R42 K40 ["useReplicatedState"]
      497 GETUPVAL                         R43 16
      498 GETTABLEKS                       R42 R43 K41 ["GRAPH_PAYLOAD_MAP"]
      500 MOVE                             R43 R15
      501 CALL                             R41 2 0
      502 GETUPVAL                         R42 15
      503 GETTABLEKS                       R41 R42 K40 ["useReplicatedState"]
      505 GETUPVAL                         R43 16
      506 GETTABLEKS                       R42 R43 K42 ["RUNTIME_DEBUG_INFO"]
      508 MOVE                             R43 R6
      509 CALL                             R41 2 0
      510 GETUPVAL                         R42 15
      511 GETTABLEKS                       R41 R42 K40 ["useReplicatedState"]
      513 GETUPVAL                         R43 16
      514 GETTABLEKS                       R42 R43 K43 ["TIME_RANGE"]
      516 MOVE                             R43 R39
      517 CALL                             R41 2 0
      518 GETUPVAL                         R42 15
      519 GETTABLEKS                       R41 R42 K40 ["useReplicatedState"]
      521 GETUPVAL                         R43 16
      522 GETTABLEKS                       R42 R43 K44 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      524 MOVE                             R43 R4
      525 CALL                             R41 2 0
      526 GETUPVAL                         R42 15
      527 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      529 GETUPVAL                         R43 17
      530 GETTABLEKS                       R42 R43 K46 ["CREATE_NODE"]
      532 MOVE                             R43 R24
      533 CALL                             R41 2 0
      534 GETUPVAL                         R42 15
      535 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      537 GETUPVAL                         R43 17
      538 GETTABLEKS                       R42 R43 K47 ["CREATE_PARAMETER"]
      540 MOVE                             R43 R25
      541 CALL                             R41 2 0
      542 GETUPVAL                         R42 15
      543 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      545 GETUPVAL                         R43 17
      546 GETTABLEKS                       R42 R43 K48 ["SELECT_NODES"]
      548 MOVE                             R43 R21
      549 CALL                             R41 2 0
      550 GETUPVAL                         R42 15
      551 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      553 GETUPVAL                         R43 17
      554 GETTABLEKS                       R42 R43 K49 ["SELECT_NODES_FROM_RECT"]
      556 MOVE                             R43 R22
      557 CALL                             R41 2 0
      558 GETUPVAL                         R42 15
      559 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      561 GETUPVAL                         R43 17
      562 GETTABLEKS                       R42 R43 K50 ["SET_NODE_POSITIONS"]
      564 MOVE                             R43 R19
      565 CALL                             R41 2 0
      566 GETUPVAL                         R42 15
      567 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      569 GETUPVAL                         R43 17
      570 GETTABLEKS                       R42 R43 K51 ["SET_NODE_SIZE"]
      572 MOVE                             R43 R20
      573 CALL                             R41 2 0
      574 GETUPVAL                         R42 15
      575 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      577 GETUPVAL                         R43 17
      578 GETTABLEKS                       R42 R43 K52 ["SET_NODE_CONNECTION"]
      580 MOVE                             R43 R28
      581 CALL                             R41 2 0
      582 GETUPVAL                         R42 15
      583 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      585 GETUPVAL                         R43 17
      586 GETTABLEKS                       R42 R43 K53 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      588 MOVE                             R43 R27
      589 CALL                             R41 2 0
      590 GETUPVAL                         R42 15
      591 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      593 GETUPVAL                         R43 17
      594 GETTABLEKS                       R42 R43 K54 ["REMOVE_NODE_INPUT_CONNECTION"]
      596 MOVE                             R43 R26
      597 CALL                             R41 2 0
      598 GETUPVAL                         R42 15
      599 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      601 GETUPVAL                         R43 17
      602 GETTABLEKS                       R42 R43 K55 ["RENAME_NODE"]
      604 MOVE                             R43 R32
      605 CALL                             R41 2 0
      606 GETUPVAL                         R42 15
      607 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      609 GETUPVAL                         R43 17
      610 GETTABLEKS                       R42 R43 K56 ["RENAME_PARAMETER"]
      612 MOVE                             R43 R34
      613 CALL                             R41 2 0
      614 GETUPVAL                         R42 15
      615 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      617 GETUPVAL                         R43 17
      618 GETTABLEKS                       R42 R43 K57 ["SET_COLLAPSED"]
      620 MOVE                             R43 R18
      621 CALL                             R41 2 0
      622 GETUPVAL                         R42 15
      623 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      625 GETUPVAL                         R43 17
      626 GETTABLEKS                       R42 R43 K58 ["SET_NODE_PROPERTY"]
      628 MOVE                             R43 R29
      629 CALL                             R41 2 0
      630 GETUPVAL                         R42 15
      631 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      633 GETUPVAL                         R43 17
      634 GETTABLEKS                       R42 R43 K59 ["SET_INPUT_PIN_NODE_PROPERTY"]
      636 MOVE                             R43 R30
      637 CALL                             R41 2 0
      638 GETUPVAL                         R42 15
      639 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      641 GETUPVAL                         R43 17
      642 GETTABLEKS                       R42 R43 K60 ["GET_SELECTED_GRAPH_INSTANCE"]
      644 MOVE                             R43 R31
      645 CALL                             R41 2 0
      646 GETUPVAL                         R42 15
      647 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      649 GETUPVAL                         R43 17
      650 GETTABLEKS                       R42 R43 K61 ["SELECT_DEBUG_TRACK_BY_ID"]
      652 MOVE                             R43 R17
      653 CALL                             R41 2 0
      654 GETUPVAL                         R42 15
      655 GETTABLEKS                       R41 R42 K45 ["useBoundAction"]
      657 GETUPVAL                         R43 17
      658 GETTABLEKS                       R42 R43 K62 ["REORDER_PINS"]
      660 MOVE                             R43 R33
      661 CALL                             R41 2 0
      662 GETUPVAL                         R42 2
      663 GETTABLEKS                       R41 R42 K63 ["createElement"]
      665 GETUPVAL                         R43 18
      666 GETTABLEKS                       R42 R43 K64 ["Provider"]
      668 DUPTABLE                         R43 K66 [{"value"}]
      669 SETTABLEKS                       R38 R43 K65 ["value"]
      671 DUPTABLE                         R44 K68 [{"ContextStack"}]
      672 GETUPVAL                         R46 2
      673 GETTABLEKS                       R45 R46 K63 ["createElement"]
      675 GETUPVAL                         R47 19
      676 GETTABLEKS                       R46 R47 K67 ["ContextStack"]
      678 DUPTABLE                         R47 K70 [{"providers"}]
      679 NEWTABLE                         R48 0 2
      681 GETUPVAL                         R50 2
      682 GETTABLEKS                       R49 R50 K63 ["createElement"]
      684 GETUPVAL                         R51 20
      685 GETTABLEKS                       R50 R51 K64 ["Provider"]
      687 DUPTABLE                         R51 K72 [{"timeRange"}]
      688 SETTABLEKS                       R39 R51 K71 ["timeRange"]
      690 CALL                             R49 2 1
      691 GETUPVAL                         R51 2
      692 GETTABLEKS                       R50 R51 K63 ["createElement"]
      694 GETUPVAL                         R52 21
      695 GETTABLEKS                       R51 R52 K64 ["Provider"]
      697 DUPTABLE                         R52 K74 [{"animationClipsList"}]
      698 SETTABLEKS                       R40 R52 K73 ["animationClipsList"]
      700 CALL                             R50 2 -1
      701 SETLIST                          R48 R49 -1 [1]
      703 SETTABLEKS                       R48 R47 K69 ["providers"]
      705 GETTABLEKS                       R48 R0 K75 ["children"]
      707 CALL                             R45 3 1
      708 SETTABLEKS                       R45 R44 K67 ["ContextStack"]
      710 CALL                             R41 3 -1
      711 RETURN                           R41 -1

PROTO_35:
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

PROTO_36:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_37:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["Should not invoke getSelectedGraphInstance from UIDataModelProvider as we cannot retrieve UI instances"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useReplicatedStateListener"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["GRAPH_PAYLOAD_MAP"]
        8 LOADNIL                          R4
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R3 R0 K2 ["testOverrideGraphPayloadMap"]
       12 JUMPIFNOT                        R3 ; [+2]
       13 GETTABLEKS                       R2 R0 K2 ["testOverrideGraphPayloadMap"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K0 ["useReplicatedStateListener"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K3 ["TIME_RANGE"]
       21 GETIMPORT                        R5 K6 [NumberRange.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 10
       25 CALL                             R5 2 -1
       26 CALL                             R3 -1 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K0 ["useReplicatedStateListener"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R5 R6 K7 ["GRAPH_PAYLOAD_GRAPH_RECT"]
       33 GETIMPORT                        R6 K9 [Rect.new]
       35 LOADN                            R7 0
       36 LOADN                            R8 0
       37 LOADN                            R9 0
       38 LOADN                            R10 0
       39 CALL                             R6 4 -1
       40 CALL                             R4 -1 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K0 ["useReplicatedStateListener"]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R6 R7 K10 ["RUNTIME_DEBUG_INFO"]
       47 LOADNIL                          R7
       48 CALL                             R5 2 1
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R6 R7 K11 ["useMemo"]
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          REF R2
       55 NEWTABLE                         R8 0 2
       57 GETTABLEKS                       R9 R1 K12 ["setMap"]
       59 MOVE                             R10 R2
       60 SETLIST                          R8 R9 2 [1]
       62 CALL                             R6 2 0
       63 GETUPVAL                         R7 3
       64 GETTABLEKS                       R6 R7 K13 ["useCallback"]
       66 DUPCLOSURE                       R7 K14 [PROTO_36]
       67 NEWTABLE                         R8 0 0
       69 CALL                             R6 2 1
       70 GETUPVAL                         R8 4
       71 GETTABLEKS                       R7 R8 K15 ["createComputed"]
       73 DUPCLOSURE                       R8 K16 [PROTO_37]
       74 CALL                             R7 1 1
       75 GETUPVAL                         R8 5
       76 MOVE                             R9 R2
       77 CALL                             R8 1 1
       78 DUPTABLE                         R9 K41 [{"graphPayloadMap", "runtimeDebugInfo", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "graphRect", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "setNodeConnectionAsync", "removeNodeOutputConnectionAsync", "removeNodeInputConnectionAsync", "renameNodeAsync", "renameParameterAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "getSelectedGraphInstance", "selectedGraphInstance", "getSelectedRect", "selectDebugTrackByIdAsync", "observeSelectedGraphInstance", "observeGraphNodeById"}]
       79 SETTABLEKS                       R2 R9 K17 ["graphPayloadMap"]
       81 SETTABLEKS                       R5 R9 K18 ["runtimeDebugInfo"]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
       86 GETUPVAL                         R12 6
       87 GETTABLEKS                       R11 R12 K43 ["REORDER_PINS"]
       89 CALL                             R10 1 1
       90 SETTABLEKS                       R10 R9 K19 ["reorderPinsAsync"]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
       95 GETUPVAL                         R12 6
       96 GETTABLEKS                       R11 R12 K44 ["CREATE_NODE"]
       98 CALL                             R10 1 1
       99 SETTABLEKS                       R10 R9 K20 ["createNodeAsync"]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      104 GETUPVAL                         R12 6
      105 GETTABLEKS                       R11 R12 K45 ["CREATE_PARAMETER"]
      107 CALL                             R10 1 1
      108 SETTABLEKS                       R10 R9 K21 ["createParameterAsync"]
      110 SETTABLEKS                       R4 R9 K22 ["graphRect"]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      115 GETUPVAL                         R12 6
      116 GETTABLEKS                       R11 R12 K46 ["SELECT_NODES"]
      118 CALL                             R10 1 1
      119 SETTABLEKS                       R10 R9 K23 ["selectNodesAsync"]
      121 GETUPVAL                         R11 1
      122 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      124 GETUPVAL                         R12 6
      125 GETTABLEKS                       R11 R12 K47 ["SELECT_NODES_FROM_RECT"]
      127 CALL                             R10 1 1
      128 SETTABLEKS                       R10 R9 K24 ["selectNodesFromRectAsync"]
      130 GETUPVAL                         R11 1
      131 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      133 GETUPVAL                         R12 6
      134 GETTABLEKS                       R11 R12 K48 ["SET_NODE_POSITIONS"]
      136 CALL                             R10 1 1
      137 SETTABLEKS                       R10 R9 K25 ["setNodePositionsAsync"]
      139 GETUPVAL                         R11 1
      140 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      142 GETUPVAL                         R12 6
      143 GETTABLEKS                       R11 R12 K49 ["SET_NODE_SIZE"]
      145 CALL                             R10 1 1
      146 SETTABLEKS                       R10 R9 K26 ["setNodeSizeAsync"]
      148 GETUPVAL                         R11 1
      149 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      151 GETUPVAL                         R12 6
      152 GETTABLEKS                       R11 R12 K50 ["SET_NODE_CONNECTION"]
      154 CALL                             R10 1 1
      155 SETTABLEKS                       R10 R9 K27 ["setNodeConnectionAsync"]
      157 GETUPVAL                         R11 1
      158 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      160 GETUPVAL                         R12 6
      161 GETTABLEKS                       R11 R12 K51 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      163 CALL                             R10 1 1
      164 SETTABLEKS                       R10 R9 K28 ["removeNodeOutputConnectionAsync"]
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      169 GETUPVAL                         R12 6
      170 GETTABLEKS                       R11 R12 K52 ["REMOVE_NODE_INPUT_CONNECTION"]
      172 CALL                             R10 1 1
      173 SETTABLEKS                       R10 R9 K29 ["removeNodeInputConnectionAsync"]
      175 GETUPVAL                         R11 1
      176 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      178 GETUPVAL                         R12 6
      179 GETTABLEKS                       R11 R12 K53 ["RENAME_NODE"]
      181 CALL                             R10 1 1
      182 SETTABLEKS                       R10 R9 K30 ["renameNodeAsync"]
      184 GETUPVAL                         R11 1
      185 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      187 GETUPVAL                         R12 6
      188 GETTABLEKS                       R11 R12 K54 ["RENAME_PARAMETER"]
      190 CALL                             R10 1 1
      191 SETTABLEKS                       R10 R9 K31 ["renameParameterAsync"]
      193 GETUPVAL                         R11 1
      194 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      196 GETUPVAL                         R12 6
      197 GETTABLEKS                       R11 R12 K55 ["SET_COLLAPSED"]
      199 CALL                             R10 1 1
      200 SETTABLEKS                       R10 R9 K32 ["setCollapsedAsync"]
      202 GETUPVAL                         R11 1
      203 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      205 GETUPVAL                         R12 6
      206 GETTABLEKS                       R11 R12 K56 ["SET_NODE_PROPERTY"]
      208 CALL                             R10 1 1
      209 SETTABLEKS                       R10 R9 K33 ["setNodePropertyAsync"]
      211 GETUPVAL                         R11 1
      212 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      214 GETUPVAL                         R12 6
      215 GETTABLEKS                       R11 R12 K57 ["SET_INPUT_PIN_NODE_PROPERTY"]
      217 CALL                             R10 1 1
      218 SETTABLEKS                       R10 R9 K34 ["setInputPinNodePropertyAsync"]
      220 SETTABLEKS                       R6 R9 K35 ["getSelectedGraphInstance"]
      222 LOADNIL                          R10
      223 SETTABLEKS                       R10 R9 K36 ["selectedGraphInstance"]
      225 GETTABLEKS                       R10 R8 K37 ["getSelectedRect"]
      227 SETTABLEKS                       R10 R9 K37 ["getSelectedRect"]
      229 GETUPVAL                         R11 1
      230 GETTABLEKS                       R10 R11 K42 ["useBoundAction"]
      232 GETUPVAL                         R12 6
      233 GETTABLEKS                       R11 R12 K58 ["SELECT_DEBUG_TRACK_BY_ID"]
      235 CALL                             R10 1 1
      236 SETTABLEKS                       R10 R9 K38 ["selectDebugTrackByIdAsync"]
      238 SETTABLEKS                       R7 R9 K39 ["observeSelectedGraphInstance"]
      240 GETTABLEKS                       R10 R1 K59 ["observe"]
      242 SETTABLEKS                       R10 R9 K40 ["observeGraphNodeById"]
      244 GETUPVAL                         R11 3
      245 GETTABLEKS                       R10 R11 K60 ["createElement"]
      247 GETUPVAL                         R12 7
      248 GETTABLEKS                       R11 R12 K61 ["Provider"]
      250 DUPTABLE                         R12 K63 [{"value"}]
      251 SETTABLEKS                       R9 R12 K62 ["value"]
      253 DUPTABLE                         R13 K65 [{"ContextStack"}]
      254 GETUPVAL                         R15 3
      255 GETTABLEKS                       R14 R15 K60 ["createElement"]
      257 GETUPVAL                         R16 8
      258 GETTABLEKS                       R15 R16 K64 ["ContextStack"]
      260 DUPTABLE                         R16 K67 [{"providers"}]
      261 NEWTABLE                         R17 0 1
      263 GETUPVAL                         R19 3
      264 GETTABLEKS                       R18 R19 K60 ["createElement"]
      266 GETUPVAL                         R20 9
      267 GETTABLEKS                       R19 R20 K61 ["Provider"]
      269 DUPTABLE                         R20 K69 [{"timeRange"}]
      270 SETTABLEKS                       R3 R20 K68 ["timeRange"]
      272 CALL                             R18 2 -1
      273 SETLIST                          R17 R18 -1 [1]
      275 SETTABLEKS                       R17 R16 K66 ["providers"]
      277 GETTABLEKS                       R17 R0 K70 ["children"]
      279 CALL                             R14 3 1
      280 SETTABLEKS                       R14 R13 K64 ["ContextStack"]
      282 CALL                             R10 3 -1
      283 CLOSEUPVALS                      R2
      284 RETURN                           R10 -1

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
       27 GETTABLEKS                       R6 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R6 K13 ["AnimationNodeWrapper"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Contexts"]
       36 GETTABLEKS                       R6 R7 K15 ["AnimationPreviewClipsContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R8 R0 K16 ["Parent"]
       43 GETTABLEKS                       R7 R8 K17 ["Dash"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       50 GETTABLEKS                       R8 R9 K18 ["InstanceRegistryContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R11 R0 K12 ["Util"]
       57 GETTABLEKS                       R10 R11 K19 ["Instances"]
       59 GETTABLEKS                       R9 R10 K20 ["InstanceSelectionRegistry"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R12 R0 K14 ["Contexts"]
       66 GETTABLEKS                       R11 R12 K21 ["NativeGraphContext"]
       68 GETTABLEKS                       R10 R11 K22 ["NativeGraphUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R13 R0 K12 ["Util"]
       75 GETTABLEKS                       R12 R13 K23 ["Networking"]
       77 GETTABLEKS                       R11 R12 K24 ["NetworkUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K11 [require]
       82 GETTABLEKS                       R12 R0 K25 ["NodeViewTypes"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R14 R0 K16 ["Parent"]
       89 GETTABLEKS                       R13 R14 K26 ["React"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R15 R0 K16 ["Parent"]
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
      115 GETTABLEKS                       R18 R0 K16 ["Parent"]
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
      141 GETIMPORT                        R20 K11 [require]
      143 GETTABLEKS                       R22 R0 K12 ["Util"]
      145 GETTABLEKS                       R21 R22 K35 ["Logger"]
      147 CALL                             R20 1 1
      148 LOADK                            R22 K21 ["NativeGraphContext"]
      149 NAMECALL                         R20 R20 K36 ["new"]
      151 CALL                             R20 2 1
      152 DUPTABLE                         R21 K61 [{"graphPayloadMap", "runtimeDebugInfo", "graphRect", "reorderPinsAsync", "createNodeAsync", "createParameterAsync", "selectNodesAsync", "selectNodesFromRectAsync", "setNodePositionsAsync", "setNodeSizeAsync", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "renameNodeAsync", "renameParameterAsync", "setNodeConnectionAsync", "setCollapsedAsync", "setNodePropertyAsync", "setInputPinNodePropertyAsync", "selectDebugTrackByIdAsync", "getSelectedRect", "observeGraphNodeById", "getSelectedGraphInstance", "observeSelectedGraphInstance", "selectedGraphInstance"}]
      153 LOADNIL                          R22
      154 SETTABLEKS                       R22 R21 K37 ["graphPayloadMap"]
      156 LOADNIL                          R22
      157 SETTABLEKS                       R22 R21 K38 ["runtimeDebugInfo"]
      159 GETIMPORT                        R22 K63 [Rect.new]
      161 LOADN                            R23 0
      162 LOADN                            R24 0
      163 LOADN                            R25 0
      164 LOADN                            R26 0
      165 CALL                             R22 4 1
      166 SETTABLEKS                       R22 R21 K39 ["graphRect"]
      168 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      170 LOADK                            R23 K40 ["reorderPinsAsync"]
      171 CALL                             R22 1 1
      172 SETTABLEKS                       R22 R21 K40 ["reorderPinsAsync"]
      174 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      176 LOADK                            R23 K41 ["createNodeAsync"]
      177 CALL                             R22 1 1
      178 SETTABLEKS                       R22 R21 K41 ["createNodeAsync"]
      180 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      182 LOADK                            R23 K42 ["createParameterAsync"]
      183 CALL                             R22 1 1
      184 SETTABLEKS                       R22 R21 K42 ["createParameterAsync"]
      186 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      188 LOADK                            R23 K43 ["selectNodesAsync"]
      189 CALL                             R22 1 1
      190 SETTABLEKS                       R22 R21 K43 ["selectNodesAsync"]
      192 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      194 LOADK                            R23 K44 ["selectNodesFromRectAsync"]
      195 CALL                             R22 1 1
      196 SETTABLEKS                       R22 R21 K44 ["selectNodesFromRectAsync"]
      198 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      200 LOADK                            R23 K45 ["setNodePositionsAsync"]
      201 CALL                             R22 1 1
      202 SETTABLEKS                       R22 R21 K45 ["setNodePositionsAsync"]
      204 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      206 LOADK                            R23 K46 ["setNodeSizeAsync"]
      207 CALL                             R22 1 1
      208 SETTABLEKS                       R22 R21 K46 ["setNodeSizeAsync"]
      210 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      212 LOADK                            R23 K47 ["removeNodeInputConnectionAsync"]
      213 CALL                             R22 1 1
      214 SETTABLEKS                       R22 R21 K47 ["removeNodeInputConnectionAsync"]
      216 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      218 LOADK                            R23 K48 ["removeNodeOutputConnectionAsync"]
      219 CALL                             R22 1 1
      220 SETTABLEKS                       R22 R21 K48 ["removeNodeOutputConnectionAsync"]
      222 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      224 LOADK                            R23 K49 ["renameNodeAsync"]
      225 CALL                             R22 1 1
      226 SETTABLEKS                       R22 R21 K49 ["renameNodeAsync"]
      228 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      230 LOADK                            R23 K50 ["renameParameterAsync"]
      231 CALL                             R22 1 1
      232 SETTABLEKS                       R22 R21 K50 ["renameParameterAsync"]
      234 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      236 LOADK                            R23 K65 ["setNewConnection"]
      237 CALL                             R22 1 1
      238 SETTABLEKS                       R22 R21 K51 ["setNodeConnectionAsync"]
      240 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      242 LOADK                            R23 K52 ["setCollapsedAsync"]
      243 CALL                             R22 1 1
      244 SETTABLEKS                       R22 R21 K52 ["setCollapsedAsync"]
      246 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      248 LOADK                            R23 K53 ["setNodePropertyAsync"]
      249 CALL                             R22 1 1
      250 SETTABLEKS                       R22 R21 K53 ["setNodePropertyAsync"]
      252 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      254 LOADK                            R23 K54 ["setInputPinNodePropertyAsync"]
      255 CALL                             R22 1 1
      256 SETTABLEKS                       R22 R21 K54 ["setInputPinNodePropertyAsync"]
      258 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      260 LOADK                            R23 K55 ["selectDebugTrackByIdAsync"]
      261 CALL                             R22 1 1
      262 SETTABLEKS                       R22 R21 K55 ["selectDebugTrackByIdAsync"]
      264 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      266 LOADK                            R23 K56 ["getSelectedRect"]
      267 CALL                             R22 1 1
      268 SETTABLEKS                       R22 R21 K56 ["getSelectedRect"]
      270 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      272 LOADK                            R23 K57 ["observeGraphNodeById"]
      273 CALL                             R22 1 1
      274 SETTABLEKS                       R22 R21 K57 ["observeGraphNodeById"]
      276 GETTABLEKS                       R22 R13 K64 ["createUnimplemented"]
      278 LOADK                            R23 K58 ["getSelectedGraphInstance"]
      279 CALL                             R22 1 1
      280 SETTABLEKS                       R22 R21 K58 ["getSelectedGraphInstance"]
      282 GETTABLEKS                       R22 R16 K66 ["createSignal"]
      284 LOADNIL                          R23
      285 CALL                             R22 1 1
      286 SETTABLEKS                       R22 R21 K59 ["observeSelectedGraphInstance"]
      288 LOADNIL                          R22
      289 SETTABLEKS                       R22 R21 K60 ["selectedGraphInstance"]
      291 GETTABLEKS                       R22 R12 K67 ["createContext"]
      293 MOVE                             R23 R21
      294 CALL                             R22 1 1
      295 DUPTABLE                         R23 K72 [{"GRAPH_PAYLOAD_MAP", "TIME_RANGE", "RUNTIME_DEBUG_INFO", "GRAPH_PAYLOAD_GRAPH_RECT"}]
      296 LOADK                            R24 K73 ["NativeGraphContext_GraphState"]
      297 SETTABLEKS                       R24 R23 K68 ["GRAPH_PAYLOAD_MAP"]
      299 LOADK                            R24 K74 ["NativeGraphContext_TimeRange"]
      300 SETTABLEKS                       R24 R23 K69 ["TIME_RANGE"]
      302 LOADK                            R24 K75 ["NativeGraphContext_RuntimeDebugInfo"]
      303 SETTABLEKS                       R24 R23 K70 ["RUNTIME_DEBUG_INFO"]
      305 LOADK                            R24 K76 ["NativeGraphContext_GraphPayloadGraphRect"]
      306 SETTABLEKS                       R24 R23 K71 ["GRAPH_PAYLOAD_GRAPH_RECT"]
      308 DUPTABLE                         R24 K94 [{"CREATE_NODE", "CREATE_PARAMETER", "GET_SELECTED_GRAPH_INSTANCE", "SELECT_DEBUG_TRACK_BY_ID", "SET_NODE_CONNECTION", "SET_NODE_PROPERTY", "SET_INPUT_PIN_NODE_PROPERTY", "REORDER_PINS", "RENAME_NODE", "RENAME_PARAMETER", "REMOVE_NODE_INPUT_CONNECTION", "REMOVE_NODE_OUTPUT_CONNECTION", "SET_NODE_SIZE", "SET_COLLAPSED", "SET_NODE_POSITIONS", "SELECT_NODES", "SELECT_NODES_FROM_RECT"}]
      309 LOADK                            R25 K95 ["NativeGraphContext_CreateNode"]
      310 SETTABLEKS                       R25 R24 K77 ["CREATE_NODE"]
      312 LOADK                            R25 K96 ["NativeGraphContext_CreateParameterAsync"]
      313 SETTABLEKS                       R25 R24 K78 ["CREATE_PARAMETER"]
      315 LOADK                            R25 K97 ["NativeGraphContext_GetSelectedGraphInstance"]
      316 SETTABLEKS                       R25 R24 K79 ["GET_SELECTED_GRAPH_INSTANCE"]
      318 LOADK                            R25 K98 ["NativeGraphContext_SelectDebugTrackByIdAsync"]
      319 SETTABLEKS                       R25 R24 K80 ["SELECT_DEBUG_TRACK_BY_ID"]
      321 LOADK                            R25 K99 ["NativeGraphContext_SetNodeConnectionAsync"]
      322 SETTABLEKS                       R25 R24 K81 ["SET_NODE_CONNECTION"]
      324 LOADK                            R25 K100 ["NativeGraphContext_setNodePropertyAsync"]
      325 SETTABLEKS                       R25 R24 K82 ["SET_NODE_PROPERTY"]
      327 LOADK                            R25 K101 ["NativeGraphContext_SetInputPinNodePropertyAsync"]
      328 SETTABLEKS                       R25 R24 K83 ["SET_INPUT_PIN_NODE_PROPERTY"]
      330 LOADK                            R25 K102 ["NativeGraphContext_ReorderPinsAsync"]
      331 SETTABLEKS                       R25 R24 K84 ["REORDER_PINS"]
      333 LOADK                            R25 K103 ["NativeGraphContext_RenameNodeAsync"]
      334 SETTABLEKS                       R25 R24 K85 ["RENAME_NODE"]
      336 LOADK                            R25 K104 ["NativeGraphContext_RenameParameterAsync"]
      337 SETTABLEKS                       R25 R24 K86 ["RENAME_PARAMETER"]
      339 LOADK                            R25 K105 ["NativeGraphContext_RemoveNodeInputConnection"]
      340 SETTABLEKS                       R25 R24 K87 ["REMOVE_NODE_INPUT_CONNECTION"]
      342 LOADK                            R25 K106 ["NativeGraphContext_RemoveNodeOutputConnectionAsync"]
      343 SETTABLEKS                       R25 R24 K88 ["REMOVE_NODE_OUTPUT_CONNECTION"]
      345 LOADK                            R25 K107 ["NativeGraphContext_SetNodeSizeAsync"]
      346 SETTABLEKS                       R25 R24 K89 ["SET_NODE_SIZE"]
      348 LOADK                            R25 K108 ["NativeGraphContext_SetCollapsedAsync"]
      349 SETTABLEKS                       R25 R24 K90 ["SET_COLLAPSED"]
      351 LOADK                            R25 K109 ["NativeGraphContext_SetNodePositionsAsync"]
      352 SETTABLEKS                       R25 R24 K91 ["SET_NODE_POSITIONS"]
      354 LOADK                            R25 K110 ["NativeGraphContext_SelectNodes"]
      355 SETTABLEKS                       R25 R24 K92 ["SELECT_NODES"]
      357 LOADK                            R25 K111 ["NativeGraphContext_SelectNodesFromRect"]
      358 SETTABLEKS                       R25 R24 K93 ["SELECT_NODES_FROM_RECT"]
      360 DUPCLOSURE                       R25 K112 [PROTO_1]
      361 CAPTURE                          VAL R12
      362 CAPTURE                          VAL R14
      363 DUPCLOSURE                       R26 K113 [PROTO_34]
      364 CAPTURE                          VAL R19
      365 CAPTURE                          VAL R18
      366 CAPTURE                          VAL R12
      367 CAPTURE                          VAL R15
      368 CAPTURE                          VAL R16
      369 CAPTURE                          VAL R8
      370 CAPTURE                          VAL R7
      371 CAPTURE                          VAL R9
      372 CAPTURE                          VAL R3
      373 CAPTURE                          VAL R1
      374 CAPTURE                          VAL R20
      375 CAPTURE                          VAL R6
      376 CAPTURE                          VAL R2
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R25
      379 CAPTURE                          VAL R10
      380 CAPTURE                          VAL R23
      381 CAPTURE                          VAL R24
      382 CAPTURE                          VAL R22
      383 CAPTURE                          VAL R13
      384 CAPTURE                          VAL R17
      385 CAPTURE                          VAL R5
      386 DUPCLOSURE                       R27 K114 [PROTO_38]
      387 CAPTURE                          VAL R19
      388 CAPTURE                          VAL R10
      389 CAPTURE                          VAL R23
      390 CAPTURE                          VAL R12
      391 CAPTURE                          VAL R16
      392 CAPTURE                          VAL R25
      393 CAPTURE                          VAL R24
      394 CAPTURE                          VAL R22
      395 CAPTURE                          VAL R13
      396 CAPTURE                          VAL R17
      397 DUPTABLE                         R28 K118 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      398 SETTABLEKS                       R22 R28 K115 ["Context"]
      400 SETTABLEKS                       R26 R28 K116 ["EditableDataModelProvider"]
      402 SETTABLEKS                       R27 R28 K117 ["UIDataModelProvider"]
      404 RETURN                           R28 1
