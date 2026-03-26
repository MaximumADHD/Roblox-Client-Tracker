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
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["isShiftEnabled"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

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
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R1
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
      175 NEWTABLE                         R14 0 4
      177 GETTABLEKS                       R15 R1 K16 ["setNodePositionsAsync"]
      179 GETTABLEKS                       R16 R2 K6 ["observeNodePosition"]
      181 GETTABLEKS                       R17 R2 K17 ["onDragNodeEnded"]
      183 GETTABLEKS                       R19 R0 K4 ["node"]
      185 GETTABLEKS                       R18 R19 K5 ["id"]
      187 SETLIST                          R14 R15 4 [1]
      189 CALL                             R12 2 1
      190 GETUPVAL                         R14 0
      191 GETTABLEKS                       R13 R14 K3 ["useMemo"]
      193 NEWCLOSURE                       R14 P8
      194 CAPTURE                          UPVAL U7
      195 CAPTURE                          VAL R0
      196 NEWTABLE                         R15 0 2
      198 GETTABLEKS                       R17 R0 K4 ["node"]
      200 GETTABLEKS                       R16 R17 K18 ["name"]
      202 GETTABLEKS                       R18 R0 K4 ["node"]
      204 GETTABLEKS                       R17 R18 K19 ["className"]
      206 SETLIST                          R15 R16 2 [1]
      208 CALL                             R13 2 1
      209 GETUPVAL                         R15 0
      210 GETTABLEKS                       R14 R15 K3 ["useMemo"]
      212 NEWCLOSURE                       R15 P9
      213 CAPTURE                          VAL R0
      214 CAPTURE                          UPVAL U8
      215 CAPTURE                          UPVAL U9
      216 NEWTABLE                         R16 0 2
      218 GETTABLEKS                       R18 R0 K4 ["node"]
      220 GETTABLEKS                       R17 R18 K20 ["nodeType"]
      222 GETTABLEKS                       R18 R0 K4 ["node"]
      224 SETLIST                          R16 R17 2 [1]
      226 CALL                             R14 2 1
      227 GETUPVAL                         R16 0
      228 GETTABLEKS                       R15 R16 K3 ["useMemo"]
      230 NEWCLOSURE                       R16 P10
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U0
      234 CAPTURE                          UPVAL U10
      235 NEWTABLE                         R17 0 3
      237 MOVE                             R18 R14
      238 GETTABLEKS                       R19 R0 K4 ["node"]
      240 GETTABLEKS                       R20 R1 K21 ["observeGraphNodeById"]
      242 SETLIST                          R17 R18 3 [1]
      244 CALL                             R15 2 1
      245 GETUPVAL                         R17 0
      246 GETTABLEKS                       R16 R17 K11 ["useCallback"]
      248 NEWCLOSURE                       R17 P11
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R1
      251 NEWTABLE                         R18 0 2
      253 GETTABLEKS                       R19 R1 K22 ["setNodePropertyAsync"]
      255 GETTABLEKS                       R21 R0 K4 ["node"]
      257 JUMPIFNOT                        R21 ; [+5]
      258 GETTABLEKS                       R21 R0 K4 ["node"]
      260 GETTABLEKS                       R20 R21 K5 ["id"]
      262 JUMPIF                           R20 ; [+1]
      263 LOADNIL                          R20
      264 SETLIST                          R18 R19 2 [1]
      266 CALL                             R16 2 1
      267 GETTABLEKS                       R17 R0 K4 ["node"]
      269 JUMPIFNOT                        R17 ; [+11]
      270 GETTABLEKS                       R19 R0 K4 ["node"]
      272 GETTABLEKS                       R18 R19 K19 ["className"]
      274 GETUPVAL                         R20 6
      275 GETTABLEKS                       R19 R20 K23 ["PARAMETER_NODE_CLASSNAME"]
      277 JUMPIFEQ                         R18 R19 ; [+2]
      279 LOADB                            R17 0 +1
      280 LOADB                            R17 1
      281 GETUPVAL                         R19 0
      282 GETTABLEKS                       R18 R19 K3 ["useMemo"]
      284 NEWCLOSURE                       R19 P12
      285 CAPTURE                          VAL R0
      286 CAPTURE                          UPVAL U11
      287 CAPTURE                          VAL R4
      288 CAPTURE                          VAL R6
      289 NEWTABLE                         R20 0 3
      291 GETTABLEKS                       R21 R4 K24 ["animationParameters"]
      293 JUMPIFNOT                        R6 ; [+3]
      294 GETTABLEKS                       R22 R6 K25 ["props"]
      296 JUMP                             ; [+1]
      297 LOADNIL                          R22
      298 GETTABLEKS                       R24 R0 K4 ["node"]
      300 JUMPIFNOT                        R24 ; [+5]
      301 GETTABLEKS                       R24 R0 K4 ["node"]
      303 GETTABLEKS                       R23 R24 K26 ["nodeProps"]
      305 JUMP                             ; [+1]
      306 LOADNIL                          R23
      307 SETLIST                          R20 R21 3 [1]
      309 CALL                             R18 2 1
      310 GETUPVAL                         R20 0
      311 GETTABLEKS                       R19 R20 K3 ["useMemo"]
      313 NEWCLOSURE                       R20 P13
      314 CAPTURE                          VAL R0
      315 CAPTURE                          VAL R6
      316 NEWTABLE                         R21 0 2
      318 JUMPIFNOT                        R6 ; [+3]
      319 GETTABLEKS                       R22 R6 K27 ["state"]
      321 JUMP                             ; [+1]
      322 LOADNIL                          R22
      323 GETTABLEKS                       R24 R0 K4 ["node"]
      325 JUMPIFNOT                        R24 ; [+5]
      326 GETTABLEKS                       R24 R0 K4 ["node"]
      328 GETTABLEKS                       R23 R24 K28 ["nodeState"]
      330 JUMP                             ; [+1]
      331 LOADNIL                          R23
      332 SETLIST                          R21 R22 2 [1]
      334 CALL                             R19 2 1
      335 DUPTABLE                         R20 K42 [{"text", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      336 SETTABLEKS                       R13 R20 K29 ["text"]
      338 GETTABLEKS                       R21 R0 K4 ["node"]
      340 SETTABLEKS                       R21 R20 K30 ["GraphPayload"]
      342 MOVE                             R21 R5
      343 JUMPIF                           R21 ; [+2]
      344 GETIMPORT                        R21 K45 [Vector2.zero]
      346 SETTABLEKS                       R21 R20 K31 ["Position"]
      348 JUMPIFNOT                        R8 ; [+6]
      349 GETTABLEKS                       R21 R8 K46 ["size"]
      351 JUMPIF                           R21 ; [+5]
      352 GETIMPORT                        R21 K45 [Vector2.zero]
      354 JUMP                             ; [+2]
      355 GETIMPORT                        R21 K45 [Vector2.zero]
      357 SETTABLEKS                       R21 R20 K32 ["Size"]
      359 JUMPIFNOT                        R8 ; [+3]
      360 GETTABLEKS                       R21 R8 K10 ["isSelected"]
      362 JUMP                             ; [+1]
      363 LOADB                            R21 0
      364 SETTABLEKS                       R21 R20 K33 ["Selected"]
      366 JUMPIFNOT                        R8 ; [+3]
      367 GETTABLEKS                       R21 R8 K47 ["isCollapsed"]
      369 JUMP                             ; [+1]
      370 LOADB                            R21 0
      371 SETTABLEKS                       R21 R20 K34 ["Collapsed"]
      373 SETTABLEKS                       R9 R20 K35 ["ZIndex"]
      375 SETTABLEKS                       R10 R20 K36 ["OnDragStart"]
      377 SETTABLEKS                       R11 R20 K37 ["OnDragMoved"]
      379 SETTABLEKS                       R12 R20 K38 ["OnDragEnded"]
      381 SETTABLEKS                       R16 R20 K39 ["OnPropertyChanged"]
      383 SETTABLEKS                       R18 R20 K40 ["PropertyLookup"]
      385 SETTABLEKS                       R19 R20 K41 ["StateLookup"]
      387 LOADNIL                          R21
      388 JUMPIFNOT                        R17 ; [+2]
      389 GETUPVAL                         R21 12
      390 JUMP                             ; [+37]
      391 GETUPVAL                         R22 13
      392 JUMPIFNOT                        R22 ; [+15]
      393 GETTABLEKS                       R23 R0 K4 ["node"]
      395 GETTABLEKS                       R22 R23 K20 ["nodeType"]
      397 JUMPIFNOT                        R22 ; [+10]
      398 GETUPVAL                         R24 14
      399 GETTABLEKS                       R26 R0 K4 ["node"]
      401 GETTABLEKS                       R25 R26 K20 ["nodeType"]
      403 GETTABLE                         R23 R24 R25
      404 JUMPIFEQKNIL                     R23 ; [+2]
      406 LOADB                            R22 0 +1
      407 LOADB                            R22 1
      408 SETTABLEKS                       R22 R20 K48 ["IsGeneric"]
      410 GETTABLEKS                       R24 R0 K4 ["node"]
      412 GETTABLEKS                       R23 R24 K20 ["nodeType"]
      414 JUMPIFNOT                        R23 ; [+7]
      415 GETUPVAL                         R23 14
      416 GETTABLEKS                       R25 R0 K4 ["node"]
      418 GETTABLEKS                       R24 R25 K20 ["nodeType"]
      420 GETTABLE                         R22 R23 R24
      421 JUMPIF                           R22 ; [+1]
      422 GETUPVAL                         R22 15
      423 MOVE                             R21 R22
      424 GETUPVAL                         R22 16
      425 CALL                             R22 0 1
      426 JUMPIFNOT                        R22 ; [+1]
      427 GETUPVAL                         R21 15
      428 GETUPVAL                         R23 0
      429 GETTABLEKS                       R22 R23 K49 ["createElement"]
      431 GETUPVAL                         R24 0
      432 GETTABLEKS                       R23 R24 K50 ["Fragment"]
      434 NEWTABLE                         R24 0 0
      436 NEWTABLE                         R25 1 0
      438 GETTABLEKS                       R27 R0 K4 ["node"]
      440 GETTABLEKS                       R26 R27 K18 ["name"]
      442 GETUPVAL                         R28 0
      443 GETTABLEKS                       R27 R28 K49 ["createElement"]
      445 MOVE                             R28 R21
      446 MOVE                             R29 R20
      447 CALL                             R27 2 1
      448 SETTABLE                         R27 R25 R26
      449 MOVE                             R26 R15
      450 CALL                             R22 4 -1
      451 RETURN                           R22 -1

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
      154 GETTABLEKS                       R21 R22 K36 ["AddNode"]
      156 CALL                             R20 1 1
      157 SETTABLE                         R20 R18 R19
      158 GETIMPORT                        R19 K39 [Enum.AnimationNodeType.OverNode]
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R24 R0 K11 ["Components"]
      164 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      166 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      168 GETTABLEKS                       R21 R22 K38 ["OverNode"]
      170 CALL                             R20 1 1
      171 SETTABLE                         R20 R18 R19
      172 GETIMPORT                        R19 K41 [Enum.AnimationNodeType.Blend1DNode]
      174 GETIMPORT                        R20 K5 [require]
      176 GETTABLEKS                       R24 R0 K11 ["Components"]
      178 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      180 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      182 GETTABLEKS                       R21 R22 K40 ["Blend1DNode"]
      184 CALL                             R20 1 1
      185 SETTABLE                         R20 R18 R19
      186 GETIMPORT                        R19 K43 [Enum.AnimationNodeType.Blend2DNode]
      188 GETIMPORT                        R20 K5 [require]
      190 GETTABLEKS                       R24 R0 K11 ["Components"]
      192 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      194 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      196 GETTABLEKS                       R21 R22 K42 ["Blend2DNode"]
      198 CALL                             R20 1 1
      199 SETTABLE                         R20 R18 R19
      200 GETIMPORT                        R19 K45 [Enum.AnimationNodeType.ClipNode]
      202 GETIMPORT                        R20 K5 [require]
      204 GETTABLEKS                       R24 R0 K11 ["Components"]
      206 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      208 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      210 GETTABLEKS                       R21 R22 K44 ["ClipNode"]
      212 CALL                             R20 1 1
      213 SETTABLE                         R20 R18 R19
      214 GETIMPORT                        R19 K47 [Enum.AnimationNodeType.GraphOutput]
      216 GETIMPORT                        R20 K5 [require]
      218 GETTABLEKS                       R24 R0 K11 ["Components"]
      220 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      222 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      224 GETTABLEKS                       R21 R22 K46 ["GraphOutput"]
      226 CALL                             R20 1 1
      227 SETTABLE                         R20 R18 R19
      228 GETIMPORT                        R19 K49 [Enum.AnimationNodeType.PrioritySelectNode]
      230 GETIMPORT                        R20 K5 [require]
      232 GETTABLEKS                       R24 R0 K11 ["Components"]
      234 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      236 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      238 GETTABLEKS                       R21 R22 K48 ["PrioritySelectNode"]
      240 CALL                             R20 1 1
      241 SETTABLE                         R20 R18 R19
      242 GETIMPORT                        R19 K51 [Enum.AnimationNodeType.RandomSequenceNode]
      244 GETIMPORT                        R20 K5 [require]
      246 GETTABLEKS                       R24 R0 K11 ["Components"]
      248 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      250 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      252 GETTABLEKS                       R21 R22 K50 ["RandomSequenceNode"]
      254 CALL                             R20 1 1
      255 SETTABLE                         R20 R18 R19
      256 GETIMPORT                        R19 K53 [Enum.AnimationNodeType.SelectNode]
      258 GETIMPORT                        R20 K5 [require]
      260 GETTABLEKS                       R24 R0 K11 ["Components"]
      262 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      264 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      266 GETTABLEKS                       R21 R22 K52 ["SelectNode"]
      268 CALL                             R20 1 1
      269 SETTABLE                         R20 R18 R19
      270 GETIMPORT                        R19 K55 [Enum.AnimationNodeType.SequenceNode]
      272 GETIMPORT                        R20 K5 [require]
      274 GETTABLEKS                       R24 R0 K11 ["Components"]
      276 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      278 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      280 GETTABLEKS                       R21 R22 K54 ["SequenceNode"]
      282 CALL                             R20 1 1
      283 SETTABLE                         R20 R18 R19
      284 GETIMPORT                        R19 K57 [Enum.AnimationNodeType.SpeedNode]
      286 GETIMPORT                        R20 K5 [require]
      288 GETTABLEKS                       R24 R0 K11 ["Components"]
      290 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      292 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      294 GETTABLEKS                       R21 R22 K56 ["SpeedNode"]
      296 CALL                             R20 1 1
      297 SETTABLE                         R20 R18 R19
      298 GETIMPORT                        R19 K59 [Enum.AnimationNodeType.SubtractNode]
      300 GETIMPORT                        R20 K5 [require]
      302 GETTABLEKS                       R24 R0 K11 ["Components"]
      304 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      306 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      308 GETTABLEKS                       R21 R22 K58 ["SubtractNode"]
      310 CALL                             R20 1 1
      311 SETTABLE                         R20 R18 R19
      312 GETIMPORT                        R19 K61 [Enum.AnimationNodeType.MaskNode]
      314 GETIMPORT                        R20 K5 [require]
      316 GETTABLEKS                       R24 R0 K11 ["Components"]
      318 GETTABLEKS                       R23 R24 K12 ["NodeView"]
      320 GETTABLEKS                       R22 R23 K13 ["CompositorNodes"]
      322 GETTABLEKS                       R21 R22 K60 ["MaskNode"]
      324 CALL                             R20 1 1
      325 SETTABLE                         R20 R18 R19
      326 DUPCLOSURE                       R19 K62 [PROTO_17]
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
