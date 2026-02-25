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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
        5 GETTABLEKS                       R0 R1 K1 ["Preview"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["node"]
       11 GETTABLEKS                       R0 R1 K3 ["isSelected"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
       17 GETTABLEKS                       R0 R1 K4 ["Selected"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
       23 GETTABLEKS                       R0 R1 K5 ["Nodes"]
       25 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["node"]
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNodePositionsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
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
       22 JUMPIFNOT                        R1 ; [+24]
       23 JUMPIFNOT                        R0 ; [+23]
       24 NEWTABLE                         R2 0 0
       26 JUMPIFNOT                        R1 ; [+14]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K1 ["node"]
       30 GETTABLEKS                       R3 R4 K2 ["id"]
       32 GETTABLEKS                       R5 R1 K4 ["position"]
       34 GETTABLEKS                       R6 R0 K5 ["delta"]
       36 JUMPIF                           R6 ; [+2]
       37 GETIMPORT                        R6 K8 [Vector2.zero]
       39 ADD                              R4 R5 R6
       40 SETTABLE                         R4 R2 R3
       41 GETIMPORT                        R3 K11 [task.spawn]
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R2
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R2 R3 K12 ["onDragNodeEnded"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K1 ["node"]
       53 GETTABLEKS                       R3 R4 K2 ["id"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["node"]
        3 GETTABLEKS                       R0 R1 K1 ["nodeType"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["node"]
       12 GETTABLEKS                       R2 R3 K1 ["nodeType"]
       14 NAMECALL                         R0 R0 K2 ["GetAnimationNodeDefinition"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K3 ["synthesizeDefinition"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["node"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNodePropertyAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["setInputPinNodePropertyAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R8 R9 K3 ["useMemo"]
       94 NEWCLOSURE                       R9 P3
       95 CAPTURE                          VAL R7
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R10 0 3
      100 MOVE                             R11 R7
      101 GETTABLEKS                       R13 R0 K4 ["node"]
      103 GETTABLEKS                       R12 R13 K5 ["id"]
      105 GETTABLEKS                       R14 R0 K4 ["node"]
      107 GETTABLEKS                       R13 R14 K9 ["isSelected"]
      109 SETLIST                          R10 R11 3 [1]
      111 CALL                             R8 2 1
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R9 R10 K10 ["useCallback"]
      115 NEWCLOSURE                       R10 P4
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R2
      119 NEWTABLE                         R11 0 3
      121 GETTABLEKS                       R12 R2 K11 ["onDragNodeStart"]
      123 GETTABLEKS                       R13 R1 K12 ["selectNodesAsync"]
      125 GETTABLEKS                       R14 R0 K13 ["isShiftEnabled"]
      127 SETLIST                          R11 R12 3 [1]
      129 CALL                             R9 2 1
      130 GETUPVAL                         R11 0
      131 GETTABLEKS                       R10 R11 K10 ["useCallback"]
      133 NEWCLOSURE                       R11 P5
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R0
      136 NEWTABLE                         R12 0 2
      138 GETTABLEKS                       R14 R0 K4 ["node"]
      140 GETTABLEKS                       R13 R14 K5 ["id"]
      142 GETTABLEKS                       R14 R2 K14 ["onDragNodeMoved"]
      144 SETLIST                          R12 R13 2 [1]
      146 CALL                             R10 2 1
      147 GETUPVAL                         R12 0
      148 GETTABLEKS                       R11 R12 K10 ["useCallback"]
      150 NEWCLOSURE                       R12 P6
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R1
      154 NEWTABLE                         R13 0 6
      156 GETTABLEKS                       R14 R1 K15 ["observeGraphNodeById"]
      158 GETTABLEKS                       R15 R1 K16 ["setNodePositionsAsync"]
      160 GETTABLEKS                       R16 R2 K8 ["observeNodePreviewData"]
      162 GETTABLEKS                       R17 R2 K17 ["onDragNodeEnded"]
      164 MOVE                             R18 R7
      165 GETTABLEKS                       R20 R0 K4 ["node"]
      167 GETTABLEKS                       R19 R20 K5 ["id"]
      169 SETLIST                          R13 R14 6 [1]
      171 CALL                             R11 2 1
      172 GETUPVAL                         R13 0
      173 GETTABLEKS                       R12 R13 K3 ["useMemo"]
      175 NEWCLOSURE                       R13 P7
      176 CAPTURE                          UPVAL U7
      177 CAPTURE                          VAL R0
      178 NEWTABLE                         R14 0 2
      180 GETTABLEKS                       R16 R0 K4 ["node"]
      182 GETTABLEKS                       R15 R16 K18 ["name"]
      184 GETTABLEKS                       R17 R0 K4 ["node"]
      186 GETTABLEKS                       R16 R17 K19 ["className"]
      188 SETLIST                          R14 R15 2 [1]
      190 CALL                             R12 2 1
      191 GETUPVAL                         R14 0
      192 GETTABLEKS                       R13 R14 K3 ["useMemo"]
      194 NEWCLOSURE                       R14 P8
      195 CAPTURE                          VAL R0
      196 CAPTURE                          UPVAL U8
      197 CAPTURE                          UPVAL U9
      198 NEWTABLE                         R15 0 2
      200 GETTABLEKS                       R17 R0 K4 ["node"]
      202 GETTABLEKS                       R16 R17 K20 ["nodeType"]
      204 GETTABLEKS                       R17 R0 K4 ["node"]
      206 SETLIST                          R15 R16 2 [1]
      208 CALL                             R13 2 1
      209 GETUPVAL                         R15 0
      210 GETTABLEKS                       R14 R15 K3 ["useMemo"]
      212 NEWCLOSURE                       R15 P9
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U0
      216 CAPTURE                          UPVAL U10
      217 NEWTABLE                         R16 0 3
      219 MOVE                             R17 R13
      220 GETTABLEKS                       R18 R0 K4 ["node"]
      222 GETTABLEKS                       R19 R1 K15 ["observeGraphNodeById"]
      224 SETLIST                          R16 R17 3 [1]
      226 CALL                             R14 2 1
      227 GETUPVAL                         R16 0
      228 GETTABLEKS                       R15 R16 K10 ["useCallback"]
      230 NEWCLOSURE                       R16 P10
      231 CAPTURE                          VAL R0
      232 CAPTURE                          VAL R1
      233 NEWTABLE                         R17 0 2
      235 GETTABLEKS                       R18 R1 K21 ["setNodePropertyAsync"]
      237 GETTABLEKS                       R20 R0 K4 ["node"]
      239 JUMPIFNOT                        R20 ; [+5]
      240 GETTABLEKS                       R20 R0 K4 ["node"]
      242 GETTABLEKS                       R19 R20 K5 ["id"]
      244 JUMPIF                           R19 ; [+1]
      245 LOADNIL                          R19
      246 SETLIST                          R17 R18 2 [1]
      248 CALL                             R15 2 1
      249 GETUPVAL                         R17 0
      250 GETTABLEKS                       R16 R17 K10 ["useCallback"]
      252 NEWCLOSURE                       R17 P11
      253 CAPTURE                          VAL R1
      254 NEWTABLE                         R18 0 2
      256 GETTABLEKS                       R19 R1 K22 ["setInputPinNodePropertyAsync"]
      258 GETTABLEKS                       R21 R0 K4 ["node"]
      260 JUMPIFNOT                        R21 ; [+5]
      261 GETTABLEKS                       R21 R0 K4 ["node"]
      263 GETTABLEKS                       R20 R21 K5 ["id"]
      265 JUMPIF                           R20 ; [+1]
      266 LOADNIL                          R20
      267 SETLIST                          R18 R19 2 [1]
      269 CALL                             R16 2 1
      270 GETTABLEKS                       R17 R0 K4 ["node"]
      272 JUMPIFNOT                        R17 ; [+11]
      273 GETTABLEKS                       R19 R0 K4 ["node"]
      275 GETTABLEKS                       R18 R19 K19 ["className"]
      277 GETUPVAL                         R20 6
      278 GETTABLEKS                       R19 R20 K23 ["PARAMETER_NODE_CLASSNAME"]
      280 JUMPIFEQ                         R18 R19 ; [+2]
      282 LOADB                            R17 0 +1
      283 LOADB                            R17 1
      284 GETUPVAL                         R19 0
      285 GETTABLEKS                       R18 R19 K3 ["useMemo"]
      287 NEWCLOSURE                       R19 P12
      288 CAPTURE                          VAL R0
      289 CAPTURE                          UPVAL U11
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R6
      292 NEWTABLE                         R20 0 3
      294 GETTABLEKS                       R21 R4 K24 ["animationParameters"]
      296 JUMPIFNOT                        R6 ; [+3]
      297 GETTABLEKS                       R22 R6 K25 ["props"]
      299 JUMP                             ; [+1]
      300 LOADNIL                          R22
      301 GETTABLEKS                       R24 R0 K4 ["node"]
      303 JUMPIFNOT                        R24 ; [+5]
      304 GETTABLEKS                       R24 R0 K4 ["node"]
      306 GETTABLEKS                       R23 R24 K26 ["nodeProps"]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R23
      310 SETLIST                          R20 R21 3 [1]
      312 CALL                             R18 2 1
      313 GETUPVAL                         R20 0
      314 GETTABLEKS                       R19 R20 K3 ["useMemo"]
      316 NEWCLOSURE                       R20 P13
      317 CAPTURE                          VAL R0
      318 CAPTURE                          VAL R6
      319 NEWTABLE                         R21 0 2
      321 JUMPIFNOT                        R6 ; [+3]
      322 GETTABLEKS                       R22 R6 K27 ["state"]
      324 JUMP                             ; [+1]
      325 LOADNIL                          R22
      326 GETTABLEKS                       R24 R0 K4 ["node"]
      328 JUMPIFNOT                        R24 ; [+5]
      329 GETTABLEKS                       R24 R0 K4 ["node"]
      331 GETTABLEKS                       R23 R24 K28 ["nodeState"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R23
      335 SETLIST                          R21 R22 2 [1]
      337 CALL                             R19 2 1
      338 DUPTABLE                         R20 K43 [{"text", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "OnInputPinPropertyChanged", "PropertyLookup", "StateLookup"}]
      339 SETTABLEKS                       R12 R20 K29 ["text"]
      341 GETTABLEKS                       R21 R0 K4 ["node"]
      343 SETTABLEKS                       R21 R20 K30 ["GraphPayload"]
      345 MOVE                             R21 R5
      346 JUMPIF                           R21 ; [+2]
      347 GETIMPORT                        R21 K46 [Vector2.zero]
      349 SETTABLEKS                       R21 R20 K31 ["Position"]
      351 GETTABLEKS                       R22 R0 K4 ["node"]
      353 GETTABLEKS                       R21 R22 K47 ["size"]
      355 SETTABLEKS                       R21 R20 K32 ["Size"]
      357 GETTABLEKS                       R22 R0 K4 ["node"]
      359 GETTABLEKS                       R21 R22 K9 ["isSelected"]
      361 SETTABLEKS                       R21 R20 K33 ["Selected"]
      363 GETTABLEKS                       R22 R0 K4 ["node"]
      365 GETTABLEKS                       R21 R22 K48 ["isCollapsed"]
      367 SETTABLEKS                       R21 R20 K34 ["Collapsed"]
      369 SETTABLEKS                       R8 R20 K35 ["ZIndex"]
      371 SETTABLEKS                       R9 R20 K36 ["OnDragStart"]
      373 SETTABLEKS                       R10 R20 K37 ["OnDragMoved"]
      375 SETTABLEKS                       R11 R20 K38 ["OnDragEnded"]
      377 SETTABLEKS                       R15 R20 K39 ["OnPropertyChanged"]
      379 SETTABLEKS                       R16 R20 K40 ["OnInputPinPropertyChanged"]
      381 SETTABLEKS                       R18 R20 K41 ["PropertyLookup"]
      383 SETTABLEKS                       R19 R20 K42 ["StateLookup"]
      385 LOADNIL                          R21
      386 JUMPIFNOT                        R17 ; [+2]
      387 GETUPVAL                         R21 12
      388 JUMP                             ; [+37]
      389 GETUPVAL                         R22 13
      390 JUMPIFNOT                        R22 ; [+15]
      391 GETTABLEKS                       R23 R0 K4 ["node"]
      393 GETTABLEKS                       R22 R23 K20 ["nodeType"]
      395 JUMPIFNOT                        R22 ; [+10]
      396 GETUPVAL                         R24 14
      397 GETTABLEKS                       R26 R0 K4 ["node"]
      399 GETTABLEKS                       R25 R26 K20 ["nodeType"]
      401 GETTABLE                         R23 R24 R25
      402 JUMPIFEQKNIL                     R23 ; [+2]
      404 LOADB                            R22 0 +1
      405 LOADB                            R22 1
      406 SETTABLEKS                       R22 R20 K49 ["IsGeneric"]
      408 GETTABLEKS                       R24 R0 K4 ["node"]
      410 GETTABLEKS                       R23 R24 K20 ["nodeType"]
      412 JUMPIFNOT                        R23 ; [+7]
      413 GETUPVAL                         R23 14
      414 GETTABLEKS                       R25 R0 K4 ["node"]
      416 GETTABLEKS                       R24 R25 K20 ["nodeType"]
      418 GETTABLE                         R22 R23 R24
      419 JUMPIF                           R22 ; [+1]
      420 GETUPVAL                         R22 15
      421 MOVE                             R21 R22
      422 GETUPVAL                         R22 16
      423 CALL                             R22 0 1
      424 JUMPIFNOT                        R22 ; [+1]
      425 GETUPVAL                         R21 15
      426 GETUPVAL                         R23 0
      427 GETTABLEKS                       R22 R23 K50 ["createElement"]
      429 GETUPVAL                         R24 0
      430 GETTABLEKS                       R23 R24 K51 ["Fragment"]
      432 NEWTABLE                         R24 0 0
      434 NEWTABLE                         R25 1 0
      436 GETTABLEKS                       R27 R0 K4 ["node"]
      438 GETTABLEKS                       R26 R27 K18 ["name"]
      440 GETUPVAL                         R28 0
      441 GETTABLEKS                       R27 R28 K50 ["createElement"]
      443 MOVE                             R28 R21
      444 MOVE                             R29 R20
      445 CALL                             R27 2 1
      446 SETTABLE                         R27 R25 R26
      447 MOVE                             R26 R14
      448 CALL                             R22 4 -1
      449 RETURN                           R22 -1

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
      326 DUPCLOSURE                       R19 K63 [PROTO_17]
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
