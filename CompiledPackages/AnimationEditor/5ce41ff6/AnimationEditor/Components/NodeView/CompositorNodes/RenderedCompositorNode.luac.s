PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePosition"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeDebugData"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePreviewData"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
        5 GETTABLEKS                       R0 R1 K1 ["Preview"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K2 ["isSelected"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
       17 GETTABLEKS                       R0 R1 K3 ["Selected"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
       23 GETTABLEKS                       R0 R1 K4 ["Nodes"]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectNodesAsync"]
        3 NEWTABLE                         R1 1 0
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 1
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["isShiftEnabled"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K3 ["onDragNodeStart"]
       12 MOVE                             R3 R1
       13 MOVE                             R4 R0
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["node"]
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setPendingNodePosition"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["node"]
       12 GETTABLEKS                       R4 R5 K2 ["id"]
       14 GETTABLE                         R2 R3 R4
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R0 R1 K3 ["setNodePositionsAsync"]
       19 GETUPVAL                         R1 2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePreviewData"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K3 ["observeGraphNodeById"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K1 ["node"]
       17 GETTABLEKS                       R2 R3 K2 ["id"]
       19 CALL                             R1 1 1
       20 LOADB                            R2 0
       21 CALL                             R1 1 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K4 ["observeNodeRenderInfoById"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K1 ["node"]
       28 GETTABLEKS                       R3 R4 K2 ["id"]
       30 CALL                             R2 1 1
       31 LOADB                            R3 0
       32 CALL                             R2 1 1
       33 JUMPIFNOT                        R1 ; [+23]
       34 JUMPIFNOT                        R0 ; [+22]
       35 JUMPIFNOT                        R2 ; [+21]
       36 NEWTABLE                         R3 0 0
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K1 ["node"]
       41 GETTABLEKS                       R4 R5 K2 ["id"]
       43 GETTABLEKS                       R6 R2 K5 ["position"]
       45 GETTABLEKS                       R7 R0 K6 ["delta"]
       47 ADD                              R5 R6 R7
       48 SETTABLE                         R5 R3 R4
       49 GETIMPORT                        R4 K9 [task.spawn]
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U2
       56 CALL                             R4 1 0
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K10 ["onDragNodeEnded"]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K1 ["node"]
       63 GETTABLEKS                       R4 R5 K2 ["id"]
       65 CALL                             R3 1 0
       66 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDisplayName"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["name"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["node"]
       11 GETTABLEKS                       R2 R3 K3 ["className"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["node"]
        3 GETTABLEKS                       R1 R2 K1 ["nodeType"]
        5 FASTCALL1                        TYPEOF R1 ; [+2]
        6 GETIMPORT                        R0 K3 [typeof]
        8 CALL                             R0 1 1
        9 JUMPIFEQKS                       R0 K4 ["EnumItem"] ; [+3]
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["node"]
       17 GETTABLEKS                       R2 R3 K1 ["nodeType"]
       19 NAMECALL                         R0 R0 K5 ["GetAnimationNodeDefinition"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R1 R2 K6 ["synthesizeDefinition"]
       25 MOVE                             R2 R0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["node"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+56]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["Inputs"]
        7 JUMPIFNOT                        R1 ; [+52]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R1 R4 K0 ["Inputs"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K1 ["node"]
       17 GETTABLEKS                       R7 R8 K2 ["inputPinToConnectionMap"]
       19 GETTABLEKS                       R8 R5 K3 ["InputName"]
       21 GETTABLE                         R6 R7 R8
       22 JUMPIFNOT                        R6 ; [+35]
       23 LOADK                            R8 K4 ["Connection_%*"]
       24 GETTABLEKS                       R10 R6 K5 ["wireId"]
       26 NAMECALL                         R8 R8 K6 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K7 ["createElement"]
       33 GETUPVAL                         R9 3
       34 DUPTABLE                         R10 K13 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
       35 GETTABLEKS                       R11 R6 K14 ["outputNodeId"]
       37 SETTABLEKS                       R11 R10 K8 ["outputPinNodeId"]
       39 LOADK                            R11 K15 ["Output"]
       40 SETTABLEKS                       R11 R10 K9 ["outputPinName"]
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R12 R13 K1 ["node"]
       45 GETTABLEKS                       R11 R12 K16 ["id"]
       47 SETTABLEKS                       R11 R10 K10 ["inputPinNodeId"]
       49 GETTABLEKS                       R11 R5 K3 ["InputName"]
       51 SETTABLEKS                       R11 R10 K11 ["inputPinName"]
       53 LOADK                            R11 K17 ["Animation"]
       54 SETTABLEKS                       R11 R10 K12 ["pinDataType"]
       56 CALL                             R8 2 1
       57 SETTABLE                         R8 R0 R7
       58 FORGLOOP                         R1 2 ; [-45]
       60 GETUPVAL                         R1 0
       61 JUMPIFNOT                        R1 ; [+58]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R1 R2 K18 ["Properties"]
       65 JUMPIFNOT                        R1 ; [+54]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R1 R4 K18 ["Properties"]
       69 LOADNIL                          R2
       70 LOADNIL                          R3
       71 FORGPREP                         R1
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R8 R9 K1 ["node"]
       75 GETTABLEKS                       R7 R8 K2 ["inputPinToConnectionMap"]
       77 GETTABLEKS                       R8 R5 K19 ["Name"]
       79 GETTABLE                         R6 R7 R8
       80 JUMPIFNOT                        R6 ; [+37]
       81 LOADK                            R8 K20 ["Connection_%*_property_%*"]
       82 GETTABLEKS                       R10 R6 K5 ["wireId"]
       84 GETTABLEKS                       R11 R5 K19 ["Name"]
       86 NAMECALL                         R8 R8 K6 ["format"]
       88 CALL                             R8 3 1
       89 MOVE                             R7 R8
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R8 R9 K7 ["createElement"]
       93 GETUPVAL                         R9 3
       94 DUPTABLE                         R10 K13 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
       95 GETTABLEKS                       R11 R6 K14 ["outputNodeId"]
       97 SETTABLEKS                       R11 R10 K8 ["outputPinNodeId"]
       99 LOADK                            R11 K15 ["Output"]
      100 SETTABLEKS                       R11 R10 K9 ["outputPinName"]
      102 GETUPVAL                         R13 1
      103 GETTABLEKS                       R12 R13 K1 ["node"]
      105 GETTABLEKS                       R11 R12 K16 ["id"]
      107 SETTABLEKS                       R11 R10 K10 ["inputPinNodeId"]
      109 GETTABLEKS                       R11 R5 K19 ["Name"]
      111 SETTABLEKS                       R11 R10 K11 ["inputPinName"]
      113 LOADK                            R11 K21 ["Parameter"]
      114 SETTABLEKS                       R11 R10 K12 ["pinDataType"]
      116 CALL                             R8 2 1
      117 SETTABLE                         R8 R0 R7
      118 FORGLOOP                         R1 2 ; [-47]
      120 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNodePropertyAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["node"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETIMPORT                        R2 K3 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["setInputPinNodePropertyAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["node"]
        5 JUMPIFNOT                        R1 ; [+38]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["node"]
        9 GETTABLEKS                       R1 R2 K1 ["nodeProps"]
       11 JUMPIFNOT                        R1 ; [+32]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["node"]
       15 GETTABLEKS                       R1 R4 K1 ["nodeProps"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 FASTCALL1                        TYPE R5 ; [+3]
       21 MOVE                             R8 R5
       22 GETIMPORT                        R7 K3 [type]
       24 CALL                             R7 1 1
       25 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+7]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K5 ["matchParameterBinding"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 JUMPIFNOT                        R6 ; [+6]
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R8 R9 K6 ["animationParameters"]
       38 GETTABLE                         R7 R8 R6
       39 SETTABLE                         R7 R0 R4
       40 JUMP                             ; [+1]
       41 SETTABLE                         R5 R0 R4
       42 FORGLOOP                         R1 2 ; [-23]
       44 GETUPVAL                         R1 3
       45 JUMPIFNOT                        R1 ; [+13]
       46 GETUPVAL                         R2 3
       47 GETTABLEKS                       R1 R2 K7 ["props"]
       49 JUMPIFNOT                        R1 ; [+9]
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R1 R4 K7 ["props"]
       53 LOADNIL                          R2
       54 LOADNIL                          R3
       55 FORGPREP                         R1
       56 SETTABLE                         R5 R0 R4
       57 FORGLOOP                         R1 2 ; [-2]
       59 RETURN                           R0 1

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["node"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["node"]
        9 GETTABLEKS                       R1 R2 K1 ["nodeState"]
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["node"]
       15 GETTABLEKS                       R1 R4 K1 ["nodeState"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 SETTABLE                         R5 R0 R4
       21 FORGLOOP                         R1 2 ; [-2]
       23 GETUPVAL                         R1 1
       24 JUMPIFNOT                        R1 ; [+13]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K2 ["state"]
       28 JUMPIFNOT                        R1 ; [+9]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R1 R4 K2 ["state"]
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 FORGPREP                         R1
       35 SETTABLE                         R5 R0 R4
       36 FORGLOOP                         R1 2 ; [-2]
       38 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["useContext"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R5 R6 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R5 R6 K2 ["useSignalState"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R10 R0 K4 ["node"]
       41 GETTABLEKS                       R9 R10 K5 ["id"]
       43 GETTABLEKS                       R10 R2 K6 ["observeNodePosition"]
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 -1
       48 CALL                             R5 -1 1
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R6 R7 K2 ["useSignalState"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K3 ["useMemo"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R0
       58 NEWTABLE                         R9 0 2
       60 GETTABLEKS                       R11 R0 K4 ["node"]
       62 GETTABLEKS                       R10 R11 K5 ["id"]
       64 GETTABLEKS                       R11 R3 K7 ["observeDebugData"]
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 -1
       69 CALL                             R6 -1 1
       70 GETUPVAL                         R8 5
       71 GETTABLEKS                       R7 R8 K2 ["useSignalState"]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R8 R9 K3 ["useMemo"]
       76 NEWCLOSURE                       R9 P2
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R0
       79 NEWTABLE                         R10 0 2
       81 GETTABLEKS                       R12 R0 K4 ["node"]
       83 GETTABLEKS                       R11 R12 K5 ["id"]
       85 GETTABLEKS                       R12 R2 K8 ["observeNodePreviewData"]
       87 SETLIST                          R10 R11 2 [1]
       89 CALL                             R8 2 -1
       90 CALL                             R7 -1 1
       91 GETUPVAL                         R9 5
       92 GETTABLEKS                       R8 R9 K2 ["useSignalState"]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R9 R10 K3 ["useMemo"]
       97 NEWCLOSURE                       R10 P3
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R0
      100 NEWTABLE                         R11 0 2
      102 GETTABLEKS                       R13 R0 K4 ["node"]
      104 GETTABLEKS                       R12 R13 K5 ["id"]
      106 GETTABLEKS                       R13 R1 K9 ["observeNodeRenderInfoById"]
      108 SETLIST                          R11 R12 2 [1]
      110 CALL                             R9 2 -1
      111 CALL                             R8 -1 1
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R9 R10 K3 ["useMemo"]
      115 NEWCLOSURE                       R10 P4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R11 0 3
      121 MOVE                             R12 R7
      122 GETTABLEKS                       R14 R0 K4 ["node"]
      124 GETTABLEKS                       R13 R14 K5 ["id"]
      126 MOVE                             R14 R8
      127 JUMPIFNOT                        R14 ; [+2]
      128 GETTABLEKS                       R14 R8 K10 ["isSelected"]
      130 SETLIST                          R11 R12 3 [1]
      132 CALL                             R9 2 1
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R10 R11 K11 ["useCallback"]
      136 NEWCLOSURE                       R11 P5
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R2
      140 NEWTABLE                         R12 0 3
      142 GETTABLEKS                       R13 R2 K12 ["onDragNodeStart"]
      144 GETTABLEKS                       R14 R1 K13 ["selectNodesAsync"]
      146 GETTABLEKS                       R15 R0 K14 ["isShiftEnabled"]
      148 SETLIST                          R12 R13 3 [1]
      150 CALL                             R10 2 1
      151 GETUPVAL                         R12 0
      152 GETTABLEKS                       R11 R12 K11 ["useCallback"]
      154 NEWCLOSURE                       R12 P6
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R0
      157 NEWTABLE                         R13 0 2
      159 GETTABLEKS                       R15 R0 K4 ["node"]
      161 GETTABLEKS                       R14 R15 K5 ["id"]
      163 GETTABLEKS                       R15 R2 K15 ["onDragNodeMoved"]
      165 SETLIST                          R13 R14 2 [1]
      167 CALL                             R11 2 1
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R12 R13 K11 ["useCallback"]
      171 NEWCLOSURE                       R13 P7
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R1
      175 NEWTABLE                         R14 0 8
      177 GETTABLEKS                       R15 R1 K16 ["observeGraphNodeById"]
      179 GETTABLEKS                       R16 R1 K17 ["setNodePositionsAsync"]
      181 GETTABLEKS                       R17 R2 K8 ["observeNodePreviewData"]
      183 GETTABLEKS                       R18 R2 K18 ["onDragNodeEnded"]
      185 GETTABLEKS                       R19 R2 K19 ["setPendingNodePosition"]
      187 GETTABLEKS                       R20 R1 K9 ["observeNodeRenderInfoById"]
      189 MOVE                             R21 R7
      190 GETTABLEKS                       R23 R0 K4 ["node"]
      192 GETTABLEKS                       R22 R23 K5 ["id"]
      194 SETLIST                          R14 R15 8 [1]
      196 CALL                             R12 2 1
      197 GETUPVAL                         R14 0
      198 GETTABLEKS                       R13 R14 K3 ["useMemo"]
      200 NEWCLOSURE                       R14 P8
      201 CAPTURE                          UPVAL U7
      202 CAPTURE                          VAL R0
      203 NEWTABLE                         R15 0 2
      205 GETTABLEKS                       R17 R0 K4 ["node"]
      207 GETTABLEKS                       R16 R17 K20 ["name"]
      209 GETTABLEKS                       R18 R0 K4 ["node"]
      211 GETTABLEKS                       R17 R18 K21 ["className"]
      213 SETLIST                          R15 R16 2 [1]
      215 CALL                             R13 2 1
      216 GETUPVAL                         R15 0
      217 GETTABLEKS                       R14 R15 K3 ["useMemo"]
      219 NEWCLOSURE                       R15 P9
      220 CAPTURE                          VAL R0
      221 CAPTURE                          UPVAL U8
      222 CAPTURE                          UPVAL U9
      223 NEWTABLE                         R16 0 2
      225 GETTABLEKS                       R18 R0 K4 ["node"]
      227 GETTABLEKS                       R17 R18 K22 ["nodeType"]
      229 GETTABLEKS                       R18 R0 K4 ["node"]
      231 SETLIST                          R16 R17 2 [1]
      233 CALL                             R14 2 1
      234 GETUPVAL                         R16 0
      235 GETTABLEKS                       R15 R16 K3 ["useMemo"]
      237 NEWCLOSURE                       R16 P10
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R0
      240 CAPTURE                          UPVAL U0
      241 CAPTURE                          UPVAL U10
      242 NEWTABLE                         R17 0 3
      244 MOVE                             R18 R14
      245 GETTABLEKS                       R19 R0 K4 ["node"]
      247 GETTABLEKS                       R20 R1 K16 ["observeGraphNodeById"]
      249 SETLIST                          R17 R18 3 [1]
      251 CALL                             R15 2 1
      252 GETUPVAL                         R17 0
      253 GETTABLEKS                       R16 R17 K11 ["useCallback"]
      255 NEWCLOSURE                       R17 P11
      256 CAPTURE                          VAL R0
      257 CAPTURE                          VAL R1
      258 NEWTABLE                         R18 0 2
      260 GETTABLEKS                       R19 R1 K23 ["setNodePropertyAsync"]
      262 GETTABLEKS                       R21 R0 K4 ["node"]
      264 JUMPIFNOT                        R21 ; [+5]
      265 GETTABLEKS                       R21 R0 K4 ["node"]
      267 GETTABLEKS                       R20 R21 K5 ["id"]
      269 JUMPIF                           R20 ; [+1]
      270 LOADNIL                          R20
      271 SETLIST                          R18 R19 2 [1]
      273 CALL                             R16 2 1
      274 GETUPVAL                         R18 0
      275 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      277 NEWCLOSURE                       R18 P12
      278 CAPTURE                          VAL R1
      279 NEWTABLE                         R19 0 2
      281 GETTABLEKS                       R20 R1 K24 ["setInputPinNodePropertyAsync"]
      283 GETTABLEKS                       R22 R0 K4 ["node"]
      285 JUMPIFNOT                        R22 ; [+5]
      286 GETTABLEKS                       R22 R0 K4 ["node"]
      288 GETTABLEKS                       R21 R22 K5 ["id"]
      290 JUMPIF                           R21 ; [+1]
      291 LOADNIL                          R21
      292 SETLIST                          R19 R20 2 [1]
      294 CALL                             R17 2 1
      295 GETTABLEKS                       R18 R0 K4 ["node"]
      297 JUMPIFNOT                        R18 ; [+11]
      298 GETTABLEKS                       R20 R0 K4 ["node"]
      300 GETTABLEKS                       R19 R20 K21 ["className"]
      302 GETUPVAL                         R21 6
      303 GETTABLEKS                       R20 R21 K25 ["PARAMETER_NODE_CLASSNAME"]
      305 JUMPIFEQ                         R19 R20 ; [+2]
      307 LOADB                            R18 0 +1
      308 LOADB                            R18 1
      309 GETUPVAL                         R20 0
      310 GETTABLEKS                       R19 R20 K3 ["useMemo"]
      312 NEWCLOSURE                       R20 P13
      313 CAPTURE                          VAL R0
      314 CAPTURE                          UPVAL U11
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R6
      317 NEWTABLE                         R21 0 3
      319 GETTABLEKS                       R22 R4 K26 ["animationParameters"]
      321 JUMPIFNOT                        R6 ; [+3]
      322 GETTABLEKS                       R23 R6 K27 ["props"]
      324 JUMP                             ; [+1]
      325 LOADNIL                          R23
      326 GETTABLEKS                       R25 R0 K4 ["node"]
      328 JUMPIFNOT                        R25 ; [+5]
      329 GETTABLEKS                       R25 R0 K4 ["node"]
      331 GETTABLEKS                       R24 R25 K28 ["nodeProps"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R24
      335 SETLIST                          R21 R22 3 [1]
      337 CALL                             R19 2 1
      338 GETUPVAL                         R21 0
      339 GETTABLEKS                       R20 R21 K3 ["useMemo"]
      341 NEWCLOSURE                       R21 P14
      342 CAPTURE                          VAL R0
      343 CAPTURE                          VAL R6
      344 NEWTABLE                         R22 0 2
      346 JUMPIFNOT                        R6 ; [+3]
      347 GETTABLEKS                       R23 R6 K29 ["state"]
      349 JUMP                             ; [+1]
      350 LOADNIL                          R23
      351 GETTABLEKS                       R25 R0 K4 ["node"]
      353 JUMPIFNOT                        R25 ; [+5]
      354 GETTABLEKS                       R25 R0 K4 ["node"]
      356 GETTABLEKS                       R24 R25 K30 ["nodeState"]
      358 JUMP                             ; [+1]
      359 LOADNIL                          R24
      360 SETLIST                          R22 R23 2 [1]
      362 CALL                             R20 2 1
      363 DUPTABLE                         R21 K45 [{"text", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "OnInputPinPropertyChanged", "PropertyLookup", "StateLookup"}]
      364 SETTABLEKS                       R13 R21 K31 ["text"]
      366 GETTABLEKS                       R22 R0 K4 ["node"]
      368 SETTABLEKS                       R22 R21 K32 ["GraphPayload"]
      370 MOVE                             R22 R5
      371 JUMPIF                           R22 ; [+2]
      372 GETIMPORT                        R22 K48 [Vector2.zero]
      374 SETTABLEKS                       R22 R21 K33 ["Position"]
      376 JUMPIFNOT                        R8 ; [+6]
      377 GETTABLEKS                       R22 R8 K49 ["size"]
      379 JUMPIF                           R22 ; [+5]
      380 GETIMPORT                        R22 K48 [Vector2.zero]
      382 JUMP                             ; [+2]
      383 GETIMPORT                        R22 K48 [Vector2.zero]
      385 SETTABLEKS                       R22 R21 K34 ["Size"]
      387 JUMPIFNOT                        R8 ; [+3]
      388 GETTABLEKS                       R22 R8 K10 ["isSelected"]
      390 JUMP                             ; [+1]
      391 LOADB                            R22 0
      392 SETTABLEKS                       R22 R21 K35 ["Selected"]
      394 JUMPIFNOT                        R8 ; [+3]
      395 GETTABLEKS                       R22 R8 K50 ["isCollapsed"]
      397 JUMP                             ; [+1]
      398 LOADB                            R22 0
      399 SETTABLEKS                       R22 R21 K36 ["Collapsed"]
      401 SETTABLEKS                       R9 R21 K37 ["ZIndex"]
      403 SETTABLEKS                       R10 R21 K38 ["OnDragStart"]
      405 SETTABLEKS                       R11 R21 K39 ["OnDragMoved"]
      407 SETTABLEKS                       R12 R21 K40 ["OnDragEnded"]
      409 SETTABLEKS                       R16 R21 K41 ["OnPropertyChanged"]
      411 SETTABLEKS                       R17 R21 K42 ["OnInputPinPropertyChanged"]
      413 SETTABLEKS                       R19 R21 K43 ["PropertyLookup"]
      415 SETTABLEKS                       R20 R21 K44 ["StateLookup"]
      417 LOADNIL                          R22
      418 JUMPIFNOT                        R18 ; [+2]
      419 GETUPVAL                         R22 12
      420 JUMP                             ; [+37]
      421 GETUPVAL                         R23 13
      422 JUMPIFNOT                        R23 ; [+15]
      423 GETTABLEKS                       R24 R0 K4 ["node"]
      425 GETTABLEKS                       R23 R24 K22 ["nodeType"]
      427 JUMPIFNOT                        R23 ; [+10]
      428 GETUPVAL                         R25 14
      429 GETTABLEKS                       R27 R0 K4 ["node"]
      431 GETTABLEKS                       R26 R27 K22 ["nodeType"]
      433 GETTABLE                         R24 R25 R26
      434 JUMPIFEQKNIL                     R24 ; [+2]
      436 LOADB                            R23 0 +1
      437 LOADB                            R23 1
      438 SETTABLEKS                       R23 R21 K51 ["IsGeneric"]
      440 GETTABLEKS                       R25 R0 K4 ["node"]
      442 GETTABLEKS                       R24 R25 K22 ["nodeType"]
      444 JUMPIFNOT                        R24 ; [+7]
      445 GETUPVAL                         R24 14
      446 GETTABLEKS                       R26 R0 K4 ["node"]
      448 GETTABLEKS                       R25 R26 K22 ["nodeType"]
      450 GETTABLE                         R23 R24 R25
      451 JUMPIF                           R23 ; [+1]
      452 GETUPVAL                         R23 15
      453 MOVE                             R22 R23
      454 GETUPVAL                         R23 16
      455 CALL                             R23 0 1
      456 JUMPIFNOT                        R23 ; [+1]
      457 GETUPVAL                         R22 15
      458 GETUPVAL                         R24 0
      459 GETTABLEKS                       R23 R24 K52 ["createElement"]
      461 GETUPVAL                         R25 0
      462 GETTABLEKS                       R24 R25 K53 ["Fragment"]
      464 NEWTABLE                         R25 0 0
      466 NEWTABLE                         R26 1 0
      468 GETTABLEKS                       R28 R0 K4 ["node"]
      470 GETTABLEKS                       R27 R28 K20 ["name"]
      472 GETUPVAL                         R29 0
      473 GETTABLEKS                       R28 R29 K52 ["createElement"]
      475 MOVE                             R29 R22
      476 MOVE                             R30 R21
      477 CALL                             R28 2 1
      478 SETTABLE                         R28 R26 R27
      479 MOVE                             R27 R15
      480 CALL                             R23 4 -1
      481 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationNodeWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["AnimationParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["CompositorConnectionContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K13 ["CompositorNodes"]
       36 GETTABLEKS                       R5 R6 K14 ["CompositorNode"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R7 K15 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K16 ["GraphDebugDataContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K17 ["NativeGraphContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K8 ["Contexts"]
       64 GETTABLEKS                       R10 R11 K17 ["NativeGraphContext"]
       66 GETTABLEKS                       R9 R10 K18 ["NativeGraphUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K6 ["Util"]
       73 GETTABLEKS                       R11 R12 K19 ["Nodes"]
       75 GETTABLEKS                       R10 R11 K20 ["NodeDefinitionUtils"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R13 R0 K6 ["Util"]
       82 GETTABLEKS                       R12 R13 K19 ["Nodes"]
       84 GETTABLEKS                       R11 R12 K21 ["NodeNameFormattingUtils"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K22 ["NodeViewTypes"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R16 R0 K11 ["Components"]
       96 GETTABLEKS                       R15 R16 K12 ["NodeView"]
       98 GETTABLEKS                       R14 R15 K13 ["CompositorNodes"]
      100 GETTABLEKS                       R13 R14 K23 ["ParameterNode"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R15 R0 K24 ["Parent"]
      107 GETTABLEKS                       R14 R15 K25 ["React"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R18 R0 K11 ["Components"]
      114 GETTABLEKS                       R17 R18 K12 ["NodeView"]
      116 GETTABLEKS                       R16 R17 K13 ["CompositorNodes"]
      118 GETTABLEKS                       R15 R16 K26 ["RenderedCompositorCurve"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R17 R0 K24 ["Parent"]
      125 GETTABLEKS                       R16 R17 K27 ["SignalsReact"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R18 R0 K28 ["Flags"]
      132 GETTABLEKS                       R17 R18 K29 ["getFFlagDebugDisableCustomNodes"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K31 [game]
      137 LOADK                            R19 K32 ["DebugAGEHighlightGenericNodes"]
      138 LOADB                            R20 0
      139 NAMECALL                         R17 R17 K33 ["DefineFastFlag"]
      141 CALL                             R17 3 1
      142 NEWTABLE                         R18 16 0
      144 GETIMPORT                        R19 K37 [Enum.AnimationNodeType.AddNode]
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R24 R0 K11 ["Components"]
      150 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      152 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      154 GETTABLEKS                       R21 R22 K38 ["AddSubtractNode"]
      156 CALL                             R20 1 1
      157 SETTABLE                         R20 R18 R19
      158 GETIMPORT                        R19 K40 [Enum.AnimationNodeType.BlendNode]
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R24 R0 K11 ["Components"]
      164 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      166 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      168 GETTABLEKS                       R21 R22 K39 ["BlendNode"]
      170 CALL                             R20 1 1
      171 SETTABLE                         R20 R18 R19
      172 GETIMPORT                        R19 K42 [Enum.AnimationNodeType.Blend1DNode]
      174 GETIMPORT                        R20 K5 [require]
      176 GETTABLEKS                       R24 R0 K11 ["Components"]
      178 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      180 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      182 GETTABLEKS                       R21 R22 K41 ["Blend1DNode"]
      184 CALL                             R20 1 1
      185 SETTABLE                         R20 R18 R19
      186 GETIMPORT                        R19 K44 [Enum.AnimationNodeType.Blend2DNode]
      188 GETIMPORT                        R20 K5 [require]
      190 GETTABLEKS                       R24 R0 K11 ["Components"]
      192 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      194 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      196 GETTABLEKS                       R21 R22 K43 ["Blend2DNode"]
      198 CALL                             R20 1 1
      199 SETTABLE                         R20 R18 R19
      200 GETIMPORT                        R19 K46 [Enum.AnimationNodeType.ClipNode]
      202 GETIMPORT                        R20 K5 [require]
      204 GETTABLEKS                       R24 R0 K11 ["Components"]
      206 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      208 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      210 GETTABLEKS                       R21 R22 K45 ["ClipNode"]
      212 CALL                             R20 1 1
      213 SETTABLE                         R20 R18 R19
      214 GETIMPORT                        R19 K48 [Enum.AnimationNodeType.GraphOutput]
      216 GETIMPORT                        R20 K5 [require]
      218 GETTABLEKS                       R24 R0 K11 ["Components"]
      220 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      222 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      224 GETTABLEKS                       R21 R22 K47 ["GraphOutput"]
      226 CALL                             R20 1 1
      227 SETTABLE                         R20 R18 R19
      228 GETIMPORT                        R19 K50 [Enum.AnimationNodeType.PrioritySelectNode]
      230 GETIMPORT                        R20 K5 [require]
      232 GETTABLEKS                       R24 R0 K11 ["Components"]
      234 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      236 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      238 GETTABLEKS                       R21 R22 K49 ["PrioritySelectNode"]
      240 CALL                             R20 1 1
      241 SETTABLE                         R20 R18 R19
      242 GETIMPORT                        R19 K52 [Enum.AnimationNodeType.RandomSequenceNode]
      244 GETIMPORT                        R20 K5 [require]
      246 GETTABLEKS                       R24 R0 K11 ["Components"]
      248 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      250 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      252 GETTABLEKS                       R21 R22 K51 ["RandomSequenceNode"]
      254 CALL                             R20 1 1
      255 SETTABLE                         R20 R18 R19
      256 GETIMPORT                        R19 K54 [Enum.AnimationNodeType.SelectNode]
      258 GETIMPORT                        R20 K5 [require]
      260 GETTABLEKS                       R24 R0 K11 ["Components"]
      262 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      264 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      266 GETTABLEKS                       R21 R22 K53 ["SelectNode"]
      268 CALL                             R20 1 1
      269 SETTABLE                         R20 R18 R19
      270 GETIMPORT                        R19 K56 [Enum.AnimationNodeType.SequenceNode]
      272 GETIMPORT                        R20 K5 [require]
      274 GETTABLEKS                       R24 R0 K11 ["Components"]
      276 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      278 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      280 GETTABLEKS                       R21 R22 K55 ["SequenceNode"]
      282 CALL                             R20 1 1
      283 SETTABLE                         R20 R18 R19
      284 GETIMPORT                        R19 K58 [Enum.AnimationNodeType.SpeedNode]
      286 GETIMPORT                        R20 K5 [require]
      288 GETTABLEKS                       R24 R0 K11 ["Components"]
      290 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      292 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      294 GETTABLEKS                       R21 R22 K57 ["SpeedNode"]
      296 CALL                             R20 1 1
      297 SETTABLE                         R20 R18 R19
      298 GETIMPORT                        R19 K60 [Enum.AnimationNodeType.SubtractNode]
      300 GETIMPORT                        R20 K5 [require]
      302 GETTABLEKS                       R24 R0 K11 ["Components"]
      304 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      306 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      308 GETTABLEKS                       R21 R22 K38 ["AddSubtractNode"]
      310 CALL                             R20 1 1
      311 SETTABLE                         R20 R18 R19
      312 GETIMPORT                        R19 K62 [Enum.AnimationNodeType.MaskNode]
      314 GETIMPORT                        R20 K5 [require]
      316 GETTABLEKS                       R24 R0 K11 ["Components"]
      318 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      320 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      322 GETTABLEKS                       R21 R22 K61 ["MaskNode"]
      324 CALL                             R20 1 1
      325 SETTABLE                         R20 R18 R19
      326 DUPCLOSURE                       R19 K63 [PROTO_18]
      327 CAPTURE                          VAL R13
      328 CAPTURE                          VAL R7
      329 CAPTURE                          VAL R3
      330 CAPTURE                          VAL R6
      331 CAPTURE                          VAL R2
      332 CAPTURE                          VAL R15
      333 CAPTURE                          VAL R5
      334 CAPTURE                          VAL R10
      335 CAPTURE                          VAL R1
      336 CAPTURE                          VAL R9
      337 CAPTURE                          VAL R14
      338 CAPTURE                          VAL R8
      339 CAPTURE                          VAL R12
      340 CAPTURE                          VAL R17
      341 CAPTURE                          VAL R18
      342 CAPTURE                          VAL R4
      343 CAPTURE                          VAL R16
      344 RETURN                           R19 1
