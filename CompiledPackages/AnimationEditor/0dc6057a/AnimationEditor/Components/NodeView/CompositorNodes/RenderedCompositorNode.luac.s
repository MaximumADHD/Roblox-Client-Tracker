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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["selectionNodeId"]
        7 JUMPIFEQ                         R0 R1 ; [+5]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K1 ["clearSelection"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K2 ["selectNodesAsync"]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R3 5
       18 GETTABLEKS                       R2 R3 K3 ["isShiftPressed"]
       20 CALL                             R2 0 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R0 R1 K2 ["selectNodesAsync"]
       26 GETUPVAL                         R1 4
       27 GETUPVAL                         R3 6
       28 GETTABLEKS                       R2 R3 K4 ["isShiftEnabled"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["node"]
        3 GETTABLEKS                       R1 R2 K1 ["id"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["onDragNodeStart"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K5 [task.spawn]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U0
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R1 K0 ["setNodePositionsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onDragNodeEnded"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["node"]
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K5 [task.spawn]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_10:
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["node"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["observeNodePropsById"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["node"]
       10 GETTABLEKS                       R1 R2 K2 ["id"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K3 ["of"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+28]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPE R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K1 [type]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+7]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K3 ["matchParameterBinding"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R6
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R8 R9 K4 ["animationParameters"]
       26 GETTABLE                         R7 R8 R6
       27 SETTABLE                         R7 R0 R4
       28 JUMP                             ; [+1]
       29 SETTABLE                         R5 R0 R4
       30 FORGLOOP                         R1 2 ; [-23]
       32 GETUPVAL                         R1 3
       33 JUMPIFNOT                        R1 ; [+13]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R1 R2 K5 ["props"]
       37 JUMPIFNOT                        R1 ; [+9]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R1 R4 K5 ["props"]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 SETTABLE                         R5 R0 R4
       45 FORGLOOP                         R1 2 ; [-2]
       47 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["state"]
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1

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
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["useContext"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K1 ["Context"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K0 ["useContext"]
       38 GETUPVAL                         R8 6
       39 GETTABLEKS                       R7 R8 K1 ["Context"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R8 7
       43 GETTABLEKS                       R7 R8 K2 ["useSignalState"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K3 ["useMemo"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R10 0 2
       53 GETTABLEKS                       R12 R0 K4 ["node"]
       55 GETTABLEKS                       R11 R12 K5 ["id"]
       57 GETTABLEKS                       R12 R2 K6 ["observeNodePosition"]
       59 SETLIST                          R10 R11 2 [1]
       61 CALL                             R8 2 -1
       62 CALL                             R7 -1 1
       63 GETUPVAL                         R9 7
       64 GETTABLEKS                       R8 R9 K2 ["useSignalState"]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R9 R10 K3 ["useMemo"]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R11 0 2
       74 GETTABLEKS                       R13 R0 K4 ["node"]
       76 GETTABLEKS                       R12 R13 K5 ["id"]
       78 GETTABLEKS                       R13 R3 K7 ["observeDebugData"]
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 -1
       83 CALL                             R8 -1 1
       84 GETUPVAL                         R10 7
       85 GETTABLEKS                       R9 R10 K2 ["useSignalState"]
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R10 R11 K3 ["useMemo"]
       90 NEWCLOSURE                       R11 P2
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R0
       93 NEWTABLE                         R12 0 2
       95 GETTABLEKS                       R14 R0 K4 ["node"]
       97 GETTABLEKS                       R13 R14 K5 ["id"]
       99 GETTABLEKS                       R14 R2 K8 ["observeNodePreviewData"]
      101 SETLIST                          R12 R13 2 [1]
      103 CALL                             R10 2 -1
      104 CALL                             R9 -1 1
      105 GETUPVAL                         R11 7
      106 GETTABLEKS                       R10 R11 K2 ["useSignalState"]
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R11 R12 K3 ["useMemo"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R0
      114 NEWTABLE                         R13 0 2
      116 GETTABLEKS                       R15 R0 K4 ["node"]
      118 GETTABLEKS                       R14 R15 K5 ["id"]
      120 GETTABLEKS                       R15 R1 K9 ["observeNodeRenderInfoById"]
      122 SETLIST                          R13 R14 2 [1]
      124 CALL                             R11 2 -1
      125 CALL                             R10 -1 1
      126 GETUPVAL                         R12 0
      127 GETTABLEKS                       R11 R12 K3 ["useMemo"]
      129 NEWCLOSURE                       R12 P4
      130 CAPTURE                          VAL R9
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          VAL R10
      133 NEWTABLE                         R13 0 3
      135 MOVE                             R14 R9
      136 GETTABLEKS                       R16 R0 K4 ["node"]
      138 GETTABLEKS                       R15 R16 K5 ["id"]
      140 MOVE                             R16 R10
      141 JUMPIFNOT                        R16 ; [+2]
      142 GETTABLEKS                       R16 R10 K10 ["isSelected"]
      144 SETLIST                          R13 R14 3 [1]
      146 CALL                             R11 2 1
      147 GETUPVAL                         R13 0
      148 GETTABLEKS                       R12 R13 K11 ["useCallback"]
      150 NEWCLOSURE                       R13 P5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R5
      157 NEWTABLE                         R14 0 7
      159 GETTABLEKS                       R15 R2 K12 ["onDragNodeStart"]
      161 GETTABLEKS                       R16 R1 K13 ["selectNodesAsync"]
      163 GETTABLEKS                       R17 R0 K14 ["isShiftEnabled"]
      165 GETUPVAL                         R18 9
      166 CALL                             R18 0 1
      167 GETTABLEKS                       R19 R5 K15 ["isShiftPressed"]
      169 GETTABLEKS                       R20 R6 K16 ["clearSelection"]
      171 GETTABLEKS                       R21 R6 K17 ["selectionNodeId"]
      173 SETLIST                          R14 R15 7 [1]
      175 CALL                             R12 2 1
      176 GETUPVAL                         R14 0
      177 GETTABLEKS                       R13 R14 K11 ["useCallback"]
      179 NEWCLOSURE                       R14 P6
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R0
      182 NEWTABLE                         R15 0 2
      184 GETTABLEKS                       R17 R0 K4 ["node"]
      186 GETTABLEKS                       R16 R17 K5 ["id"]
      188 GETTABLEKS                       R17 R2 K18 ["onDragNodeMoved"]
      190 SETLIST                          R15 R16 2 [1]
      192 CALL                             R13 2 1
      193 GETUPVAL                         R15 0
      194 GETTABLEKS                       R14 R15 K11 ["useCallback"]
      196 NEWCLOSURE                       R15 P7
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R1
      200 NEWTABLE                         R16 0 4
      202 GETTABLEKS                       R17 R1 K19 ["setNodePositionsAsync"]
      204 GETTABLEKS                       R18 R2 K6 ["observeNodePosition"]
      206 GETTABLEKS                       R19 R2 K20 ["onDragNodeEnded"]
      208 GETTABLEKS                       R21 R0 K4 ["node"]
      210 GETTABLEKS                       R20 R21 K5 ["id"]
      212 SETLIST                          R16 R17 4 [1]
      214 CALL                             R14 2 1
      215 GETUPVAL                         R15 10
      216 GETTABLEKS                       R16 R0 K4 ["node"]
      218 CALL                             R15 1 1
      219 GETUPVAL                         R17 0
      220 GETTABLEKS                       R16 R17 K3 ["useMemo"]
      222 NEWCLOSURE                       R17 P8
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U11
      225 CAPTURE                          UPVAL U12
      226 NEWTABLE                         R18 0 2
      228 GETTABLEKS                       R20 R0 K4 ["node"]
      230 GETTABLEKS                       R19 R20 K21 ["nodeType"]
      232 GETTABLEKS                       R20 R0 K4 ["node"]
      234 SETLIST                          R18 R19 2 [1]
      236 CALL                             R16 2 1
      237 GETUPVAL                         R18 0
      238 GETTABLEKS                       R17 R18 K3 ["useMemo"]
      240 NEWCLOSURE                       R18 P9
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R0
      243 CAPTURE                          UPVAL U0
      244 CAPTURE                          UPVAL U13
      245 NEWTABLE                         R19 0 3
      247 MOVE                             R20 R16
      248 GETTABLEKS                       R21 R0 K4 ["node"]
      250 GETTABLEKS                       R22 R1 K22 ["observeGraphNodeById"]
      252 SETLIST                          R19 R20 3 [1]
      254 CALL                             R17 2 1
      255 GETUPVAL                         R19 0
      256 GETTABLEKS                       R18 R19 K11 ["useCallback"]
      258 NEWCLOSURE                       R19 P10
      259 CAPTURE                          VAL R0
      260 CAPTURE                          VAL R1
      261 NEWTABLE                         R20 0 2
      263 GETTABLEKS                       R21 R1 K23 ["setNodePropertyAsync"]
      265 GETTABLEKS                       R23 R0 K4 ["node"]
      267 JUMPIFNOT                        R23 ; [+5]
      268 GETTABLEKS                       R23 R0 K4 ["node"]
      270 GETTABLEKS                       R22 R23 K5 ["id"]
      272 JUMPIF                           R22 ; [+1]
      273 LOADNIL                          R22
      274 SETLIST                          R20 R21 2 [1]
      276 CALL                             R18 2 1
      277 GETTABLEKS                       R19 R0 K4 ["node"]
      279 JUMPIFNOT                        R19 ; [+11]
      280 GETTABLEKS                       R21 R0 K4 ["node"]
      282 GETTABLEKS                       R20 R21 K24 ["className"]
      284 GETUPVAL                         R22 8
      285 GETTABLEKS                       R21 R22 K25 ["PARAMETER_NODE_CLASSNAME"]
      287 JUMPIFEQ                         R20 R21 ; [+2]
      289 LOADB                            R19 0 +1
      290 LOADB                            R19 1
      291 GETUPVAL                         R21 0
      292 GETTABLEKS                       R20 R21 K3 ["useMemo"]
      294 NEWCLOSURE                       R21 P11
      295 CAPTURE                          VAL R0
      296 CAPTURE                          VAL R1
      297 CAPTURE                          UPVAL U14
      298 NEWTABLE                         R22 0 1
      300 GETTABLEKS                       R24 R0 K4 ["node"]
      302 JUMPIFNOT                        R24 ; [+5]
      303 GETTABLEKS                       R24 R0 K4 ["node"]
      305 GETTABLEKS                       R23 R24 K5 ["id"]
      307 JUMPIF                           R23 ; [+1]
      308 LOADNIL                          R23
      309 SETLIST                          R22 R23 1 [1]
      311 CALL                             R20 2 1
      312 GETUPVAL                         R22 7
      313 GETTABLEKS                       R21 R22 K2 ["useSignalState"]
      315 MOVE                             R22 R20
      316 CALL                             R21 1 1
      317 GETUPVAL                         R23 0
      318 GETTABLEKS                       R22 R23 K3 ["useMemo"]
      320 NEWCLOSURE                       R23 P12
      321 CAPTURE                          VAL R21
      322 CAPTURE                          UPVAL U15
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R8
      325 NEWTABLE                         R24 0 3
      327 GETTABLEKS                       R25 R4 K26 ["animationParameters"]
      329 JUMPIFNOT                        R8 ; [+3]
      330 GETTABLEKS                       R26 R8 K27 ["props"]
      332 JUMP                             ; [+1]
      333 LOADNIL                          R26
      334 MOVE                             R27 R21
      335 SETLIST                          R24 R25 3 [1]
      337 CALL                             R22 2 1
      338 GETUPVAL                         R24 0
      339 GETTABLEKS                       R23 R24 K3 ["useMemo"]
      341 NEWCLOSURE                       R24 P13
      342 CAPTURE                          VAL R8
      343 NEWTABLE                         R25 0 1
      345 JUMPIFNOT                        R8 ; [+3]
      346 GETTABLEKS                       R26 R8 K28 ["state"]
      348 JUMP                             ; [+1]
      349 LOADNIL                          R26
      350 SETLIST                          R25 R26 1 [1]
      352 CALL                             R23 2 1
      353 DUPTABLE                         R24 K43 [{"text", "editName", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      354 GETTABLEKS                       R25 R15 K44 ["displayName"]
      356 SETTABLEKS                       R25 R24 K29 ["text"]
      358 GETTABLEKS                       R25 R15 K30 ["editName"]
      360 SETTABLEKS                       R25 R24 K30 ["editName"]
      362 GETTABLEKS                       R25 R0 K4 ["node"]
      364 SETTABLEKS                       R25 R24 K31 ["GraphPayload"]
      366 MOVE                             R25 R7
      367 JUMPIF                           R25 ; [+2]
      368 GETIMPORT                        R25 K47 [Vector2.zero]
      370 SETTABLEKS                       R25 R24 K32 ["Position"]
      372 JUMPIFNOT                        R10 ; [+6]
      373 GETTABLEKS                       R25 R10 K48 ["size"]
      375 JUMPIF                           R25 ; [+5]
      376 GETIMPORT                        R25 K47 [Vector2.zero]
      378 JUMP                             ; [+2]
      379 GETIMPORT                        R25 K47 [Vector2.zero]
      381 SETTABLEKS                       R25 R24 K33 ["Size"]
      383 JUMPIFNOT                        R10 ; [+3]
      384 GETTABLEKS                       R25 R10 K10 ["isSelected"]
      386 JUMP                             ; [+1]
      387 LOADB                            R25 0
      388 SETTABLEKS                       R25 R24 K34 ["Selected"]
      390 JUMPIFNOT                        R10 ; [+3]
      391 GETTABLEKS                       R25 R10 K49 ["isCollapsed"]
      393 JUMP                             ; [+1]
      394 LOADB                            R25 0
      395 SETTABLEKS                       R25 R24 K35 ["Collapsed"]
      397 SETTABLEKS                       R11 R24 K36 ["ZIndex"]
      399 SETTABLEKS                       R12 R24 K37 ["OnDragStart"]
      401 SETTABLEKS                       R13 R24 K38 ["OnDragMoved"]
      403 SETTABLEKS                       R14 R24 K39 ["OnDragEnded"]
      405 SETTABLEKS                       R18 R24 K40 ["OnPropertyChanged"]
      407 SETTABLEKS                       R22 R24 K41 ["PropertyLookup"]
      409 SETTABLEKS                       R23 R24 K42 ["StateLookup"]
      411 LOADNIL                          R25
      412 JUMPIFNOT                        R19 ; [+2]
      413 GETUPVAL                         R25 16
      414 JUMP                             ; [+37]
      415 GETUPVAL                         R26 17
      416 JUMPIFNOT                        R26 ; [+15]
      417 GETTABLEKS                       R27 R0 K4 ["node"]
      419 GETTABLEKS                       R26 R27 K21 ["nodeType"]
      421 JUMPIFNOT                        R26 ; [+10]
      422 GETUPVAL                         R28 18
      423 GETTABLEKS                       R30 R0 K4 ["node"]
      425 GETTABLEKS                       R29 R30 K21 ["nodeType"]
      427 GETTABLE                         R27 R28 R29
      428 JUMPIFEQKNIL                     R27 ; [+2]
      430 LOADB                            R26 0 +1
      431 LOADB                            R26 1
      432 SETTABLEKS                       R26 R24 K50 ["IsGeneric"]
      434 GETTABLEKS                       R28 R0 K4 ["node"]
      436 GETTABLEKS                       R27 R28 K21 ["nodeType"]
      438 JUMPIFNOT                        R27 ; [+7]
      439 GETUPVAL                         R27 18
      440 GETTABLEKS                       R29 R0 K4 ["node"]
      442 GETTABLEKS                       R28 R29 K21 ["nodeType"]
      444 GETTABLE                         R26 R27 R28
      445 JUMPIF                           R26 ; [+1]
      446 GETUPVAL                         R26 19
      447 MOVE                             R25 R26
      448 GETUPVAL                         R26 20
      449 CALL                             R26 0 1
      450 JUMPIFNOT                        R26 ; [+1]
      451 GETUPVAL                         R25 19
      452 GETUPVAL                         R27 0
      453 GETTABLEKS                       R26 R27 K51 ["createElement"]
      455 GETUPVAL                         R28 0
      456 GETTABLEKS                       R27 R28 K52 ["Fragment"]
      458 NEWTABLE                         R28 0 0
      460 GETUPVAL                         R30 0
      461 GETTABLEKS                       R29 R30 K51 ["createElement"]
      463 MOVE                             R30 R25
      464 MOVE                             R31 R24
      465 CALL                             R29 2 1
      466 MOVE                             R30 R17
      467 CALL                             R26 4 -1
      468 RETURN                           R26 -1

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
       57 GETTABLEKS                       R8 R9 K17 ["InputSelectionContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K8 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K18 ["ModifierKeysContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K8 ["Contexts"]
       71 GETTABLEKS                       R10 R11 K19 ["NativeGraphContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K8 ["Contexts"]
       78 GETTABLEKS                       R12 R13 K19 ["NativeGraphContext"]
       80 GETTABLEKS                       R11 R12 K20 ["NativeGraphUtils"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K6 ["Util"]
       87 GETTABLEKS                       R13 R14 K21 ["Nodes"]
       89 GETTABLEKS                       R12 R13 K22 ["NodeDefinitionUtils"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K23 ["NodeViewTypes"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R17 R0 K11 ["Components"]
      101 GETTABLEKS                       R16 R17 K12 ["NodeView"]
      103 GETTABLEKS                       R15 R16 K13 ["CompositorNodes"]
      105 GETTABLEKS                       R14 R15 K24 ["ParameterNode"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R16 R0 K25 ["Parent"]
      112 GETTABLEKS                       R15 R16 K26 ["React"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R19 R0 K11 ["Components"]
      119 GETTABLEKS                       R18 R19 K12 ["NodeView"]
      121 GETTABLEKS                       R17 R18 K13 ["CompositorNodes"]
      123 GETTABLEKS                       R16 R17 K27 ["RenderedCompositorCurve"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETIMPORT                        R24 K1 [script]
      130 GETTABLEKS                       R23 R24 K25 ["Parent"]
      132 GETTABLEKS                       R22 R23 K25 ["Parent"]
      134 GETTABLEKS                       R21 R22 K25 ["Parent"]
      136 GETTABLEKS                       R20 R21 K25 ["Parent"]
      138 GETTABLEKS                       R19 R20 K6 ["Util"]
      140 GETTABLEKS                       R18 R19 K28 ["Signals"]
      142 GETTABLEKS                       R17 R18 K29 ["SignalsInstanceUtils"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R19 R0 K25 ["Parent"]
      149 GETTABLEKS                       R18 R19 K30 ["SignalsReact"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R20 R0 K31 ["Flags"]
      156 GETTABLEKS                       R19 R20 K32 ["getFFlagDebugDisableCustomNodes"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K5 [require]
      161 GETTABLEKS                       R23 R0 K11 ["Components"]
      163 GETTABLEKS                       R22 R23 K12 ["NodeView"]
      165 GETTABLEKS                       R21 R22 K13 ["CompositorNodes"]
      167 GETTABLEKS                       R20 R21 K33 ["useNodeNames"]
      169 CALL                             R19 1 1
      170 GETIMPORT                        R20 K35 [game]
      172 LOADK                            R22 K36 ["DebugAGEHighlightGenericNodes"]
      173 LOADB                            R23 0
      174 NAMECALL                         R20 R20 K37 ["DefineFastFlag"]
      176 CALL                             R20 3 1
      177 GETIMPORT                        R21 K5 [require]
      179 GETTABLEKS                       R23 R0 K31 ["Flags"]
      181 GETTABLEKS                       R22 R23 K38 ["getFFlagAnimGraphUIInputSelection"]
      183 CALL                             R21 1 1
      184 NEWTABLE                         R22 16 0
      186 GETIMPORT                        R23 K42 [Enum.AnimationNodeType.AddNode]
      188 GETIMPORT                        R24 K5 [require]
      190 GETTABLEKS                       R28 R0 K11 ["Components"]
      192 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      194 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      196 GETTABLEKS                       R25 R26 K41 ["AddNode"]
      198 CALL                             R24 1 1
      199 SETTABLE                         R24 R22 R23
      200 GETIMPORT                        R23 K44 [Enum.AnimationNodeType.Blend1DNode]
      202 GETIMPORT                        R24 K5 [require]
      204 GETTABLEKS                       R28 R0 K11 ["Components"]
      206 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      208 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      210 GETTABLEKS                       R25 R26 K43 ["Blend1DNode"]
      212 CALL                             R24 1 1
      213 SETTABLE                         R24 R22 R23
      214 GETIMPORT                        R23 K46 [Enum.AnimationNodeType.Blend2DNode]
      216 GETIMPORT                        R24 K5 [require]
      218 GETTABLEKS                       R28 R0 K11 ["Components"]
      220 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      222 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      224 GETTABLEKS                       R25 R26 K45 ["Blend2DNode"]
      226 CALL                             R24 1 1
      227 SETTABLE                         R24 R22 R23
      228 GETIMPORT                        R23 K48 [Enum.AnimationNodeType.ClipNode]
      230 GETIMPORT                        R24 K5 [require]
      232 GETTABLEKS                       R28 R0 K11 ["Components"]
      234 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      236 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      238 GETTABLEKS                       R25 R26 K47 ["ClipNode"]
      240 CALL                             R24 1 1
      241 SETTABLE                         R24 R22 R23
      242 GETIMPORT                        R23 K50 [Enum.AnimationNodeType.GraphOutput]
      244 GETIMPORT                        R24 K5 [require]
      246 GETTABLEKS                       R28 R0 K11 ["Components"]
      248 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      250 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      252 GETTABLEKS                       R25 R26 K49 ["GraphOutput"]
      254 CALL                             R24 1 1
      255 SETTABLE                         R24 R22 R23
      256 GETIMPORT                        R23 K52 [Enum.AnimationNodeType.OverNode]
      258 GETIMPORT                        R24 K5 [require]
      260 GETTABLEKS                       R28 R0 K11 ["Components"]
      262 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      264 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      266 GETTABLEKS                       R25 R26 K51 ["OverNode"]
      268 CALL                             R24 1 1
      269 SETTABLE                         R24 R22 R23
      270 GETIMPORT                        R23 K54 [Enum.AnimationNodeType.PrioritySelectNode]
      272 GETIMPORT                        R24 K5 [require]
      274 GETTABLEKS                       R28 R0 K11 ["Components"]
      276 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      278 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      280 GETTABLEKS                       R25 R26 K53 ["PrioritySelectNode"]
      282 CALL                             R24 1 1
      283 SETTABLE                         R24 R22 R23
      284 GETIMPORT                        R23 K56 [Enum.AnimationNodeType.RandomSequenceNode]
      286 GETIMPORT                        R24 K5 [require]
      288 GETTABLEKS                       R28 R0 K11 ["Components"]
      290 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      292 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      294 GETTABLEKS                       R25 R26 K55 ["RandomSequenceNode"]
      296 CALL                             R24 1 1
      297 SETTABLE                         R24 R22 R23
      298 GETIMPORT                        R23 K58 [Enum.AnimationNodeType.SelectNode]
      300 GETIMPORT                        R24 K5 [require]
      302 GETTABLEKS                       R28 R0 K11 ["Components"]
      304 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      306 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      308 GETTABLEKS                       R25 R26 K57 ["SelectNode"]
      310 CALL                             R24 1 1
      311 SETTABLE                         R24 R22 R23
      312 GETIMPORT                        R23 K60 [Enum.AnimationNodeType.SequenceNode]
      314 GETIMPORT                        R24 K5 [require]
      316 GETTABLEKS                       R28 R0 K11 ["Components"]
      318 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      320 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      322 GETTABLEKS                       R25 R26 K59 ["SequenceNode"]
      324 CALL                             R24 1 1
      325 SETTABLE                         R24 R22 R23
      326 GETIMPORT                        R23 K62 [Enum.AnimationNodeType.SpeedNode]
      328 GETIMPORT                        R24 K5 [require]
      330 GETTABLEKS                       R28 R0 K11 ["Components"]
      332 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      334 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      336 GETTABLEKS                       R25 R26 K61 ["SpeedNode"]
      338 CALL                             R24 1 1
      339 SETTABLE                         R24 R22 R23
      340 GETIMPORT                        R23 K64 [Enum.AnimationNodeType.SubtractNode]
      342 GETIMPORT                        R24 K5 [require]
      344 GETTABLEKS                       R28 R0 K11 ["Components"]
      346 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      348 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      350 GETTABLEKS                       R25 R26 K63 ["SubtractNode"]
      352 CALL                             R24 1 1
      353 SETTABLE                         R24 R22 R23
      354 GETIMPORT                        R23 K66 [Enum.AnimationNodeType.MaskNode]
      356 GETIMPORT                        R24 K5 [require]
      358 GETTABLEKS                       R28 R0 K11 ["Components"]
      360 GETTABLEKS                       R27 R28 K12 ["NodeView"]
      362 GETTABLEKS                       R26 R27 K13 ["CompositorNodes"]
      364 GETTABLEKS                       R25 R26 K65 ["MaskNode"]
      366 CALL                             R24 1 1
      367 SETTABLE                         R24 R22 R23
      368 DUPCLOSURE                       R23 K67 [PROTO_17]
      369 CAPTURE                          VAL R14
      370 CAPTURE                          VAL R9
      371 CAPTURE                          VAL R3
      372 CAPTURE                          VAL R6
      373 CAPTURE                          VAL R2
      374 CAPTURE                          VAL R8
      375 CAPTURE                          VAL R7
      376 CAPTURE                          VAL R17
      377 CAPTURE                          VAL R5
      378 CAPTURE                          VAL R21
      379 CAPTURE                          VAL R19
      380 CAPTURE                          VAL R1
      381 CAPTURE                          VAL R11
      382 CAPTURE                          VAL R15
      383 CAPTURE                          VAL R16
      384 CAPTURE                          VAL R10
      385 CAPTURE                          VAL R13
      386 CAPTURE                          VAL R20
      387 CAPTURE                          VAL R22
      388 CAPTURE                          VAL R4
      389 CAPTURE                          VAL R18
      390 GETTABLEKS                       R24 R14 K68 ["memo"]
      392 MOVE                             R25 R23
      393 CALL                             R24 1 -1
      394 RETURN                           R24 -1
